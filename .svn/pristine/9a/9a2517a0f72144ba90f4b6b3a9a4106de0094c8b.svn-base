package com.u8.sdk;


import com.u8.sdk.utils.Arrays;

import android.app.Activity;

public class BaiduUser extends U8UserAdapter {

	private String[] supportedMethodStrings = {"login", "switchLogin"};
	
	public BaiduUser(Activity context){
		BaiduSDK.getInstance().initSDK(U8SDK.getInstance().getSDKParams());
	}
	
	@Override
	public void login() {
		// TODO Auto-generated method stub
		BaiduSDK.getInstance().login();
	}
	
	@Override
	public void switchLogin() {//«–ªª’À∫≈
		// TODO Auto-generated method stub
		BaiduSDK.getInstance().login();
	}
	
	@Override
	public boolean isSupportMethod(String methodName) {
		// TODO Auto-generated method stub
		return Arrays.contain(supportedMethodStrings, methodName);
	}

}
