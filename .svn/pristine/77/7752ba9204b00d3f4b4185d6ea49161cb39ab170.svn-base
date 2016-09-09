package com.u8.sdk;


import com.u8.sdk.utils.Arrays;

import android.app.Activity;

public class VivoUser extends U8UserAdapter {

	private String[] supportedMethodStrings = {"exit"};
	
	@Override
	public void exit() {
		// TODO Auto-generated method stub
		VivoSDK.getInstance().exit();
	}

	public VivoUser(Activity context){
		VivoSDK.getInstance().initSDK(U8SDK.getInstance().getSDKParams());
	}
	
	@Override
	public boolean isSupportMethod(String methodName) {
		// TODO Auto-generated method stub
		return Arrays.contain(supportedMethodStrings, methodName);
	}

}
