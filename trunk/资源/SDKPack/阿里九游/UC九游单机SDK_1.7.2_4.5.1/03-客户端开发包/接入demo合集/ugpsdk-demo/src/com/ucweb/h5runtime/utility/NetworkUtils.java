package com.ucweb.h5runtime.utility;
 
import java.io.InputStream; 
import java.net.HttpURLConnection;
import java.net.URL; 
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.net.wifi.WifiManager;
import android.provider.Settings;

public class NetworkUtils {

	
	/**
	 * 网络是否可用
	 * @param context
	 * @return
	 */
	public static  boolean isNetworkConnected(final Context ctx) {
		
		ConnectivityManager mgr = (ConnectivityManager)ctx.getSystemService(Context.CONNECTIVITY_SERVICE);
		boolean connected = false;
		
		NetworkInfo[] infos = mgr.getAllNetworkInfo();   
		
		if (infos != null) {
			
			for (NetworkInfo info : infos) {
				if (info.getState() == NetworkInfo.State.CONNECTED) {
					connected = true; 
					break;
				}
			}
		}
		
		return connected;
	}
	
	
	
	/**
	 * wifi是否可用
	 * @param context
	 * @return
	 */
	public static  boolean isWifiAvaliable(final Context ctx) {
		
		ConnectivityManager mgr = (ConnectivityManager)ctx.getSystemService(Context.CONNECTIVITY_SERVICE); 
		
		NetworkInfo activeNetwork = mgr.getActiveNetworkInfo();
		
		if (activeNetwork != null && activeNetwork.isAvailable()) {
			
			int networkType = activeNetwork.getType();
		 
			if (ConnectivityManager.TYPE_WIFI == networkType) {
				return true;
			}
		}
		
		return false;
	}
	
	
	/**
	 * 跳到wifi设置页面
	 * @param ctx
	 */
	public static void startNetwordSettingActivity(final Context ctx){
		
		Intent intent = new Intent(Settings.ACTION_WIRELESS_SETTINGS);
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_SINGLE_TOP);
		try{
			ctx.startActivity(intent);
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
	public static void startWifiNetwordSettingActivity(final Context ctx){
		
		Intent intent = new Intent(Settings.ACTION_WIFI_SETTINGS);
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_SINGLE_TOP);
		try{
			ctx.startActivity(intent);
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
	public static boolean isWifiEnable(final Context ctx){
		
		WifiManager mgr = (WifiManager)ctx.getSystemService(Context.WIFI_SERVICE);
		
		return  mgr.isWifiEnabled();
		
	}
	
	
	public static long getURLFileLength(final String requestUrl){
		 
		HttpURLConnection conn = null;
		long ret = 0;
		
		try {
			
			URL url = new URL(requestUrl);
			conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("HEAD");
			conn.setConnectTimeout(1000 * 6);
			conn.setReadTimeout(1000 * 10);
			ret = conn.getContentLength();
			conn.disconnect();
			conn = null; 
			 
		} catch (Exception e) {
			 
		}finally{
			
			if(conn != null){
				
				try{
					
					conn.disconnect();
					conn = null;
					
				}catch (Exception e) {
					 
				}
			}
			
		}
		
		return ret;
	}
	
	
	public static String getContentByURL(final String requestUrl){
		 
		HttpURLConnection conn = null;
		String ret = null;
		InputStream is = null;
		try {
			
			URL url = new URL(requestUrl);
			conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setConnectTimeout(1000 * 6);
			conn.setReadTimeout(1000 * 10);
			 
			int len = conn.getContentLength();
			
			if(len < 0){
				return ret;
			}
			
			is = conn.getInputStream();
		
			byte[] b = new byte[len];
			
			int count = is.read(b);
			
			if(count == len){
				
				ret = new String(b);
			} 
			
			conn.disconnect();
			conn = null; 
			
			is.close();
			is = null;
			 
		} catch (Exception e) {
			 
		}finally{
			
			if(conn != null){
				
				try{
					
					conn.disconnect();
					conn = null;
					
				}catch (Exception e) {
					 
				}
			}
			
			if(is != null){
				
				try{
					is.close();
					is = null;
				}catch (Exception e) {
					// TODO: handle exception
				}
			}
			
		}
		
		return ret;
	}
	
	
	public static String getNetworkType(final Context ctx){
		
		String snetInfo = "";

		try {
			ConnectivityManager cm = null;
			cm = (ConnectivityManager) ctx.getSystemService(Context.CONNECTIVITY_SERVICE);
			
			if (cm == null) {
				return snetInfo;
			}

			NetworkInfo activeNetwork = cm.getActiveNetworkInfo();
			
			if (activeNetwork != null && activeNetwork.isAvailable()) {
				int networkType = activeNetwork.getType();
				
				String subnetworkName = activeNetwork.getExtraInfo();

				subnetworkName = (subnetworkName == null) ? "" : subnetworkName.trim().toLowerCase();

				 

				if (ConnectivityManager.TYPE_WIFI == networkType) // wifi
				{
					snetInfo = "wifi";
					
				} else if (ConnectivityManager.TYPE_MOBILE == networkType) {
					if (subnetworkName.contains("wap")// cmwap
							|| (subnetworkName.contains("#777") && null != Proxy
									.getDefaultHost())) {
						snetInfo = "wap";
					}else{
						
						snetInfo = "net";
					}
				}
			} else {
				snetInfo = "";
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return snetInfo;
		
	}
	
	
	
	
	
}
