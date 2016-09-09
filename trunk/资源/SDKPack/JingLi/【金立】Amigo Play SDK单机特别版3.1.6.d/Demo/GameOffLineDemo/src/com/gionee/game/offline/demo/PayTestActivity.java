package com.gionee.game.offline.demo;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Toast;

import com.example.gameofflinedemo.R;
import com.gionee.game.offlinesdk.GamePlatform;
import com.gionee.game.offlinesdk.OrderInfo;
import com.gionee.game.offlinesdk.PayCallback;

public class PayTestActivity extends Activity implements RadioGroup.OnCheckedChangeListener,
        View.OnClickListener {

    private EditText mOrderNumText;
    private EditText mProductNameText;
    private EditText mTotalFeeText;
    private EditText mUserIdText;

    private Button mStartingPayButton;
    private Button mUserDefinePayButton;
    private RadioGroup mPayGroup;

    private int mPayMethod;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_pay);
        initViews();
        initPayMethod();
    }

    private void initViews() {
        mOrderNumText = (EditText) findViewById(R.id.out_order_num);
        mProductNameText = (EditText) findViewById(R.id.product_name);
        mTotalFeeText = (EditText) findViewById(R.id.total_fee);
        mUserIdText = (EditText) findViewById(R.id.user_id);
        mStartingPayButton = (Button) findViewById(R.id.starting_pay);
        mUserDefinePayButton = (Button) findViewById(R.id.user_define_pay);
        mStartingPayButton.setOnClickListener(this);
        mUserDefinePayButton.setOnClickListener(this);
        
        mPayGroup = (RadioGroup) findViewById(R.id.pay_group);
        mPayGroup.setOnCheckedChangeListener(this);
    }

    private void initPayMethod() {
        RadioButton radioButton = (RadioButton) mPayGroup.findViewById(R.id.alipay);
        radioButton.setChecked(true);
        mPayMethod = GamePlatform.PAY_METHOD_ALIPAY;
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.starting_pay:
                startingPay();
                break;
            case R.id.user_define_pay:
                userDefinePay();
                break;

            default:
                break;
        }
    }

    @Override
    public void onCheckedChanged(RadioGroup group, int checkedId) {
        switch (group.getCheckedRadioButtonId()) {
            case R.id.alipay:
                mPayMethod = GamePlatform.PAY_METHOD_ALIPAY;
                break;

            case R.id.wechat:
                mPayMethod = GamePlatform.PAY_METHOD_WECHAT;
                break;

            default:
                break;
        }
    }

    private void startingPay() {
        String orderNum = createOrderNum();
        mOrderNumText.setText(orderNum);
        pay();
    }

    private void userDefinePay() {
        pay();
    }

    private void pay() {
        OrderInfo orderInfo = createOrderInfo();
        GamePlatform.getInstance().pay(this, orderInfo, new PayCallback() {

            @Override
            public void onSuccess() {
                // 测试用，支付成功情况，请游戏更具实际情况处理
                Toast.makeText(PayTestActivity.this, "支付成功", Toast.LENGTH_SHORT).show();
            }

            @Override
            public void onFail(String errCode, String errDescription) {
                // 测试用，支付失败情况，请游戏更具实际情况处理
                Toast.makeText(PayTestActivity.this, "支付失败：code：" + errCode + "， des：" + errDescription,
                        Toast.LENGTH_SHORT).show();
            }
        });
    }

    private OrderInfo createOrderInfo() {
        String orderNum = mOrderNumText.getText().toString().trim();
        String productName = mProductNameText.getText().toString().trim();
        String totalFee = mTotalFeeText.getText().toString().trim();
        String userId = mUserIdText.getText().toString().trim();

        // 设置订单信息
        OrderInfo orderInfo = new OrderInfo();
        orderInfo.setCpOrderNum(orderNum);
        orderInfo.setProductName(productName);
        orderInfo.setTotalFee(totalFee);
        orderInfo.setPayMethod(mPayMethod);
        orderInfo.setUserId(userId);
        return orderInfo;
    }

    private String createOrderNum() {
        String orderNum = "50b36e69c5ff" + System.currentTimeMillis();
        return orderNum;
    }
}
