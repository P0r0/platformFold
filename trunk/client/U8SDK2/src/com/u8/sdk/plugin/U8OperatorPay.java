package com.u8.sdk.plugin;

import com.u8.sdk.IOperatorPay;
import com.u8.sdk.PayParams;
import com.u8.sdk.PluginFactory;

public class U8OperatorPay 
{
private static U8OperatorPay instance;
	
	private IOperatorPay payPlugin;
	
	private U8OperatorPay(){
		
	}
	
	public static U8OperatorPay getInstance(){
		if(instance == null){
			instance = new U8OperatorPay();
		}
		return instance;
	}
	
	public void init(){
		this.payPlugin = (IOperatorPay)PluginFactory.getInstance().initPlugin(IOperatorPay.PLUGIN_TYPE);
		if(this.payPlugin == null){
		}
	}
	
	public boolean isSupport(String method){
		if(this.payPlugin == null){
			return false;
		}
		
		return this.payPlugin.isSupportMethod(method);
	}
	
	/***
	 * 支付接口（弹出支付界面）
	 * @param data
	 */
	public void pay(PayParams data){
		if(this.payPlugin == null){
			return;
		}
		this.payPlugin.pay(data);
	}

}
