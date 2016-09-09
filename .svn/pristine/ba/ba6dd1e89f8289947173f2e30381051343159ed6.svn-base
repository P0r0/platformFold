package com.gionee.gamesdk.demo.pay;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import org.json.JSONObject;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ProgressDialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
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
import com.gionee.gamesdk.GamePlatform;
import com.gionee.gamesdk.OrderInfo;
import com.gionee.gamesdk.GamePayer.GamePayCallback;
import com.gionee.gamesdk.demo.Constants;
import com.gionee.gamesdk.demo.am.R;
import com.gionee.pay.third.GnCreateOrderUtils;

/**
 * @author denny 开发者重点关注 单机版创建订单
 * 
 */
@SuppressLint("HandlerLeak")
public class PaySingleTestActivity extends Activity implements OnClickListener {

    private static final String TAG = "PayTestActivity";

    // demo 控件声明
    private TextView mTextView;

    private EditText mApiKeyEt;
    private EditText mOutOrderNumEt;
    private EditText mSubject;

    private EditText mTotalFee;
    private EditText mDealPrice;
    private EditText mDeliverType;
    private EditText mNotifyRULValue;

    // 开始支付
    private Button mStartingPayButton;
    private Button mTestsRepeatedOrders;
    private GamePayer mGamePayer;
    private OrderInfo mOrderInfo;

    // ********************************
    // 支付结果回调
    private GamePayCallback mGamePayCallback;

    protected GamePlatform mGnCommplatform;

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

    /**
     * 生成新的订单号
     */
    private String createNewOrderNumber() {
        // 50b36e69c5ff3531555515636
        String orderNum = "50b36e69c5ff" + System.currentTimeMillis();
        return orderNum;
    }

