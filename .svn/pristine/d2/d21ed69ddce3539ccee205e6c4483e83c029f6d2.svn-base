package com.u8.sdk;

import mm.purchasesdk.Purchase;
import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.widget.Toast;

public class MMSDK {
	
	private static MMSDK instance;	
	
	
	private MMSDK(){
		
	}
	
	public static MMSDK getInstance(){
		if(instance == null){
			instance = new MMSDK();
		}
		return instance;
	}
	
	private  String APPID;
	private  String APPKEY;
	// 计费点信息
	private  String LEASE_PAYCODE;
	
	private Purchase purchase;
	private IAPListener mListener;
	
	public void initSDK(SDKParams params){
		this.parseSDKParams(params);
		this.initSDK();
	}
	
	private void parseSDKParams(SDKParams params)
	{
		this.APPID = params.getString("BD_APPID");
		this.APPKEY = params.getString("BD_AAKEY");
		this.LEASE_PAYCODE = params.getString("LEASE_PAYCODE");
	}
	
	private void initSDK()
	{
		Activity mainContext = U8SDK.getInstance().getContext();
		IAPHandler iapHandler = new IAPHandler(mainContext);
		mListener = new IAPListener(mainContext, iapHandler);
		purchase = Purchase.getInstance();
		try {
			purchase.setAppInfo(APPID, APPKEY);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		try {
			purchase.init(mainContext, mListener);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void login(){
		
	}
	
	public void pay(PayParams params)
	{
		try {
			purchase.order(U8SDK.getInstance().getContext(), LEASE_PAYCODE, mListener);
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}
	
	public void exit() {
	}
}
