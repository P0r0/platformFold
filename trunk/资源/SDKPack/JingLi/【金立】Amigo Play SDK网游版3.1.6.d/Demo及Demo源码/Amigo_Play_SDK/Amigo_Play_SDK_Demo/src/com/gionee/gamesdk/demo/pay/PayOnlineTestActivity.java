package com.gionee.gamesdk.demo.pay;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.gionee.gamesdk.GamePayer;
import com.gionee.gamesdk.OrderInfo;
import com.gionee.gamesdk.demo.Constants;
import com.gionee.gamesdk.demo.am.R;

/**
 * @author denny 开发者重点关注 根据服务器创建的订单信息,在客户端调起收银台
 * 
 */
@SuppressLint("HandlerLeak")
public class PayOnlineTestActivity extends Activity implements OnClickListener {

    private static final String TAG = "PayOnlineTestActivity";

    // demo 控件声明
    private TextView mTextView;
    private EditText mApiKeyEt;
    private EditText mOutOrderNumEt;
    private EditText mSubmitTime;
    private Button mEnterTheCashierButton;

    // 开始支付
    private GamePayer mGamePayer;

    // ********************************
    // 支付结果回调
    private GamePayer.GamePayCallback mGamePayCallback;

    protected Activity mActivity;
    /**
     * 处理各种场景
     */
    private Handler mHandler = new Handler() {

        @Override
        public void handleMessage(android.os.Message msg) {
            switch (msg.what) {
                case 1:
                    mTextView.setText((String) msg.obj);
                    break;
                case 3:
                    Toast.makeText(mActivity, msg.getData().getString(GamePayer.STATE_CODE),
                            Toast.LENGTH_LONG).show();
                    break;
                case 4:
                    Toast.makeText(mActivity, "请先登录帐号!", Toast.LENGTH_LONG).show();
                    break;
                case 5:
                    Toast.makeText(mActivity, "获取订单数据异常:" + msg.obj, Toast.LENGTH_SHORT).show();
                    break;
                default:
                    break;
            }
        };
    };

    /*
     * 开发者不用关注
     */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.gsp_demo_online_pay);
        mActivity = this;
        mGamePayer = new GamePayer(mActivity);
        mGamePayCallback = mGamePayer.new GamePayCallback() {

            //支付成功
            @Override
            public void onPaySuccess() {
                // 可以在这里处理自己的业务
            }
            
            //支付取消
            @Override
            public void onPayCancel() {
                // 可以在这里处理自己的业务
            }

            //支付失败，stateCode为支付失败状态码，详见接入指南
            @Override
            public void onPayFail(String stateCode) {
                // 可以在这里处理自己的业务
            }
        };

        initView();
    }

    @Override
    protected void onResume() {
        super.onResume();
        // 在不能静默安装的手机，升级成功后自动调起收银台
        mGamePayer.onResume();
    }

    /**
     * 初始化默认值,开发者不用关注
     */
    private void initView() {
        mEnterTheCashierButton = (Button) findViewById(R.id.enter_the_cashier);

        mOutOrderNumEt = (EditText) findViewById(R.id.out_order_id);
        mApiKeyEt = (EditText) findViewById(R.id.api_key);
        mApiKeyEt.setText(Constants.sApiKey);
        mApiKeyEt.addTextChangedListener(new TextWatcher() {

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {
            }

            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            @Override
            public void afterTextChanged(Editable s) {
                // 测试用，实际接入可以去掉。
                GamePayer.writeApiKey(mActivity, mApiKeyEt.getText().toString().trim());
            }
        });

        mSubmitTime = (EditText) findViewById(R.id.submit_time);
        mEnterTheCashierButton.setOnClickListener(this);
    }

    @Override
    public void onClick(final View v) {
        // 防止重复点击
        v.setEnabled(false);
        switch (v.getId()) {
        // 根据服务器创建的订单信息,在客户端调起收银台，开发者重点关注
            case R.id.enter_the_cashier: {
                try {
                	createOrder();
                } catch (Exception e) {
                    e.printStackTrace();
                }
                break;
            }

            default:
                break;
        }
        new Handler().postDelayed(new Runnable() {

            @Override
            public void run() {
                v.setEnabled(true);

            }
        }, 500);

    }

    /**
     * 根据服务器创建订单的信息调起收银台
     * 
     * @throws Exception
     */
    private void createOrder() throws Exception {
        String outOrderNum = mOutOrderNumEt.getText().toString();
        String apiKey = mApiKeyEt.getText().toString();
        String submitTime = mSubmitTime.getText().toString();
        if ("".equals(outOrderNum) || "".equals(apiKey) || "".equals(submitTime)) {
            Toast.makeText(mActivity, "请先输入服务器创建成功的订单信息", Toast.LENGTH_SHORT).show();
            return;
        }
        
        //创建订单信息
        OrderInfo orderInfo = new OrderInfo();
        //开发者后台申请的Apikey
        orderInfo.setApiKey(apiKey); 
        //商户订单号，与创建支付订单中的"out_order_no"值相同
        orderInfo.setOutOrderNo(outOrderNum);
        //支付订单提交时间，与创建支付订单中的"submit_time"值相同
        orderInfo.setSubmitTime(submitTime);
        
        //调用启动收银台接口 
        mGamePayer.pay(orderInfo, mGamePayCallback);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        mGamePayer.onDestroy();
    }
}