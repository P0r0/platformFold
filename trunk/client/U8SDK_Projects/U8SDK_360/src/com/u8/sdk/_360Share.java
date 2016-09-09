package com.u8.sdk;

import android.app.Activity;

public class _360Share implements IShare {

	@Override
	public boolean isSupportMethod(String methodName) {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public void share(ShareParams params) {
		// TODO Auto-generated method stub
		_360SDK.getInstance().share(params);
	}
	
	public _360Share(Activity context) {
		// TODO Auto-generated constructor stub
	}

}
