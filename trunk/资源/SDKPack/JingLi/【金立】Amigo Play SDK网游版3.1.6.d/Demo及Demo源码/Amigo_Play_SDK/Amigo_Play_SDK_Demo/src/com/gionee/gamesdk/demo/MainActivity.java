package com.gionee.gamesdk.demo;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.Toast;

import com.gionee.gamesdk.AccountInfo;
import com.gionee.gamesdk.GamePayer;
import com.gionee.gamesdk.GamePlatform;
import com.gionee.gamesdk.GamePlatform.LoginListener;
import com.gionee.gamesdk.demo.account.AccountTestActivity;
import com.gionee.gamesdk.demo.am.R;
import com.gionee.gamesdk.demo.pay.PayOnlineTestActivity;
import com.gionee.gamesdk.demo.pay.PaySingleTestActivity;
import com.gionee.gsp.GnEFloatingBoxPositionModel;

public class MainActivity extends Activity {

    protected Activity mActivity;

    // 单机支付测试
    private Button mPaySingleTestBtn;
    // 网游支付测试
    private Button mPayOnlineTestBtn;
    // 账号测试
    private Button mAccountTestBtn;

    private String mPlayerId = "";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.gsp_demo_main);
        mActivity = this;

        initKeys();

        // 设置悬浮窗的默认位置(如果不设置，则默认左下角)
        GamePlatform.setFloatingBoxOriginPosition(GnEFloatingBoxPositionModel.LEFT_TOP);

        // 登录Amigo账号
        loginAccount();

        initView();
    }

    private void initKeys() {
        Constants.sApiKey = GamePayer.readApiKey(mActivity, Constants.sApiKey);
        if (TextUtils.isEmpty(Constants.sApiKey)) {
            Constants.sApiKey = Constants.API_KEY;
        }
    }

    private void initView() {
        mPaySingleTestBtn = (Button) findViewById(R.id.pay_single_test);
        mPayOnlineTestBtn = (Button) findViewById(R.id.pay_online_test);
        mAccountTestBtn = (Button) findViewById(R.id.account_test);
        mPaySingleTestBtn.setOnClickListener(new OnClickListener() {

            @Override
            public void onClick(View v) {
                Intent intent = new Intent(mActivity, PaySingleTestActivity.class);
                intent.putExtra(Constants.PLAYER_ID, mPlayerId);
                startActivity(intent);
            }
        });

        mPayOnlineTestBtn.setOnClickListener(new OnClickListener() {

            @Override
            public void onClick(View v) {
                startActivity(new Intent(mActivity, PayOnlineTestActivity.class));
            }
        });

        mAccountTestBtn.setOnClickListener(new OnClickListener() {

            @Override
            public void onClick(View v) {
                startActivity(new Intent(mActivity, AccountTestActivity.class));
            }
        });
    }

    /**
     * 如果登录过的，会自动登录
     */
    private void loginAccount() {
        GamePlatform.loginAccount(this, true, new LoginListener() {

            @Override
            public void onSuccess(AccountInfo accountInfo) {
                // 登录成功，处理自己的业务。

                // 获取playerId
                String playerId = accountInfo.mPlayerId;

                // 获取amigoToken
                String amigoToken = accountInfo.mToken;

                Toast.makeText(mActivity, "登录成功！获取信息为：" + accountInfo.toString(), Toast.LENGTH_SHORT).show();
            }

            @Override
            public void onError(Exception e) {
                Toast.makeText(mActivity, "登录失败:" + e, Toast.LENGTH_SHORT).show();
            }

            @Override
            public void onCancel() {
                Toast.makeText(mActivity, "取消登录", Toast.LENGTH_SHORT).show();
            }
        });
    }
}
