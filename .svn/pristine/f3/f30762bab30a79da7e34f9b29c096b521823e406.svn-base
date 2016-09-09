package com.u8.sdk;

import android.app.Activity;

public class OppoPay implements IPay {

	@Override
	public boolean isSupportMethod(String methodName) {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public void pay(PayParams data) {
		// TODO Auto-generated method stub
		OppoSDK.getInstance().pay(data);
	}
	
	public OppoPay(Activity context) {
		// TODO Auto-generated constructor stub
		OppoSDK.getInstance().initSDK(U8SDK.getInstance().getSDKParams());
	}

}
