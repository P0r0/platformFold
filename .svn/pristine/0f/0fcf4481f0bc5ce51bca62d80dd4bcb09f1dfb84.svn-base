package com.u8.sdk;

import cn.uc.paysdk.SDKCore;

import com.unicom.shield.UnicomApplicationWrapper;

import android.content.Context;
import android.content.res.Configuration;

public class UCProxyApplication extends UnicomApplicationWrapper implements IApplicationListener {

	@Override
	public void onProxyCreate() {
		// TODO Auto-generated method stub
		SDKCore.registerEnvironment(U8SDK.getInstance().getApplication()); // SDK 注册环境
		super.onCreate();
	}

	@Override
	public void onProxyAttachBaseContext(Context base) {
		// TODO Auto-generated method stub
		super.attachBaseContext(base);
	}

	@Override
	public void onProxyConfigurationChanged(Configuration config) {
		// TODO Auto-generated method stub
		super.onConfigurationChanged(config);
	}

	@Override
	public void onTerminate() {
		// TODO Auto-generated method stub

	}

}
