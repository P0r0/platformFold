package com.u8.sdk;


import com.u8.sdk.utils.Arrays;

import android.app.Activity;
import android.util.Log;

public class UnicomUser implements IUser {
	
	@Override
	public void login() {
		// TODO Auto-generated method stub
		UnicomSDK.getInstance().login();
	}

	private String[] supportedMethodStrings = {};
	public UnicomUser(Activity context)
	{
		UnicomSDK.getInstance().initSDK(U8SDK.getInstance().getSDKParams());
	}
	
	@Override
	public boolean isSupportMethod(String methodName) 
	{
		boolean isSupport = Arrays.contain(supportedMethodStrings, methodName);
		Log.d("Meego", "[MethodSuppot] Check :" + methodName);
		return isSupport;
	}
	
	@Override
	public void exit() {
	}

	@Override
	public void loginCustom(String customData) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void switchLogin() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean showAccountCenter() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void logout() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void submitExtraData(UserExtraData extraData) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void postGiftCode(String code) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void realNameRegister() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void queryAntiAddiction() {
		// TODO Auto-generated method stub
		
	}

}
