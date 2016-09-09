package com.sdk.migame.payment;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;

import android.app.ListActivity;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.TextView;

import com.sdk.migame.payment.adapter.GameFriendListAdapter;
import com.sdk.migame.payment.utiles.MessageUtil;
import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.entry.MiAccountInfo;
import com.xiaomi.gamecenter.sdk.gam.MiResponseHandler;

public class GameFriendListActivity extends ListActivity implements OnClickListener, TextWatcher
{
	private static final String TAG = "GameFriendListActivity";

	private ArrayList< JSONObject > friends;
	private ArrayList< JSONObject > appFriends;
	private ArrayList< JSONObject > friendsForSearch;

	private ArrayList< Map< String, String >> metaInfo;
	private GameFriendListAdapter friendListAdapter;

	private TextView tvFriendType;
	private EditText etSearch;
	
	private MiAccountInfo accountInfo;

	// private String leaderboardKey;

	static enum FriendInfoType
	{
		AppFriends, Friends
	}

	private FriendInfoType friendType = FriendInfoType.AppFriends;

	@Override
	protected void onCreate( Bundle savedInstanceState )
	{
		super.onCreate( savedInstanceState );
		setContentView( R.layout.game_friend_list_activity );

		// leaderboardKey = getIntent().getStringExtra( "leaderboardKey" );
		
		accountInfo = getIntent().getParcelableExtra( "accountInfo" );

		etSearch = (EditText) findViewById( R.id.friend_list_activity_et_search );
		etSearch.setVisibility( View.GONE );
		etSearch.addTextChangedListener( this );

//		findViewById( R.id.friend_list_activity_btn_app_friends ).setOnClickListener( this );
//		findViewById( R.id.friend_list_activity_btn_friends ).setOnClickListener( this );
		findViewById( R.id.friend_list_activity_btn_leaderboard ).setOnClickListener( this );
		tvFriendType = (TextView) findViewById( R.id.friend_list_activity_tv_friend_type );

		metaInfo = new ArrayList< Map< String, String >>();
		Map< String, String > metaInfoAndroid = new HashMap< String, String >();
		metaInfoAndroid.put( "os", "android" );
		metaInfoAndroid.put( "executeurl", "" );
		metaInfo.add( metaInfoAndroid );

		Map< String, String > metaInfoIos = new HashMap< String, String >();
		metaInfoIos.put( "os", "ios" );
		metaInfoIos.put( "executeurl", "" );
		metaInfo.add( metaInfoIos );

		friendsForSearch = new ArrayList< JSONObject >();
		appFriends = new ArrayList< JSONObject >();
		friends = new ArrayList< JSONObject >();
		friendListAdapter = new GameFriendListAdapter( GameFriendListActivity.this, friendsForSearch, metaInfo, accountInfo );
		setListAdapter( friendListAdapter );
		getFriends();
	}

