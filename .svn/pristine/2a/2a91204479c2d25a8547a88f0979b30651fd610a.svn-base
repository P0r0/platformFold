package com.gionee.gamesdk.demo.account;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.Toast;

import com.gionee.gamesdk.AccountInfo;
import com.gionee.gamesdk.GamePlatform;
import com.gionee.gamesdk.GamePlatform.LoginListener;
import com.gionee.gamesdk.demo.am.R;

public class AccountTestActivity extends Activity {

    // 登录测试
    private Button mLoginAccountBtn;
    protected GamePlatform mGamePlatform;
    protected Activity mActivity;

    @Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.gsp_account_main);
		mActivity = this;
		mLoginAccountBtn = (Button) findViewById(R.id.login_account);

		mLoginAccountBtn.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				GamePlatform.loginAccount(mActivity, true,
						new LoginListener() {

					@Override
					public void onSuccess(AccountInfo accountInfo) {
						// 登录成功，处理自己的业务。

						// 获取pid
						String playerId = accountInfo.mPlayerId;
						// 获取amigoToken
						String amigoToken = accountInfo.mToken;

						Toast.makeText(mActivity,"登录成功！获取信息为：" + accountInfo.toString(),
								Toast.LENGTH_SHORT).show();
					}

					@Override
					public void onError(Exception e) {
						Toast.makeText(mActivity, "登录失败:" + e,
								Toast.LENGTH_SHORT).show();
					}

					@Override
					public void onCancel() {
						Toast.makeText(mActivity, "取消登录",
								Toast.LENGTH_SHORT).show();
					}
				});
			}
		});
    }
}
