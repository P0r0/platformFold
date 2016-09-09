package com.u8.sdk;

import android.app.Activity;

public class EGamePay implements IPay {

	public EGamePay(Activity context){
		
	}
	
	@Override
	public boolean isSupportMethod(String methodName) {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public void pay(PayParams data) {
		// TODO Auto-generated method stub
		EGameSDK.getInstance().pay(data);
	}

}
