package com.u8.sdk;

import android.util.Log;
import com.baidu.gamesdk.ActivityAdPage.Listener;
import com.baidu.gamesdk.ActivityAdPage;
import com.baidu.gamesdk.ActivityAnalytics;
import com.baidu.gamesdk.BDGameSDK;
import com.baidu.gamesdk.BDGameSDKSetting;
import com.baidu.gamesdk.BDGameSDKSetting.Domain;
import com.baidu.gamesdk.IResponse;
import com.baidu.gamesdk.ResultCode;
import com.baidu.platformsdk.PayOrderInfo;
import com.u8.sdk.baidu.Utils;

public class BaiduSDK {
	
	private static BaiduSDK instance;
	
	private BaiduSDK(){
		
	}
	
	private ActivityAdPage mActivityAdPage;
	private ActivityAnalytics mActivityAnalytics;
	
	private int appID;
	private String appKey;
	private boolean isFixedpay;//�Ƿ�Ϊ����֧��
	private int ratio = 1;
	
	public static BaiduSDK getInstance(){
		if(instance == null){
			instance = new BaiduSDK();
		}
		return instance;
	}
	
	public void initSDK(SDKParams params){
		this.parseSDKParams(params);
		this.initSDK();
	}
	
	private void parseSDKParams(SDKParams params){
		this.appID = params.getInt("BD_APPID");
		this.appKey = params.getString("BD_AAKEY");
		this.isFixedpay = params.getBoolean("BD_FIXED_PAY");
		this.ratio = params.getInt("BD_RATIO");
	}
	
	private void initSDK(){
		BDGameSDKSetting mBDGameSDKSetting = new BDGameSDKSetting();
		mBDGameSDKSetting.setAppID(this.appID);//APPID����
		mBDGameSDKSetting.setAppKey(this.appKey);//APPKEY����
		mBDGameSDKSetting.setDomain(Domain.RELEASE);//����Ϊ��ʽģʽ
		mBDGameSDKSetting.setOrientation(Utils.getOrientation(U8SDK.getInstance().getApplication()));
		
		U8SDK.getInstance().setActivityCallback(new ActivityCallbackAdapter() {
			@Override
			public void onStop() {
				// TODO Auto-generated method stub
				closeFloatView();
				mActivityAdPage.onStop();
			}
			
			@Override
			public void onResume() {
				// TODO Auto-generated method stub
				mActivityAdPage.onResume(); 
				mActivityAnalytics.onResume();
			}
			
			@Override
			public void onPause() {
				// TODO Auto-generated method stub
				mActivityAdPage.onPause();
				mActivityAnalytics.onPause(); 
			}
			
			@SuppressWarnings("deprecation")
			@Override
			public void onDestroy() {
				// TODO Auto-generated method stub
				mActivityAdPage.onDestroy();
				BDGameSDK.destroy();
			}
		});
		
		BDGameSDK.init(U8SDK.getInstance().getContext(), mBDGameSDKSetting, new IResponse<Void>(){

			@Override
			public void onResponse(int resultCode, String resultDesc,
					Void extraData) {
				switch(resultCode){
				case ResultCode.INIT_SUCCESS:
					//��ʼ���ɹ�
					U8SDK.getInstance().onResult(U8Code.CODE_INIT_SUCCESS, "��ʼ���ɹ�");
					break;
					
				case ResultCode.INIT_FAIL:
				default:
					//��ʼ��ʧ��
					U8SDK.getInstance().onResult(U8Code.CODE_INIT_FAIL, "��ʼ��ʧ��"+resultDesc);
				}
			}
		}); 
		
		setSuspendWindowChangeAccountListener();
		setSessionInvalidListener();
		
		mActivityAnalytics = new ActivityAnalytics(U8SDK.getInstance().getContext());
		mActivityAdPage = new ActivityAdPage(U8SDK.getInstance().getContext(), new Listener(){
			@Override
			public void onClose() {
				// TODO �ر���ͣҳ, CP��������Ҽ�����Ϸ
			}
		}); 
	}
	
