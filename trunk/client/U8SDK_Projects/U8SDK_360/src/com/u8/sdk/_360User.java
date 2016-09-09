package com.u8.sdk;

import android.app.Activity;

public class _360User extends U8UserAdapter {

	@Override
	public boolean isSupportMethod(String methodName) {
		// TODO Auto-generated method stub
		return true;
	}
	
	public _360User(Activity context) {
		// TODO Auto-generated constructor stub
		_360SDK.getInstance().initSDK(U8SDK.getInstance().getSDKParams());
	}
	
	@Override
	public void login() {
		// TODO Auto-generated method stub
		_360SDK.getInstance().login();
	}
	
	@Override
	public void switchLogin() {
		// TODO Auto-generated method stub
		//_360SDK.getInstance().switchLogin();
	}
	
	public void exit() {
		// TODO Auto-generated method stub
		_360SDK.getInstance().sdkExit();
	}

}
