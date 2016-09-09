package com.u8.sdk;

import android.app.Activity;

public class VivoPay implements IPay {

	public VivoPay(Activity context){
		
	}
	
	@Override
	public boolean isSupportMethod(String methodName) {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public void pay(PayParams data) {
		// TODO Auto-generated method stub
		VivoSDK.getInstance().pay(data);
	}

}
