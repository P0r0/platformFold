/*

o * File Name: GameActivity.java 
 * History:
 * Created by Administrator on 2013-8-2
 */
package com.example.usercentertest;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.Toast;

import com.anzhi.usercenter.sdk.AnzhiUserCenter;
import com.anzhi.usercenter.sdk.inter.AnzhiCallback;
import com.anzhi.usercenter.sdk.item.CPInfo;
import com.anzhi.usercenter.sdk.item.UserGameInfo;
import com.test.anzhi.newtest.a.R;

public class GameActivity extends Activity implements View.OnClickListener,
		com.anzhi.usercenter.sdk.inter.KeybackCall,
		com.anzhi.usercenter.sdk.inter.InitSDKCallback,
		com.anzhi.usercenter.sdk.inter.AzOutGameInter,
		com.anzhi.usercenter.sdk.inter.UploadScoreCallback {

	private static final String TAG = "anzhiTest";
	// 用户中心按键
	private Button mBtnViewUser;

	// 切换账号按键
	private Button mBtnLogout;

	// 上传得分按键
	private Button mBtnUpload;
	// 登录按键
	private Button mBtnLogin;
	private Button mButtonshowf;
	private Button mButtindisf;

	// 用户中心参数
	private String Appkey = "1378375366Az26xatNyDOD5EM6D2ys";// SDK 初始化参数
	private String AppSecret = "ug2KMdLi2JSr4naOE48XmL3h";

	private AnzhiUserCenter mAnzhiCenter;
	private String loginName;
	private LinearLayout mControlLayout;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		initView();
		initInfo();
	}

	@Override
	protected void onStart() {
		super.onStart();
	}

	private void initView() {
		setContentView(R.layout.game);
		mControlLayout = (LinearLayout) findViewById(R.id.ll_control);
		mBtnViewUser = (Button) findViewById(R.id.btn_view_user);
		mBtnViewUser.setOnClickListener(this);
		mBtnLogout = (Button) findViewById(R.id.btn_logout);
		mBtnLogout.setOnClickListener(this);
		mBtnLogin = (Button) findViewById(R.id.btn_login);
		mBtnLogin.setOnClickListener(this);
		mButtonshowf = (Button) findViewById(R.id.btn_showf);
		mButtonshowf.setOnClickListener(this);
		mButtindisf = (Button) findViewById(R.id.btn_disf);
		mButtindisf.setOnClickListener(this);
		mBtnUpload = (Button) findViewById(R.id.btn_uploadscore);
		mBtnUpload.setOnClickListener(this);
	}

	private void initInfo() {
		final CPInfo info = new CPInfo();
		info.setAppKey(Appkey); // 设置appkey
		info.setSecret(AppSecret); // 设置appsecret
		info.setChannel("AnZhi"); // 设置渠道号，默认anzhi
		info.setGameName(getResources().getString(R.string.app_name)); // 设置游戏名称
		info.setGameType(CPInfo.STANDALONE_GAME); // 设置游戏类型为单机游戏
		info.setRank(true); // 设置是否接入排行榜
		info.setBindAccount(true); // 如果有官方账号设置是否绑定安智账号
		mAnzhiCenter = AnzhiUserCenter.getInstance(); // 获取用户中心实例
		mAnzhiCenter.azinitSDK(this, info, this, this); // 初始化用户中心设置
		mAnzhiCenter.setKeybackCall(this); // 设置返回监听按钮
		mAnzhiCenter.setCallback(mCallback);// 设置 登录、登出、接口
		mAnzhiCenter.setUploadScoreCallback(this); // 设置上传分数接口
		mAnzhiCenter.setActivityOrientation(4);// 0横屏,1竖屏,4根据物理感应来选择方向

	}

	Handler mHandler = new Handler() {
		@Override
		public void handleMessage(final Message msg) {
			switch (msg.what) {
			case 5:

				mBtnLogin.setVisibility(View.VISIBLE);
				mControlLayout.setVisibility(View.GONE);
				break;

			// 登录成功
			case 1:
				UserGameInfo info = new UserGameInfo();
				info.setAppName("游戏名称");// 游戏名称
				info.setGameArea("1");// 游戏的区
				info.setGameLevel("10");// 游戏级别
				info.setMemo("");// 备注
				info.setNickName("未知");// 安智昵称
				info.setUid("adfdsafdsaf");// 安智uid
				info.setUserRole("aaaa");// // 角色（或角色Id）

				/**
				 * 上传游戏信息角色
				 */
				AnzhiUserCenter.getInstance().submitGameInfo(GameActivity.this,
						info);
				mBtnLogin.setVisibility(View.GONE);
				mControlLayout.setVisibility(View.VISIBLE);
				// if(!TextUtils.isEmpty(uid) && uid){
				//
				// }

				break;
			case 2:
				mBtnLogin.setVisibility(View.VISIBLE);
				mControlLayout.setVisibility(View.GONE);
				break;
			}
		}
	};

	AnzhiCallback mCallback = new AnzhiCallback() {

		@Override
		public void onCallback(CPInfo cpInfo, final String result) {
			Log.e(TAG, "result " + result);
			try {
				JSONObject json = new JSONObject(result);
				String key = json.optString("callback_key");
				if ("key_logout".equals(key)) {
					Toast.makeText(GameActivity.this, "已退出账户 ！",
							Toast.LENGTH_SHORT).show();
					mHandler.sendEmptyMessage(2);
				} else if ("key_login".equals(key)) {
					int code = json.optInt("code");
					String desc = json.optString("code_desc");
					loginName = json.optString("login_name");
					String uid = json.optString("uid");
					Log.e(TAG, json.optString("uid"));
					if (code == 200) {

						mHandler.sendEmptyMessage(1);
					} else {
						Toast.makeText(GameActivity.this, "登录账号与上次不符，请重新登录", 0);
						mHandler.obtainMessage(2, desc).sendToTarget();
					}
				}
			} catch (JSONException e) {
				e.printStackTrace();
			}
		}
	};

	// ==========================================================================
	// Constants
	// ==========================================================================

	@Override
	public void onClick(View v) {
		mAnzhiCenter.setCallback(mCallback);
		if (v.getId() == mBtnViewUser.getId()) {
			mAnzhiCenter.viewUserInfo(this);
		} else if (v.getId() == mBtnLogout.getId()) {
			AlertDialog.Builder build = new AlertDialog.Builder(
					GameActivity.this);
			build.setMessage("是否退出或切换账户?");
			build.setNeutralButton("确定", new DialogInterface.OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					mAnzhiCenter.logout(GameActivity.this);
				}
			});
			build.setNegativeButton("取消", null);
			build.show();
		} else if (v == mBtnLogin) {
			mAnzhiCenter.login(GameActivity.this, true);
		} else if (v.getId() == mButtonshowf.getId()) {

			mAnzhiCenter.showFloaticon();

		} else if (v.getId() == mButtindisf.getId()) {

			mAnzhiCenter.dismissFloaticon();

		} else if (v.getId() == mBtnUpload.getId()) {

			Intent intent = new Intent(GameActivity.this,
					UploadScoreActivity.class);
			startActivity(intent);
		}
	}

	@Override
	public void onBackPressed() {
		mAnzhiCenter.azoutGame();
	}

	/*
	 * /(non-Javadoc)
	 * 
	 * @see
	 * com.anzhi.usercenter.sdk.inter.KeybackCall#KeybackCall(java.lang.String)
	 * 某些页面返回游戏产生的回调
	 */
	@Override
	public void KeybackCall(String st) {
		Log.e(TAG, "st================" + st);
	}

	/*
	 * /(non-Javadoc)
	 * 
	 * @see com.anzhi.usercenter.sdk.inter.InitSDKCallback#initSdkCallcack
	 * 初始化sdk后产生的回调
	 */
	@Override
	public void initSdkCallcack() {

		mAnzhiCenter.login(this, true);
	}

	/*
	 * /(non-Javadoc)
	 * 
	 * @see com.anzhi.usercenter.sdk.inter.AzOutGameInter#azOutGameInter()
	 * 用户在点击退出游戏后，SDK会调用本接口，开发者需要在这个方法中完成退出游戏的操作
	 */
	@Override
	public void azOutGameInter() {
		mAnzhiCenter.removeFloaticon(this);
		finish();
	}

	/**
	 * 厂商的得分上传成功回调
	 */
	@Override
	public void onUploadScoreFinished() {

		Toast.makeText(GameActivity.this, "上传成功", Toast.LENGTH_SHORT).show();
		Log.e(TAG, "upload score success");
	}

}
