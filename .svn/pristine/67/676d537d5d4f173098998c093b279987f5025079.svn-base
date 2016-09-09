package com.nearme.onlinesdk.demo;

import com.nearme.game.sdk.GameCenterSDK;
import com.nearme.game.sdk.common.util.AppUtil;
import android.app.Application;

public class MyApplication extends Application {

	@Override
	public void onCreate() {
		super.onCreate();
		// 因为sdk插件中service activity跑在独立进程，这里只需要在主进程做一次初始化操作。
		if (getApplicationInfo().packageName.equals(AppUtil
				.getCurrentProcessName(this))) {
			String appSecret = "e2eCa732422245E8891F6555e999878B";
			GameCenterSDK.init(appSecret, this);
		}
	}
}
