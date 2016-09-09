/****************************************************************************
Copyright (c) 2008-2010 Ricardo Quesada
Copyright (c) 2010-2012 cocos2d-x.org
Copyright (c) 2011      Zynga Inc.
Copyright (c) 2013-2014 Chukong Technologies Inc.
 
http://www.cocos2d-x.org

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
****************************************************************************/
package com.ucweb.h5runtime;

import java.util.Random;

import org.cocos2dx.lib.Cocos2dxActivity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import cn.uc.gamesdk.sa.UCGameSdk;
import cn.uc.gamesdk.sa.iface.open.SDKConst;
import cn.uc.gamesdk.sa.iface.open.UCCallbackListener;
import cn.uc.gamesdk.sa.iface.open.UCGameSDKStatusCode;
import cn.uc.paysdk.SDKCore;
import cn.uc.paysdk.face.commons.Response;
import cn.uc.paysdk.face.commons.SDKCallbackListener;
import cn.uc.paysdk.face.commons.SDKError;
import cn.uc.paysdk.face.commons.SDKProtocolKeys;
/**
 * 
 * @author Administrator
 *
 */
public class AppActivity extends Cocos2dxActivity {
    
    private static Activity mActivity = null;
    
	@Override
	protected void onCreate(Bundle savedInstanceState) {
	    
	    mActivity = this;	    
	    sdkinit();
	    PayListener.getInstance().setContext(mActivity);
	    super.onCreate(savedInstanceState);
	}
	
	/**
	 * 初始化回调
	 */
	private SDKCallbackListener mInitSdkCallbackListener = new SDKCallbackListener() {

        @Override
        public void onErrorResponse(SDKError arg0) {
            //通知游戏c++层初始化成功, CP根据实际情况考虑是否需要实现
            //notifyNativeMethod(arg0);
        	
            Log.e("AppActivity", "支付初始化失败:" + arg0);
        }

        @Override
        public void onSuccessful(int arg0, Response arg1) {
        	//通知游戏c++层初始化成功, CP根据实际情况考虑是否需要实现
            //notifyNativeMethod(arg0);
        	Log.d("AppActivity", "支付初始化成功，可以调用支付接口了");
        }
	};

	/**
	 * 初始化
	 */
	private void sdkinit() {
	    Log.d("ddd", "AppActivityon:sdkinit");
        UCGameSdk.defaultSdk().setCallback(SDKConst.PAY_INIT_LISTENER, mInitSdkCallbackListener);
        UCGameSdk.defaultSdk().setCallback(SDKConst.SDK_INIT_LISTENER, new cn.uc.gamesdk.sa.iface.open.UCCallbackListener<String>() {
            @Override
            public void callback(int statuscode, String msg) {
                switch (statuscode) {
                case UCGameSDKStatusCode.SUCCESS: {
                    Log.d("ddd", "UCGameSDKStatusCode.SUCCESS");
                }
                    break;
                default: {
                    if (TextUtils.isEmpty(msg)) {
                        msg = "SDK occur error!";
                    }
                    Log.d("ddd", "AppActivityon:sdkinit msg=" + msg);
                    break;
                }
                    
                }
            }
        });

        try {
            Bundle payInitData = new Bundle();
            //移动mm初始化信息，值请根据移动MM提供的进行修改
            //如果不接mm支付，可以不要下面两行
            payInitData.putString(SDKProtocolKeys.APP_ID, "300008973569");
            payInitData.putString(SDKProtocolKeys.APP_KEY, "044B0F69808C6151552A90ACF757A323");
            UCGameSdk.defaultSdk().init(this, payInitData);
        } catch (Exception e) {

        }
    }

		
	/**
     * 获取运营商计费代码：
     * ！！注意！！：该paycode是测试专用，CP需要换成自己申请的paycode
     * @param ctx
     * @return
     */
    public static String getPaycode() {
        int operatorCode = getOperatorByMnc(getOperator(getContext()));
        String paycode = "";
        switch (operatorCode) {
        case 0:// 移动
            int i = new Random().nextInt(2);//随机产生移动mm或南京基地计费代码
            if (i > 0) {
                paycode = "30000897356904"; //MM支付计费代码
            } else {
                paycode = "002";//基地计费代码;
            }
            break;
        case 1:// 联通
            paycode = "004";
            break;
        case 2:// 电信
            paycode = "5245217";
            break;
        default:
            break;
        }

        return paycode;
    }
    
    public static void payFor(Intent intent) throws Exception {
        SDKCore.pay(mActivity, intent, PayListener.getInstance());
    }

    /**
     * 获取sim卡的状态
     * 
     * @param ctx
     * @return true，SIM卡良好可以正常methodName使用；false 其它状态
     */
    private static boolean getSimState(Context ctx) {
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

    public static int getOperatorByMnc(String mccmnc) {
        if (TextUtils.isEmpty(mccmnc))
            return 0;
        int code = 0;
        try {
            code = Integer.parseInt(mccmnc);
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }

        int ret = 0;
        switch (code) {
        case 46000:
        case 46002:
        case 46007:
        case 46020:
            ret = 0;//移动卡
            break;

        case 46001://联通卡
        case 46006:
            ret = 1;
            break;

        case 46003:
        case 46005:
        case 46011:
            ret = 2;//电信卡
            break;
        default:
            break;
        }

        return ret;
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
}
