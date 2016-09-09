package com.sdk.migame.payment;

import java.util.UUID;

import android.app.Activity;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.method.DigitsKeyListener;
import android.view.Gravity;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.MiErrorCode;
import com.xiaomi.gamecenter.sdk.OnPayProcessListener;
import com.xiaomi.gamecenter.sdk.entry.MiBuyInfo;

/**
 * 按金额充值
 * 
 * @author guowb
 *
 */
public class MiAppPaymentActivity extends Activity implements OnPayProcessListener
{
	private EditText mEditText;
	
	@Override
	protected void onCreate( Bundle savedInstanceState )
	{
		super.onCreate( savedInstanceState );

		this.requestWindowFeature( Window.FEATURE_NO_TITLE );
		
		int screen = getIntent().getIntExtra( "screen", 1 );
		this.setRequestedOrientation( screen );
		
		LinearLayout layout = new LinearLayout( this );
		layout.setBackgroundColor( Color.WHITE );
		layout.setOrientation( LinearLayout.VERTICAL );
		
		ScrollView mScrollViw = new ScrollView( this );
		mScrollViw.setBackgroundColor( Color.WHITE );
		mScrollViw.addView( layout, new LinearLayout.LayoutParams( -1, -1 ) );
		setContentView( mScrollViw, new LinearLayout.LayoutParams( -1, -1 ) );

		TextView mTextView = new TextView( this );
		mTextView.setText( getString( R.string.demo_choess_money ) );
		mTextView.setTextColor( Color.BLACK );
		mTextView.setGravity( Gravity.CENTER_HORIZONTAL );
		mTextView.setTextSize( 20 );
		LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams( -1, -2 );
		lp.setMargins( 0, 20, 0, 8 );
		layout.addView( mTextView, lp ); 

		LinearLayout itemLayout1 = new LinearLayout( this );
		lp = new LinearLayout.LayoutParams( -1, -2 );
		layout.addView( itemLayout1, lp );

		Button button1 = new Button( this );
		button1.setText( getString( R.string.demo_pay_amount_1yuan ) );
		lp = new LinearLayout.LayoutParams( 0, -2, 1 );
		itemLayout1.addView( button1, lp );
		button1.setOnClickListener( new OnClickListener()
			{
				@Override
				public void onClick( View v )
				{
					mEditText.setText( "1" );
				}
			} );

		button1 = new Button( this );
		button1.setText( getString( R.string.demo_pay_amount_5yuan ) );
		lp = new LinearLayout.LayoutParams( 0, -2, 1 );
		itemLayout1.addView( button1, lp );
		button1.setOnClickListener( new OnClickListener()
			{
				@Override
				public void onClick( View v )
				{
					mEditText.setText( "5" );
				}
			} );

		LinearLayout itemLayout2 = new LinearLayout( this );
		lp = new LinearLayout.LayoutParams( -1, -2 );
		layout.addView( itemLayout2, lp );

		button1 = new Button( this );
		button1.setText( getString( R.string.demo_pay_amount_10yuan ) );
		lp = new LinearLayout.LayoutParams( 0, -2, 1 );
		itemLayout2.addView( button1, lp );
		button1.setOnClickListener( new OnClickListener()
			{
				@Override
				public void onClick( View v )
				{
					mEditText.setText( "10" );
				}
			} );

		button1 = new Button( this );
		button1.setText( getString( R.string.demo_pay_amount_50yuan ) );
		lp = new LinearLayout.LayoutParams( 0, -2, 1 );
		itemLayout2.addView( button1, lp );
		button1.setOnClickListener( new OnClickListener()
			{
				@Override
				public void onClick( View v )
				{
					mEditText.setText( "50" );
				}
			} );

		LinearLayout itemLayout3 = new LinearLayout( this );
		lp = new LinearLayout.LayoutParams( -1, -2 );
		layout.addView( itemLayout3, lp );

		button1 = new Button( this );
		button1.setText( getString( R.string.demo_pay_amount_100yuan ) );
		lp = new LinearLayout.LayoutParams( 0, -2, 1 );
		itemLayout3.addView( button1, lp );
		button1.setOnClickListener( new OnClickListener()
			{
				@Override
				public void onClick( View v )
				{
					mEditText.setText( "100" );
				}
			} );

		button1 = new Button( this );
		button1.setText( getString( R.string.demo_pay_amount_500yuan ) );
		lp = new LinearLayout.LayoutParams( 0, -2, 1 );
		itemLayout3.addView( button1, lp );
		button1.setOnClickListener( new OnClickListener()
			{
				@Override
				public void onClick( View v )
				{
					mEditText.setText( "500" );
				}
			} );

		mEditText = new EditText( this );
		mEditText.setHint( getString( R.string.demo_input_amount ) );
//		setDigits( mEditText, false );
		lp = new LinearLayout.LayoutParams( -1, -2 );
		lp.setMargins( 40, 10, 40, 0 );
		layout.addView( mEditText, lp );

		TextView tipTextView = new TextView( this );
		tipTextView.setTextColor( Color.BLACK );
		tipTextView.setTextSize( 18 );
		tipTextView.setText( getString( R.string.demo_mibi_to_rmb ) );
		lp = new LinearLayout.LayoutParams( -2, -2 );
		lp.leftMargin = 30;
		lp.topMargin = 50;
		layout.addView( tipTextView, lp );

		Button payBtn = new Button( this );
		payBtn.setText( getString( R.string.demo_btn_ok ) );
		lp = new LinearLayout.LayoutParams( -1, -2 );
		lp.setMargins( 100, 20, 100, 0 );
		layout.addView( payBtn, lp );
		payBtn.setOnClickListener( new OnClickListener()
			{
				@Override
				public void onClick( View v )
				{

					String money_ = mEditText.getText().toString();

					if ( TextUtils.isEmpty( money_ ) )
					{
						Toast.makeText( MiAppPaymentActivity.this, getString( R.string.demo_choess_money ), Toast.LENGTH_SHORT ).show();
						return;
					}

					int money = Integer.parseInt( money_ );

					MiBuyInfo miBuyInfo = new MiBuyInfo();
					miBuyInfo.setCpOrderId( UUID.randomUUID().toString() );
					miBuyInfo.setCpUserInfo( "xxxx透传参数" );
					miBuyInfo.setAmount( money );
					
					MiCommplatform.getInstance().miUniPay( MiAppPaymentActivity.this, miBuyInfo, MiAppPaymentActivity.this );
				}
			} );
		

		TextView tipTextView1 = new TextView( this );
		tipTextView1.setTextColor( Color.BLACK );
		tipTextView1.setTextSize( 18 );
		tipTextView1.setText( getString( R.string.demo_tip_text ) );
		lp = new LinearLayout.LayoutParams( -2, -2 );
		lp.leftMargin = 30;
		lp.rightMargin = 30;
		layout.addView( tipTextView1, lp );
	}

