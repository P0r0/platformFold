package com.u8.sdk;

import android.app.Activity;

public class OppoUser extends U8UserAdapter {

	@Override
	public boolean isSupportMethod(String methodName) {
		// TODO Auto-generated method stub
		return true;
	}
	
	@Override
	public void exit() {
		// TODO Auto-generated method stub
		OppoSDK.getInstance().sdkExit();
	}
	
	public OppoUser(Activity context) {
		// TODO Auto-generated constructor stub
	}

}
