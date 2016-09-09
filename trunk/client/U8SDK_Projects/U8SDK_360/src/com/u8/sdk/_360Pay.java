package com.u8.sdk;

import android.app.Activity;

public class _360Pay implements IPay {

	@Override
	public boolean isSupportMethod(String methodName) {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public void pay(PayParams data) {
		// TODO Auto-generated method stub
		_360SDK.getInstance().pay(data);
	}
	
	public _360Pay(Activity context) {
		// TODO Auto-generated constructor stub
	}

}
