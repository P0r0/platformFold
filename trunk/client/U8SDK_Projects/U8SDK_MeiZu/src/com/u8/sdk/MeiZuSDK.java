package com.u8.sdk;

import android.os.Bundle;
import android.util.Log;
import com.meizu.gamesdk.model.callback.MzPayListener;
import com.meizu.gamesdk.model.model.MzPayParams;
import com.meizu.gamesdk.model.model.PayResultCode;
import com.meizu.gamesdk.offline.core.MzGameCenterPlatform;
import com.meizu.gamesdk.utils.MD5Utils;

public class MeiZuSDK {
	
	private static MeiZuSDK instance;
	
	private MeiZuSDK() {
		// TODO Auto-generated constructor stub
	}
	
	private String appID;
	private String appKey;
	private String appSecret;
	private String cpUserInfo;
	private int payType; //支付方式，默认值：”0”（即定额支付）
	private Boolean isChecked; //是否关闭短信支付,默认是打开状态
	
	public static MeiZuSDK getInstance(){
		if(instance == null){
			instance = new MeiZuSDK();
		}
		return instance;
	}
	
	public void initSDK(SDKParams params) {
		parseSDKParams(params);
		initSDK();
	}
	
	private void parseSDKParams(SDKParams params){
		this.appID = params.getString("MZ_APPID");
		this.appKey = params.getString("MZ_APPKEY");
		this.appSecret = params.getString("MZ_APPSECRET");
		this.cpUserInfo = params.getString("MZ_CPUSERINFO");
		this.payType = params.getInt("MZ_PAYTYPE");
		this.isChecked = params.getBoolean("MZ_ISCHECKED");
	}
	