	public void login(){
		BDGameSDK.login(new IResponse<Void>() {
			@Override
			public void onResponse(int resultCode, String resultDesc, Void extraData) { 
				Log.d("login", "this resultCode is " + resultCode);
				switch(resultCode){
				case ResultCode.LOGIN_SUCCESS:
					//��¼�ɹ�
					String uid = BDGameSDK.getLoginUid();
					String token = BDGameSDK.getLoginAccessToken();
					U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_SUCCESS, uid);
					U8SDK.getInstance().onLoginResult(token);
					
					showFloatView();//��ʾ������
					
					break; 
				case ResultCode.LOGIN_CANCEL:
					//ȡ����¼
					U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "ȡ����¼");
					break;
				case ResultCode.LOGIN_FAIL:
				default:	
					//��¼ʧ��
					U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "��¼ʧ��");
				} 
			}
		});
	}
	
	public void pay(PayParams params){
		PayOrderInfo payOrderInfo = buildOrderInfo(params);
		
		BDGameSDK.pay(payOrderInfo, null, 
				new IResponse<PayOrderInfo>(){
			  
					@Override
					public void onResponse(int resultCode, String resultDesc,
							PayOrderInfo extraData) {
						switch(resultCode){
						case ResultCode.PAY_SUCCESS://֧���ɹ�
							U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "֧���ɹ�");
							break;
						case ResultCode.PAY_CANCEL://����֧��ȡ��
							U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "ȡ��֧��");
							break;	
						case ResultCode.PAY_FAIL://����֧��ʧ��
							U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "֧��ʧ��");
							break;	
						case ResultCode.PAY_SUBMIT_ORDER://�����Ѿ��ύ��֧�����δ֪�����磺�Ѿ������ˣ����ǲ�ѯ��ʱ��
							U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "�������ύ");
							break;	
						}
					}
			
		});
	}
	
	public void showFloatView(){//��ʾ������
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				BDGameSDK.showFloatView(U8SDK.getInstance().getContext());
			}
		});
	}
	
	public void closeFloatView(){//�ر�������
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				BDGameSDK.closeFloatView(U8SDK.getInstance().getContext());
			}
		});
	}
	
	private PayOrderInfo buildOrderInfo(PayParams data){
		
		PayOrderInfo payOrderInfo = new PayOrderInfo();
		payOrderInfo.setCooperatorOrderSerial(data.getOrderID());
		payOrderInfo.setProductName(data.getProductName()); 
		
		if(this.isFixedpay){
			payOrderInfo.setTotalPriceCent(data.getPrice() * 100);//�Է�Ϊ��λ
			payOrderInfo.setRatio(1);
		}else{
			payOrderInfo.setTotalPriceCent(0);//�Է�Ϊ��λ
			payOrderInfo.setRatio(this.ratio);
		}
		
		payOrderInfo.setExtInfo("");//���ֶν�����֧���ɹ���ԭ�����ظ�CP(������500���ַ�)
		return payOrderInfo;
	}
	
	private void setSuspendWindowChangeAccountListener(){//�����л��˺��¼��������������Ľ����л��˺ţ�
		BDGameSDK.setSuspendWindowChangeAccountListener(new IResponse<Void>(){

			@Override
			public void onResponse(int resultCode, String resultDesc,
					Void extraData) { 
				 switch(resultCode){
				 case ResultCode.LOGIN_SUCCESS:
					 //TODO ��¼�ɹ�������֮ǰ��ʲô��¼״̬����Ϸ�ڲ���Ҫ�л����µ��û�
					 String token = BDGameSDK.getLoginAccessToken();
					 U8SDK.getInstance().onSwitchAccount(token);
					 break;
				 case ResultCode.LOGIN_FAIL:
					//TODO ��¼ʧ�ܣ���Ϸ�ڲ�֮ǰ������Ѿ���¼�ģ�Ҫ����Լ���¼�ĵ�¼״̬�����ó�δ��¼�����֮ǰδ��¼�����ô���
					 U8SDK.getInstance().onLogout();
					 break;
				 case ResultCode.LOGIN_CANCEL:					 
					//TODO ȡ��������ǰ��ĵ�¼״̬û�仯
					 break; 
				 } 
			}
		});
	}
	
	/** 
	* @Description: ����sessionʧЧʱ���µ�¼
	 */
	private void setSessionInvalidListener(){
		BDGameSDK.setSessionInvalidListener(new IResponse<Void>(){

			@Override
			public void onResponse(int resultCode, String resultDesc,
					Void extraData) {
				if(resultCode == ResultCode.SESSION_INVALID){
					//�ỰʧЧ����������Ҫ���µ�¼����������Ϸ
					U8SDK.getInstance().onLogout();
				}
				
			}
			
		});
	}
}
