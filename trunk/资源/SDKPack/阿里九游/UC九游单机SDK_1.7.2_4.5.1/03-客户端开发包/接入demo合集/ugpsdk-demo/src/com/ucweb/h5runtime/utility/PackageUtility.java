package com.ucweb.h5runtime.utility;

import java.io.File; 

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager; 

public class PackageUtility {

	/**
	 * 根据apk文件获取程序版本名字
	 * @param ctx
	 * @param apkPath
	 * @return
	 */
	final public static String getVersionNameByApkFile(final Context ctx, final String apkPath) {
		
		String ret = null;
		
		try{
			
			File apkFile = new File(apkPath);
			
			if (!apkFile.exists() || !apkPath.toLowerCase().endsWith(".apk")) {
				//int i = 0;
				return ret;
			} 
			
			PackageManager pm = ctx.getPackageManager();
			PackageInfo packageInfo = pm.getPackageArchiveInfo(apkPath, PackageManager.GET_ACTIVITIES);
			
			ret = packageInfo.versionName;
			
			
		}catch (Exception e) {

			e.printStackTrace();
			
		}
		
		return ret;
		  
	}
	
	final public static String getVersionName(final Context ctx) {
		
		String ret = "";
		
		try{
			 
			PackageManager pm = ctx.getPackageManager();
			PackageInfo packageInfo = pm.getPackageInfo(ctx.getPackageName(), 0);
			
			ret = packageInfo.versionName;
			 
		}catch (Exception e) {

			
		}
		
		return ret;
		  
	}
	
}
