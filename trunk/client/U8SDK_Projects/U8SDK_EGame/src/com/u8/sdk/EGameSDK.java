package com.u8.sdk;

import java.util.HashMap;
import java.util.Map;

import cn.egame.terminal.paysdk.EgameExitListener;
import cn.egame.terminal.paysdk.EgamePay;
import cn.egame.terminal.paysdk.EgamePayListener;
import android.app.AlertDialog.Builder;

public class EGameSDK {
	
	private static EGameSDK instance;
	private HashMap<String, PayParams> billsDic;
	
	private EGameSDK(){
		
	}
	
	public static EGameSDK getInstance(){
		if(instance == null){
			instance = new EGameSDK();
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
		billsDic = new HashMap<String, PayParams>();
		EgamePay.init(U8SDK.getInstance().getContext());
		U8SDK.getInstance().onResult(U8Code.CODE_INIT_SUCCESS, "init success");		
	}
	
	public void login(){
		
	}
	
	public void pay(PayParams params){
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
	
	public void exit() 
	{
		EgamePay.exit(U8SDK.getInstance().getContext(), new EgameExitListener() {
			public void exit() {
				U8SDK.getInstance().getContext().finish();
			}
			public void cancel() {
				;
			}
		});
	}
}
