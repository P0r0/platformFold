package com.u8.sdk;

import org.json.JSONException;
import org.json.JSONObject;
import com.u8.sdk.widget.FlashMsg;
import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import cn.uc.gamesdk.sa.UCGameSdk;
import cn.uc.gamesdk.sa.iface.open.SDKConst;
import cn.uc.gamesdk.sa.iface.open.UCCallbackListener;
import cn.uc.gamesdk.sa.iface.open.UCGameSDKStatusCode;
import cn.uc.paysdk.SDKCore;
import cn.uc.paysdk.face.commons.PayResponse;
import cn.uc.paysdk.face.commons.Response;
import cn.uc.paysdk.face.commons.SDKCallbackListener;
import cn.uc.paysdk.face.commons.SDKError;
import cn.uc.paysdk.face.commons.SDKProtocolKeys;
import cn.uc.paysdk.face.commons.SDKStatus;

public class UCSDK {

	private static UCSDK instance;
	
	public UCSDK() {
		// TODO Auto-generated constructor stub
	}
	
	private static Handler handler;
	private FlashMsg flash;
	private boolean firstTime = true;
	
	private final int HANDLER_SHOW_ERRORDIALOG = 2;// 显示错误提示对话框
	private final int HANDLER_FINISH_GAME = 12;// 结束游戏
	private final int HANDLER_SDK_CALLBACK = 14;// SDK回调
	private final int HANDLER_LOADING_STEP = 18;// 加载步骤
	private final int HANDLER_HIDE_LOADING = 19;// 隐藏加载
	private final int HANDLER_PAYBTN_VISIABLE = 20;// 支付按钮可点击
	
	private String appID;
	private String appKey;
	
	public static UCSDK getInstance(){
		if (instance == null) {
			instance = new UCSDK();
		}
		return instance;
	}
	
	public void initSDK(SDKParams params){
		parseSDKParams(params);
		initHandler();
		initSDK();
	}
	
	private void parseSDKParams(SDKParams params){
		this.appID = params.getString("UC_APPID");
		this.appKey = params.getString("UC_APPKEY");
	}
	
