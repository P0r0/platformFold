package com.u8.sdk;

import android.text.TextUtils;
import android.util.Log;
import com.u8.sdk.PayParams;
import com.u8.sdk.SDKParams;
import com.u8.sdk.U8Code;
import com.u8.sdk.U8SDK;
import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.MiErrorCode;
import com.xiaomi.gamecenter.sdk.OnExitListner;
import com.xiaomi.gamecenter.sdk.OnLoginProcessListener;
import com.xiaomi.gamecenter.sdk.OnPayProcessListener;
import com.xiaomi.gamecenter.sdk.entry.MiAccountInfo;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.xiaomi.gamecenter.sdk.entry.MiBuyInfoOffline;

public class XiaoMiSDK {
	
	private static XiaoMiSDK instance;
	
	private XiaoMiSDK() {
		// TODO Auto-generated constructor stub
	}
	
	private String appID;
	private String appKey;
	private String session;
	private String productCode;
	
	public static XiaoMiSDK getInstance(){
		if (instance == null) {
			instance = new XiaoMiSDK();
		}
		return instance;
	}
	
	public void initSDK(SDKParams params) {
		// TODO Auto-generated method stub
		parseSDKParams(params);
		initSDK();
	}
	
	private void parseSDKParams(SDKParams params){
		this.appID = params.getString("XM_APPID");
		this.appKey = params.getString("XM_APPKEY");
		this.productCode = params.getString("XM_PRODUCTCODE");
	}
	
	private void initSDK(){
		Log.e("xiaomi_1", "初始化");
		MiAppInfo appInfo = new MiAppInfo();
		appInfo.setAppId(this.appID);
		appInfo.setAppKey(this.appKey);
		MiCommplatform.Init(U8SDK.getInstance().getContext(), appInfo);
		Log.e("xiaomi_2", "初始化成功");
	}
	
	public void login() {
		// 调用SDK执行登陆操作
		Log.e("xiaomi_3", "登录");
		MiCommplatform.getInstance().miLogin(U8SDK.getInstance().getContext(), new OnLoginProcessListener() {
			@Override
			public void finishLoginProcess(int code, MiAccountInfo result) {
				// TODO Auto-generated method stub
				switch (code) {
					case MiErrorCode.MI_XIAOMI_GAMECENTER_SUCCESS:
						Log.e("xiaomi_4", "登录成功");
						session = result.getSessionId();
						U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_SUCCESS, "登录成功");
//				        long uid = result.getUid();  //获取用户的登陆后的 UID(即用户唯一标识)，若没有登录返回 null
						break;
						
					case MiErrorCode.MI_XIAOMI_GAMECENTER_ERROR_LOGIN_FAIL:
						Log.e("xiaomi_4", "登录失败");
						U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "登录失败");
						break;
										
					case MiErrorCode.MI_XIAOMI_GAMECENTER_ERROR_CANCEL:
						Log.e("xiaomi_4", "取消登录");
						U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "取消登录");
						break;
						
					case MiErrorCode.MI_XIAOMI_GAMECENTER_ERROR_ACTION_EXECUTED:
						Log.e("xiaomi_4", "正在登录中,稍等...");
						U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "正在登录中,稍等...");
						break;
	
					default:
						Log.e("xiaomi_4", "登录超时");
						U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_TIMEOUT, "登录超时");
						break;
				}
			}
		});
	} 
	
	public void pay(PayParams data) {
		Log.e("xiaomi_5", "支付");
		// TODO Auto-generated method stub
		MiBuyInfoOffline offline = new MiBuyInfoOffline();
		offline.setCpOrderId(data.getOrderID());//订单号唯一(不为空) 
		offline.setProductCode(this.productCode);//商品代码,开发者申请获得(不为空) 
		offline.setCount(data.getCoinNum());//购买数量 (只能为 1)(不为空)
		MiCommplatform.getInstance().miUniPayOffline(U8SDK.getInstance().getContext(), offline,
		    new OnPayProcessListener(){
		    @Override
		    public void finishPayProcess(int code) { 
		        switch(code) {
			        case MiErrorCode.MI_XIAOMI_GAMECENTER_SUCCESS:  //购买成功,请处理发货
			        	Log.e("xiaomi_6", "购买成功"+code);
			        	U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "购买成功");
			        	break;
			        
			        case MiErrorCode.MI_XIAOMI_GAMECENTER_ERROR_PAY_CANCEL:  //取消购买
			        	Log.e("xiaomi_6", "取消购买"+code);
			        	U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "取消购买");
			        	break;
			        
			        case MiErrorCode.MI_XIAOMI_GAMECENTER_ERROR_PAY_FAILURE:  //购买失败
			        	Log.e("xiaomi_6", "购买失败"+code);
			        	U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "购买失败");
			        	break;
			        
			        case MiErrorCode.MI_XIAOMI_GAMECENTER_ERROR_PAY_REPEAT:  //已购买过,无需购买,可直接使用
			        	Log.e("xiaomi_6", "您已经购买过，无需购买"+code);
			        	U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "您已经购买过，无需购买");
			        	break;
			        
			        case MiErrorCode.MI_XIAOMI_GAMECENTER_ERROR_ACTION_EXECUTED:  //操作正在执行中
			        	Log.e("xiaomi_6", "正在执行，不要重复操作"+code);
			        	U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "正在执行，不要重复操作");
			        	break;
			        	
			        case MiErrorCode.MI_XIAOMI_PAYMENT_ERROR_LOGIN_FAIL:  //操作正在执行中
			        	Log.e("xiaomi_6", "您还没有登陆，请先登陆"+code);
			        	U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "您还没有登陆，请先登陆");
			        	break;
			        
			        default:  //购买失败
			        	U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "购买失败"+code);
			        	break; 
		        }
		    } 
		});
	}
	
	public void sdkExit() {
		// TODO Auto-generated method stub
		if(!TextUtils.isEmpty(session))
		{
			MiCommplatform.getInstance().miAppExit(U8SDK.getInstance().getContext(), new OnExitListner()
			{
				@Override
				public void onExit(int code)
				{
					if (code == MiErrorCode.MI_XIAOMI_EXIT)
					{
						Log.e("xiaomi_7", "登出成功");
						U8SDK.getInstance().onResult(U8Code.CODE_LOGOUT_SUCCESS, "退出成功");
						android.os.Process.killProcess(android.os.Process.myPid()); // 执行退出的一些操作
					}
				}
			});
		}
		else
		{
			Log.e("xiaomi_7", "退出成功");
			U8SDK.getInstance().onResult(U8Code.CODE_LOGOUT_SUCCESS, "退出成功");
			U8SDK.getInstance().getContext().finish();
		}
	}
	
}
