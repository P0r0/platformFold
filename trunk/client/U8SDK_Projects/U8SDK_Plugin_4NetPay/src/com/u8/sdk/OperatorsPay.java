package com.u8.sdk;

import android.app.Activity;

import com.u8.sdk.utils.Arrays;

public class OperatorsPay implements IOperatorPay{
    private String[] supportedMethods = {"meegoPay","mmPay","egamePay","unicomPay"};
    
    public OperatorsPay(Activity context)
    {
    	CombinePaySDK.getInstance().initSDK(U8SDK.getInstance().getSDKParams());
	}
	@Override
	public boolean isSupportMethod(String methodName) 
	{
		return Arrays.contain(this.supportedMethods, methodName);
	}

	@Override
	public void pay(PayParams data) 
	{		
		meegoPay(data);
	}

	public void meegoPay(PayParams data)
	{
		CombinePaySDK.getInstance().meegoPay(data);
	}
	public void mmPay(PayParams data)
	{
		CombinePaySDK.getInstance().mmPay(data);
	}

	public void egamePay(PayParams data)
	{
		CombinePaySDK.getInstance().egamePay(data);
	}

	public void unicomPay(PayParams data)
	{
		CombinePaySDK.getInstance().unicomPay(data);
	}
	
}
