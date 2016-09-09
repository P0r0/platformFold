package com.netease.my.vivo;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONObject;

import paydemo.Constant;
import singlepay.example.paydemo.TestActivity;
import singlepay.example.paydemo.UtilTool;
import singlepay.example.paydemo.network.NetworkRequestAgent;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import com.example.paydemo.R;
import com.vivo.sdkplugin.Utils.VivoLog;
import com.vivo.sdkplugin.accounts.OnVivoAccountChangedListener;
import com.vivo.sdkplugin.aidl.VivoUnionManager;

public class LoginActivity extends Activity implements OnClickListener {

	private static final String TAG = "LoginActivity";
	public final static String KEY_LOGIN_RESULT = "LoginResult";
	public final static String KEY_SWITCH_ACCOUNT = "switchAccount";
	public final static String KEY_NAME = "name";
	public final static String KEY_OPENID = "openid";
	public final static String KEY_AUTHTOKEN = "authtoken";
	public final static String KEY_SHOW_TEMPLOGIN = "showTempLogin";
	private Button loginBtn;
	private Button switchBtn;
	private Button singlePayBtn;
	private Button removeAccBtn;
	private TextView nameVal;
	private TextView openidVal;
	private TextView authtokenVal;
	private Context mContext;
	private Handler mUIHandler;

	VivoUnionManager mVivoUnionManager;

	private String mOpenId = "";

	// private String URL_COM_TOKEN =
	// "https://usrsys.inner.bbk.com/auth/user/info";
	private String URL_COM_TOKEN = "http://192.168.2.230:1735/auth/user/info";