    /*
     * 开发者不用关注
     */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.gsp_demo_single_pay);
        mActivity = this;
        mGnCommplatform = GamePlatform.getInstance(mActivity);
        mGamePayer = new GamePayer(mActivity);
        mGamePayCallback = mGamePayer.new GamePayCallback() {

        	//支付成功
            @Override
            public void onPaySuccess() {
                // 在这里处理自己的业务
            }
            
            //支付取消
            @Override
            public void onPayCancel() {
                // 在这里处理自己的业务
            }

            //支付失败，stateCode为支付失败状态码，详见接入指南
            @Override
            public void onPayFail(String stateCode) {
                // 在这里处理自己的业务
            }
        };

        mStartingPayButton = (Button) findViewById(R.id.starting_pay);
        mTestsRepeatedOrders = (Button) findViewById(R.id.tests_repeated_orders);

        mTextView = (TextView) findViewById(R.id.text);
        mOutOrderNumEt = (EditText) findViewById(R.id.out_order_id);
        mApiKeyEt = (EditText) findViewById(R.id.api_key);
        mApiKeyEt.setText(Constants.sApiKey);
        mApiKeyEt.addTextChangedListener(new TextWatcher() {

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {
                // TODO Auto-generated method stub

            }

            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
                // TODO Auto-generated method stub

            }

            @Override
            public void afterTextChanged(Editable s) {
                // 测试用，实际接入可以去掉。
                GamePayer.writeApiKey(mActivity, mApiKeyEt.getText().toString().trim());

            }
        });

        mSubject = (EditText) findViewById(R.id.subject);
        mTotalFee = (EditText) findViewById(R.id.total_fee);
        mDealPrice = (EditText) findViewById(R.id.deal_price);
        mDeliverType = (EditText) findViewById(R.id.deliver_type);
        mNotifyRULValue = (EditText) findViewById(R.id.notify_url_value);

        initView();
    }

    @Override
    protected void onResume() {
        // TODO Auto-generated method stub
        super.onResume();
        // 在不能静默安装的手机，升级成功后自动调起收银台
        mGamePayer.onResume();
    }

    /**
     * 初始化默认值,开发者不用关注
     */
    private void initView() {
        mStartingPayButton.setOnClickListener(this);
        mTestsRepeatedOrders.setOnClickListener(this);

        // 默认焦点设置在获取订单按钮上
        new Handler().postDelayed(new Runnable() {

            @Override
            public void run() {
                mStartingPayButton.setFocusable(true);
                mStartingPayButton.setFocusableInTouchMode(true);
                mStartingPayButton.requestFocus();
                mStartingPayButton.requestFocusFromTouch();
            }
        }, 10);
    }

    /**
     * 拼装参数到自己的服务器去创建订单,开发者重点关注
     */
    private void getOrder(ProgressDialog pd) {
        String apiKey = mApiKeyEt.getText().toString().trim();
        String outOrderNo = mOutOrderNumEt.getText().toString().trim();
        String subject = mSubject.getText().toString().trim();
        String totalFee = mTotalFee.getText().toString().trim();
        String dealPrice = mDealPrice.getText().toString().trim();
        String deliverType = mDeliverType.getText().toString().trim();
        String submitTime = getSubmitTime();
        String order = "";
        try {
            // 自定义商户订单notify地址，单机版本无效，这个是内部测试用，开发者不用关注。
            String notifyURL = mNotifyRULValue.getText().toString();
            // ***************************
            // GSP接入的请直接按照无账号的方式接入即可。
            String playerId = getIntent().getExtras().getString(Constants.PLAYER_ID);
            // 单机版本接入方式，网游版的请走网游接入方式，开发者重点关注
            if (GnCreateOrderUtils.isNull(notifyURL)) {
                order = GnCreateOrderUtils.getOrderByNoAccount(mActivity, Constants.sPrivateKey, apiKey,
                        outOrderNo, subject, totalFee, dealPrice, deliverType, submitTime, playerId);
            } else {
                order = GnCreateOrderUtils.getOrderByNoAccount(mActivity, Constants.sPrivateKey, apiKey,
                        outOrderNo, subject, "", totalFee, dealPrice, deliverType, submitTime, null, null,
                        null, null, null, mNotifyRULValue.getText().toString(), playerId);
            }
            Log.d(TAG, GnCreateOrderUtils.getThreadName() + "result:" + order);
            Message message = mHandler.obtainMessage(1);
            message.obj = order;
            message.sendToTarget();

            // 检查创建订单是否成功,开发者重点关注
            JSONObject result = new JSONObject(order);
            // 成功创建订单
            if (GamePayer.CODE_ORDER_CREATE_SUCCESS.equals(result.getString("status"))) {
            	//创建订单信息
                OrderInfo orderInfo = new OrderInfo();
                mOrderInfo = orderInfo;
                //开发者后台申请的ApiKey
                orderInfo.setApiKey(apiKey);
                //商户订单号
                orderInfo.setOutOrderNo(outOrderNo);
                //支付订单提交时间
                orderInfo.setSubmitTime(submitTime);
                
                //调用启动收银台接口 
                mGamePayer.pay(orderInfo, mGamePayCallback);
            } else {
                throw new Exception(order);
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            Message message = mHandler.obtainMessage(5);
            message.obj = e;
            message.sendToTarget();
        }

        pd.cancel();
    }

    public void createOrder() {
        mTextView.setText("");
        mOutOrderNumEt.setText(createNewOrderNumber());

        final ProgressDialog pd = new ProgressDialog(mActivity);
        pd.setTitle(R.string.please_wait_for_a_moment);
        pd.setMessage(getString(R.string.creating_order));
        pd.setCancelable(false);
        pd.show();
        new Thread(new Runnable() {
            @Override
            public void run() {
                // 拼装参数到自己的服务器去创建订单
                getOrder(pd);
            }
        }).start();
    }

    @Override
    public void onClick(final View v) {
        // 防止重复点击
        v.setEnabled(false);
        switch (v.getId()) {
            // 创建订单,开发者重点关注
            case R.id.starting_pay: {
                createOrder();
                break;
            }

            // 开发者不用关注，内部测试用
            case R.id.tests_repeated_orders: {
                if (mOrderInfo == null) {
                    createOrder();
                } else {
				    // 调用启动收银台接口
                    try {
                        mGamePayer.pay(mOrderInfo, mGamePayCallback);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
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
    
    private static String getSubmitTime() {
        Date now = new Date();
        DateFormat f = new SimpleDateFormat("yyyyMMddHHmmss", Locale.getDefault());
        String submitTime = f.format(now);
        return submitTime;
    }

    @Override
    protected void onDestroy() {
        // TODO Auto-generated method stub
        super.onDestroy();
        mGamePayer.onDestroy();
    }
}