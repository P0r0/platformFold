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
	private boolean isFixedpay;//是否为定额支付
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
		mBDGameSDKSetting.setAppID(this.appID);//APPID设置
		mBDGameSDKSetting.setAppKey(this.appKey);//APPKEY设置
		mBDGameSDKSetting.setDomain(Domain.RELEASE);//设置为正式模式
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
					//初始化成功
					U8SDK.getInstance().onResult(U8Code.CODE_INIT_SUCCESS, "初始化成功");
					break;
					
				case ResultCode.INIT_FAIL:
				default:
					//初始化失败
					U8SDK.getInstance().onResult(U8Code.CODE_INIT_FAIL, "初始化失败"+resultDesc);
				}
			}
		}); 
		
		setSuspendWindowChangeAccountListener();
		setSessionInvalidListener();
		
		mActivityAnalytics = new ActivityAnalytics(U8SDK.getInstance().getContext());
		mActivityAdPage = new ActivityAdPage(U8SDK.getInstance().getContext(), new Listener(){
			@Override
			public void onClose() {
				// TODO 关闭暂停页, CP可以让玩家继续游戏
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
					//登录成功
					String uid = BDGameSDK.getLoginUid();
					String token = BDGameSDK.getLoginAccessToken();
					U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_SUCCESS, uid);
					U8SDK.getInstance().onLoginResult(token);
					
					showFloatView();//显示悬浮窗
					
					break; 
				case ResultCode.LOGIN_CANCEL:
					//取消登录
					U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "取消登录");
					break;
				case ResultCode.LOGIN_FAIL:
				default:	
					//登录失败
					U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "登录失败");
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
						case ResultCode.PAY_SUCCESS://支付成功
							U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "支付成功");
							break;
						case ResultCode.PAY_CANCEL://订单支付取消
							U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "取消支付");
							break;	
						case ResultCode.PAY_FAIL://订单支付失败
							U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "支付失败");
							break;	
						case ResultCode.PAY_SUBMIT_ORDER://订单已经提交，支付结果未知（比如：已经请求了，但是查询超时）
							U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "订单已提交");
							break;	
						}
					}
			
		});
	}
	
	public void showFloatView(){//显示悬浮窗
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				BDGameSDK.showFloatView(U8SDK.getInstance().getContext());
			}
		});
	}
	
	public void closeFloatView(){//关闭悬浮窗
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
			payOrderInfo.setTotalPriceCent(data.getPrice() * 100);//以分为单位
			payOrderInfo.setRatio(1);
		}else{
			payOrderInfo.setTotalPriceCent(0);//以分为单位
			payOrderInfo.setRatio(this.ratio);
		}
		
		payOrderInfo.setExtInfo("");//该字段将会在支付成功后原样返回给CP(不超过500个字符)
		return payOrderInfo;
	}
	
	private void setSuspendWindowChangeAccountListener(){//设置切换账号事件监听（个人中心界面切换账号）
		BDGameSDK.setSuspendWindowChangeAccountListener(new IResponse<Void>(){

			@Override
			public void onResponse(int resultCode, String resultDesc,
					Void extraData) { 
				 switch(resultCode){
				 case ResultCode.LOGIN_SUCCESS:
					 //TODO 登录成功，不管之前是什么登录状态，游戏内部都要切换成新的用户
					 String token = BDGameSDK.getLoginAccessToken();
					 U8SDK.getInstance().onSwitchAccount(token);
					 break;
				 case ResultCode.LOGIN_FAIL:
					//TODO 登录失败，游戏内部之前如果是已经登录的，要清楚自己记录的登录状态，设置成未登录。如果之前未登录，不用处理。
					 U8SDK.getInstance().onLogout();
					 break;
				 case ResultCode.LOGIN_CANCEL:					 
					//TODO 取消，操作前后的登录状态没变化
					 break; 
				 } 
			}
		});
	}
	
	/** 
	* @Description: 监听session失效时重新登录
	 */
	private void setSessionInvalidListener(){
		BDGameSDK.setSessionInvalidListener(new IResponse<Void>(){

			@Override
			public void onResponse(int resultCode, String resultDesc,
					Void extraData) {
				if(resultCode == ResultCode.SESSION_INVALID){
					//会话失效，开发者需要重新登录或者重启游戏
					U8SDK.getInstance().onLogout();
				}
				
			}
			
		});
	}
}
