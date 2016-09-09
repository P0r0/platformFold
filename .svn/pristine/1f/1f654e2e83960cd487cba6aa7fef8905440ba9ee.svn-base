package com.u8.sdk;

import android.app.Activity;

public class YingYongHuiUser extends U8UserAdapter {

	@Override
	public boolean isSupportMethod(String methodName) {
		// TODO Auto-generated method stub
		return true;
	}
	
	public YingYongHuiUser(Activity context) {
		// TODO Auto-generated constructor stub
		YingYongHuiSDK.getInstance().initSDK(U8SDK.getInstance().getSDKParams());
	}
	
	@Override
	public void login() {
		// TODO Auto-generated method stub
		YingYongHuiSDK.getInstance().login();
	}
	
	@Override
	public void exit() {
		// TODO Auto-generated method stub
		YingYongHuiSDK.getInstance().sdkExit();
	}
	
	@Override
	public void logout() {
		// TODO Auto-generated method stub
		YingYongHuiSDK.getInstance().logOut();
	}

}
