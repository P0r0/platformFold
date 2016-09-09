package com.u8.sdk;

/***
 * 支付接口
 * @author xiaohei
 *
 */
public interface IOperatorPay extends IPlugin{
	public static final int PLUGIN_TYPE = Constants.PLUGIN_TYPE_OPERATORPAY;
	
	/***
	 * 调用支付界面
	 * @param data
	 */
	public void pay(PayParams data);
}
