package com.chamspire.mobile.ad.demo;

import android.app.Application;

import com.max.sdk.ad.open.AdModOpen;

/**
 * Created by wanghl on 2016/7/22.
 */
public class App extends Application {
    @Override
    public void onCreate() {
        super.onCreate();

        /*久旭广告sdk注册*/
        AdModOpen.register(this);
    }
}
