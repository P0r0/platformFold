package com.u8.sdk;

import org.json.JSONException;
import org.json.JSONObject;

import cn.cmgame.billing.api.BillingResult;
import cn.cmgame.billing.api.GameInterface;

import android.os.Bundle;
import android.util.Log;
import android.widget.Toast;


public class MiguSDK {
	
	public final static String KEY_LOGIN_RESULT = "LoginResult";
	public final static String KEY_SWITCH_ACCOUNT = "switchAccount";
	public final static int REQ_CODE_LOGIN =1000;
	public final static int REQ_CODE_SWITCH = 1001;
	public final static int REQ_CODE_PAY = 1002;

	private static MiguSDK instance;
	
	//应用ID
	private String appID;
	
	//支付回调
	private GameInterface.IPayCallback payCallback = null;
	
	
	private MiguSDK(){
		
	}
	
	
	public static MiguSDK getInstance(){
		if(instance == null){
			instance = new MiguSDK();
		}
		return instance;
	}
	
	public void initSDK(SDKParams params){
		//初始化SDK
		GameInterface.initializeApp(U8SDK.getInstance().getContext());
		// 计费结果的监听处理，合作方通常需要在收到SDK返回的onResult时，告知用户的购买结果
	    payCallback = new GameInterface.IPayCallback() {
	      @Override
	      public void onResult(int resultCode, String billingIndex, Object obj) {
	        String result = "";
	        switch (resultCode) {
	          case BillingResult.SUCCESS:
			    if((BillingResult.EXTRA_SENDSMS_TIMEOUT+"").equals(obj.toString())){
		           result = "短信计费超时";
		           U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "pay cancel");
		        }else{
				   result = "购买道具：[" + billingIndex + "] 成功！";
				   U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "pay success");
			    }
	           
	            break;
	          case BillingResult.FAILED:
	            result = "购买道具：[" + billingIndex + "] 失败！";
	            U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "pay fail");
	            break;
	          default:
	            result = "购买道具：[" + billingIndex + "] 取消！";
	            U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "pay cancel");
	            break;
	        }
	        Toast.makeText(U8SDK.getInstance().getContext(), result, Toast.LENGTH_SHORT).show();
	      }
	    };
		
	}
	
	public void login(){

	}
	
	
	
	public void sdkExit(){
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
	
	public void pay(PayParams params){
		try{
			String productName=params.getProductName();//商品名称
			String productDes=params.getProductName();	//商品描述
			float price = params.getPrice();

			Log.e("U8SDK", "The pay extension is "+params.getExtension());
			
			JSONObject json = new JSONObject(params.getExtension());
			
			String cmOrder = json.getString("transNo");
			String cmSignature = json.getString("accessKey");
			
			GameInterface.doBilling(U8SDK.getInstance().getContext(), true, false, cmOrder, null, payCallback);
			
		}catch(Exception e){
			e.printStackTrace();
			U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "pay failed. exception:"+e.getMessage());
		}
	}
}
