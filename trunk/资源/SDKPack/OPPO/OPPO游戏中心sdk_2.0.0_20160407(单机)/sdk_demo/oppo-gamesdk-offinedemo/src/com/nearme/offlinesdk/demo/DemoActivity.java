package com.nearme.offlinesdk.demo;

import java.util.Random;
import com.nearme.game.sdk.GameCenterSDK;
import com.nearme.game.sdk.callback.*;
import com.nearme.game.sdk.common.model.biz.PayInfo;
import com.nearme.game.sdk.common.util.AppUtil;
import com.nearme.offlinesdk.demo.R;
import com.nearme.platform.opensdk.pay.PayResponse;
import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Toast;

public class DemoActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
				WindowManager.LayoutParams.FLAG_FULLSCREEN);
		setContentView(R.layout.activity_demo);

		findViewById(R.id.test_pay).setOnClickListener(
				new View.OnClickListener() {

					@Override
					public void onClick(View v) {
						doPay();
					}
				});

		findViewById(R.id.test_exit_guid).setOnClickListener(
				new View.OnClickListener() {

					@Override
					public void onClick(View v) {
						GameCenterSDK.getInstance().onExit(DemoActivity.this,
								new GameExitCallback() {

									@Override
									public void exitGame() {
										// CP 实现游戏退出操作，也可以直接调用
										// AppUtil工具类里面的实现直接强杀进程~
										AppUtil.exitGameProcess(DemoActivity.this);
									}
								});
					}
				});
	}

	private void doPay() {
		// cp支付参数
		int amount = 1; // 支付金额，单位分
		PayInfo payInfo = new PayInfo(System.currentTimeMillis()
				+ new Random().nextInt(1000) + "", "自定义字段", amount);
		payInfo.setProductDesc("商品描述");
		payInfo.setProductName("商品名称");
		// 支付结果服务器回调地址，不通过服务端回调发货的游戏可以不用填写~
		payInfo.setCallbackUrl("http://gamecenter.wanyol.com:8080/gamecenter/callback_test_url");

		GameCenterSDK.getInstance().doSinglePay(this, payInfo,
				new SinglePayCallback() {

					@Override
					public void onSuccess(String resultMsg) {
						// add OPPO 支付成功处理逻辑~
						Toast.makeText(DemoActivity.this, "支付成功",
								Toast.LENGTH_SHORT).show();
					}

					@Override
					public void onFailure(String resultMsg, int resultCode) {
						// add OPPO 支付失败处理逻辑~
						if (PayResponse.CODE_CANCEL != resultCode) {
							Toast.makeText(DemoActivity.this, "支付失败",
									Toast.LENGTH_SHORT).show();
						} else {
							// 取消支付处理
							Toast.makeText(DemoActivity.this, "支付取消",
									Toast.LENGTH_SHORT).show();
						}
					}

					@Override
					public void onCallCarrierPay(PayInfo payInfo) {
						// add 运营商支付逻辑~
						Toast.makeText(DemoActivity.this, "运营商支付",
								Toast.LENGTH_SHORT).show();
					}
				});
	}

	@Override
	protected void onPause() {
		GameCenterSDK.getInstance().onPause();
		super.onPause();
	}
}