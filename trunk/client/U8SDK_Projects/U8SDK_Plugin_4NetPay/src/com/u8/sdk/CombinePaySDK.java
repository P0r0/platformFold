package com.u8.sdk;

import java.util.HashMap;
import java.util.Map;

import mm.purchasesdk.OnPurchaseListener;
import mm.purchasesdk.Purchase;
import mm.purchasesdk.core.PurchaseCode;

import com.unicom.dcLoader.Utils;
import com.unicom.dcLoader.Utils.UnipayPayResultListener;

import android.app.AlertDialog.Builder;
import android.widget.Toast;

import cn.cmgame.billing.api.BillingResult;
import cn.cmgame.billing.api.GameInterface;
import cn.egame.terminal.paysdk.EgamePay;
import cn.egame.terminal.paysdk.EgamePayListener;

public class CombinePaySDK 
{
	 private static CombinePaySDK instance;
	 private HashMap<String, PayParams> billsDic;
	 GameInterface.IPayCallback meegoPayCallbackayCallback;
	 UnipayPayResultListener unicomListener;
	 OnPurchaseListener mmOnPurchaseListener;
	 
	 private  String MMAPPID;
     private  String MMAPPKEY;
     private Purchase mmPurchase;
	 
	  public static CombinePaySDK getInstance()
	  {
	    if (instance == null) {
	      instance = new CombinePaySDK();
	    }
	    return instance;
	  }
      
	  public void initSDK(SDKParams params) 
	  {	
		  billsDic = new HashMap<String, PayParams>();
		  //----meego init----
		  GameInterface.initializeApp(U8SDK.getInstance().getContext());
		  meegoPayCallbackayCallback = new GameInterface.IPayCallback() {
				@Override
				public void onResult(int resultCode, String billingIndex, Object obj) {
					if (billsDic.containsKey(billingIndex)) {
						PayParams product = billsDic.get(billingIndex);
						String result = "";
						switch (resultCode) {
						case BillingResult.SUCCESS:
							if ((BillingResult.EXTRA_SENDSMS_TIMEOUT + "")
									.equals(obj.toString())) {
								result = "短信计费超时";
							} else {
								result = "购买道具：[" + product.getProductName() + "] 成功！";
								PayResult payResult = new PayResult();
								payResult.setProductID(product.getProductId());
								payResult.setProductName(product.getProductName());
								payResult.setOrderID(product.getOrderID());
								payResult.setExtension(product.getExtension());
								U8SDK.getInstance().onPayResult(payResult);
							}
							break;
						case BillingResult.FAILED:
							result = "购买道具：[" + product.getProductName() + "] 失败！";
							break;
						default:
							result = "购买道具：[" + product.getProductName() + "] 取消！";
							break;
						}

						billsDic.remove(billingIndex);
						Toast.makeText(U8SDK.getInstance().getContext(), result,
								Toast.LENGTH_SHORT).show();
					}
				}
			};
			//-----meego init end-----
			
			//egame init
			EgamePay.init(U8SDK.getInstance().getContext());
			
			//-----unicom init-----
			unicomListener = new UnipayPayResultListener() {
				
				@Override
				public void PayResult(String code, int flag, int flag2, String error) 
				{
					String paycode = code.substring(code.length() - 3);
					if (billsDic.containsKey(paycode))
					{
						String result = "";
						PayParams product = billsDic.get(paycode);
						switch (flag) {
						case 1:
							result = "购买道具：[" + product.getProductName() + "] 成功！";
							PayResult payResult = new PayResult();
							payResult.setProductID(product.getProductId());
							payResult.setProductName(product.getProductName());
							payResult.setOrderID(product.getOrderID());
							payResult.setExtension(product.getExtension());
							U8SDK.getInstance().onPayResult(payResult);
							break;
						case 2:
							result = "购买道具：[" + product.getProductName() + "] 失败！";
							break;
						case 3:
							result = "购买道具：[" + product.getProductName() + "] 取消！";
							break;

						default:
							break;
						}
						
						billsDic.remove(paycode);
						Toast.makeText(U8SDK.getInstance().getContext(), result,
								Toast.LENGTH_SHORT).show();
					}
					
				}
			};
			Utils.getInstances().initPayContext(U8SDK.getInstance().getContext(), unicomListener);
			//-----unicom init end-----
			
			//-----mm init-----
			this.MMAPPID = params.getString("MM_APPID");
			this.MMAPPKEY = params.getString("MM_AAKEY");
			mmPurchase = Purchase.getInstance();
			try {
				mmPurchase.setAppInfo(MMAPPID,MMAPPKEY);
			} catch (Exception e) {
				e.printStackTrace();
			}
			mmOnPurchaseListener = new OnPurchaseListener() {
				
				@Override
				public void onUnsubscribeFinish(String arg0) {}
				
				@Override
				public void onQueryFinish(String arg0, HashMap<String, Object> arg1) {}
				
				@Override
				public void onInitFinish(String arg0) {}
				
				@Override
				public void onBillingFinish(String code, HashMap<String, Object> arg1) 
				{
					String result = "订购结果：订购成功";
					// 此次订购的orderID
					String orderID = null;
					// 商品的paycode
					String paycode = null;
					// 商品的有效期(仅租赁类型商品有效)
					String leftday = null;
					// 商品的交易 ID，用户可以根据这个交易ID，查询商品是否已经交易
					String tradeID = null;
					String ordertype = null;
					PayParams product = billsDic.get(paycode);
					if (arg1 != null)
					{
						leftday = (String) arg1.get(OnPurchaseListener.LEFTDAY);
						orderID = (String) arg1.get(OnPurchaseListener.ORDERID);
						paycode = (String) arg1.get(OnPurchaseListener.PAYCODE);
						tradeID = (String) arg1.get(OnPurchaseListener.TRADEID);
						ordertype = (String) arg1.get(OnPurchaseListener.ORDERTYPE);
					}
						
					if ( PurchaseCode.BILL_ORDER_OK.equalsIgnoreCase( code )|| PurchaseCode.AUTH_OK.equalsIgnoreCase( code )
							|| PurchaseCode.WEAK_ORDER_OK.equalsIgnoreCase( code ) ) {
						    result = "购买道具：[" + product.getProductName() + "] 成功！";
						    if (billsDic.containsKey(paycode))
							{
							PayResult payResult = new PayResult();
							payResult.setProductID(product.getProductId());
							payResult.setProductName(product.getProductName());
							payResult.setOrderID(product.getOrderID());
							payResult.setExtension(product.getExtension());
							U8SDK.getInstance().onPayResult(payResult);
							billsDic.remove(paycode);
							}
					} 
					else 
					{
						/**
						 * 表示订购失败。
						 */
						result ="订购失败";
					}
					Toast.makeText(U8SDK.getInstance().getContext(), result,
							Toast.LENGTH_SHORT).show();
				}
				
				@Override
				public void onBeforeDownload() {}
				
				@Override
				public void onBeforeApply() {}
				
				@Override
				public void onAfterDownload() {}				
				@Override
				public void onAfterApply() {}
			};
			//-----mm init end-----
	  }
	  
