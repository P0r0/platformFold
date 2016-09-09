package com.ucweb.h5runtime;

import java.io.InputStream;
import java.util.Random;

import org.json.JSONException;
import org.json.JSONObject;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.uc.gamesdk.sa.UCGameSdk;
import cn.uc.gamesdk.sa.iface.open.SDKConst;
import cn.uc.gamesdk.sa.iface.open.UCCallbackListener;
import cn.uc.gamesdk.sa.iface.open.UCGameSDKStatusCode;
import cn.uc.paysdk.SDKCore;
import cn.uc.paysdk.common.utils.PhoneInfoUtil;
import cn.uc.paysdk.face.commons.PayResponse;
import cn.uc.paysdk.face.commons.Response;
import cn.uc.paysdk.face.commons.SDKCallbackListener;
import cn.uc.paysdk.face.commons.SDKError;
import cn.uc.paysdk.face.commons.SDKProtocolKeys;
import cn.uc.paysdk.face.commons.SDKStatus;

import com.egame.unipaytest.R;
import com.ucweb.h5runtime.widget.FlashMsg;

// 游戏主界面，常驻内存中
public class H5GameActivity extends Activity {
	private final static String TAG = "H5GameActivity";
	private static Handler handler;
	private boolean firstTime = true;
	
	private final static int HANDLER_SHOW_ERRORDIALOG = 2;// 显示错误提示对话框
	private final static int HANDLER_FINISH_GAME = 12;// 结束游戏
	public final static int HANDLER_SDK_CALLBACK = 14;// SDK回调
	public final static int HANDLER_LOADING_STEP = 18;// 加载步骤
	public final static int HANDLER_HIDE_LOADING = 19;// 隐藏加载
	public final static int HANDLER_PAYBTN_VISIABLE = 20;// 支付按钮可点击
	private TextView textView;
	private RelativeLayout loadingLayout;
	
	private RelativeLayout btnItems;
	private RelativeLayout btnCoins;

	public void onCreate(Bundle savedInstanceState) {
		setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);
		super.onCreate(savedInstanceState);
		
