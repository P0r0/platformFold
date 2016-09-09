package com.u8.sdk;


import com.u8.sdk.utils.Arrays;

import android.app.Activity;

public class EGameUser extends U8UserAdapter {

	private String[] supportedMethodStrings = {"exit"};
	
	public EGameUser(Activity context){
		EGameSDK.getInstance().initSDK(U8SDK.getInstance().getSDKParams());
	}
	

	@Override
	public void exit() {
		// TODO Auto-generated method stub
		EGameSDK.getInstance().exit();
	}

	
	@Override
	public boolean isSupportMethod(String methodName) {
		// TODO Auto-generated method stub
		return Arrays.contain(supportedMethodStrings, methodName);
	}

}
