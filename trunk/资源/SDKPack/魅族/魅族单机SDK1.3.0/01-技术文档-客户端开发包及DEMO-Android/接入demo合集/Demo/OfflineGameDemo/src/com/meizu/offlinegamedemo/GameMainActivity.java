package com.meizu.offlinegamedemo;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Switch;
import android.widget.TextView;

import com.meizu.gamesdk.model.callback.MzPayListener;
import com.meizu.gamesdk.model.model.MzPayParams;
import com.meizu.gamesdk.model.model.PayResultCode;
import com.meizu.gamesdk.offline.core.MzGameCenterPlatform;
import com.meizu.gamesdk.utils.MD5Utils;
import com.meizu.offliegamedemo.R;

public class GameMainActivity extends Activity implements View.OnClickListener,
		MzPayListener {

	private TextView mTvMsg;
	private EditText mEtAmount;
	private EditText mEtName;
	private Switch mSwCloseSms;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_signle_game_main);

		Button btnPay = (Button) findViewById(R.id.btn_pay);
		btnPay.setOnClickListener(this);
		mSwCloseSms = (Switch) findViewById(R.id.sw_close_sms);

		mTvMsg = (TextView) findViewById(R.id.tv_msg);
		mEtAmount = (EditText) findViewById(R.id.et_amount);
		mEtName = (EditText) findViewById(R.id.et_name);

		String amount = getRecord("amount");
		if (!TextUtils.isEmpty(amount)) {
			mEtAmount.setText(amount);
		}
		String name = getRecord("order_name");
		if (!TextUtils.isEmpty(name)) {
			mEtName.setText(name);
		}
		MzGameCenterPlatform.orderQueryConfirm(this, this);
		// MzGameCenterPlatform.init(this, GameConstants.GAME_ID,
		// GameConstants.GAME_KEY);
	}

	@Override
	public void onClick(View v) {
		int id = v.getId();
		switch (id) {
		case R.id.btn_pay:
			Bundle payInfo = generatePayInfo();
			if (payInfo == null) {
				return;
			}
			MzGameCenterPlatform.singlePay(this, payInfo, this);
			break;
		default:
			break;
		}

	}

	public void onPayResult(int code, Bundle info, String errorMsg) {
		String orderid = null;
		if (info != null) {
			orderid = info.getString(MzPayParams.ORDER_KEY_ORDER_ID);
		}
		if (code == PayResultCode.PAY_SUCCESS) {
			appendMsg("支付成功:" + orderid);
		} else if (code == PayResultCode.PAY_USE_SMS) {
			appendMsg("短信支付:" + orderid);
		} else if (code == PayResultCode.PAY_ERROR_CANCEL) {
			appendMsg("用户取消:" + orderid);
		} else if (code == PayResultCode.PAY_ERROR_CODE_DUPLICATE_PAY) {
			appendMsg("重复支付:" + orderid);
		} else if (code == PayResultCode.PAY_ERROR_GAME_VERIFY_ERROR) {
			appendMsg(errorMsg);
		} else {
			appendMsg("支付失败:" + code + "," + errorMsg);
		}

		Log.i("MzGameSDK", errorMsg + code);
	}

	private Bundle generatePayInfo() {
		double amount = 0;
		String orderName = null;
		try {
			amount = Double.parseDouble(mEtAmount.getText().toString());
			orderName = mEtName.getText().toString();
		} catch (Exception e) {
		}

		if (amount <= 0 || TextUtils.isEmpty(orderName)) {
			appendMsg("订单信息错误");
			return null;
		}
		setRecord("amount", mEtAmount.getText().toString());
		setRecord("order_name", orderName);

		closeInputMethod(this, mEtAmount, mEtName);

		String appid = GameConstants.GAME_ID;
		String cpUserInfo = "test";
		String totalPrice = String.valueOf(amount);
		String orderId = "" + System.currentTimeMillis();
		String productId = "001";
		String productSubject = orderName;
		String productBody = "";
		int payType = 0;
		long createTiem = System.currentTimeMillis();

		StringBuilder builder = new StringBuilder();
		final String equalStr = "=";
		final String andStr = "&";
		builder.append("app_id" + equalStr + appid + andStr);
		builder.append("cp_order_id" + equalStr + orderId + andStr);
		builder.append("create_time" + equalStr + createTiem + andStr);
		builder.append("pay_type" + equalStr + payType + andStr);
		builder.append("product_body" + equalStr + productBody + andStr);
		builder.append("product_id" + equalStr + productId + andStr);
		builder.append("product_subject" + equalStr + productSubject + andStr);
		builder.append("total_price" + equalStr + totalPrice + andStr);
		builder.append("user_info" + equalStr + cpUserInfo);
		builder.append(":" + GameConstants.GAME_SECRET);
		String sign = MD5Utils.sign(builder.toString());
		String signType = "md5";

		Bundle payInfo = new Bundle();
		// appid
		payInfo.putString(MzPayParams.ORDER_KEY_ORDER_APPID, appid);
		// cp自定义信息
		payInfo.putString(MzPayParams.ORDER_KEY_CP_INFO, cpUserInfo);
		// 金额
		payInfo.putString(MzPayParams.ORDER_KEY_AMOUNT, totalPrice);
		// 订单id
		payInfo.putString(MzPayParams.ORDER_KEY_ORDER_ID, orderId);
		// 产品id
		payInfo.putString(MzPayParams.ORDER_KEY_PRODUCT_BODY, productBody);
		// 产品id
		payInfo.putString(MzPayParams.ORDER_KEY_PRODUCT_ID, productId);
		// 产品描述
		payInfo.putString(MzPayParams.ORDER_KEY_PRODUCT_SUBJECT, productSubject);

		// 支付方式，默认值：”0”（即定额支付）
		payInfo.putInt(MzPayParams.ORDER_KEY_PAY_TYPE, payType);
		// 签名
		payInfo.putString(MzPayParams.ORDER_KEY_SIGN, sign);
		// 签名类型
		payInfo.putString(MzPayParams.ORDER_KEY_SIGN_TYPE, signType);
		// 是否关闭短信支付,默认是打开状态
		payInfo.putBoolean(MzPayParams.ORDER_KEY_DISABLE_PAY_TYPE_SMS,
				mSwCloseSms.isChecked());
		payInfo.putLong(MzPayParams.ORDER_KEY_CREATE_TIME, createTiem);
		// 优先支付渠道 0:支付宝 1:微信 2:银联 3:短信
		payInfo.putInt(MzPayParams.ORDER_KEY_PAY_CHANNEL, 0);
		return payInfo;

	}

	private void appendMsg(final String msg) {
		mTvMsg.post(new Runnable() {
			@Override
			public void run() {
				mTvMsg.append(msg + "\n");
			}
		});
	}

	private void setRecord(String key, String value) {
		SharedPreferences sp = getSharedPreferences("local_history",
				MODE_PRIVATE);
		sp.edit().putString(key, value).apply();
	}

	private String getRecord(String key) {
		SharedPreferences sp = getSharedPreferences("local_history",
				MODE_PRIVATE);
		return sp.getString(key, null);
	}

	public static boolean closeInputMethod(Context context,
			EditText... editTexts) {
		InputMethodManager imm = (InputMethodManager) context
				.getSystemService(Context.INPUT_METHOD_SERVICE);
		if (imm.isActive()) {
			for (EditText editText : editTexts) {
				if (editText.hasFocus()) {
					return imm.hideSoftInputFromWindow(
							editText.getApplicationWindowToken(), 0);
				}
			}
		}
		return false;
	}
}
