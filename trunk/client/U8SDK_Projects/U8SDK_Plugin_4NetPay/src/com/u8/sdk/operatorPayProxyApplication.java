package com.u8.sdk;

import com.secneo.mmb.Helper;

import android.content.Context;
import android.content.res.Configuration;

public class operatorPayProxyApplication implements IApplicationListener
{

	@Override
	public void onProxyCreate() 
	{
		//meego init
		System.loadLibrary("megjb");
	}

	@Override
	public void onProxyAttachBaseContext(Context base) 
	{
		//mm init
		Helper.install(U8SDK.getInstance().getApplication());
	}

	@Override
	public void onProxyConfigurationChanged(Configuration config) 
	{
		
	}

	@Override
	public void onTerminate() 
	{
		
	}

}
