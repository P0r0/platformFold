package com.ucweb.h5runtime;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import cn.uc.paysdk.face.commons.PayResponse;
import cn.uc.paysdk.face.commons.Response;
import cn.uc.paysdk.face.commons.SDKCallbackListener;
import cn.uc.paysdk.face.commons.SDKError;

/**
 * 支付结果回调，此回调信息可作为支付成功与否的依据
 * 注意：支付结果回调可能有一定的延迟（或者在几种情况下可能没有，请参考接入文档支付那一节的说明）
 * 所以CP不能在购买商品的时候锁住游戏直到回调才解锁，这样是不好的体验
 * 支付界面消失后，游戏应该立即恢复，不要依赖支付回调结果
 * CP可参照如下列子单独写一个类，所有支付结果统一处理
 */
public class PayListener implements SDKCallbackListener {
	
	private final static String TAG = "JNI_PayListener";

	private static PayListener _instance = null;

	public static PayListener getInstance() {
		if (_instance == null) {
			_instance = new PayListener();
		}
		return _instance;
	}

	private PayListener() {
		initHandler();
	}

	@Override
	public void onErrorResponse(SDKError error) {
		JniCallback.nativeErrorCallback(error.getCode(), error.getMessage());
		
		 String msg = error.getMessage();  
         if (TextUtils.isEmpty(msg)) {
             msg = "SDK occur error!";
         }
         Message message = new Message();
         message.what = HANDLER_SHOW_DIALOG;
         message.obj = msg;
         handler.sendMessage(message);
	}


	@Override
	public void onSuccessful(final int statusCode, final Response response) {
		JniCallback.nativeResultCallback(statusCode, response);
		
		// 支付成功回调
        if (response.getType() == Response.LISTENER_TYPE_PAY) // 用于处理支付
        {
            //通知游戏c++层支付成功
            //payCallBack(true);
            /**
             * 当为支付回调时，必须响应消息设置setMessage 必须及时响应，不要进行耗时操作，否则会导致线程阻塞
             * 相关异步操作可以在handler中进行，另起工作者线程 设置为
             * Response.OPERATE_SUCCESS_MSG 代表CP成功进行相关动作时，响应SDK
             * Response.OPERATE_FAIL_MSG 代表CP进行相关动作失败时，响应SDK
             */
            //重要：CP必须设置确认结果，告诉CP是否成功收到，不然SDK会不断回调通知CP
            response.setMessage(Response.OPERATE_SUCCESS_MSG); 
           // 重要：CP必须设置确认结果，告诉CP是否成功收到，不然SDK会不断回调通知CP
            try {
                if (!TextUtils.isEmpty(response.getData())) {
                	//以下是支付订单信息的解析，CP根据实际情况解析并发放道具
                	//本demo只做结果展示，所以并未做特殊处理
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
                    
                    
                    Message msg = new Message();
                    msg.what = HANDLER_SHOW_DIALOG;
                    String s = response.getData();
                    if (s != null) {
                        msg.obj = response.getData();
                    }
                    msg.arg1 = response.getStatus();
                    handler.sendMessage(msg);
                }
            } catch (JSONException ex) {
                ex.printStackTrace();
            }
        }
	}
	
	private static Handler handler;
    private final static int HANDLER_SHOW_DIALOG = 1;
	private void initHandler() {
        handler = new Handler() {
            public void handleMessage(Message msg) {
                switch (msg.what) {
        
                case HANDLER_SHOW_DIALOG: {
                    String message = (String) msg.obj;
                    if (TextUtils.isEmpty(message)) 
                        message = "unknown";
                                        
                    AlertDialog.Builder builder = new Builder(sContext);
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
                }
            }
        };
    }
        
	private Context sContext;
    public void setContext(Context context) {
    	sContext = context;
    }

}