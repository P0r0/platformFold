package com.sdk.migame.payment;

import android.app.Application;

import com.sdk.migame.payment.utiles.DemoUtils;
import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;

public class MiAppApplication extends Application
{
	public static MiAppInfo appInfo;

	@Override
	public void onCreate()
	{
		super.onCreate();

		/** SDK初始化 */
		appInfo = new MiAppInfo();
		appInfo.setAppId( "2882303761517239138" );
		appInfo.setAppKey( "5691723970138" );
		MiCommplatform.Init( this, appInfo );
		
		DemoUtils.intiTestImg( this );
	}
}
