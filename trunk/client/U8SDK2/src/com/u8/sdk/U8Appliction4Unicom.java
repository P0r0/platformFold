package com.u8.sdk;

import android.content.Context;
import android.content.res.Configuration;
import android.support.multidex.MultiDex;

import com.u8.sdk.log.Log;
import com.unicom.shield.*;

public class U8Appliction4Unicom extends UnicomApplicationWrapper
{
	public void onCreate(){
		super.onCreate();
		U8SDK.getInstance().onAppCreate(this);
	}
	
	/**
	 * 注意：这个attachBaseContext方法是在onCreate方法之前调用的
	 */
	public void attachBaseContext(Context base){
		super.attachBaseContext(base);
		MultiDex.install(this);
		Log.init(base);
		U8SDK.getInstance().onAppAttachBaseContext(this, base);
	}
	
	public void onConfigurationChanged(Configuration newConfig){
		super.onConfigurationChanged(newConfig);
		
		U8SDK.getInstance().onAppConfigurationChanged(this, newConfig);
	}
	
	public void onTerminate(){
		U8SDK.getInstance().onTerminate();
		Log.destory();
	}

}
