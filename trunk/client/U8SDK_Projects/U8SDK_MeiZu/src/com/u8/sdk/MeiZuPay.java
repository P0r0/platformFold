package com.u8.sdk;

import android.app.Activity;

public class MeiZuPay implements IPay {

	@Override
	public boolean isSupportMethod(String methodName) {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public void pay(PayParams data) {
		// TODO Auto-generated method stub
		MeiZuSDK.getInstance().pay(data);
	}
	
	public MeiZuPay(Activity context) {
		// TODO Auto-generated constructor stub
		MeiZuSDK.getInstance().initSDK(U8SDK.getInstance().getSDKParams());
	}

}
