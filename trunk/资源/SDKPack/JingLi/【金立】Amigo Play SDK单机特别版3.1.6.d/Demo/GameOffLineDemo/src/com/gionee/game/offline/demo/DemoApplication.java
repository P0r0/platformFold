package com.gionee.game.offline.demo;

import android.app.Application;

import com.gionee.game.offlinesdk.AppInfo;
import com.gionee.game.offlinesdk.GamePlatform;


public class DemoApplication extends Application {
    
    @Override
    public void onCreate() {
        super.onCreate();
        
        AppInfo appInfo = new AppInfo();
        appInfo.setApiKey(Constants.API_KEY);
        appInfo.setPrivateKey(Constants.PRIVATE_KEY);
        appInfo.setSpecificPayMode();
        GamePlatform.init(this, appInfo);
    }
}
