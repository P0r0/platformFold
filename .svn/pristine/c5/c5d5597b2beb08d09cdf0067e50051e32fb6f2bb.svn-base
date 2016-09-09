package com.ucweb.h5runtime.utility;
 

import android.app.Activity;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.egame.unipaytest.R;

/**
 * 加载界面，用于进入游戏时的各种有进度条的界面
 * 
 * @author panzx
 *
 */
public class LoadingScreen {
	private LinearLayout loadingLayout;
	private TextView loadingProgress;
	private TextView loadingMsg;
	private ProgressBar progressBar;
	
	private FrameLayout root;
	
	private boolean show;
	
	
	private boolean indeterminate = false;
	
	public LoadingScreen(Activity activity,FrameLayout root, boolean indeterminate){
		this.indeterminate = indeterminate;
		this.root = root;
		loadingLayout = (LinearLayout) activity.getLayoutInflater().inflate( R.layout.fullscreen_loading, null);
		loadingProgress = (TextView)loadingLayout.findViewById(R.id.progress);
		loadingMsg = (TextView)loadingLayout.findViewById(R.id.msg);
		
		View progressbarbg = loadingLayout.findViewById(R.id.progressbarbg);
		ProgressBar progressBar1 = (ProgressBar)loadingLayout.findViewById(R.id.progressBar1); 
		ProgressBar progressBar2 = (ProgressBar)loadingLayout.findViewById(R.id.progressBar2);

		if(this.indeterminate){
			progressBar1.setVisibility(View.GONE);
			progressBar = progressBar2;
			progressBar.setVisibility(View.VISIBLE);
			progressbarbg.setBackgroundDrawable(new ColorDrawable());
			
			loadingProgress.setVisibility(View.GONE);
			
		}else{
			
			progressBar2.setVisibility(View.GONE);
			progressBar = progressBar1;
			progressBar.setVisibility(View.VISIBLE);
		}
	}
	
	public LoadingScreen(Activity activity,FrameLayout root){
		this(activity, root, false);
	}
	
	public void showLoadingScreen(){
		if(show){
			return;
		}
		root.addView(loadingLayout);
		setLoadingMsg(0,null);
		show = true;
	}
	
	public void hideLoadingScreen(){
		if(!show){
			return;
		}
		root.removeView(loadingLayout);
		show = false;
	}
	
	public void setLoadingMsg(int progress,String msg){
		if(progress>100){
			progress = 100;
		}
		progressBar.setProgress(progress);
		loadingProgress.setText(progress + "%");
		if(msg!=null){
			loadingMsg.setText(msg);
		}
	}
	
	public void setLoadingMsg( String msg){
		  
		if(msg != null){
			loadingMsg.setText(msg);
		}
	}
	
}
