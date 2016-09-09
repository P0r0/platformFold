package com.sdk.migame.payment;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.MiErrorCode;
import com.xiaomi.gamecenter.sdk.OnExitListner;
import com.xiaomi.gamecenter.sdk.OnLoginProcessListener;
import com.xiaomi.gamecenter.sdk.entry.MiAccountInfo;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.xiaomi.gamecenter.sdk.entry.ScreenOrientation;

/**
 * DEMO首页
 * 
 * @author guowb
 * 
 */
public class MainActivity extends Activity implements OnLoginProcessListener
{
	/** 屏幕方向切换 */
	private Button screenButton;

	/** 购买可消耗商品 */
	private Button repeatPayBtn;

	/** 购买不可消耗商品 */
	private Button unRepeatPayBtn;

	/** 显示屏幕方向 */
	private TextView screenTextView;

	/** 横屏竖屏属性 */
	private ScreenOrientation orientation = ScreenOrientation.vertical;

	private int demoScreenOrientation = ActivityInfo.SCREEN_ORIENTATION_PORTRAIT;

	private MiAccountInfo accountInfo;
	
	private String session;

	private Handler handler = new Handler()
		{
			public void handleMessage( Message msg )
			{
				switch( msg.what )
				{
					case 10000:
						Intent i2 = new Intent( MainActivity.this, MiappPayActivity.class );
						i2.putExtra( "from", "repeatpay" );
						i2.putExtra( "screen", demoScreenOrientation );
						startActivity( i2 );
					break;
					case 20000:
						Intent i1 = new Intent( MainActivity.this, MiappPayActivity.class );
						i1.putExtra( "from", "unrepeatpay" );
						i1.putExtra( "screen", demoScreenOrientation );
						startActivity( i1 );
					break;
					case 30000:
						Toast.makeText( MainActivity.this, "登录成功", Toast.LENGTH_SHORT ).show();
					break;
					case 40000:
						Toast.makeText( MainActivity.this, "登录失败", Toast.LENGTH_SHORT ).show();
					break;
					case 70000:
						Toast.makeText( MainActivity.this, "正在执行，不要重复操作", Toast.LENGTH_SHORT ).show();
					break;
					case 80000:
						boolean isLogin = (Boolean) msg.obj;
						String text = "已登录";
						if ( !isLogin )
							text = "未登录";
						Toast.makeText( MainActivity.this, text, Toast.LENGTH_SHORT ).show();
					break;
					default:
					break;
				}
			};
		};

