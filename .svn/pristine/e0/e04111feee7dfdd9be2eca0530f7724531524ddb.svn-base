package com.netease.my.vivo;

import paydemo.Constant;
import paydemo.PayTestActivity;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.Toast;

import com.example.paydemo.R;
import com.vivo.sdkplugin.aidl.VivoUnionManager;

public class GameMainActivity extends Activity implements OnClickListener {

	private static final String TAG = "GameMainActivity";
	public final static String KEY_LOGIN_RESULT = "LoginResult";
	public final static String KEY_SWITCH_ACCOUNT = "switchAccount";
	public final static String KEY_NAME = "name";
	public final static String KEY_OPENID = "openid";
	public final static String KEY_AUTHTOKEN = "authtoken";
	public final static String KEY_SHOW_TEMPLOGIN = "showTempLogin";
	private Button payBtn;
	private Context mContext;
	static String mname;
	static String mopenid;
	static String mauthtoken;
	private VivoUnionManager mVivoUnionManager;
	private static int index = 0;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		Log.d(TAG, "onCreate");
		setContentView(R.layout.activity_test);
		mContext = this;
		payBtn = (Button) findViewById(R.id.payBtn);
		payBtn.setOnClickListener(this);
		Button mCreateRole = (Button) findViewById(R.id.create_role);
		mCreateRole.setOnClickListener(this);
		mVivoUnionManager = new VivoUnionManager(GameMainActivity.this);
		registerReceiver(mFontsizechangedBroadcastReceiver, new IntentFilter(
				"android.intent.action.LOCALE_CHANGED"));
		registerReceiver(mFontsizechangedBroadcastReceiver, new IntentFilter(
				"com.android.settings.font_size_changed"));
		// mVivoUnionManager.paymentInitial(GameMainActivity.this,
		// Constant.APP_ID, Constant.CONS_UUID); //游戏不需要调用此接口
	}

	@Override
	protected void onResume() {
		super.onResume();
		// 下面两个可以合并
		Log.d(TAG, "onResume");
		mVivoUnionManager.showVivoAssitView(GameMainActivity.this);
	}

	private BroadcastReceiver mFontsizechangedBroadcastReceiver = new BroadcastReceiver() {

		@Override
		public void onReceive(Context context, Intent intent) {
			finish();
		}
	};

	@Override
	public void onClick(View v) {
		// TODO Auto-generated method stub
		switch (v.getId()) {
		// 清除帐户（清除vivo帐户登录界面自动填入的帐号和密码，第三方游戏不需要使用此接口）
		case R.id.payBtn:
			Intent loginIntent = new Intent(this, PayTestActivity.class);
			startActivity(loginIntent);
			break;
		case R.id.create_role:
			String roleName = "角色test" + index;
			String roleLevel = "" + index;
			String roleId = "roleId:" + Constant.CONS_UUID;
			String serverAreaId = "serverAreaId:" + Constant.CONS_UUID;
			String serverAreaName = "测试区服" + Constant.CONS_UUID;
			// String roleId = "roleId:" + index;
			// String serverAreaId = "serverAreaId:" + Constant.CONS_UUID;
			// String serverAreaName = "测试区服" + index;
			Toast.makeText(mContext,
					"创建角色名称：" + roleName + " 角色等级： " + roleLevel,
					Toast.LENGTH_SHORT).show();
			VivoUnionManager.vivoAccountreportRoleInfo(roleId, roleLevel,
					serverAreaId, roleName, mContext, serverAreaName);
			index++;
			break;
		default:
			Log.d(TAG, "unsupport type");
			break;
		}
	}

	@Override
	protected void onPause() {
		// TODO Auto-generated method stub
		super.onPause();
		Log.d(TAG, "onPause");
	}

	@Override
	protected void onStop() {
		super.onStop();
		Log.d(TAG, "onStop");
	}

	@Override
	public void onBackPressed() {
		// TODO Auto-generated method stub
		super.onBackPressed();
		Log.d(TAG, "onBackPressed");
		// 隐藏悬浮窗
	}

	@Override
	protected void onDestroy() {
		super.onDestroy();
		Log.d(TAG, "onDestroy");
		mVivoUnionManager.hideVivoAssitView(GameMainActivity.this);
		// mVivoUnionManager.unBindUnionServie();
	}

}
