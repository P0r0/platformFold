package com.u8.sdk;

import android.app.Activity;

public class MeegoPay implements IPay {

	public MeegoPay(Activity context){
		
	}
	
	@Override
	public boolean isSupportMethod(String methodName) {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public void pay(PayParams data) {
		// TODO Auto-generated method stub
		MeegoSDK.getInstance().pay(data);
	}

}
