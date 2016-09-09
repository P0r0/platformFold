package com.u8.sdk;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Dictionary;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONObject;

import singlepay.network.NetworkRequestAgent;

import com.bbk.payment.payment.OnVivoSinglePayResultListener;
import com.bbk.payment.util.Constants;
import com.vivo.sdkplugin.aidl.VivoUnionManager;
import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.widget.Toast;

public class VivoSDK {
	
	private static VivoSDK instance;
	
	private VivoSDK(){
		
	}
	
	private String APP_ID;
	private String SIGN_KEY;
	private String STORE_ID;
	private VivoUnionManager mVivoUnionManager;
	private ProgressDialog mProgress = null;
	private static String TAG = "VivoPay";
	private HashMap<String, PayParams> billsDic;
	
	public static VivoSDK getInstance(){
		if(instance == null){
			instance = new VivoSDK();
		}
		return instance;
	}
	
	public void initSDK(SDKParams params){
		this.parseSDKParams(params);
		this.initSDK();
	}
	
	private void parseSDKParams(SDKParams params){
		this.APP_ID = params.getString("APP_ID");
		this.SIGN_KEY = params.getString("CPKEY");
		this.STORE_ID = params.getString("CPID");
	}
	
	private void initSDK(){
		billsDic = new HashMap<String,PayParams>();
		billsDic.clear();		
		mVivoUnionManager = new VivoUnionManager(U8SDK.getInstance().getContext());
		mVivoUnionManager.initVivoSinglePayment(U8SDK.getInstance().getContext(),
				mOnVivoPayResultListener);
		mVivoUnionManager.singlePaymentInit(U8SDK.getInstance().getContext());
		U8SDK.getInstance().onResult(U8Code.CODE_INIT_SUCCESS, "init success");
	}
	
	OnVivoSinglePayResultListener mOnVivoPayResultListener = new OnVivoSinglePayResultListener() {

		@Override
		public void payResult(String transNo, boolean pay_result,String result_code, String pay_msg) 
		{
            
			Log.d("Vivo", transNo + "," + pay_msg + "," + result_code + ","
					+ pay_result);
			UtilTool.showDialog(U8SDK.getInstance().getContext(), "支付结果", "交易编号=" + transNo
					+ ", 交易结果=" + (pay_result ? "成功" : "失败") + ",状态码="
					+ result_code + "，状态描述=" + pay_msg);
			
			if(billsDic.containsKey(transNo))
			{				
				PayParams product = billsDic.get(transNo);
				PayResult result = new PayResult();
				result.setProductID(product.getProductId());
				result.setProductName(product.getProductName());
				result.setOrderID(product.getOrderID());
				result.setExtension(product.getExtension());				
				U8SDK.getInstance().onPayResult(result);
				billsDic.remove(transNo);
			}
		}

	};
	
	public void exit() 
	{
		mVivoUnionManager.singlePaymentExit(U8SDK.getInstance().getContext());
	}
	
	public void pay(final PayParams params) {
		boolean isNetworkValid = UtilTool.isNetworkAvailable(U8SDK.getInstance().getContext());
		if (isNetworkValid) 
		{
			U8SDK.getInstance().runOnMainThread(new Runnable() {
				
				@Override
				public void run() {
					try {
						Log.d(TAG,"pay request..");
						SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
						String orderNum = UUID.randomUUID().toString().replaceAll("-", "");
						if(params.getOrderID() != null && !params.getOrderID().isEmpty())
							orderNum = params.getOrderID();
						DecimalFormat doubleFormat = new DecimalFormat("#.00");
						NameValuePair[] nameValuePairs = new NameValuePair[11];
						Map<String, String> param_map = new HashMap<String, String>();
						param_map.put(Constant.PARAM_NOTIFYURL,
								"http://113.98.231.125:8051/vcoin/notifyStubAction");
						param_map.put(Constant.PARAM_ORDER_AMOUNT,doubleFormat.format(params.getPrice()/100.00));
						param_map.put(Constant.PARAM_ORDER_DESC,
								params.getProductDesc());
						param_map.put(Constant.PARAM_ORDER_TITLE,
								params.getProductName());
						param_map.put(Constant.PARAM_ORDER_TIME, format.format(new Date()));
						param_map.put(Constant.PARAM_STOREID, STORE_ID);
						param_map.put(Constant.PARAM_APP_ID, APP_ID);
						param_map.put(Constant.PARAM_STOREORDER, orderNum);
						param_map.put(Constant.PARAM_VERSION, "1.0");

						String signature = generateSignature(param_map);
						int i = 0;
						nameValuePairs[i++] = new BasicNameValuePair(
								Constant.PARAM_NOTIFYURL,
								"http://113.98.231.125:8051/vcoin/notifyStubAction");
						nameValuePairs[i++] = new BasicNameValuePair(
								Constant.PARAM_ORDER_AMOUNT, doubleFormat.format(params.getPrice()/100.00));
						nameValuePairs[i++] = new BasicNameValuePair(
								Constant.PARAM_ORDER_DESC, params.getProductDesc());
						nameValuePairs[i++] = new BasicNameValuePair(
								Constant.PARAM_ORDER_TITLE, params.getProductName());
						nameValuePairs[i++] = new BasicNameValuePair(
								Constant.PARAM_ORDER_TIME, format.format(new Date()));
						nameValuePairs[i++] = new BasicNameValuePair(
								Constant.PARAM_SIGNATURE, signature);
						nameValuePairs[i++] = new BasicNameValuePair(
								Constant.PARAM_SIGNMETHOD, "MD5");
						nameValuePairs[i++] = new BasicNameValuePair(
								Constant.PARAM_STOREID, STORE_ID);
						nameValuePairs[i++] = new BasicNameValuePair(
								Constant.PARAM_APP_ID, APP_ID);
						nameValuePairs[i++] = new BasicNameValuePair(
								Constant.PARAM_STOREORDER, orderNum);
						nameValuePairs[i++] = new BasicNameValuePair(
								Constant.PARAM_VERSION, "1.0");
						for (int j = 0; j < nameValuePairs.length; j++) {
							Log.e("Vivopay", "nameValuePairs" + j + "="
									+ nameValuePairs[j]);
						}
						InitialPayTask initialPayTask = new InitialPayTask(params);
						initialPayTask.execute(nameValuePairs);
					} catch (Exception e) {
						// TODO: handle exception
					}					
				}
			});
			
		} else {
			showPayMessage("未连接到网络");
		}
	}
	
