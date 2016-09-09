package com.sdk.migame.payment.utiles;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import android.content.Context;
import android.os.Environment;

public class DemoUtils
{
	public static void intiTestImg(Context context)
	{
		try
		{
			boolean sdCardExist = Environment.getExternalStorageState().equals( android.os.Environment.MEDIA_MOUNTED );
			if ( !sdCardExist )
				return;
			
			File dirFile = new File( Environment.getExternalStorageDirectory() + "/misdktest" );
			if(!dirFile.exists())
				dirFile.mkdir();
			
			File file = new File( Environment.getExternalStorageDirectory() + "/misdktest/testImg.png" );
			if(file.exists())
				return;
			
			InputStream ins = context.getAssets().open( "testImg.png" );
			FileOutputStream fos = new FileOutputStream( file );
			byte[] buffer = new byte[1024];
			int l = 0;
			while( ( l = ins.read( buffer ) ) != -1 )
			{
				fos.write( buffer, 0, l );
			}
			fos.flush();
			fos.close();
			ins.close();
		}
		catch ( FileNotFoundException e )
		{
			e.printStackTrace();
		}
		catch ( IOException e )
		{
			e.printStackTrace();
		}
	}

}
