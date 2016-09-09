package com.u8.sdk;

import com.u8.sdk.utils.Arrays;

import android.app.Activity;
import android.util.Log;

public class MiguUser extends U8UserAdapter {

	private String[] supportedMethods = {"login","switchLogin","submitExtraData", "exit"};
	
	public MiguUser(Activity context){
		MiguSDK.getInstance().initSDK(U8SDK.getInstance().getSDKParams());
	}
	
	@Override
	public void login() {
		MiguSDK.getInstance().login();
	}

	@Override
	public void switchLogin() {
		MiguSDK.getInstance().login();
	}
	
	@Override
	public void submitExtraData(UserExtraData extraData) {
	}
	
	@Override
	public void exit() {
		Log.d("U8SDK_VIVO", "vivo exit called.");
		MiguSDK.getInstance().sdkExit();
	}

	@Override
	public boolean isSupportMethod(String methodName) {

		return Arrays.contain(supportedMethods, methodName);
	}

}
