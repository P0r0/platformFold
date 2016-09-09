package com.ucweb.h5runtime;

import java.io.InputStream;

import com.egame.unipaytest.R;
import com.ucweb.h5runtime.utility.LoadingScreen;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;

public class CheckingActivity extends Activity {

	public final static String VERSION_CONFIG = "vesionConfig";

	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		initView();
	}

	private RelativeLayout logoLayout;
	private FrameLayout mRoot = null;
	private LoadingScreen mLoadingScreen = null;

	private void initView() {
		mRoot = new FrameLayout(this);
		setContentView(mRoot);

		logoLayout = (RelativeLayout) getLayoutInflater().inflate(R.layout.logo, null);
		mRoot.addView(logoLayout);

		setDefaultBg();
	}

	public FrameLayout getRootLayout() {
		return mRoot;
	}

	@TargetApi(Build.VERSION_CODES.JELLY_BEAN)
	private void setDefaultBg() {
//		Drawable bg = getResources().getDrawable(R.drawable.defaultbg);
//		if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN)
//			mRoot.setBackgroundResource(R.drawable.defaultbg);
//		else
//		{
//			
//			mRoot.setBackgroundDrawable(resources.getDrawable(R.drawable.defaultbg));
//			//mRoot.setBackgroundResource(R.drawable.defaultbg);
//		}
		
		try
		{
			Resources resources = getResources();
			AssetManager asm = resources.getAssets();

			InputStream is=asm.open("defaultbg.png");//name:图片的名称
			Drawable bg = Drawable.createFromStream(is, null);
			mRoot.setBackgroundDrawable(bg);
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			mRoot.setBackgroundResource(R.drawable.defaultbg);
		}
	}

	private boolean mHasFinishCheckingBeforeEnterGame = false;

	@Override
	protected void onResume() {
		super.onResume();

		if (!mHasFinishCheckingBeforeEnterGame) {
			mHasFinishCheckingBeforeEnterGame = true;
			checkGame();
		}
	}

	@Override
	public void onDestroy() {
		super.onDestroy();
	}
	
	private final static int HANDLER_COPY_FINISHED = 1;
	public static final int HANDLER_START_GAME = 2;
	public final static int HANDLER_UNZIP_PROGRESS = 3;
	
	
	private Handler mHandler = new Handler() {

		@Override
		public void handleMessage(Message msg) {
			switch (msg.what) {
			
			case HANDLER_UNZIP_PROGRESS:
				int progressCount = (Integer) msg.obj;
				if (mLoadingScreen != null) {
					mLoadingScreen.setLoadingMsg(progressCount, null);
				}

				break;
			case HANDLER_COPY_FINISHED:
				
				if(mLoadingScreen != null){
					mLoadingScreen.setLoadingMsg(100, null);
					mLoadingScreen.hideLoadingScreen();
				}
				enterGame();
				break;
				
			}
		}

	};

	private void enterGame() {
		Intent intent = new Intent();
		intent.putExtra("url", "newgame");
		intent.setFlags(Intent.FLAG_ACTIVITY_BROUGHT_TO_FRONT);
		intent.setClass(this, H5GameActivity.class);
		startActivity(intent);
		finish();
	}

	private void checkGame() {

		mHasFinishCheckingBeforeEnterGame = true;

		if (mLoadingScreen != null) {
			mLoadingScreen.hideLoadingScreen();
		}

		onAppOpen(null);
	}

	ProgressDialog mOpenDialog = null;

	public void onAppOpen(final String url) {

		mLoadingScreen = new LoadingScreen(this, mRoot);
		mLoadingScreen.showLoadingScreen();
		mLoadingScreen.setLoadingMsg(0, "Loading resource, please wait...");
		
		Thread loadingThread = new Thread() {
			public void run() {
				int loadingStep = 0 ;
				while (loadingStep < 100) {
					
					try {
						Message msg = new Message();
						msg.what = HANDLER_UNZIP_PROGRESS;
						msg.obj = loadingStep;
						mHandler.sendMessage(msg);
						sleep(20);
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
					loadingStep ++;
				}
				mHandler.sendEmptyMessage(HANDLER_COPY_FINISHED);
			}
		};
		loadingThread.start();
	}



}
