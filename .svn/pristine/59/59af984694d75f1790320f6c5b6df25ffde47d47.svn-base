package com.u8.sdk;

import android.app.ProgressDialog;
import android.util.Log;
import android.widget.Toast;
import com.max.sdk.ad.AdListener;
import com.max.sdk.ad.SdkInitListener;
import com.max.sdk.ad.open.AdModOpen;

public class AdvertisingSDK {
	
	private static AdvertisingSDK instance;
	final static String APPID = "72";                                          // 久旭appId
    final static String APPKEY = "69481c5894e0a7b8ef9d50079ad866b3";  
    String unitId = "";  
	private ProgressDialog dialog;
	/*private boolean isBannerAdLoaded;  */    // ����������Ƿ�ɹ�
	private boolean isInterstitialAdLoaded;   // ��ҳ����������Ƿ�ɹ�
	
	private AdvertisingSDK(){
		
	}
	
	public static AdvertisingSDK getInstance(){
		if(instance == null){
			instance = new AdvertisingSDK();
		}
		return instance;
	}
	
	public void initSDK(){
		SDKParams params = U8SDK.getInstance().getSDKParams();
		/*this.isBannerAdLoaded = sdkParams.getBoolean("ISBANNERADLOADED");*/
		this.isInterstitialAdLoaded = params.getBoolean("ISINTERSTITIALADLOADED");
		
		dialog = new ProgressDialog(U8SDK.getInstance().getContext());
        dialog.setProgressStyle(ProgressDialog.STYLE_SPINNER);
        dialog.setCancelable(true);
        dialog.setCanceledOnTouchOutside(false);
		dialog.setMessage("���ڳ�ʼ�����sdk,���Ժ�...");
        dialog.show();
        
        AdModOpen.initialize(U8SDK.getInstance().getContext(), APPID, APPKEY, new SdkInitListener() {
            @Override
            public void initFinish() {
                dialog.dismiss();
                dialog.setMessage("�������ع��, ���Ժ�...");
                Toast.makeText(U8SDK.getInstance().getContext(), "sdk��ʼ���ɹ�", Toast.LENGTH_SHORT).show();
            }

            @Override
            public void initError() {
                dialog.dismiss();
                Toast.makeText(U8SDK.getInstance().getContext(), "��ʼ�����SDKʧ��,��ȷ���������ӻ�appid/appkey�Ƿ���ȷ", Toast.LENGTH_LONG).show();
            }
        });
	}
	
	/***
	 * ������ʾ�����
	 */
	public void showBannerAd(){
		Log.e("adb_2", "���Ǻ����");
		
		/*AdModOpen.loadAd(U8SDK.getInstance().getContext(), unitID, U8SDK.getInstance().getContext(), new AdListener() {
            @Override
            public void onAdLoaded() {
                dialog.dismiss();
                isBannerAdLoaded = true;
                if (isBannerAdLoaded && isRequested) {
                	isRequested = false;
                    content.setVisibility(View.VISIBLE);
                } else {
                    Toast.makeText(U8SDK.getInstance().getContext(), "�����δ������ɣ����Ժ�", Toast.LENGTH_SHORT).show();
                }
                Toast.makeText(U8SDK.getInstance().getContext(), "���غ����ɹ�", Toast.LENGTH_SHORT).show();
                Log.d("loadAd", "onAdLoaded");
            }

            @Override
            public void onAdFailedToLoad(int errorCode, String errorMsg) {
                dialog.dismiss();
                isBannerAdLoaded = false;
                Toast.makeText(U8SDK.getInstance().getContext(), "���غ����ʧ�ܣ�ԭ��" + errorMsg, Toast.LENGTH_SHORT).show();
                Log.e("loadAd", "onAdFailedToLoad - > errorMsg=" + errorMsg);
            }

            @Override
            public void onAdOpened() {
                Log.d("loadAd", "onAdOpened");
            }

            @Override
            public void onAdClosed() {
                Log.d("loadAd", "onAdClosed");
            }

            @Override
            public void onAdLeftApplication() {
                Log.d("loadAd", "onAdLeftApplication");
            }
        });*/
	}
	
	/***
	 * ������ʾ�������
	 */
	public void showInterstitialAd(){
		Log.e("adb_2", "���ǲ�ҳ���");
		
		dialog.show();
		AdModOpen.loadFullAd(U8SDK.getInstance().getContext(), unitId, new AdListener() { //unitID=35
            @Override
            public void onAdLoaded() {
                dialog.dismiss();
                isInterstitialAdLoaded = true;
                if (isInterstitialAdLoaded) {
                	isInterstitialAdLoaded = false;
                    AdModOpen.showFullAd(U8SDK.getInstance().getContext());
                } else {
                    Toast.makeText(U8SDK.getInstance().getContext(), "��ҳ���δ������ɣ����Ժ�", Toast.LENGTH_SHORT).show();
                }
                Toast.makeText(U8SDK.getInstance().getContext(), "���ز�ҳ���ɹ�", Toast.LENGTH_SHORT).show();
                Log.d("loadFullAd", "onAdLoaded");
            }

            @Override
            public void onAdFailedToLoad(int errorCode, String errorMsg) {
                dialog.dismiss();
                isInterstitialAdLoaded = false;
                Toast.makeText(U8SDK.getInstance().getContext(), "���ز�ҳ���ʧ�ܣ�ԭ��" + errorMsg, Toast.LENGTH_SHORT).show();
                Log.e("loadFullAd", "onAdFailedToLoad - > errorMsg=" + errorMsg);
            }

            @Override
            public void onAdOpened() {
                Log.d("loadFullAd", "onAdOpened");
            }

            @Override
            public void onAdClosed() {
                Log.d("loadFullAd", "onAdClosed");
            }

            @Override
            public void onAdLeftApplication() {
                Log.d("loadFullAd", "onAdLeftApplication");
            }
        });
    }
}
