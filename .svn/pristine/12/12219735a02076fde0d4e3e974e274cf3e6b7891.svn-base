/*

o * File Name: GameActivity.java 
 * History:
 * Created by Administrator on 2013-8-2
 */
package com.example.usercentertest;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;

import com.anzhi.djpay.sdk.AnzhidjPay;
import com.anzhi.djpay.sdk.inter.AnzhiDjCallback;
import com.anzhi.djpay.sdk.item.CPDJInfo;
import com.test.weixin.pay.R;

public class GameActivity extends Activity implements View.OnClickListener {

    private static final String TAG = "anzhiTest";
    // 登录按键

    // 用户中心参数
    private String Appkey = "1442889584rg5m6hM0xTTJgECo5mkc";// SDK 初始化参数
    private String AppSecret = "itd5M1M8qi2aW5qA59Johftw";
    // private String Appkey = "14361713949D6nmfAteOvM57h65FCr";// SDK 初始化参数
    // private String AppSecret = "f6a351sISe0611nhCEz5fxIR";

    private AnzhidjPay mAnzhiCenter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        final CPDJInfo info = new CPDJInfo();
        info.setOpenOfficialLogin(false);// 是否开启游戏官方账号登录，默认为关闭
        info.setAppKey(Appkey);
        info.setSecret(AppSecret);
        info.setChannel("AnZhi");
        mAnzhiCenter = AnzhidjPay.getInstance();
        mAnzhiCenter.azinitSDK(this, info, callback);// 调用对应的初始化方法
        setContentView(R.layout.game);
        findViewById(R.id.btn_pay).setOnClickListener(this);
    }

    /**
     * 支付结果通知方法
     * 
     */
    AnzhiDjCallback callback = new AnzhiDjCallback() {

        @Override
        public void onCallback(int code, String result) {
            switch (code) {
            case AnzhiDjCallback.KEY_CODE_PAY:
                Log.e(TAG, result);// 通过result 解析支付结果
                try {
                    
                    JSONObject json = new JSONObject(result);
                    int paycode = json.optInt("code"); // code 0失败，1 支付成功 ，2、支付中，3是支付取消
                    String call = json.optString("callbackinfo");// 参数的订单号
                    String orderID = json.optString("orderId"); // 安智的订单号
                 // 其余参数自行解析
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                break;
            default:
                break;
            }
        }
    };

    @Override
    public void onClick(View v) {
        mAnzhiCenter.pay(this, "sh", 0.01f, "dd", "dd");
    }

}