		initHandler();
		initLayout();
		init();
	}

	private void init() {

		UCGameSdk.defaultSdk().setCallback(SDKConst.PAY_INIT_LISTENER, new SDKCallbackListener() {
			@SuppressWarnings("unused")
			@Override
			public void onSuccessful(int statusCode, Response response) {
				// 支付成功回调
				if (response.getType() == Response.LISTENER_TYPE_INIT) // 用于处理初始化消息
				{
				   
                    Message message = new Message();
                    message.what = HANDLER_PAYBTN_VISIABLE;
                    handler.sendMessage(message);
                    Log.d(TAG, "支付初始化成功，可以调用支付接口了");				
				} else if (response.getType() == Response.LISTENER_TYPE_PAY) // 用于处理
				                                                             // 历史订单的响应确认消息
				{
					/**
					 * 当为支付回调时，必须响应消息设置setMessage 必须及时响应，不要进行耗时操作，否则会导致线程阻塞
					 * 相关异步操作可以在handler中进行，另起工作者线程 设置为
					 * Response.OPERATE_SUCCESS_MSG 代表CP成功进行相关动作时，响应SDK
					 * Response.OPERATE_FAIL_MSG 代表CP进行相关动作失败时，响应SDK
					 */
					// #########################[重要，确认收到]############################
					response.setMessage(Response.OPERATE_SUCCESS_MSG);
					// #########################!!!!!!!!!!!!!!!!!!!!!!!!!############################
					try {
					    if (!TextUtils.isEmpty(response.getData())) {
    						JSONObject data = new JSONObject(response.getData());
    						String orderId = data.getString(PayResponse.CP_ORDER_ID); // CP订单号
    						String tradeId = data.getString(PayResponse.TRADE_ID); // 交易号
    						String payMoney = data.getString(PayResponse.PAY_MONEY); // 支付金额
    						String payType = data.getString(PayResponse.PAY_TYPE); // 支付类型
    						String orderStatus = data.getString(PayResponse.ORDER_STATUS); // 订单状态
    						                                                               // [00:成功][01:失败]
    						String orderFinishTime = data.getString(PayResponse.ORDER_FINISH_TIME); // 订单完成时间
    						String productName = data.getString(PayResponse.PRO_NAME);// 道具名称
    						String extendInfo = data.optString(PayResponse.EXT_INFO); // 商品扩展信息
    						String attachInfo = data.optString(PayResponse.ATTACH_INFO); // 附加透传信息
					    }
					} catch (JSONException ex) {
						ex.printStackTrace();
					}
				}
			}

			@Override
			public void onErrorResponse(SDKError error) {
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

		UCGameSdk.defaultSdk().setCallback(SDKConst.SDK_INIT_LISTENER, new cn.uc.gamesdk.sa.iface.open.UCCallbackListener<String>() {
			@Override
			public void callback(int statuscode, String msg) {
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

		try {
			Bundle payInitData = new Bundle();
			payInitData.putString(SDKProtocolKeys.APP_ID, "300008973569");
			payInitData.putString(SDKProtocolKeys.APP_KEY, "044B0F69808C6151552A90ACF757A323");
			UCGameSdk.defaultSdk().init(this, payInitData);
		} catch (Exception e) {

		}
	}

	@SuppressLint("HandlerLeak")
	private void initHandler() {
		handler = new Handler() {
			public void handleMessage(Message msg) {
				switch (msg.what) {
				case HANDLER_PAYBTN_VISIABLE:
				    if (btnItems == null || btnCoins == null) {
	                    showAnyKeyContinue1(); //初始化按钮
	                }
	                btnItems.setVisibility(View.VISIBLE);
	                btnCoins.setVisibility(View.VISIBLE);
	                Log.d("ddd", "HANDLER_PAYBTN_VISIABLE.setVisibility(View.VISIBLE) "+btnItems);
				    break;
		
				case HANDLER_SHOW_ERRORDIALOG:
				case HANDLER_SDK_CALLBACK: {
				    if (isFinishing()) {
	                    return;
	                }
					String message = (String) msg.obj;
					if (TextUtils.isEmpty(message)) 
						message = "unknown";
										
					AlertDialog.Builder builder = new Builder(H5GameActivity.this);
					builder.setTitle("Tips");
					builder.setMessage(message);
					
					builder.setPositiveButton("ok", new DialogInterface.OnClickListener() {
						@Override
						public void onClick(DialogInterface arg, int arg1) {
						}
					});
					builder.create().show();
					break;
					}

				case HANDLER_FINISH_GAME:
					finish();
					break;

				case HANDLER_LOADING_STEP:
					setLoadingAnimation(msg.arg1);
					break;
				case HANDLER_HIDE_LOADING:
					if (loadingLayout != null) {
						stop = true;
						loadingLayout.setVisibility(View.GONE);
						loadingLayout.invalidate();
					}
					break;
				case FlashMsg.HANDLER_UPDATE_LOGO_MSG:
					flash.updateLogoMsg(msg.arg1);
					break;
				case FlashMsg.HANDLER_END_LOGO_MSG:
					flash.endMsg();
					break;
				case FlashMsg.HANDLER_END_LOGO_MSG1:
					Log.e(TAG, "OnSuccessful");
				    if (btnItems == null || btnCoins == null) {
				    	Log.e(TAG, "OnSuccessful2");
                        showAnyKeyContinue1(); //初始化按钮
                        ((TextView) root.findViewById(R.id.tv_items)).setText("0");
                        ((TextView) root.findViewById(R.id.tv_coins)).setText("0");
                    }
					
					break;
				}
			}
		};
	}

	FrameLayout root;

	private void initLayout() {
		root = new FrameLayout(this);
		
		try
		{
			Resources resources = getResources();
			AssetManager asm = resources.getAssets();

			InputStream is=asm.open("background.png");//name:图片的名称
			Drawable bg = Drawable.createFromStream(is, null);
			root.setBackgroundDrawable(bg);
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			root.setBackgroundResource(R.drawable.defaultbg);
		}

		createLoadingLayout(root);
		this.setContentView(root);
	}

	private void createLoadingLayout(FrameLayout root) {
		loadingLayout = (RelativeLayout) getLayoutInflater().inflate(R.layout.loading, null);
		textView = (TextView) loadingLayout.findViewById(R.id.loadingText);
		root.addView(loadingLayout);
		loadingThread.start();
	}

	// Loading 动画
	private void setLoadingAnimation(int step) {
		if (textView != null) {
			if (step == 0) {
				textView.setText("loading");
			} else if (step == 1) {
				textView.setText("loading.");
			} else if (step == 2) {
				textView.setText("loading..");
			} else if (step == 3) {
				textView.setText("loading...");
			}
		}
	}

	private boolean stop = false;
	private int loadingStep = 0;
	private Thread loadingThread = new Thread() {
		public void run() {
			while (!stop) {
				loadingStep++;
				if (loadingStep > 4) {
					loadingStep = 0;
				}
				Message msg = new Message();
				msg.what = HANDLER_LOADING_STEP;
				msg.arg1 = loadingStep;
				handler.sendMessage(msg);
				try {
					sleep(300);
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
			}
		}
	};



	@Override
	protected void onResume() {
		super.onResume();
		if (getRequestedOrientation() != ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE) {
			setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);
		}
	}

	@Override
    protected void onDestroy() {
        
        super.onDestroy();
    }
    
    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
         //BACK键退出游戏，退出前请调用UCGameSdk.defaultSdk().exit接口
        if (keyCode == KeyEvent.KEYCODE_BACK) {
            exit();
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }
    
    /**
     * 游戏退出接口
     */
    private void exit() {
        UCGameSdk.defaultSdk().exit(this, new UCCallbackListener<String>() {

            @Override
            public void callback(int statuscode, String data) {
                if (UCGameSDKStatusCode.SDK_EXIT == statuscode) {
                    finish();
                } else {
                }
            }
        });
    }

	@Override
	public void onConfigurationChanged(Configuration newConfig) {
		super.onConfigurationChanged(newConfig);
	}

	private LinearLayout anyKeyLayout;
	private FlashMsg flash;

	public void showAnyKeyContinue1() {
		if (flash != null) {
			flash.endMsg();
			flash = null;
		}
		if (loadingLayout != null) {
			root.removeView(loadingLayout);
		}
		if (anyKeyLayout != null) {
			root.removeView(anyKeyLayout);
		}
		anyKeyLayout = (LinearLayout) getLayoutInflater().inflate(R.layout.title, null);
		root.addView(anyKeyLayout);

		btnItems = (RelativeLayout) root.findViewById(R.id.btn_items);
		btnCoins = (RelativeLayout) root.findViewById(R.id.btn_coins);
		Log.d("ddd", "showAnyKeyContinue1"+btnItems);
		btnItems.setVisibility(View.VISIBLE);
		btnCoins.setVisibility(View.VISIBLE);
		{
			StateListDrawable drawable = new StateListDrawable();
			drawable.addState(new int[]{android.R.attr.state_pressed }, this.getResources().getDrawable(R.drawable.coins_select));
			drawable.addState(new int[]{-android.R.attr.state_enabled}, this.getResources().getDrawable(R.drawable.uc_pay_coins));
			btnCoins.setBackgroundDrawable(drawable);
		}
		
		{
			StateListDrawable drawable = new StateListDrawable();
			drawable.addState(new int[]{android.R.attr.state_pressed }, this.getResources().getDrawable(R.drawable.items_select));
			drawable.addState(new int[]{-android.R.attr.state_pressed }, this.getResources().getDrawable(R.drawable.items));
			btnItems.setBackgroundDrawable(drawable);
		}
		
		View.OnClickListener onClickListener = new View.OnClickListener() {
			public void onClick(View view) {
				// 调起SDK支付界面
				Intent payIntent = new Intent();
				//CP_ORDER_ID非必传，但是如果传了，需要保证唯一性，即不能重复下单
				//payIntent.putExtra(SDKProtocolKeys.CP_ORDER_ID, "" + System.currentTimeMillis());
				payIntent.putExtra(SDKProtocolKeys.APP_NAME, "Diamond");
				payIntent.putExtra(SDKProtocolKeys.PRODUCT_NAME, "product_name1");
				payIntent.putExtra(SDKProtocolKeys.AMOUNT, "0.01"); // 计费点价格
				// 如果需要设置服务端通知，可以在此设置订单的通知地址
				// payIntent.putExtra(SDKProtocolKeys.NOTIFY_URL,"http://10.1.84.183/receiveNotify.jsp");
				//payIntent.putExtra(SDKProtocolKeys.ATTACH_INFO, "ATTACHINFOtest");
				//如果支持运营商sdk短代支付，那么需要先判断用户手机号，然后传入相对应的paycode
				payIntent.putExtra(SDKProtocolKeys.PAY_CODE, getPaycode(getApplicationContext())); // demo现在是写死的paycode，实际需要cp传计费点
				try {
					SDKCore.pay(H5GameActivity.this, payIntent, new SDKCallbackListener() {
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
		};
		
		btnItems.setOnClickListener(onClickListener);
		btnCoins.setOnClickListener(onClickListener);
	}

	

	/**
	 * 获取运营商计费代码：注意该paycode是测试专用，CP需要换成自己申请的paycode
	 * @param ctx
	 * @return
	 */
	private static String getPaycode(Context ctx) {
		int operatorCode = getOperatorByMnc(getOperator(ctx));
		String paycode = "";
		switch (operatorCode) {
		case PhoneInfoUtil.CHINA_MOBILE:// 移动
			int i = new Random().nextInt(2);//随机产生移动mm或南京基地计费代码
			if (i > 0) {
				paycode = "30000897356904"; //MM支付计费代码
			} else {
				paycode = "002";//基地计费代码;
			}
			break;
		case PhoneInfoUtil.CHINA_UNICOM:// 联通
			paycode = "001";
			break;
		case PhoneInfoUtil.CHINA_TELECOM:// 电信
			paycode = "5245217";
			break;
		default:
			break;
		}

		return paycode;
	}

	/**
	 * 获取sim卡的状态
	 * 
	 * @param ctx
	 * @return true，SIM卡良好可以正常methodName使用；false 其它状态
	 */
	public static boolean getSimState(Context ctx) {
		TelephonyManager telephonyManager = (TelephonyManager) ctx.getSystemService(Context.TELEPHONY_SERVICE);
		int simState = telephonyManager.getSimState();
		return (simState == TelephonyManager.SIM_STATE_READY) ? true : false;
	}

	public static String getOperator(Context ctx) {
		String type = "";
		if (getSimState(ctx)) {
			TelephonyManager telephonyManager = (TelephonyManager) ctx.getSystemService(Context.TELEPHONY_SERVICE);
			String operator = telephonyManager.getSimOperator();
			if (operator != null) {
				type = operator;
			}
		}

		return type;
	}

	/**
	 * 根据mccmnc获取运营商类型
	 * https://en.wikipedia.org/wiki/Mobile_country_code
	 * @param mccmnc
	 * @return 手机卡运营商类型
	 */
	public static int getOperatorByMnc(String mccmnc) {
		int ret = -1;
		if (!TextUtils.isEmpty(mccmnc)) {
			int code = 0;
			try {
				code = Integer.parseInt(mccmnc);
			} catch (NumberFormatException e) {
				e.printStackTrace();
			}
			switch (code) {
			case 46000:
			case 46002:
			case 46007:
			case 46020:
				ret = PhoneInfoUtil.CHINA_MOBILE;//移动卡
				break;
	
			case 46001:
			case 46006:
				ret = PhoneInfoUtil.CHINA_UNICOM;//联通卡
				break;
	
			case 46003:
			case 46005:
			case 46011:
				ret = PhoneInfoUtil.CHINA_TELECOM;//电信卡
				break;
			default:
				break;
			}
		}

		return ret;
	}
}
