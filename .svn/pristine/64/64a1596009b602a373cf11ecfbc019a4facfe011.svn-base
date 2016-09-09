package com.u8.sdk;

import com.u8.sdk.utils.Arrays;

import android.app.Activity;

public class QiGuanAdvertising implements IAdvertising {

	private String[] supportedMethodStrings = {"showBannerAd", "showInterstitialAd"};
	
	public QiGuanAdvertising(Activity context) {
		// TODO Auto-generated constructor stub
		AdvertisingSDK.getInstance().initSDK();
	}

	@Override
	public void showBannerAd() {
		// TODO Auto-generated method stub
		AdvertisingSDK.getInstance().showBannerAd();
	}

	@Override
	public void showInterstitialAd() {
		// TODO Auto-generated method stub
		AdvertisingSDK.getInstance().showInterstitialAd();
	}

	@Override
	public boolean isSupportMethod(String methodName) {
		// TODO Auto-generated method stub
		return Arrays.contain(supportedMethodStrings, methodName);
	}

}
