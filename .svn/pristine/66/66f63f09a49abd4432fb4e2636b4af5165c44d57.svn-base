package com.u8.sdk;


import com.u8.sdk.utils.Arrays;

import android.app.Activity;

public class MMUser extends U8UserAdapter {

	private String[] supportedMethodStrings = {"login", "switchLogin","exit"};
	
	public MMUser(Activity context){
		MMSDK.getInstance().initSDK(U8SDK.getInstance().getSDKParams());
	}
	
	@Override
	public void login() {
		// TODO Auto-generated method stub
		MMSDK.getInstance().login();
	}
	
	@Override
	public void exit() {
		// TODO Auto-generated method stub
		MMSDK.getInstance().exit();
	}

	@Override
	public void switchLogin() {
		// TODO Auto-generated method stub
		MMSDK.getInstance().login();
	}
	
	@Override
	public boolean isSupportMethod(String methodName) {
		// TODO Auto-generated method stub
		return Arrays.contain(supportedMethodStrings, methodName);
	}

}