	private static int index = 0;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		Log.d(TAG, "onCreate");
		setContentView(R.layout.activity_main);
		mContext = this;
		mUIHandler = new Handler();
		loginBtn = (Button) findViewById(R.id.loginBtn);
		switchBtn = (Button) findViewById(R.id.switchBtn);
		singlePayBtn = (Button) findViewById(R.id.singlePayBtn);
		removeAccBtn = (Button) findViewById(R.id.removeAccBtn);
		nameVal = (TextView) findViewById(R.id.nameVal);
		openidVal = (TextView) findViewById(R.id.openidVal);
		authtokenVal = (TextView) findViewById(R.id.authtokenVal);
		loginBtn.setOnClickListener(this);
		switchBtn.setOnClickListener(this);
		singlePayBtn.setOnClickListener(this);
		removeAccBtn.setOnClickListener(this);
		mVivoUnionManager = new VivoUnionManager(this);
		mVivoUnionManager.bindUnionService();
		mVivoUnionManager
				.registVivoAccountChangeListener(mOnVivoAccountChangedListener);
//		if (mContext.getResources().getConfiguration().orientation == Configuration.ORIENTATION_LANDSCAPE) {
//			singlePayBtn.setVisibility(View.GONE);
//		}
	}

	@Override
	protected void onResume() {
		// TODO Auto-generated method stub
		super.onResume();
		Log.d(TAG, "onResume");
		// VivoAccountManager.showListenterSize();
	}

	@Override
	protected void onPause() {
		// TODO Auto-generated method stub
		super.onPause();
		Log.d(TAG, "onPause");
	}

	@Override
	protected void onStop() {
		// TODO Auto-generated method stub
		super.onStop();
		Log.d(TAG, "onStop");
	}

	@Override
	public void onClick(View v) {
		// TODO Auto-generated method stub
		switch (v.getId()) {
		// 登录帐户
		case R.id.loginBtn:
			if (!isFastClick()) {
				mVivoUnionManager.startLogin(Constant.APP_ID);
			} else {
				Toast.makeText(LoginActivity.this, "----点击太快----",
						Toast.LENGTH_SHORT).show();
			}
			break;
		// 切换帐户
		case R.id.switchBtn:
			String roleName = "角色test" + index;
			String roleLevel = "" + index;
			Toast.makeText(mContext,
					"创建角色名称：" + roleName + " 角色等级： " + roleLevel,
					Toast.LENGTH_SHORT).show();
			VivoUnionManager.vivoAccountreportRoleInfo("1", roleLevel,
					"id123456", roleName, mContext, "测试区服");
			index++;
			break;
		// 清除帐户（清除vivo帐户登录界面自动填入的帐号和密码，第三方游戏不需要使用此接口）
		case R.id.removeAccBtn:
			// mVivoAccountManager.stopAssistService();
			nameVal.setText("");
			openidVal.setText("");
			authtokenVal.setText("");
			break;
		// 单机支付
		case R.id.singlePayBtn:
			Intent singlePayIntent = new Intent(mContext, TestActivity.class);
			startActivity(singlePayIntent);
			finish();
			break;
		default:
			Log.d(TAG, "unsupport type");
			break;
		}
	}

	@Override
	protected void onDestroy() {
		// TODO Auto-generated method stub
		super.onDestroy();
		Log.d(TAG, "onDestroy");
		mVivoUnionManager
				.unRegistVivoAccountChangeListener(mOnVivoAccountChangedListener);
	}

	OnVivoAccountChangedListener mOnVivoAccountChangedListener = new OnVivoAccountChangedListener() {
		@Override
		public void onAccountLogin(String name, String openid, String authtoken) {
			Log.d(TAG, "--------游戏页面也接收到信息了----------");
			Log.d(TAG, "name=" + name + ", openid=" + openid + ", authtoken="
					+ authtoken);
			nameVal.setText(name);
			openidVal.setText(openid);
			mOpenId = openid;
			Constant.CONS_UUID = openid;
			// UtilTool.setShprefsUserId(MainActivity.this, openid);
			authtokenVal.setText(authtoken);

			// token不为空，请求接口校验token，比较本地和服务器返回的openid是否一致
			if (!TextUtils.isEmpty(authtoken)) {
				// compareToken(authtoken);
				turnToGame();
			} else {
				Toast.makeText(mContext, "-----未获取到token---------",
						Toast.LENGTH_SHORT).show();
			}
		}

		// 第三方游戏不需要使用此回调
		@Override
		public void onAccountRemove(boolean isRemoved) {
			// TODO Auto-generated method stub
			// if(isRemoved){
			// Log.d(TAG, "remove success");
			// }
		}

		@Override
		public void onAccountLoginCancled() {
			Log.d(TAG, "------用户取消登陆------");
			Toast.makeText(LoginActivity.this, "----用户取消登陆---",
					Toast.LENGTH_SHORT).show();
		}

	};
	private static long lastClickTime;

	public boolean isFastClick() {
		long time = System.currentTimeMillis();
		if (time - lastClickTime > 0 && time - lastClickTime < 2000) {
			return true;
		}
		lastClickTime = time;
		return false;
	}

	private void compareToken(String autoToken) {
		try {
			NameValuePair[] nameValuePairs = new NameValuePair[1];

			nameValuePairs[0] = new BasicNameValuePair("access_token",
					autoToken);
			boolean isNetworkValid = UtilTool.isNetworkAvailable(this);
			CompareTokenTask compareTokenTask = new CompareTokenTask();
			compareTokenTask.execute(nameValuePairs);

		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	private class CompareTokenTask extends
			AsyncTask<NameValuePair, Integer, String> {

		@Override
		protected void onPreExecute() {

		}

		@Override
		protected String doInBackground(NameValuePair... nameValuePairs) {
			NetworkRequestAgent networkRequestAgent = new NetworkRequestAgent();
			String resultInfo = "";
			try {
				resultInfo = networkRequestAgent.sendRequest(URL_COM_TOKEN,
						nameValuePairs);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			return resultInfo;
		}

		@Override
		protected void onPostExecute(String result) {
			VivoLog.e(TAG, "--------CompareTokenTask----result:" + result);
			if (isFinishing()) {
				return;
			}
			try {
				if (!TextUtils.isEmpty(result)) {
					JSONObject jsonObject = new JSONObject(result);
					// 成功没有stat状态码
					if (!jsonObject.has("stat")) {
						String uid = jsonObject.getString("uid");
						if (uid.equals(mOpenId)) {
							Toast.makeText(mContext, "token校验成功，进入游戏",
									Toast.LENGTH_SHORT).show();
						} else {
							Toast.makeText(mContext,
									"-----token校验失败啦，快联系开发者吧---------",
									Toast.LENGTH_SHORT).show();
						}
					} else {
						// 请求失败
						Toast.makeText(mContext,
								"-----token校验失败啦，快联系开发者吧---------",
								Toast.LENGTH_SHORT).show();
					}
				} else {
					Toast.makeText(mContext,
							"-----token校验失败啦，快联系开发者吧---------",
							Toast.LENGTH_SHORT).show();
				}

			} catch (Exception e) {
				Toast.makeText(mContext, "-----token校验失败啦，快联系开发者吧---------",
						Toast.LENGTH_SHORT).show();
				e.printStackTrace();
			}
		}
	}

	private void turnToGame() {
		mUIHandler.postDelayed(new Runnable() {

			@Override
			public void run() {
				// TODO Auto-generated method stub
				Intent loginIntent = new Intent(mContext,
						GameMainActivity.class);
				loginIntent.putExtra(KEY_SHOW_TEMPLOGIN, false);
				startActivity(loginIntent);
				finish();
			}

		}, 0 * 1000);
	}
}
