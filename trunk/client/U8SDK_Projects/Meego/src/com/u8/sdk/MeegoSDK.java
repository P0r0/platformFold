package com.u8.sdk;

import java.util.HashMap;
import cn.cmgame.billing.api.BillingResult;
import cn.cmgame.billing.api.GameInterface;
import android.util.Log;
import android.widget.Toast;

public class MeegoSDK {
	
	private static MeegoSDK instance;
	// 登陆流水号，CP自定义，可不填
    String loginNo = "0123456789012345";
    GameInterface.IPayCallback payCallback;
    private HashMap<String, PayParams> billsDic;
	
	private MeegoSDK(){
		
	}
	
	public static MeegoSDK getInstance(){
		if(instance == null){
			instance = new MeegoSDK();
		}
		return instance;
	}
	
	public void initSDK(SDKParams params){
		this.parseSDKParams(params);
		this.initSDK();
	}
	
	private void parseSDKParams(SDKParams params){
	}
	
	private void initSDK()
	{
		// 初始化SDK，并完成自动登陆
		GameInterface.initializeApp(U8SDK.getInstance().getContext());
		billsDic = new HashMap<String, PayParams>();
		
		billsDic.clear();
		// 计费结果的监听处理，合作方通常需要在收到SDK返回的onResult时，告知用户的购买结果
		payCallback = new GameInterface.IPayCallback() {
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

		U8SDK.getInstance().onResult(U8Code.CODE_INIT_SUCCESS, "init success");
	}

	public void login(){
		
	}
	
	public void pay(PayParams params){
		Log.d("PayInfo", "pay req: " + params.getProductName() + params.getProductId() + params.getPrice() + params.getMeegoCode());
        String orderID = null;
        if(params.getOrderID() != null && !params.getOrderID().isEmpty())
        	orderID = params.getOrderID();
	    String meegoCode = params.getMeegoCode();
	    
		if(!billsDic.containsKey(meegoCode))
			billsDic.put(meegoCode, params);
		GameInterface.doBilling(U8SDK.getInstance().getContext(), true, true, meegoCode, null, payCallback);
	}
	
	public void exit() {
		// 移动退出接口，含确认退出UI
	    // 如果外放渠道（非移动自有渠道）限制不允许包含移动退出UI，可用exitApp接口（无UI退出）
	    GameInterface.exit(U8SDK.getInstance().getContext(), new GameInterface.GameExitCallback() {
	      @Override
	      public void onConfirmExit() {
	    	  U8SDK.getInstance().getContext().finish();
	        System.exit(0);
	      }

	      @Override
	      public void onCancelExit() {
	        Toast.makeText(U8SDK.getInstance().getContext(), "取消退出", Toast.LENGTH_SHORT).show();
	      }
	    });
	}
}
