package com.sdk.migame.payment;

import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.app.ListActivity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;

import com.sdk.migame.payment.adapter.UserInfoScoresAdapter;
import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.OnLoginProcessListener;

public class UserInfoActivity extends ListActivity
{
	private TextView tvHeart;
	private TextView tvExp;
	private ArrayList< JSONObject > leaderBoardList;
	private UserInfoScoresAdapter adapter;

	@Override
	protected void onCreate( Bundle savedInstanceState )
	{
		super.onCreate( savedInstanceState );
		setContentView( R.layout.user_info_activity );

		tvHeart = (TextView) findViewById( R.id.info_heart );
		tvExp = (TextView) findViewById( R.id.info_exp );

		setUserInfo();
	}

	private void setUserInfo()
	{
		leaderBoardList = new ArrayList< JSONObject >();
		Intent intent = getIntent();
		String info = intent.getStringExtra( "info" );

		if ( null != info )
			try
			{
				JSONObject jb = new JSONObject( info );

				tvHeart.setText( "Heart:" + jb.optString( "heart" ) );
				tvExp.setText( "Exp:" + jb.optString( "exp" ) );
				
				JSONArray ja = jb.optJSONArray( "scores" );
				for(int i = 0; i < ja.length(); i++)
				{
					leaderBoardList.add( ja.optJSONObject( i ) );
				}
				
				adapter = new UserInfoScoresAdapter( this, leaderBoardList );
				setListAdapter( adapter );
			}
			catch ( JSONException e )
			{
				e.printStackTrace();
			}
	}
	
	
	public void miLogin(Activity activity, OnLoginProcessListener listener)
	{
		MiCommplatform.getInstance().miLogin( activity, listener );
	}
	
	
	
	
	
	
	
	
	
	

}
