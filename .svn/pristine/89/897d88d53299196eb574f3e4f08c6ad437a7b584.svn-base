package com.u8.sdk;

import android.app.Activity;

public class UCPay implements IPay {

	@Override
	public boolean isSupportMethod(String methodName) {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public void pay(PayParams data) {
		// TODO Auto-generated method stub
		UCSDK.getInstance().pay(data);
	}
	
	public UCPay(Activity context) {
		// TODO Auto-generated constructor stub
		UCSDK.getInstance().initSDK(U8SDK.getInstance().getSDKParams());
	}

}
