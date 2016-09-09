package com.u8.sdk;

import android.app.Activity;

public class YingYongHuiPay implements IPay {

	@Override
	public boolean isSupportMethod(String methodName) {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public void pay(PayParams data) {
		// TODO Auto-generated method stub
		YingYongHuiSDK.getInstance().pay();
	}
	
	public YingYongHuiPay(Activity context) {
		// TODO Auto-generated constructor stub
	}

}
