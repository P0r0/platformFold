package com.u8.sdk;

import android.app.Activity;

public class UnicomPay implements IPay {

	public UnicomPay(Activity context){
		
	}
	
	@Override
	public boolean isSupportMethod(String methodName) {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public void pay(PayParams data) {
		// TODO Auto-generated method stub
		UnicomSDK.getInstance().pay(data);
	}

}
