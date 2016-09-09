package com.example.paydemo;

import android.app.Application;
import android.content.Context;

import com.squareup.leakcanary.LeakCanary; 

public class MApplication extends Application {

	@Override
	public void onCreate() {
		super.onCreate();
		LeakCanary.install(this);
	}
	
}