	private void initSDK() {
		// TODO Auto-generated method stub
		MzGameCenterPlatform.init(U8SDK.getInstance().getContext(), this.appID, this.appKey);
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				MzGameCenterPlatform.orderQueryConfirm(U8SDK.getInstance().getContext(), new MzPayListener() {
					@Override
					public void onPayResult(int code, Bundle info, String errorMsg) {
						// TODO Auto-generated method stub
						String orderid = null;
						if (info != null) {
							orderid = info.getString(MzPayParams.ORDER_KEY_ORDER_ID);
						}
						if (code == PayResultCode.PAY_SUCCESS) {
							U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "支付成功");
							Log.e("MeiZu_pay", "支付成功:" + orderid);
						} else if (code == PayResultCode.PAY_USE_SMS) {
							U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "短信支付");
							Log.e("MeiZu_pay", "短信支付:" + orderid);
						} else if (code == PayResultCode.PAY_ERROR_CANCEL) {
							U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "取消支付");
							Log.e("MeiZu_pay", "用户取消:" + orderid);
						} else if (code == PayResultCode.PAY_ERROR_CODE_DUPLICATE_PAY) {
							U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "重复支付");
							Log.e("MeiZu_pay", "重复支付:" + orderid);
						} else if (code == PayResultCode.PAY_ERROR_GAME_VERIFY_ERROR) {
							U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "支付失败");
							Log.e("MeiZu_pay", errorMsg);
						} else {
							U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "支付失败");
							Log.e("MeiZu_pay", "支付失败:" + code + "," + errorMsg);
						}
						Log.d("MeiZu_pay", errorMsg + code);
					}
				});
			}
		});
		Log.e("MeiZu_init", "初始化结束");
	}
	
	public void pay(final PayParams data){
		Bundle payInfo = generatePayInfo(data);
		if (payInfo == null) {
			return;
		}
		MzGameCenterPlatform.singlePay(U8SDK.getInstance().getContext(), payInfo, new MzPayListener() {
			@Override
			public void onPayResult(int code, Bundle info, String errorMsg) {
				// TODO Auto-generated method stub
				String orderid = data.getOrderID();
				if (info != null) {
					orderid = info.getString(MzPayParams.ORDER_KEY_ORDER_ID);
				}
				if (code == PayResultCode.PAY_SUCCESS) {
					U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "支付成功");
					Log.e("MeiZu_pay", "支付成功:" + orderid);
				} else if (code == PayResultCode.PAY_USE_SMS) {
					U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "短信支付");
					Log.e("MeiZu_pay", "短信支付:" + orderid);
				} else if (code == PayResultCode.PAY_ERROR_CANCEL) {
					U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "取消支付");
					Log.e("MeiZu_pay", "用户取消:" + orderid);
				} else if (code == PayResultCode.PAY_ERROR_CODE_DUPLICATE_PAY) {
					U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "重复支付");
					Log.e("MeiZu_pay", "重复支付:" + orderid);
				} else if (code == PayResultCode.PAY_ERROR_GAME_VERIFY_ERROR) {
					U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "支付失败");
					Log.e("MeiZu_pay", errorMsg);
				} else {
					U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "支付失败");
					Log.e("MeiZu_pay", "支付失败:" + code + "," + errorMsg);
				}
				Log.d("MeiZu_pay", errorMsg + code);
			}
		});
	}
	
	private Bundle generatePayInfo(PayParams data) {

		String userInfo = this.cpUserInfo;
		String totalPrice = String.valueOf(data.getPrice());
		String orderId = data.getOrderID();
		String productId = data.getProductId();
		String productSubject = data.getProductName();
		String productBody = "";
		long createTiem = System.currentTimeMillis();

		StringBuilder builder = new StringBuilder();
		final String equalStr = "=";
		final String andStr = "&";
		
		builder.append("app_id" + equalStr + this.appID + andStr);
		builder.append("cp_order_id" + equalStr + orderId + andStr);
		builder.append("create_time" + equalStr + createTiem + andStr);
		builder.append("pay_type" + equalStr + this.payType + andStr);
		builder.append("product_body" + equalStr + productBody + andStr);
		builder.append("product_id" + equalStr + productId + andStr);
		builder.append("product_subject" + equalStr + productSubject + andStr);
		builder.append("total_price" + equalStr + totalPrice + andStr);
		builder.append("user_info" + equalStr + userInfo);
		builder.append(":" + this.appSecret);
		String sign = MD5Utils.sign(builder.toString());
		String signType = "md5";

		Bundle payInfo = new Bundle();
		
		payInfo.putString(MzPayParams.ORDER_KEY_ORDER_APPID, this.appID); // appid
		payInfo.putString(MzPayParams.ORDER_KEY_CP_INFO, userInfo); // cp自定义信息
		payInfo.putString(MzPayParams.ORDER_KEY_AMOUNT, totalPrice); // 金额
		payInfo.putString(MzPayParams.ORDER_KEY_ORDER_ID, orderId); // 订单id
		payInfo.putString(MzPayParams.ORDER_KEY_PRODUCT_BODY, productBody); // 产品id
		payInfo.putString(MzPayParams.ORDER_KEY_PRODUCT_ID, productId); // 产品id
		payInfo.putString(MzPayParams.ORDER_KEY_PRODUCT_SUBJECT, productSubject); // 产品描述（产品名称）
		payInfo.putInt(MzPayParams.ORDER_KEY_PAY_TYPE, this.payType); // 支付方式，默认值：”0”（即定额支付）
		payInfo.putString(MzPayParams.ORDER_KEY_SIGN, sign); // 签名
		payInfo.putString(MzPayParams.ORDER_KEY_SIGN_TYPE, signType); // 签名类型
		payInfo.putBoolean(MzPayParams.ORDER_KEY_DISABLE_PAY_TYPE_SMS, this.isChecked); // 是否关闭短信支付,默认是打开状态
		payInfo.putLong(MzPayParams.ORDER_KEY_CREATE_TIME, createTiem);
		
		payInfo.putInt(MzPayParams.ORDER_KEY_PAY_CHANNEL, 0);// 优先支付渠道 0:支付宝 1:微信 2:银联 3:短信
		return payInfo;

	}

}