	private void initSDK() {
		Log.e("UC_init", "初始化开始");
		UCGameSdk.defaultSdk().setCallback(SDKConst.PAY_INIT_LISTENER, new SDKCallbackListener() {
			public void onSuccessful(int statusCode, Response response) {
				Log.e("UC_init", "支付成功回调");
				// 支付成功回调
				if (response.getType() == Response.LISTENER_TYPE_INIT){ // 用于处理初始化消息
                    Message message = new Message();
                    message.what = HANDLER_PAYBTN_VISIABLE;
                    handler.sendMessage(message);
                    Log.e("UC_init", "支付初始化成功，可以调用支付接口了");				
				}else if (response.getType() == Response.LISTENER_TYPE_PAY){ // 用于处理
				// 历史订单的响应确认消息
					/***
					 * 当为支付回调时，必须响应消息设置setMessage 必须及时响应，不要进行耗时操作，否则会导致线程阻塞
					 * 相关异步操作可以在handler中进行，另起工作者线程 设置为
					 * Response.OPERATE_SUCCESS_MSG 代表CP成功进行相关动作时，响应SDK
					 * Response.OPERATE_FAIL_MSG 代表CP进行相关动作失败时，响应SDK
					 */
					// #########################[重要，确认收到]############################
					response.setMessage(Response.OPERATE_SUCCESS_MSG);
					// #########################!!!!!!!!!!!!!!!!!!!!!!!!!############################
					try {
					    if (!TextUtils.isEmpty(response.getData())){
    						JSONObject data = new JSONObject(response.getData());
    						String orderId = data.getString(PayResponse.CP_ORDER_ID); // CP订单号
    						String tradeId = data.getString(PayResponse.TRADE_ID); // 交易号
    						String payMoney = data.getString(PayResponse.PAY_MONEY); // 支付金额
    						String payType = data.getString(PayResponse.PAY_TYPE); // 支付类型
    						String orderStatus = data.getString(PayResponse.ORDER_STATUS); // 订单状态[00:成功][01:失败]
    						String orderFinishTime = data.getString(PayResponse.ORDER_FINISH_TIME); // 订单完成时间
    						String productName = data.getString(PayResponse.PRO_NAME);// 道具名称
    						String extendInfo = data.optString(PayResponse.EXT_INFO); // 商品扩展信息
    						String attachInfo = data.optString(PayResponse.ATTACH_INFO); // 附加透传信息
					    }
					}catch (JSONException ex) {
						ex.printStackTrace();
					}
				}
			}

			@Override
			public void onErrorResponse(SDKError error) {
				Log.e("UC_init", "支付回调失败");
				// 失败,该回调是在子线程中调用，UI操作需转到UI线程执行
				String msg = error.getMessage();
                
                if (TextUtils.isEmpty(msg)) {
					msg = "SDK occur error!";
				}
				Message message = new Message();
				message.what = HANDLER_SHOW_ERRORDIALOG;
				message.obj = msg;
				handler.sendMessage(message);
			}
		});

		Log.e("UC_init", "跳过支付回调---SDK初始化回调开始");
		
		UCGameSdk.defaultSdk().setCallback(SDKConst.SDK_INIT_LISTENER, new cn.uc.gamesdk.sa.iface.open.UCCallbackListener<String>() {
			@Override
			public void callback(int statuscode, String msg) {
				Log.e("UC_init_callback", "回调编码："+statuscode);
				switch (statuscode) {
				case UCGameSDKStatusCode.SUCCESS: {
					firstTime = false;
					Message message = new Message();
					message.what = FlashMsg.HANDLER_END_LOGO_MSG1;
					handler.sendMessageDelayed(message, 3000);
				}
					break;
				default: {
					if (TextUtils.isEmpty(msg)) {
						msg = "SDK occur error!";
					}
					Message message = new Message();
					message.what = HANDLER_SHOW_ERRORDIALOG;
					message.obj = msg;
					handler.sendMessage(message);
					if (firstTime) {
						firstTime = false;
						message = new Message();
						message.what = FlashMsg.HANDLER_END_LOGO_MSG1;
						handler.sendMessageDelayed(message, 3000);
					}
				}
					break;
				}
			}
		});
		
		Log.e("UC_init", "SDK初始化回调结束");

		try{
			Bundle payInitData = new Bundle();
			payInitData.putString(SDKProtocolKeys.APP_ID, this.appID);
			payInitData.putString(SDKProtocolKeys.APP_KEY, this.appKey);
			Log.e("UC_init_error", this.appID+" --- "+this.appKey);
			U8SDK.getInstance().setActivityCallback(new ActivityCallbackAdapter(){
				public void onResume() {
					// TODO Auto-generated method stub
					Log.e("UC_init_error", "onResume()");
					super.onResume();
					Log.e("UC_init_error", "onResume()_2");
					if (U8SDK.getInstance().getContext().getRequestedOrientation() != ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE) 
					{
						U8SDK.getInstance().getContext().setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);
					}
				}
				
				@Override
				public void onDestroy() {
					// TODO Auto-generated method stub
					Log.e("UC_init_error", "onDestroy()");
					super.onDestroy();
				}
			});
			UCGameSdk.defaultSdk().init(U8SDK.getInstance().getContext(), payInitData);
			
			Log.e("UC_init", "初始化结束");
		}catch (Exception e) {

		}
	}
	
	@SuppressLint("HandlerLeak")
	private void initHandler() {
		handler = new Handler() {
			public void handleMessage(Message msg) {
				switch (msg.what) {
				case HANDLER_PAYBTN_VISIABLE: //支付按钮可点击
					Log.e("UC_hadler", "支付按钮可点击");
				    break;
		
				case HANDLER_SHOW_ERRORDIALOG: //显示错误提示对话框
				case HANDLER_SDK_CALLBACK:   //SDK回调
					Log.e("UC_handler", "SDK回调");
				    if (U8SDK.getInstance().getContext().isFinishing()) {
	                    return;
	                }
					String message = (String) msg.obj;
					if (TextUtils.isEmpty(message)){
						message = "unknown";
					}
					AlertDialog.Builder builder = new Builder(U8SDK.getInstance().getContext());
					builder.setTitle("Tips");
					builder.setMessage(message);
					builder.setPositiveButton("ok", new DialogInterface.OnClickListener() {
						@Override
						public void onClick(DialogInterface arg, int arg1) {
							
						}
					});
					builder.create().show();
					break;

				case HANDLER_FINISH_GAME: //结束游戏
					Log.e("UC_handler", "结束游戏");
					U8SDK.getInstance().getContext().finish();
					break;

				case HANDLER_LOADING_STEP: //加载步骤
					Log.e("UC_handler", "加载步骤");
//					setLoadingAnimation(msg.arg1);
					break;
				case HANDLER_HIDE_LOADING: //隐藏加载
					Log.e("UC_handler", "隐藏加载");
					break;
				case FlashMsg.HANDLER_UPDATE_LOGO_MSG:
					Log.e("UC_handler", "update logo");
					flash.updateLogoMsg(msg.arg1);
					break;
				case FlashMsg.HANDLER_END_LOGO_MSG:
					Log.e("UC_handler", "end logo");
					flash.endMsg();
					break;
				case FlashMsg.HANDLER_END_LOGO_MSG1:
					Log.e("UC_handler", "OnSuccessful");
					break;
				}
			}
		};
	}

	public void pay(PayParams data){
		Intent payIntent = new Intent();// 调起SDK支付界面
		payIntent.putExtra(SDKProtocolKeys.CP_ORDER_ID, data.getOrderID());//CP_ORDER_ID非必传，但是如果传了，需要保证唯一性，即不能重复下单
		payIntent.putExtra(SDKProtocolKeys.APP_NAME, "Diamond");
		payIntent.putExtra(SDKProtocolKeys.PRODUCT_NAME, data.getProductName());
		payIntent.putExtra(SDKProtocolKeys.AMOUNT, "100"); // 计费点价格
		// 如果需要设置服务端通知，可以在此设置订单的通知地址
		// payIntent.putExtra(SDKProtocolKeys.NOTIFY_URL,"http://10.1.84.183/receiveNotify.jsp");
		//payIntent.putExtra(SDKProtocolKeys.ATTACH_INFO, "ATTACHINFOtest");
		//如果支持运营商sdk短代支付，那么需要先判断用户手机号，然后传入相对应的paycode
		//payIntent.putExtra(SDKProtocolKeys.PAY_CODE,data. getPaycode(getApplicationContext())); // demo现在是写死的paycode，实际需要cp传计费点
		try {
			SDKCore.pay(U8SDK.getInstance().getContext(), payIntent, new SDKCallbackListener() {
				@Override
				public void onSuccessful(int status, Response response) {
					if (SDKStatus.SERVER_CHECK == status) {
						Message msg = new Message();
						msg.what = HANDLER_SDK_CALLBACK;
						msg.obj = "接入设置从服务端获取订单信息";
						handler.sendMessage(msg);
					} else if (response.getType() == Response.LISTENER_TYPE_INIT) {
						firstTime = false;
						Message msg = new Message();
						msg.what = FlashMsg.HANDLER_END_LOGO_MSG1;
						handler.sendMessageDelayed(msg, 3000);
					} else if (response.getType() == Response.LISTENER_TYPE_PAY) {
					    /*重要：CP必须设置确认结果，告诉CP是否成功收到，不然SDK会不断回调通知CP*/
                        response.setMessage(Response.OPERATE_SUCCESS_MSG); 
                        /*重要：CP必须设置确认结果，告诉CP是否成功收到，不然SDK会不断回调通知CP*/
						Message msg = new Message();
						msg.what = HANDLER_SDK_CALLBACK;
						String s = response.getData();
						if (s != null) {
							msg.obj = response.getData();
						}
						msg.arg1 = response.getStatus();
						handler.sendMessage(msg);
					}
				}

				@Override
				public void onErrorResponse(SDKError error) {
					String errorMsg = error.getMessage();
					if (TextUtils.isEmpty(errorMsg))
						errorMsg = "SDK occur error!";
					Message msg = new Message();
					msg.what = HANDLER_SHOW_ERRORDIALOG;
					msg.obj = errorMsg;
					handler.sendMessage(msg);
					if (firstTime) {
						firstTime = false;
						msg = new Message();
						msg.what = FlashMsg.HANDLER_END_LOGO_MSG1;
						handler.sendMessageDelayed(msg, 3000);
					}
				}
			});
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	public void sdkExit() {
		// TODO Auto-generated method stub
		UCGameSdk.defaultSdk().exit(U8SDK.getInstance().getContext(), new UCCallbackListener<String>() {

            @Override
            public void callback(int statuscode, String data) {
                if (UCGameSDKStatusCode.SDK_EXIT == statuscode) {
                	U8SDK.getInstance().getContext().finish();
                } else {
                }
            }
        });
	}
}
