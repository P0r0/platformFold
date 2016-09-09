package com.u8.sdk;

import com.gionee.game.offlinesdk.AppInfo;
import com.gionee.game.offlinesdk.GamePlatform;

import android.app.Activity;
import android.util.Log;

public class JinLiPay implements IPay {

	@Override
	public boolean isSupportMethod(String methodName) {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public void pay(PayParams data) {
		// TODO Auto-generated method stub
		JinLiSDK.getInstance().pay(data);
	}
	
	public JinLiPay(Activity context) {
		// TODO Auto-generated constructor stub
		AppInfo appInfo = new AppInfo();
		appInfo.setApiKey(JinLiSDK.apiKey);
		appInfo.setPrivateKey(JinLiSDK.privateKey); 
        appInfo.setSpecificPayMode();  //设置支付模式为“指定支付方式支付”
        GamePlatform.init(U8SDK.getInstance().getApplication(), appInfo);    //SDK初始化
        
        JinLiSDK.getInstance().initSDK(U8SDK.getInstance().getSDKParams());  //支付插件初始化
	}

}
