package com.ucweb.h5runtime;

import cn.uc.paysdk.SDKCore;

import com.unicom.shield.UnicomApplicationWrapper;
/**
 * 
 * 类描述: 使用联通单机支付sdk4.0版本，须继承UnicomApplicationWrapper
 *
 * <br>==========================
 * <br> 公司：优视科技
 * <br> 开发：Administrator
 * <br> 版本：1.0
 * <br> 创建时间：2016年6月4日
 * <br>==========================
 */
public class H5Application extends  UnicomApplicationWrapper {
	@Override
	public void onCreate() {
		super.onCreate();
		// SDK 注册环境
	    SDKCore.registerEnvironment(this);
	}
		
}
