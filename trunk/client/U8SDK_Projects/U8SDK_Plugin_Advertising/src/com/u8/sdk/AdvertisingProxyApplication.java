package com.u8.sdk;

import com.max.sdk.ad.open.AdModOpen;
import android.content.Context;
import android.content.res.Configuration;
import android.util.Log;

public class AdvertisingProxyApplication implements IApplicationListener {

	@Override
	public void onProxyCreate() {
		Log.e("adb_3", "onProxyCreate()");
		AdModOpen.register(U8SDK.getInstance().getContext());
	}

	@Override
	public void onProxyAttachBaseContext(Context base) {
	
	}

	@Override
	public void onProxyConfigurationChanged(Configuration config) {

	}

	@Override
	public void onTerminate() {

	}

}
