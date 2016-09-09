package com.u8.sdk;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.DialogInterface.OnCancelListener;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.qihoo.gamecenter.sdk.activity.ContainerActivity;
import com.qihoo.gamecenter.sdk.common.IDispatcherCallback;
import com.qihoo.gamecenter.sdk.matrix.Matrix;
import com.qihoo.gamecenter.sdk.protocols.ProtocolConfigs;
import com.qihoo.gamecenter.sdk.protocols.ProtocolKeys;
import com.u8.sdk.payment.QihooPayInfo;
import com.u8.sdk.payment.Constants;
import com.u8.sdk.utils.ProgressUtil;
import com.u8.sdk.utils.QihooUserInfo;
import com.u8.sdk.utils.QihooUserInfoListener;
import com.u8.sdk.utils.QihooUserInfoTask;

public class _360SDK {
	
	private static _360SDK instance;
	
	public _360SDK() {
		// TODO Auto-generated constructor stub
	}
	
	private List<String> mPayTypeList = new ArrayList<String>();
	private static final String[] PAY_TYPE_DES = new String[] {"银行卡", "支付宝", "充值卡", "骏网卡", "360币", "微信"};
	private static final String[] PAY_TYPE_VAL = new String[] {
        ProtocolKeys.PayType.MOBILE_BANKCARD,
        ProtocolKeys.PayType.ALIPAY,
        ProtocolKeys.PayType.MOBILE_CARD,
        ProtocolKeys.PayType.JCARD,
        ProtocolKeys.PayType.QIHOO_BI,
        ProtocolKeys.PayType.WEIXIN
	};
	private String mDefaultPayType;
	
	protected String mAccessToken = null;
	protected boolean mIsInOffline = false;
	protected QihooUserInfo mQihooUserInfo;
	protected static boolean isAccessTokenValid = true;  //AccessToken是否有效
	protected static boolean isQTValid = true;           //QT是否有效
	
	private Boolean doIsLandScape;      //是否以横屏显示
	private Boolean doIsSupportOffline; //是否支持离线模式，默认值为false
	
	private String productName;
	private String setAppName;
	private String appUserName;
	
	/**
	* @param _id 当前情景， 支持 enterServer（登录） ， levelUp（升级） ， createRole（创建角色）
	* @param roleId 当前登录的玩家角色 ID，若无，可传入 userid
	* @param roleName 当前登录的玩家角色名，不能为空，不能为 null，若无，传入“游戏名称+username”， 如“皇室战争大名鼎鼎”
	* @param roleLevel 当前登录的玩家角色等级，必须为数字，且不能为 0，若无，传入 1
	* @param zoneId 当前登录的游戏区服 ID，必须为数字，且不能为 0，若无，传入 1
	* @param zoneName 当前登录的游戏区服名称，不能为空，不能为 null，若无，传入游戏名称+” 1 区”，如“梦幻西游 1 区”
	* @param balance 当前用户游戏币余额，必须为数字，若无，传入 0
	* @param vip 当前用户 VIP 等级，必须为数字，若无，传入 1
	* @param partyName 当前用户所属帮派，不能为空，不能为 null，若无，传入”无帮派”
	* */
	//游戏角色信息上传
	private String id;
	private String roleId;
	private String roleName;
	private String roleLevel;
	private String zoneId;
	private String zoneName;
	private String balance;
	private String vip;
	private String partyName;
	
	public static _360SDK getInstance(){
		if (instance == null) {
			instance = new _360SDK();
		}
		return instance;
	}
	
	public void initSDK(SDKParams params){
		parseSDKParams(params);
		initSDK();
	}
	