	private Handler handler = new Handler()
		{
			@Override
			public void handleMessage( android.os.Message msg )
			{
				switch( msg.what )
				{
					case MiErrorCode.MI_XIAOMI_PAYMENT_SUCCESS:
						Toast.makeText( MiAppPaymentActivity.this, getString( R.string.demo_payment_success ), Toast.LENGTH_SHORT ).show();
					break;
					case MiErrorCode.MI_XIAOMI_PAYMENT_ERROR_CANCEL: 
					case MiErrorCode.MI_XIAOMI_PAYMENT_ERROR_PAY_CANCEL:
						Toast.makeText( MiAppPaymentActivity.this, getString( R.string.demo_payment_cancel ), Toast.LENGTH_LONG ).show();
					break;
					case MiErrorCode.MI_XIAOMI_PAYMENT_ERROR_PAY_FAILURE:
						Toast.makeText( MiAppPaymentActivity.this, getString( R.string.demo_payment_failde ), Toast.LENGTH_LONG ).show();
					break;
					case MiErrorCode.MI_XIAOMI_PAYMENT_ERROR_ACTION_EXECUTED:
						Toast.makeText( MiAppPaymentActivity.this, getString( R.string.demo_islogin ), Toast.LENGTH_LONG ).show();
					break;
					case MiErrorCode.MI_XIAOMI_PAYMENT_ERROR_LOGIN_FAIL:
						Toast.makeText( MiAppPaymentActivity.this, getString( R.string.demo_payment_please_login ), Toast.LENGTH_LONG ).show();
					break;
					default:
					break;
				}
			};
		};

	@Override
	public void finishPayProcess( int arg0 )
	{
		handler.sendEmptyMessage( arg0 );
	}
	
	
	public void setDigits(EditText et, boolean bDecimal)
	{
		InputFilter[] filters = {new InputFilter.LengthFilter(3)};
		et.setFilters(filters);
		et.setKeyListener(new DigitsKeyListener(false, bDecimal));
	}
	
}
