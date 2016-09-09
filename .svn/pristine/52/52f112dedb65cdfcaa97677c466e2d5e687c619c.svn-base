package com.u8.sdk;

import android.app.Activity;

public class MiguPay implements IPay {

	public MiguPay(Activity context){
		
	}
	
	@Override
	public void pay(PayParams data) {

		MiguSDK.getInstance().pay(data);
	}

	@Override
	public boolean isSupportMethod(String methodName) {

		return true;
	}

}