	private void parseSDKParams(SDKParams params){
		this.doIsLandScape = params.getBoolean("DOISLANDSCAPE");
		this.doIsSupportOffline = params.getBoolean("DOISSUPPORTOFFLINE");
		this.productName = params.getString("PRODUCTNAME");
		this.setAppName = params.getString("SETAPPNAME");
		this.appUserName = params.getString("APPUSERNAME");
		
		this.id = params.getString("GAME_ID");
		this.roleId = params.getString("GAME_ROLEID");
		this.roleName = params.getString("GAME_ROLENAME");
		this.roleLevel = params.getString("GAME_ROLELEVEL");
		this.zoneId = params.getString("GAME_ZONEID");
		this.zoneName = params.getString("GAME_ZONENAME");
		this.balance = params.getString("GAME_BALANCE");
		this.vip = params.getString("GAME_VIP");
		this.partyName = params.getString("GAME_PARTYNAME");
	}
	
	private void initSDK() {
		// TODO Auto-generated method stub
		// 调用其他SDK接口之前必须先调用init
        // 注意：参数一定是主界面对应activity的context，我们依赖这个activity来显示浮窗的，
        //       还有就是这个activity的manifest属性里添加android:configChanges="orientation|keyboardHidden|screenSize"
        //       为了防止横竖屏切换时此activity重新创建，引起的一些问题。
		
		U8SDK.getInstance().setActivityCallback(new ActivityCallbackAdapter(){
			@Override
			public void onDestroy() {
				// TODO Auto-generated method stub
				super.onDestroy();
				Matrix.destroy(U8SDK.getInstance().getContext());
			}
		});
		
        Matrix.init(U8SDK.getInstance().getContext());
	}
	
	public void login(){
		mIsInOffline = false;
        Intent intent = getLoginIntent(this.doIsLandScape);
        IDispatcherCallback callback = mLoginCallback;
        if (this.doIsSupportOffline) {
            callback = mLoginCallbackSupportOffline;
        }
        Matrix.execute(U8SDK.getInstance().getContext(), intent, callback);
	}
	
	/**
     * 生成调用360SDK登录接口的Intent
     * @param isLandScape 是否横屏
     * @return intent
     */
    private Intent getLoginIntent(boolean isLandScape) {
    	Log.e("360_intent", "intent start");
        Intent intent = new Intent(U8SDK.getInstance().getContext(), ContainerActivity.class);

        // 界面相关参数，360SDK界面是否以横屏显示。
        intent.putExtra(ProtocolKeys.IS_SCREEN_ORIENTATION_LANDSCAPE, isLandScape);

        // 必需参数，使用360SDK的登录模块。
        intent.putExtra(ProtocolKeys.FUNCTION_CODE, ProtocolConfigs.FUNC_CODE_LOGIN);
        
        // 可选参数，是否支持离线模式，默认值为false
        intent.putExtra(ProtocolKeys.IS_SUPPORT_OFFLINE, this.doIsSupportOffline);
        Log.e("360_intent", "intent end");
        return intent;
    }
    
