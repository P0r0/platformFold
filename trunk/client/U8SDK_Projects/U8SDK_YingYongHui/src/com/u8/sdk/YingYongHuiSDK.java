package com.u8.sdk;

import android.app.Activity;
import android.util.Log;
import com.appchina.usersdk.Account;
import com.appchina.usersdk.ErrorMsg;
import com.appchina.usersdk.GlobalUtils;
import com.yyh.sdk.AccountCallback;
import com.yyh.sdk.CPInfo;
import com.yyh.sdk.LoginCallback;
import com.yyh.sdk.PayParams;
import com.yyh.sdk.PayResultCallback;
import com.yyh.sdk.YYHSDKAPI;


public class YingYongHuiSDK {
	
	private static YingYongHuiSDK instance;
	
	public YingYongHuiSDK() {
		// TODO Auto-generated constructor stub
	}
	
	private CPInfo mCpInfo;
//	Integer.getInteger(data.getProductId()) , data.getPrice(), data.getOrderID())
	private String orderID = System.currentTimeMillis() + "";
	
	private String appID;  //接入支付必选参数，appID支付参数设置
	private String privateKey; //接入支付必选参数，privateKey支付参数设置
	private String publicKey; //接入支付必选参数，publicKey支付参数设置
	private int loginID;  //接入登录必选参数，loginID应用汇账号体系参数
	private String loginKey; //接入登录必选参数，loginKey应用汇账号体系参数
	private String cpPrivateInfo; //商户私有信息，支付完成后发送支付结果通知时会透传给商户
	private String notifyUrl; //可选参数，支付结果通知地址，商户服务端接收支付结果通知的地址
	private String waresName; //商品名称
	private int productID; //商品ID
	private int price; //商品价格
	
	
	public static YingYongHuiSDK getInstance(){
		if(instance == null){
			instance = new YingYongHuiSDK();
		}
		return instance;
	}
	
	public void initSDK(SDKParams params){
		parseSDKParams(params);
		initSDK();
	}
	
	private void parseSDKParams(SDKParams params){
		this.appID = params.getString("YYH_APPID");
		this.privateKey = params.getString("YYH_PRIVATEKEY");
		this.publicKey = params.getString("YYH_PUBLICKEY");
		this.loginID = params.getInt("YYH_LOGINID");
		this.loginKey = params.getString("YYH_LOGINKEY");
		this.cpPrivateInfo = params.getString("YYH_CPPRIVATEINFO");
		this.notifyUrl = params.getString("YYH_NOTIFYURL");
		this.waresName = params.getString("YYH_WARESNAME");
		this.productID = params.getInt("YYH_PRODUCTID");
		this.price = params.getInt("YYH_PRICE");
	}
	
	private void initSDK() {
		// TODO Auto-generated method stub
		mCpInfo = new CPInfo();
		
		// 接入应用汇帐号体系，必须设置needAccount为ture，并且loginId和loginKey与给定的值必须一一对应
		mCpInfo.needAccount = true;
		mCpInfo.loginId = this.loginID;
		mCpInfo.loginKey = this.loginKey;
		
		// 支付参数设置
		mCpInfo.appid = this.appID;
		mCpInfo.privateKey = this.privateKey;
		mCpInfo.publicKey = this.publicKey;
		
		// 横竖屏设置,只针对启动页和登陆页
		mCpInfo.orientation = CPInfo.PORTRAIT;
		
		//开启启动页，闪屏页需要安装要求在最外层调用，最少3秒中
		YYHSDKAPI.startSplash(U8SDK.getInstance().getContext(), mCpInfo.orientation, 3000);
		
		YYHSDKAPI.singleInit(U8SDK.getInstance().getContext(), mCpInfo, new AccountCallback() {
			@Override
			public void onSwitchAccount(Account old, Account curret) {
				// 在个人中心点击切换小号之后的回调
				Log.e("YYH_init", "old:"+old.userName + "\tn current:"+curret.userName);
			}

			@Override
			public void onLogout() {
				// 在个人中心点击退出
				Log.e("YYH_init", "logout success");
			}
		});
	}
	
	public void login() {
		// TODO Auto-generated method stub
		YYHSDKAPI.login(U8SDK.getInstance().getContext(), new LoginCallback() {
			@Override
			public void onLoginSuccess(Activity activity, Account account) {
				
				YYHSDKAPI.showToolbar(true); // 显示悬浮框
				GlobalUtils.showToast(activity, "登录成功"); // 登录成功
			}

			@Override
			public void onLoginError(Activity activity, ErrorMsg error) {
				
				GlobalUtils.showToast(activity, error.message); // 登录失败
			}

			@Override
			public void onLoginCancel() {
				// 取消登录
				GlobalUtils.showToast(U8SDK.getInstance().getApplication(), "登录取消");
			}
		});
	}
	
	public void logOut() {
		// TODO Auto-generated method stub
		YYHSDKAPI.logout();
	}
	
	public void sdkExit() {
		// TODO Auto-generated method stub
		U8SDK.getInstance().getContext().finish();
	}
	
	public void pay(){
		startPay(U8SDK.getInstance().getContext(), getTransdata(this.cpPrivateInfo, this.productID , this.price, orderID));
	}
	
	/** 获取收银台参数 */
	private PayParams getTransdata(String cpprivateinfo,int waresid, float price, String cporderid) {
		Log.e("YYH_pay", "getTransdata："+cpprivateinfo+" -- "+waresid+" -- "+price+" -- "+cporderid);
		PayParams params = new PayParams();
		params.buildWaresid(waresid)
				.buildWaresName(this.waresName)
				.buildCporderid(cporderid)
				.buildPrice(price)
				.buildCpprivateinfo(cpprivateinfo)
				.buildNotifyurl(this.notifyUrl);
		return params;
	}
	
	/**发起支付*/
	public void startPay( final Activity activity , PayParams param) {
		YYHSDKAPI.startPay(activity, param, new PayResultCallback() {
			@Override
			public void onPaySuccess(int resultCode, String resultInfo) {
				Log.e("YYH_pay", "支付成功"+resultCode);
				U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "支付成功");
			}
			
			@Override
			public void onPayFaild(int resultCode, String resultInfo) {
				Log.e("YYH_pay", "支付失败"+resultCode);
				U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "支付失败");
			}
		});
	}
	
}
