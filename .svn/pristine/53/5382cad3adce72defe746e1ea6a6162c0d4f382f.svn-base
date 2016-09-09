package com.ucweb.h5runtime.widget;
 
 

import android.app.AlertDialog;
import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.ImageButton;
import android.widget.TextView;

import com.egame.unipaytest.R;

/**
 * 用于显示各种对话框
 * 
 * @author panzx
 *
 */
public class Alert {

	/**
	 * 显示带有1个按钮（“确定”按钮）的对话框
	 * 
	 * @param msg
	 * @param context
	 * @param ok
	 */
	public static AlertDialog show1(String msg,Context context,final OnClickListener ok){
		
		final AlertDialog dialog = new AlertDialog.Builder(context).create();
		dialog.setCancelable(false);
		dialog.show();
		
		Window window = dialog.getWindow();
		window.setContentView(R.layout.normal_dialog);
		window.setBackgroundDrawableResource(R.color.transparent);
		TextView textView = (TextView)window.findViewById(R.id.textView);
		textView.setText(msg);
		
		ImageButton btnOk = (ImageButton) window.findViewById(R.id.btn_ok);
		btnOk.setOnClickListener(new OnClickListener(){
			@Override
			public void onClick(View v) {
				dialog.dismiss();
				if(ok!=null){
					ok.onClick(v);
				}
			}
		});
		
		return dialog;
	}
	
	/**
	 * 根据指定的Layout ID，显示带有2个按钮（具体是什么按钮可自定义）的对话框
	 * 
	 * @param viewId
	 * @param left
	 * @param right
	 */
	public static AlertDialog show2(int viewId,Context context,final OnClickListener left,
			final OnClickListener right){
		
		final AlertDialog dialog = new AlertDialog.Builder(context).create();
		dialog.setCancelable(false);
		dialog.show();
		
		Window window = dialog.getWindow();
		window.setContentView(viewId);
		window.setBackgroundDrawableResource(R.color.transparent);
		ImageButton btnLeft = (ImageButton) window.findViewById(R.id.btn_ok);
		btnLeft.setOnClickListener(new OnClickListener(){
			@Override
			public void onClick(View v) {
				dialog.dismiss();
				if(left!=null){
					left.onClick(v);
				}
			}
		});

		ImageButton btnRight = (ImageButton) window.findViewById(R.id.btn_cancel);
		btnRight.setOnClickListener(new OnClickListener(){
			@Override
			public void onClick(View v) {
				dialog.dismiss();
				if(right!=null){
					right.onClick(v);
				}
			}
		});
		
		return dialog;
	}
	
	/**
	 * 显示带有2个按钮（“确定”和“取消”按钮）的对话框
	 * 
	 * @param msg
	 * @param context
	 * @param left
	 * @param right
	 */
	public static AlertDialog show2(String msg,Context context,final OnClickListener left,
			final OnClickListener right){
		
		final AlertDialog dialog = new AlertDialog.Builder(context).create();
		dialog.setCancelable(false);
		dialog.show();
		
		Window window = dialog.getWindow();
		window.setContentView(R.layout.confirm_dialog);
		window.setBackgroundDrawableResource(R.color.transparent);
		TextView textView = (TextView)window.findViewById(R.id.textView);
		textView.setText(msg);
		
		ImageButton btnLeft = (ImageButton) window.findViewById(R.id.btn_ok);
		btnLeft.setOnClickListener(new OnClickListener(){
			@Override
			public void onClick(View v) {
				dialog.dismiss();
				if(left!=null){
					left.onClick(v);
				}
			}
		});

		ImageButton btnRight = (ImageButton) window.findViewById(R.id.btn_cancel);
		btnRight.setOnClickListener(new OnClickListener(){
			@Override
			public void onClick(View v) {
				dialog.dismiss();
				if(right!=null){
					right.onClick(v);
				}
			}
		});
		
		return dialog;
	}
	
	/**
	 * 根据指定的Layout ID和提示内容，显示带有2个按钮（具体是什么按钮可自定义）的对话框
	 * 
	 * @param viewId
	 * @param left
	 * @param right
	 */
	public static AlertDialog show2(int viewId,String msg,Context context,final OnClickListener left,
			final OnClickListener right){
		
		final AlertDialog dialog = new AlertDialog.Builder(context).create();
		dialog.setCancelable(false);
		dialog.show();
		
		Window window = dialog.getWindow();
		window.setContentView(viewId);
		window.setBackgroundDrawableResource(R.color.transparent);
		TextView textView = (TextView)window.findViewById(R.id.textView);
		textView.setText(msg);
		
		ImageButton btnLeft = (ImageButton) window.findViewById(R.id.btn_ok);
		btnLeft.setOnClickListener(new OnClickListener(){
			@Override
			public void onClick(View v) {
				dialog.dismiss();
				if(left!=null){
					left.onClick(v);
				}
			}
		});

		ImageButton btnRight = (ImageButton) window.findViewById(R.id.btn_cancel);
		btnRight.setOnClickListener(new OnClickListener(){
			@Override
			public void onClick(View v) {
				dialog.dismiss();
				if(right!=null){
					right.onClick(v);
				}
			}
		});
		
		return dialog;
	}
}
