package com.u8.sdk;

import com.nearme.game.sdk.GameCenterSDK;
import com.nearme.game.sdk.callback.GameExitCallback;
import com.nearme.game.sdk.callback.SinglePayCallback;
import com.nearme.game.sdk.common.model.biz.PayInfo;
import com.nearme.game.sdk.common.util.AppUtil;
import com.nearme.platform.opensdk.pay.PayResponse;

public class OppoSDK {
	
	private static OppoSDK instance;
	
	private OppoSDK(){
		
	}
	
	private static String appSecret;
	
	public static OppoSDK getInstance(){
		if(instance == null){
			instance = new OppoSDK();
		}
		return instance;
	}
	
	public void initSDK(SDKParams params){
		parseSDKParms(params);
		initSDK();
	}
	
	private void parseSDKParms(SDKParams params){
		OppoSDK.appSecret = params.getString("OPPO_APPSECRET");
	}
	
	private void initSDK(){
		U8SDK.getInstance().setActivityCallback(new ActivityCallbackAdapter(){
			@Override
			public void onResume() {
				// TODO Auto-generated method stub
				super.onResume();
				GameCenterSDK.getInstance().onResume(U8SDK.getInstance().getContext());
			}
			
			@Override
			public void onPause() {
				// TODO Auto-generated method stub
				GameCenterSDK.getInstance().onPause();
				super.onPause();
			}
		});
		
		GameCenterSDK.init(OppoSDK.appSecret, U8SDK.getInstance().getContext());
	}
	
	public void pay(PayParams data){
		
		PayInfo payInfo = createTestPayInfo(data);
		
		GameCenterSDK.getInstance().doSinglePay(U8SDK.getInstance().getContext(), payInfo, new SinglePayCallback() {
			@Override
			public void onSuccess(String arg0) {
				// add OPPO 支付成功处理逻辑~
				U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "支付成功");
			}
			
			@Override
			public void onFailure(String resultMsg, int resultCode) {
				// add OPPO 支付失败处理逻辑~
				if (PayResponse.CODE_CANCEL != resultCode) {
					U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "支付失败");
				} else {
					// 取消支付处理
					U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "取消支付");
				}
			}
			
			/* bySelectSMSPay 为true表示回调来自于支付渠道列表选择短信支付，false表示没有
			网络等非主动选择短信支付时候的回调 */
			@Override
			public void onCallCarrierPay(PayInfo payInfo, boolean bySelectSMSPay) {
				// add 运营商支付逻辑~
				if(bySelectSMSPay){
					U8SDK.getInstance().onResult(U8Code.CODE_NO_NETWORK, "运营商支付");
				} else{
					U8SDK.getInstance().onResult(U8Code.CODE_NO_NETWORK, "没有网络");
				}
			}
		});
	}
	
	private PayInfo createTestPayInfo(PayParams data){
		// cp支付参数
		PayInfo payInfo = new PayInfo(data.getOrderID(), null, data.getPrice() * 100);
		payInfo.setProductDesc(data.getProductDesc());
		payInfo.setProductName(data.getProductName());
		// payInfo.setShowCpSmsChannel(true);  //sdk支付界面是否显示运营商短信入口，true显示， false不显示
		// payInfo.setUseCachedChannel(true);  //设置是否使用上次使用过的支付方式
		// 支付结果服务器回调地址，不通过服务端回调发货的游戏可以不用填写~
		payInfo.setCallbackUrl("http://gamecenter.wanyol.com:8080/gamecenter/callback_test_url");
		
		return payInfo;
	}
	
	public void sdkExit() {
		// TODO Auto-generated method stub
		GameCenterSDK.getInstance().onExit(U8SDK.getInstance().getContext(), new GameExitCallback() {
			@Override
			public void exitGame() {
				// CP 实现游戏退出操作，也可以直接调用
				// AppUtil工具类里面的实现直接强杀进程~
				AppUtil.exitGameProcess(U8SDK.getInstance().getContext());
			}
		});
	}
	
}
