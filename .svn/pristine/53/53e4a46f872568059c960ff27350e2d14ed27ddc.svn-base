package com.u8.sdk;

import com.u8.sdk.U8SDK;
import com.u8.sdk.U8UserAdapter;

import android.app.Activity;

public class XiaoMiUser extends U8UserAdapter {

	@Override
	public boolean isSupportMethod(String methodName) {
		// TODO Auto-generated method stub
		return true;
	}
	
	public XiaoMiUser(Activity context) {
		// TODO Auto-generated constructor stub
		XiaoMiSDK.getInstance().initSDK(U8SDK.getInstance().getSDKParams());
	}
	
	@Override
	public void login() {
		// TODO Auto-generated method stub
		XiaoMiSDK.getInstance().login();
	}
	
	@Override
	public void exit() {
		// TODO Auto-generated method stub
		XiaoMiSDK.getInstance().sdkExit();
	}

}
