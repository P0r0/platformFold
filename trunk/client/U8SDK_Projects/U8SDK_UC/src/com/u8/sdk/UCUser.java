package com.u8.sdk;

import android.app.Activity;

public class UCUser extends U8UserAdapter {

	@Override
	public boolean isSupportMethod(String methodName) {
		// TODO Auto-generated method stub
		return true;
	}
	
	public UCUser(Activity context) {
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public void exit() {
		// TODO Auto-generated method stub
		UCSDK.getInstance().sdkExit();
	}

}