	@Override
	public void onCreate( Bundle savedInstanceState )
	{
		super.onCreate( savedInstanceState );
		setContentView( R.layout.activity_main );

		Button loginBtn = (Button) findViewById( R.id.btn_login );
		loginBtn.setOnClickListener( new OnClickListener()
			{
				@Override
				public void onClick( View v )
				{
					// 调用SDK执行登陆操作
					MiCommplatform.getInstance().miLogin( MainActivity.this, MainActivity.this );
				}
			} );

		repeatPayBtn = (Button) findViewById( R.id.btn_repeatpay );
		repeatPayBtn.setOnClickListener( new OnClickListener()
			{
				@Override
				public void onClick( View v )
				{
					handler.sendEmptyMessage( 10000 );
				}
			} );

		unRepeatPayBtn = (Button) findViewById( R.id.btn_unrepeatpay );
		unRepeatPayBtn.setOnClickListener( new OnClickListener()
			{
				@Override
				public void onClick( View v )
				{
					handler.sendEmptyMessage( 20000 );
				}
			} );

		Button paymentBtn = (Button) findViewById( R.id.btn_moneypayment );
		paymentBtn.setOnClickListener( new OnClickListener()
			{
				@Override
				public void onClick( View v )
				{
					Intent intent = new Intent( MainActivity.this, MiAppPaymentActivity.class );
					intent.putExtra( "screen", demoScreenOrientation );
					startActivity( intent );
				}
			} );

		Button gamBtn = (Button) findViewById( R.id.btn_gam );
		gamBtn.setOnClickListener( new OnClickListener()
			{
				@Override
				public void onClick( View v )
				{
					Intent intent = new Intent( MainActivity.this, GamActivity.class );
					intent.putExtra( "accountInfo", accountInfo );
					startActivity( intent );
				}
			} );

		screenTextView = (TextView) findViewById( R.id.text_screen );
		screenTextView.setTextColor( Color.BLACK );
		screenTextView.setTextSize( 18 );
		if ( orientation == ScreenOrientation.horizontal )
			screenTextView.setText( "当前：横屏" );
		else
			screenTextView.setText( "当前：竖屏" );

		screenButton = (Button) findViewById( R.id.btn_change_screen );
		screenButton.setOnClickListener( new OnClickListener()
			{
				@Override
				public void onClick( View v )
				{
					if ( orientation == ScreenOrientation.horizontal )
					{
						screenTextView.setText( "当前：竖屏" );
						demoScreenOrientation = ActivityInfo.SCREEN_ORIENTATION_PORTRAIT;
						orientation = ScreenOrientation.vertical;
					}
					else
					{
						screenTextView.setText( "当前：横屏" );
						demoScreenOrientation = ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE;
						orientation = ScreenOrientation.horizontal;
					}
					MainActivity.this.setRequestedOrientation( demoScreenOrientation );
				}
			} );

		Button loginStatusBtn = (Button) findViewById( R.id.btn_loginstaus );
		loginStatusBtn.setOnClickListener( new OnClickListener()
			{
				@Override
				public void onClick( View v )
				{
					new Thread()
						{
							public void run()
							{
								boolean islogin = MiCommplatform.getInstance().isMiAccountLogin();
								handler.sendMessage( handler.obtainMessage( 80000, islogin ) );
							};
						}.start();

				}
			} );

		Button btnLogout = (Button) findViewById( R.id.btn_exit );
		btnLogout.setOnClickListener( new OnClickListener()
			{

				@Override
				public void onClick( View v )
				{
					if(!TextUtils.isEmpty( session ))
					{
						MiCommplatform.getInstance().miAppExit( MainActivity.this, new OnExitListner()
						{

							@Override
							public void onExit( int code )
							{
								Log.e( "errorCode===", code + "" );
								if ( code == MiErrorCode.MI_XIAOMI_EXIT )
								{
									// 执行退出的一些操作
									android.os.Process.killProcess( android.os.Process.myPid() );
								}
							}
						} );
					}
					else
					{
						finish();
					}
				}
			} );

	}

	@Override
	public boolean onKeyDown( int keyCode, KeyEvent event )
	{
		if ( keyCode == KeyEvent.KEYCODE_BACK )
		{
			if(!TextUtils.isEmpty( session ))
			{
				MiCommplatform.getInstance().miAppExit( MainActivity.this, new OnExitListner()
				{
					@Override
					public void onExit( int code )
					{
						if ( code == MiErrorCode.MI_XIAOMI_EXIT )
						{
							android.os.Process.killProcess( android.os.Process.myPid() );
						}
					}
				} );
			return true;
			}
		}
		return super.onKeyDown( keyCode, event );
	}

	@Override
	public void finishLoginProcess( int arg0, MiAccountInfo arg1 )
	{
		if ( MiErrorCode.MI_XIAOMI_PAYMENT_SUCCESS == arg0 )
		{
			accountInfo = arg1;
			session = arg1.getSessionId();
			handler.sendEmptyMessage( 30000 );
		}
		else if ( MiErrorCode.MI_XIAOMI_PAYMENT_ERROR_ACTION_EXECUTED == arg0 )
		{
			handler.sendEmptyMessage( 70000 );
		}
		else
		{
			handler.sendEmptyMessage( 40000 );
		}
	}
}
