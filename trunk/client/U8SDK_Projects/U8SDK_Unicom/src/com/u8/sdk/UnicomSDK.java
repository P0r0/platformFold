package com.u8.sdk;

import java.util.HashMap;
import com.unicom.dcLoader.Utils;
import com.unicom.dcLoader.Utils.UnipayPayResultListener;

import android.util.Log;
import android.widget.Toast;

public class UnicomSDK {
	private static UnicomSDK instance;
	private HashMap<String, PayParams> billsDic;
	UnipayPayResultListener offlineListener;

	private UnicomSDK() {

	}

	public static UnicomSDK getInstance() {
		if (instance == null) {
			instance = new UnicomSDK();
		}
		return instance;
	}

	public void initSDK(SDKParams params) {
		this.parseSDKParams(params);
		this.initSDK();		
	}
	
	private void parseSDKParams(SDKParams params){
	}
	
	private void initSDK()
	{
		billsDic = new HashMap<String, PayParams>();
		offlineListener = new UnipayPayResultListener() {
			
			@Override
			public void PayResult(String code, int flag, int flag2, String error) 
			{
				String paycode = code.substring(code.length() - 3);
				if (billsDic.containsKey(paycode))
				{
					String result = "";
					PayParams product = billsDic.get(paycode);
					switch (flag) {
					case 1:
						result = "购买道具：[" + product.getProductName() + "] 成功！";
						PayResult payResult = new PayResult();
						payResult.setProductID(product.getProductId());
						payResult.setProductName(product.getProductName());
						payResult.setOrderID(product.getOrderID());
						payResult.setExtension(product.getExtension());
						U8SDK.getInstance().onPayResult(payResult);
						break;
					case 2:
						result = "购买道具：[" + product.getProductName() + "] 失败！";
						break;
					case 3:
						result = "购买道具：[" + product.getProductName() + "] 取消！";
						break;

					default:
						break;
					}
					
					billsDic.remove(paycode);
					Toast.makeText(U8SDK.getInstance().getContext(), result,
							Toast.LENGTH_SHORT).show();
				}
				
			}
		};
		U8SDK.getInstance().onResult(U8Code.CODE_INIT_SUCCESS, "init success");
	}

	public void login(){
		
	}
	
	public void pay(final PayParams params)
	{
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			
			@Override
			public void run() {
				if(!billsDic.containsKey(params.getUnicomCode()))
					billsDic.put(params.getUnicomCode(), params);
				Utils.getInstances().pay(U8SDK.getInstance().getContext(), params.getUnicomCode(),offlineListener);		
			}
		});
	}
}

