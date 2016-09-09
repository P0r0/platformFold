package com.sdk.migame.payment;

import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import android.app.ListActivity;
import android.content.Intent;
import android.os.Bundle;

import com.sdk.migame.payment.adapter.LeaderBoardAdapter;

public class LeaderBoardActivity extends ListActivity
{
	private ArrayList< JSONObject > leaderBoardList;
	private LeaderBoardAdapter adapter;

	@Override
	protected void onCreate( Bundle savedInstanceState )
	{
		super.onCreate( savedInstanceState );
		setContentView( R.layout.leaderboard_list_activity );

		getLeaderBoardList();
		adapter = new LeaderBoardAdapter( this, leaderBoardList );
		setListAdapter( adapter );
	}

	private void getLeaderBoardList()
	{
		leaderBoardList = new ArrayList< JSONObject >();
		Intent intent = getIntent();
		String listString = intent.getStringExtra( "list" );

		if ( null != listString )
		{
			try
			{
				JSONObject jb = new JSONObject( listString );

				JSONArray ja = jb.getJSONArray( "app_friends" );

				for ( int i = 0; i < ja.length(); i++ )
				{
					leaderBoardList.add( ja.getJSONObject( i ) );
				}
			}
			catch ( JSONException e )
			{
				e.printStackTrace();
			}
		}
	}
}