	private String generateSignature(Map<String, String> param_map) {
		String result = null;
		result = VivoSignUtils.getVivoSign(param_map, SIGN_KEY);
		return result;
	}

	private void showPayMessage(String string) {
		Toast.makeText(U8SDK.getInstance().getContext(), string, Toast.LENGTH_LONG).show();
		
	}

	private class InitialPayTask extends AsyncTask<NameValuePair, Void, String> {
		private PayParams payParams;

		public InitialPayTask(PayParams payParams) {
			this.payParams = payParams;
		}

		@Override
		protected void onPreExecute() {
			mProgress = UtilTool.showProgress(U8SDK.getInstance().getContext(),
					null, "正在初始化支付，请稍等...", false, true);
			mProgress.show();
		}

		@Override
		protected String doInBackground(NameValuePair... nameValuePairs) 
		{
			NetworkRequestAgent networkRequestAgent = new NetworkRequestAgent();
			String resultInfo = networkRequestAgent.initialPayment(nameValuePairs);
			return resultInfo;
		}

		@Override
		protected void onPostExecute(final String result) {
			U8SDK.getInstance().runOnMainThread(new Runnable() {

				@Override
				public void run() {
					try {
						if (null != mProgress) {
							mProgress.dismiss();
							mProgress = null;
						}

						if (!UtilTool.checkStringIsNull(result)) {
							Log.d(TAG, "result=" + result);
							boolean isSignOk = UtilTool.checkSignatrue(result);
							if (isSignOk) {

								JSONObject jsonVo = new JSONObject(result);
								String respCode = jsonVo
										.getString(Constant.RESPONE_RESP_CODE);
								if ("200".equals(respCode)) {

									String transNo = jsonVo
											.getString(Constant.RESPONE_VIVO_ORDER);
									String signature = jsonVo
											.getString(Constant.RESPONE_VIVO_SIGNATURE);

									Bundle localBundle = new Bundle();
									String packageName = U8SDK.getInstance()
											.getContext().getPackageName();
									localBundle.putString(
											Constants.PAY_PARAM_TRANSNO,
											transNo);
									localBundle.putString(
											Constants.PAY_PARAM_SIGNATURE,
											signature);
									localBundle.putString(
											Constants.PAY_PARAM_PKG,
											packageName);
									localBundle.putBoolean(
											Constants.PAY_PARAM_USE_WEIXIN_PAY,
											false);
									localBundle.putString(
											Constants.PAY_PARAM_USEMODE, "00");
									localBundle.putString(
											Constants.PAY_PARAM_PRODUCT_DEC,
											payParams.getProductDesc());
									localBundle.putString(
											Constants.PAY_PARAM_PRODUCT_NAME,
											payParams.getProductName());
									localBundle.putDouble(
											Constants.PAY_PARAM_PRICE,
											Double.valueOf(payParams.getPrice() / 100.00));
									localBundle.putString(
											Constants.PAY_PARAM_USERID,
											"dkhsky");
									String signe = localBundle
											.getString(Constants.PAY_PARAM_SIGNATURE);
									
									if(!billsDic.containsKey(transNo))
										billsDic.put(transNo, payParams);
									mVivoUnionManager.singlePayment(U8SDK.getInstance().getContext(),
											localBundle);
								} else {
									showPayMessage("初始化支付失败");
								}
							} else {
								showPayMessage("交易信息被篡改");
							}
						} else {
							showPayMessage("初始化支付失败");
						}
					} catch (Exception e) {
						showPayMessage("网络异常，请稍后重试");
						e.printStackTrace();
					}
				}
			});
		}
	}
}