    // 登录、注册的回调
    private IDispatcherCallback mLoginCallback = new IDispatcherCallback() {
        @Override
        public void onFinished(final String data) {
        	U8SDK.getInstance().runOnMainThread(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					// press back
		            if (isCancelLogin(data)) {
		                return;
		            }
		            // 显示一下登录结果
		            Log.e("360_mLoginCallback", data);
		            mIsInOffline = false;
		            mQihooUserInfo = null;
		            Log.d("360_mLoginCallback", "mLoginCallback, data is " + data);
		            // 解析access_token
		            mAccessToken = parseAccessTokenFromLoginResult(data);

		            if (!TextUtils.isEmpty(mAccessToken)) {
		                // 需要去应用的服务器获取用access_token获取一下带qid的用户信息
		                getUserInfo();
		                Log.e("360_error", "通过了getUserInfo()");
		            } else {
		            	Log.e("360_mLoginCallback", "get access_token failed!");
		            }
				}
			});
        }
    };
    
    private IDispatcherCallback mLoginCallbackSupportOffline = new IDispatcherCallback() {

        @Override
        public void onFinished(String data) {
            if (isCancelLogin(data)) {
                return;
            }

            Log.d("360_mLoginCallbackSupportOffline", "mLoginCallbackSupportOffline, data is " + data);
            try {
                JSONObject joRes = new JSONObject(data);
                JSONObject joData = joRes.getJSONObject("data");
                String mode = joData.optString("mode", "");
                if (!TextUtils.isEmpty(mode) && mode.equals("offline")) {
                	Log.e("360_mLoginCallbackSupportOffline", "login success in offline mode");
                    mIsInOffline = true;
                    // 显示一下登录结果
                    Log.e("360_mLoginCallbackSupportOffline", data);
                } else {
                    mLoginCallback.onFinished(data);
                }
            } catch (Exception e) {
                Log.e("360_mLoginCallbackSupportOffline", "mLoginCallbackSupportOffline exception");
            }

        }
    };
    
    private boolean isCancelLogin(String data) {
        try {
            JSONObject joData = new JSONObject(data);
            int errno = joData.optInt("errno", -1);
            if (-1 == errno) {
            	Log.e("360_isCancelLogin", data);
                return true;
            }
        } catch (Exception e) {}
        return false;
    }
    
    private String parseAccessTokenFromLoginResult(String loginRes) {
        try {

            JSONObject joRes = new JSONObject(loginRes);
            JSONObject joData = joRes.getJSONObject("data");
            return joData.getString("access_token");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    private void getUserInfo() {

        isAccessTokenValid = true;
        isQTValid = true;
        final QihooUserInfoTask mUserInfoTask = QihooUserInfoTask.newInstance();
        Log.e("360_error", "error1"+mUserInfoTask);
        // 提示用户进度
        final ProgressDialog progress = ProgressUtil.show(U8SDK.getInstance().getContext(), "获取Qihoo UserInfo", "正在请求应用服务器,请稍候……", new OnCancelListener() {
        	@Override
            public void onCancel(DialogInterface dialog) {
        		Log.e("360_error", "通过了");
                if (mUserInfoTask != null) {
                    mUserInfoTask.doCancel();
                }
            }
        });
        Log.e("360_error", "error2");

        // 请求应用服务器，用AccessToken换取UserInfo
        mUserInfoTask.doRequest(U8SDK.getInstance().getContext(), mAccessToken, Matrix.getAppKey(U8SDK.getInstance().getContext()), new QihooUserInfoListener() {
            @Override
            public void onGotUserInfo(QihooUserInfo userInfo) {
                progress.dismiss();
                if (null == userInfo || !userInfo.isValid()) {
                	Log.e("360_doRequest", "从应用服务器获取用户信息失败");
                } else {
                	Log.e("360_doRequest", "从应用服务器获取用户信息开始");
                	_360SDK.getInstance().onGotUserInfo(userInfo);
                	Log.e("360_doRequest", "从应用服务器获取用户信息成功");
                }
            }
        });
    }
    
    public void onGotUserInfo(QihooUserInfo userInfo) {
    	if (userInfo != null && userInfo.isValid()) {
            // 保存QihooUserInfo
            mQihooUserInfo = userInfo;

        } else {
        	Log.e("360_onGotUserInfo", "未从获取Qihoo UserInfo");
        	mQihooUserInfo = null;
        }
    }
    
    public void pay(PayParams data) {
		// TODO Auto-generated method stub
    	doFlowTestSdkPay(this.doIsLandScape, false);
	}
    
    protected void doFlowTestSdkPay(final boolean isLandScape, final boolean isFixed) {
        mPayTypeList.clear();
        new AlertDialog.Builder(U8SDK.getInstance().getContext()).setTitle("请定制支付方式").setIcon(android.R.drawable.ic_dialog_info)
                .setMultiChoiceItems(PAY_TYPE_DES, null, new DialogInterface.OnMultiChoiceClickListener() {
                	@Override
                    public void onClick(DialogInterface dialog, int which, boolean isChecked) {
                        String payType = PAY_TYPE_VAL[which];
                        if (isChecked && !mPayTypeList.contains(payType)) {
                            mPayTypeList.add(payType);
                        }
                        else if (!isChecked && mPayTypeList.contains(payType)) {
                            mPayTypeList.remove(payType);
                        }
                    }
                }).
        setPositiveButton("确定", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                showDefaultPayTypeDialog(isLandScape, isFixed);
            }
        }).setNegativeButton("取消", null).show();
    }
    
    /**
     * 仅用于测试，不要应用于实际生产。
     */
    private void showDefaultPayTypeDialog(final boolean isLandScape, final boolean isFixed) {
        mDefaultPayType = null;
        String[] tempValues = PAY_TYPE_VAL;
        if (!mPayTypeList.isEmpty()) {
            tempValues = (String[]) mPayTypeList.toArray(new String[mPayTypeList.size()]);
        }
        final String[] values = tempValues;
        new AlertDialog.Builder(U8SDK.getInstance().getContext())
                .setTitle("请选择默认定位到哪个支付类型上")
                .setIcon(android.R.drawable.ic_dialog_info)
                .setSingleChoiceItems(values, -1,
                		new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        if (values != null && values.length != 0) {
                            mDefaultPayType = values[which];
                        }

                    }
                }).
        setPositiveButton("确定", new DialogInterface.OnClickListener() {

            @Override
            public void onClick(DialogInterface dialog, int which) {
                _360SDK.getInstance().doCustomSdkPay(isLandScape, isFixed);
            }
        }).setNegativeButton("取消", null).show();
    }
    
    private void doCustomSdkPay(boolean isLandScape, boolean isFixed) {

        // 基础支付参数
        QihooPayInfo payInfo = getQihooPayInfo(isFixed);
        Intent intent = getPayIntent(isLandScape, payInfo);

        Bundle bundle = new Bundle();
        // 可选参数，定制支付类型
        int iLen = mPayTypeList.size();
        if (iLen > 0) {
            String[] payType = (String[]) mPayTypeList.toArray(new String[iLen]);
            bundle.putStringArray(ProtocolKeys.PAY_TYPE, payType);
        }

        // 可选参数，默认支付类型
        bundle.putString(ProtocolKeys.DEFAULT_PAY_TYPE, mDefaultPayType == null ? ""
                : mDefaultPayType);
        intent.putExtras(bundle);

        // 必需参数，使用360SDK的支付模块。
        intent.putExtra(ProtocolKeys.FUNCTION_CODE, ProtocolConfigs.FUNC_CODE_PAY);

        Matrix.invokeActivity(U8SDK.getInstance().getContext(), intent, mPayCallback);
    }
    
    protected QihooPayInfo getQihooPayInfo(boolean isFixed) {
        QihooPayInfo payInfo = null;
        if(isFixed) {
            payInfo = getQihooPay(Constants.DEMO_FIXED_PAY_MONEY_AMOUNT);
        }
        else {
            payInfo = getQihooPay(Constants.DEMO_NOT_FIXED_PAY_MONEY_AMOUNT);
        }
        return payInfo;
    }
    
    /***
     * 生成调用360SDK支付接口的Intent
     *
     * @param isLandScape
     * @param pay
     * @return Intent
     */
    protected Intent getPayIntent(boolean isLandScape, QihooPayInfo pay) {
        Bundle bundle = new Bundle();

        // 界面相关参数，360SDK界面是否以横屏显示。
        bundle.putBoolean(ProtocolKeys.IS_SCREEN_ORIENTATION_LANDSCAPE, isLandScape);

        // *** 以下非界面相关参数 ***

        // 设置QihooPay中的参数。

        // 必需参数，360账号id，整数。
        bundle.putString(ProtocolKeys.QIHOO_USER_ID, pay.getQihooUserId());

        // 必需参数，所购买商品金额, 以分为单位。金额大于等于100分，360SDK运行定额支付流程； 金额数为0，360SDK运行不定额支付流程。
        bundle.putString(ProtocolKeys.AMOUNT, pay.getMoneyAmount());

        // 必需参数，所购买商品名称，应用指定，建议中文，最大10个中文字。
        bundle.putString(ProtocolKeys.PRODUCT_NAME, pay.getProductName());

        // 必需参数，购买商品的商品id，应用指定，最大16字符。
        bundle.putString(ProtocolKeys.PRODUCT_ID, pay.getProductId());

        // 必需参数，应用方提供的支付结果通知uri，最大255字符。360服务器将把支付接口回调给该uri，具体协议请查看文档中，支付结果通知接口–应用服务器提供接口。
        bundle.putString(ProtocolKeys.NOTIFY_URI, pay.getNotifyUri());

        // 必需参数，游戏或应用名称，最大16中文字。
        bundle.putString(ProtocolKeys.APP_NAME, pay.getAppName());

        // 必需参数，应用内的用户名，如游戏角色名。 若应用内绑定360账号和应用账号，则可用360用户名，最大16中文字。（充值不分区服，
        // 充到统一的用户账户，各区服角色均可使用）。
        bundle.putString(ProtocolKeys.APP_USER_NAME, pay.getAppUserName());

        // 必需参数，应用内的用户id。
        // 若应用内绑定360账号和应用账号，充值不分区服，充到统一的用户账户，各区服角色均可使用，则可用360用户ID最大32字符。
        bundle.putString(ProtocolKeys.APP_USER_ID, pay.getAppUserId());

        // 可选参数，应用扩展信息1，原样返回，最大255字符。
        bundle.putString(ProtocolKeys.APP_EXT_1, pay.getAppExt1());

        // 可选参数，应用扩展信息2，原样返回，最大255字符。
        bundle.putString(ProtocolKeys.APP_EXT_2, pay.getAppExt2());

        // 可选参数，应用订单号，应用内必须唯一，最大32字符。
        bundle.putString(ProtocolKeys.APP_ORDER_ID, pay.getAppOrderId());

        // 必需参数，使用360SDK的支付模块。
        bundle.putInt(ProtocolKeys.FUNCTION_CODE, ProtocolConfigs.FUNC_CODE_PAY);

        Intent intent = new Intent(U8SDK.getInstance().getContext(), ContainerActivity.class);
        intent.putExtras(bundle);

        return intent;
    }
    
 // 支付的回调
    protected IDispatcherCallback mPayCallback = new IDispatcherCallback() {
        @Override
        public void onFinished(String data) {
//            Log.d(TAG, "mPayCallback, data is " + data);
            if(TextUtils.isEmpty(data)) {
                return;
            }

            boolean isCallbackParseOk = false;
            JSONObject jsonRes;
            try {
                jsonRes = new JSONObject(data);
                // error_code 状态码： 0 支付成功， -1 支付取消， 1 支付失败， -2 支付进行中, 4010201和4009911 登录状态已失效，引导用户重新登录
                // error_msg 状态描述
                int errorCode = jsonRes.optInt("error_code");
                isCallbackParseOk = true;
                switch (errorCode) {
                    case 0:
                    case 1:
                    case -1:
                    case -2: {
                        isAccessTokenValid = true;
                        isQTValid = true;
                        String errorMsg = jsonRes.optString("error_msg");
                        Log.d("360_mPayCallback", errorMsg);
                    }
                        break;
                    case 4010201:
                        //acess_token失效
                        isAccessTokenValid = false;
                        Log.d("360_mPayCallback", "AccessToken已失效，请重新登录");
                        break;
                    case 4009911:
                        //QT失效
                        isQTValid = false;
                        Log.d("360_mPayCallback", "QT已失效，请重新登录");
                        break;
                    default:
                        break;
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }

            // 用于测试数据格式是否异常。
            if (!isCallbackParseOk) {
            	Log.d("360_mPayCallback", "严重错误！！接口返回数据格式错误！！");
            }
        }
    };
    
    private QihooPayInfo getQihooPay(String moneyAmount) {

        String qihooUserId = (mQihooUserInfo != null) ? mQihooUserInfo.getId() : null;
        Log.d("360_qihooUserId", "qihooUserId = "+qihooUserId+" ---- mQihooUserInfo = "+mQihooUserInfo);
        // 创建QihooPay
        QihooPayInfo qihooPay = new QihooPayInfo();
        qihooPay.setQihooUserId(qihooUserId);
        qihooPay.setMoneyAmount(moneyAmount);
        qihooPay.setExchangeRate(Constants.DEMO_PAY_EXCHANGE_RATE);

        qihooPay.setProductName(this.productName);
        qihooPay.setProductId(Constants.DEMO_PAY_PRODUCT_ID);

        qihooPay.setNotifyUri(Constants.DEMO_APP_SERVER_NOTIFY_URI);

        qihooPay.setAppName(this.setAppName);
        qihooPay.setAppUserName(this.appUserName);
        qihooPay.setAppUserId(Constants.DEMO_PAY_APP_USER_ID);

        // 可选参数
        qihooPay.setAppExt1("abcdefg");
        qihooPay.setAppExt2("1234567");
        qihooPay.setAppOrderId("");

        return qihooPay;
    }
    
    public void sdkExit() {
		// TODO Auto-generated method stub
    	doSdkQuit(this.doIsLandScape);
	}
    
    /**
     * 使用360SDK的退出接口
     *
     * @param isLandScape 是否横屏显示支付界面
     */
    protected void doSdkQuit(boolean isLandScape) {

        Bundle bundle = new Bundle();

        // 界面相关参数，360SDK界面是否以横屏显示。
        bundle.putBoolean(ProtocolKeys.IS_SCREEN_ORIENTATION_LANDSCAPE, isLandScape);

        // 必需参数，使用360SDK的退出模块。
        bundle.putInt(ProtocolKeys.FUNCTION_CODE, ProtocolConfigs.FUNC_CODE_QUIT);

        // 可选参数，登录界面的背景图片路径，必须是本地图片路径
        bundle.putString(ProtocolKeys.UI_BACKGROUND_PICTRUE, "");

        Intent intent = new Intent(U8SDK.getInstance().getContext(), ContainerActivity.class);
        intent.putExtras(bundle);

        Matrix.invokeActivity(U8SDK.getInstance().getContext(), intent, mQuitCallback);
    }
    
 // 退出的回调
    private IDispatcherCallback mQuitCallback = new IDispatcherCallback() {
        @Override
        public void onFinished(String data) {
            JSONObject json;
            try {
                json = new JSONObject(data);
                int which = json.optInt("which", -1);
                String label = json.optString("label");

                Log.e("360_mQuitCallback", "按钮标识：" + which + "，按钮描述:" + label);

                switch (which) {
                    case 0: // 用户关闭退出界面
                        return;
                    default:// 退出游戏
                        U8SDK.getInstance().getContext().finish();
                        return;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

    };
    
    public void share(ShareParams params){
    	Log.e("360_share", "游戏角色信息上传");
    	doSdkGetUserInfoByCP();
    }
    
    protected boolean mGetUserInfoFlag = false;
    //游戏角色信息上传
    protected void doSdkGetUserInfoByCP() { 
    	HashMap<String, String> mapParams = new HashMap<String, String>();
    	mapParams.put("key1", "value1");
    	mapParams.put("key2", "value2");
    	HashMap<String, String> map = mGetUserInfoFlag ? mapParams : null;
    	mGetUserInfoFlag = !mGetUserInfoFlag;
        Matrix.statEvent(this.id, this.roleId, this.roleName, this.roleLevel, this.zoneId, this.zoneName, this.balance, this.vip, this.partyName, map);
        U8SDK.getInstance().onResult(U8Code.CODE_SHARE_SUCCESS, "分享成功");
        Log.e("360_share", "分享结束");
    }
    
}
