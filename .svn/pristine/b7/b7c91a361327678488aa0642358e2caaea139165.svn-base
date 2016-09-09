package com.u8.sdk;

import com.secneo.mmb.Helper;

import android.content.Context;
import android.content.res.Configuration;

public class MMProxyApplication implements IApplicationListener {

	@Override
	public void onProxyCreate() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void onProxyAttachBaseContext(Context base) {
		// TODO Auto-generated method stub
		Helper.install(U8SDK.getInstance().getApplication());
	}

	@Override
	public void onProxyConfigurationChanged(Configuration config) {
		// TODO Auto-generated method stub
	}

	@Override
	public void onTerminate() {
		// TODO Auto-generated method stub
		
	}

}
