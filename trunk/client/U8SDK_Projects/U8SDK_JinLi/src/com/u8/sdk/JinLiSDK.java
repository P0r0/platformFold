package com.u8.sdk;

import android.util.Log;

import com.gionee.game.offlinesdk.GamePlatform;
import com.gionee.game.offlinesdk.InitPluginCallback;
import com.gionee.game.offlinesdk.OrderInfo;
import com.gionee.game.offlinesdk.PayCallback;

public class JinLiSDK {
	
	private static JinLiSDK instance;
	
	private JinLiSDK() {
		
	}
	
	public static String apiKey = U8SDK.getInstance().getSDKParams().getString("JL_APIKEY");
	public static String privateKey = U8SDK.getInstance().getSDKParams().getString("JL_PRIVATEKEY");
	
	public static JinLiSDK getInstance(){
		if(instance == null){
			instance = new JinLiSDK();
		}
		return instance;
	}
	
	public void initSDK(SDKParams params){
		this.parseSDKParams(params);
		this.initSDK();
	}
	
	private void initSDK(){
		InitPluginCallback mInitPluginCallback = new InitPluginCallback() {
			@Override
			public void onEvent(int event) {
				// TODO Auto-generated method stub
				if (InitPluginCallback.EVENT_INIT_PLUGIN_FINISH == event) {
					// 插件初始化完成，请游戏根据实际情况处理
					U8SDK.getInstance().onResult(U8Code.CODE_INIT_SUCCESS, "插件初始化成功");
				} else {
					U8SDK.getInstance().onResult(U8Code.CODE_INIT_FAIL, "插件初始化失败");
				}
			}
		};
		GamePlatform.getInstance().initPlugin(U8SDK.getInstance().getContext(), mInitPluginCallback);
	}
	
	private void parseSDKParams(SDKParams params){
		
	}
	
	public void pay(PayParams data) {
		// TODO Auto-generated method stub
		OrderInfo orderInfo = createOrderInfo(data);
		
		//调用支付接口
        GamePlatform.getInstance().pay(U8SDK.getInstance().getContext(), orderInfo, new PayCallback() {

            @Override
            public void onSuccess() {
                // 测试用，支付成功情况，请游戏更具实际情况处理
                U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "支付成功");
            }

            @Override
            public void onFail(String errCode, String errDescription) {
                // 测试用，支付失败情况，请游戏更具实际情况处理
            	U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "支付失败：code：" + errCode + ", des：" + errDescription);
            }
        });
	}
	
	private OrderInfo createOrderInfo(PayParams data) {
		OrderInfo orderInfo = new OrderInfo();  //订单信息
		orderInfo.setCpOrderNum(data.getOrderID());    //商品订单号
		orderInfo.setProductName(data.getProductName());   //商品名称
		orderInfo.setTotalFee(Integer.toString(data.getPrice() * 100));      //商品总价格
		
		/***
		 * 1.支付宝支付：GamePlatform.PAY_METHOD_ALIPAY
		 * 2.微信支付：GamePlatform.PAY_METHOD_WECHAT
		 * 3.自选支付方式：GamePlatform.PAY_METHOD_UNSPECIFIED
		 */
		orderInfo.setPayMethod(GamePlatform.PAY_METHOD_UNSPECIFIED); //指定支付方式（支付宝支付，微信支付或自选支付方式）
		orderInfo.setUserId(data.getRoleId());        //用户的唯一标示（可选项）
		
		return orderInfo;
	}
	
}