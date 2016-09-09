package com.ucweb.h5runtime.utility;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import android.app.Activity;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.TextView;

public class SpinnerUtils {

	public static List<Method> getMethod(Class c) {
		List<Method> result = new ArrayList<Method>();

		Method[] subMethods = c.getDeclaredMethods();

		for (Method tmpM : subMethods) {

			result.add(tmpM);

		}

		return result;
	}

	public static String[] getMethodName(Class c, Set<String> excludingMethods) {
		if (excludingMethods == null) {
			excludingMethods = new HashSet<String>();
		}
		List<Method> methods = getMethod(c);
		List<String> result = new ArrayList<String>();
		int i = 0;
		for (Method method : methods) {
			if (excludingMethods.contains(method.getName())) {
				continue;
			}
			result.add(method.getName());
			i++;
		}
		return result.toArray(new String[result.size()]);

	}

	public static void main(String[] args) {
	}

	public static Spinner getBooleanSpinner(int spinnerID, Activity thisActivity) {
		Spinner sp;
		ArrayAdapter<String> adapter;
		String[] spinnerItems = { "true", "false", "null" };
		sp = (Spinner) thisActivity.findViewById(spinnerID);

		// 将可选内容与ArrayAdapter连接起来
		adapter = new ArrayAdapter<String>(thisActivity,
				android.R.layout.simple_spinner_item, spinnerItems);

		// 设置下拉列表的风格
		adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);

		// 将adapter 添加到spinner中
		sp.setAdapter(adapter);

		// 添加事件Spinner事件监听
		// sp.setOnItemSelectedListener(SpinnerUtils
		// .getStaticMethodSpinnerListener(targetTestClass, resultView));

		// 设置默认值
		sp.setVisibility(View.VISIBLE);
		sp.setSelection(2);
		// sp.setPrompt(targetTestClass.getSimpleName());
		return sp;
	}

	public static Spinner getNormalSpinner(int spinnerID,
			Activity thisActivity, String[] items,
			OnItemSelectedListener listener) {
		Spinner sp;
		ArrayAdapter<String> adapter;
		String[] spinnerItems = items;
		sp = (Spinner) thisActivity.findViewById(spinnerID);

		// 将可选内容与ArrayAdapter连接起来
		adapter = new ArrayAdapter<String>(thisActivity,
				android.R.layout.simple_spinner_item, spinnerItems);

		// 设置下拉列表的风格
		adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);

		// 将adapter 添加到spinner中
		sp.setAdapter(adapter);
		
		// 添加事件Spinner事件监听
		sp.setOnItemSelectedListener(listener);

		// 设置默认值
		sp.setVisibility(View.VISIBLE);
//		sp.setSelection(0);
		// sp.setPrompt(targetTestClass.getSimpleName());
		return sp;
	}

	public static Spinner getStaticMethodSpinner(int spinnerID,
			Activity thisActivity, Class<?> targetTestClass,
			TextView resultView, Set<String> excludingMethods) {
		Spinner sp;
		ArrayAdapter<String> adapter;
		String[] spinnerItems = SpinnerUtils.getMethodName(targetTestClass,
				excludingMethods);
		sp = (Spinner) thisActivity.findViewById(spinnerID);

		// 将可选内容与ArrayAdapter连接起来
		adapter = new ArrayAdapter<String>(thisActivity,
				android.R.layout.simple_spinner_item, spinnerItems);

		// 设置下拉列表的风格
		adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);

		// 将adapter 添加到spinner中
		sp.setAdapter(adapter);

		// 添加事件Spinner事件监听
		sp.setOnItemSelectedListener(SpinnerUtils
				.getStaticMethodSpinnerListener(targetTestClass, resultView));

		// 设置默认值
		sp.setVisibility(View.VISIBLE);
		sp.setPrompt(targetTestClass.getSimpleName());
		return sp;
	}

	public static SpinnerSelectedListener getStaticMethodSpinnerListener(
			Class c, TextView tv) {

		return new SpinnerSelectedListener(c, tv);

	}

	static class SpinnerSelectedListener implements OnItemSelectedListener {

		Class<?> clazz;
		TextView tv;

		public SpinnerSelectedListener(Class<?> c, TextView tv) {
			super();
			this.clazz = c;
			this.tv = tv;
		}

		public void onItemSelected(AdapterView<?> arg0, View arg1, int arg2,
				long arg3) {
			try {
				Method m = clazz.getDeclaredMethods()[arg2];
				try {
					Object result = m.invoke(null, arg1.getContext());
//					tv.setText(clazz.getSimpleName() + "." + m.getName() + ":"
//							+ new Gson().toJson(result));
				} catch (IllegalArgumentException e) {
					e.printStackTrace();
				} catch (IllegalAccessException e) {
					e.printStackTrace();
				} catch (InvocationTargetException e) {
					e.printStackTrace();
				}

			} catch (SecurityException e) {
				e.printStackTrace();
			}

		}

		public void onNothingSelected(AdapterView<?> arg0) {
		}
	}
}