	public void meegoPay(PayParams params) 
	{
		String meegoCode = params.getMeegoCode();

		if (!billsDic.containsKey(meegoCode))
			billsDic.put(meegoCode, params);
		GameInterface.doBilling(U8SDK.getInstance().getContext(), true, true,
				meegoCode, null, meegoPayCallbackayCallback);
	}
	  
	public void egamePay(PayParams params) 
	{
		HashMap<String, String> hashParams = new HashMap<String, String>();
		String payCode = params.getEgameCode();
		hashParams.put(EgamePay.PAY_PARAMS_KEY_TOOLS_ALIAS, payCode);
		hashParams.put(EgamePay.PAY_PARAMS_KEY_PRIORITY, "sms");
		if(!billsDic.containsKey(payCode))
			billsDic.put(payCode, params);
		EgamePay.pay(U8SDK.getInstance().getContext(), hashParams, new EgamePayListener() {
			final Builder dialog = new Builder(U8SDK.getInstance().getContext());
			
			@Override
			public void paySuccess(Map<String, String> params) {				
				String code = params.get(EgamePay.PAY_PARAMS_KEY_TOOLS_ALIAS);
				PayParams product;
				if(billsDic.containsKey(code))
				{
					product = billsDic.get(code);
					PayResult payResult = new PayResult();
					payResult.setProductID(product.getProductId());
					payResult.setProductName(product.getProductName());
					payResult.setOrderID(product.getOrderID());
					payResult.setExtension(product.getExtension());
					U8SDK.getInstance().onPayResult(payResult);
					dialog.setMessage("道具" + product.getProductName() + "支付成功");
					dialog.show();
				}
			}

			@Override
			public void payFailed(Map<String, String> params, int errorInt) {
				String code = params.get(EgamePay.PAY_PARAMS_KEY_TOOLS_ALIAS);
				PayParams product;
				if(billsDic.containsKey(code))
				{
					product = billsDic.get(code);
					dialog.setMessage("道具"
							+ product.getProductName()
							+ "支付失败 错误代码:" + errorInt);
					dialog.show();
				}
			}

			@Override
			public void payCancel(Map<String, String> params) {
				String code = params.get(EgamePay.PAY_PARAMS_KEY_TOOLS_ALIAS);
				PayParams product;
				if(billsDic.containsKey(code))
				{
					product = billsDic.get(code);
					dialog.setMessage("道具"
							+ product.getProductName()
							+ "支付取消");
					dialog.show();
				}
			}	
		});
	}
	
	public void unicomPay(final PayParams params)
	{
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			
			@Override
			public void run() {
				if(!billsDic.containsKey(params.getUnicomCode()))
					billsDic.put(params.getUnicomCode(), params);
				Utils.getInstances().pay(U8SDK.getInstance().getContext(), params.getUnicomCode(),unicomListener);		
			}
		});
	}
	
	public void mmPay(final PayParams params)
	{
		try {
			mmPurchase.order(U8SDK.getInstance().getContext(), params.getMmCode(), mmOnPurchaseListener);
		} catch (Exception e) {
			e.printStackTrace();
		}	
	}
}