	private void getFriends()
	{
		MiCommplatform.getInstance().loadGameFriends( GameFriendListActivity.this, new MiResponseHandler()
			{
				@Override
				protected void onComplete( int miStatus, JSONObject result )
				{
					if ( !result.has( "app_friends" ) && !result.has( "friends" ) )
					{
						Log.i( TAG, "friends info is null." );
						return;
					}

					JSONArray appFriendArray = result.optJSONArray( "app_friends" );
					JSONArray friendArray = result.optJSONArray( "friends" );

					if ( appFriendArray.length() == 0 && friendArray.length() == 0 )
						MessageUtil.alert( GameFriendListActivity.this, "no friends" );

					appFriends.clear();
					Log.i( "", "-------- app friends" );
					for ( int i = 0, n = appFriendArray.length(); i < n; i++ )
					{
						JSONObject friend = appFriendArray.optJSONObject( i );
						if ( friend != null )
						{
							appFriends.add( friend );

							Log.i( "", "-------- app_friends[" + i + "]" );
							Log.i( "", "rank: " + friend.optString( "rank" ) );
							Log.i( "", "user_id: " + friend.optString( "user_id" ) );
							Log.i( "", "nickname: " + friend.optString( "nickname" ) );
							Log.i( "", "profile_image_url: " + friend.optString( "profile_image_url" ) );
							Log.i( "", "friend_nickname: " + friend.optString( "friend_nickname" ) );
							Log.i( "", "message_blocked: " + friend.optString( "message_blocked" ) );
							Log.i( "", "last_message_sent_at: " + friend.optString( "last_message_sent_at" ) );
							Log.i( "", "season_score: " + friend.optString( "season_score" ) );
							Log.i( "", "last_season_score: " + friend.optString( "last_season_score" ) );
							Log.i( "", "last_score: " + friend.optString( "last_score" ) );
							Log.i( "", "best_score: " + friend.optString( "best_score" ) );
							Log.i( "", "exp: " + friend.optString( "exp" ) );

							String publicData = friend.optString( "public_data" );
							if ( publicData != null )
							{
								Log.i( "", "public_data : after- " + publicData );
								byte[] decoded = Base64.decode( publicData, 0 );
								publicData = new String( decoded );
								Log.i( "", "public_data: before-" + publicData );
							}
						}
					}

					friends.clear();
					Log.i( "", "-------- friends" );
					for ( int i = 0, n = friendArray.length(); i < n; i++ )
					{
						JSONObject friend = friendArray.optJSONObject( i );
						if ( friend != null )
						{
							friends.add( friend );

							Log.i( "", "-------- friends[" + i + "]" );
							Log.i( "", "user_id: " + friend.optString( "user_id" ) );
							Log.i( "", "profile_image_url: " + friend.optString( "profile_image_url" ) );
							Log.i( "", "nickname: " + friend.optString( "nickname" ) );
							Log.i( "", "friend_nickname: " + friend.optString( "friend_nickname" ) );
							Log.i( "", "message_blocked: " + friend.optString( "message_blocked" ) );
							Log.i( "", "last_message_sent_at: " + friend.optString( "last_message_sent_at" ) );
							Log.i( "", "supported_device: " + friend.optString( "supported_device" ) );
						}
					}

					friendType = FriendInfoType.AppFriends;
					changeList();

					MessageUtil.alert( GameFriendListActivity.this, "onComplete", "sdkStatus: " + miStatus + ", result: " + result );

				}

				@Override
				protected void onError( int miStatus, JSONObject result )
				{
					MessageUtil.alert( GameFriendListActivity.this, "onError", "sdkStatus: " + miStatus + ", result: " + result );
				}
			} );
	}

	@Override
	public void onClick( View v )
	{
		int id = v.getId();

//		if ( id == R.id.friend_list_activity_btn_app_friends )
//		{
//			friendType = FriendInfoType.AppFriends;
//			changeList();
//		}
//		else if ( id == R.id.friend_list_activity_btn_friends )
//		{
//			friendType = FriendInfoType.Friends;
//			changeList();
//		}
	}

	private void changeList()
	{
		friendsForSearch.clear();
		friendListAdapter.notifyDataSetChanged();

		switch( friendType )
		{
			case AppFriends:
				for ( JSONObject friend : appFriends )
				{
					friendsForSearch.add( friend );
				}
				tvFriendType.setText( getString( R.string.in_app_friends ) );
			break;

			case Friends:
				for ( JSONObject friend : friends )
				{
					friendsForSearch.add( friend );
				}
				tvFriendType.setText( getString( R.string.out_app_friends ) );
			break;
		}

		if ( friendsForSearch != null && friendsForSearch.size() > 0 )
			getListView().setSelection( 0 );
		friendListAdapter.notifyDataSetChanged();
	}

	@Override
	public void afterTextChanged( Editable s )
	{
	}

	@Override
	public void beforeTextChanged( CharSequence s, int start, int count, int after )
	{
	}

	@Override
	public void onTextChanged( CharSequence s, int start, int before, int count )
	{
		String inputName = s.toString();
//		search( inputName );
	}

	/**
	 * @param inputName
	 */
//	private void search( String inputName )
//	{
//		friendsForSearch.clear();
//
//		switch( friendType )
//		{
//			case AppFriends:
//				for ( JSONObject friend : appFriends )
//				{
//					String friendName = friend.optString( "nickname" );
//					if ( SearchUtil.matchString( friendName, inputName ) )
//					{
//						friendsForSearch.add( friend );
//					}
//				}
//			break;
//			case Friends:
//				for ( JSONObject friend : friends )
//				{
//					String friendName = friend.optString( "nickname" );
//					if ( SearchUtil.matchString( friendName, inputName ) )
//					{
//						friendsForSearch.add( friend );
//					}
//				}
//			break;
//		}
//
//		friendListAdapter.notifyDataSetChanged();
//	}
}
