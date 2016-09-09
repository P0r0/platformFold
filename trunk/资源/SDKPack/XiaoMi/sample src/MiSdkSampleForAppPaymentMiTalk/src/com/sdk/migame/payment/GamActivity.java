package com.sdk.migame.payment;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import android.R.layout;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Paint.Join;
import android.os.Bundle;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.Toast;

import com.sdk.migame.payment.adapter.GamFunctionAdapter;
import com.sdk.migame.payment.utiles.MessageUtil;
import com.sdk.migame.payment.utiles.ZEditFilter;
import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.entry.MiAccountInfo;
import com.xiaomi.gamecenter.sdk.gam.MiResponseHandler;
import com.xiaomi.gamecenter.sdk.gam.MiResponseListener;

public class GamActivity extends Activity implements OnClickListener
{
	private GamFunctionAdapter mAdapter;

	private ProgressDialog progressDialog;

	private String[] leaderboardKeys;

	private boolean isMessageBlocked;
	private int messageBolckIndex = 0;

	private int currentHeart = -1;

	private List< Map< String, String > > metaInfo;

	private MiAccountInfo accountInfo;

	private int spinnerIndex = 0;
	private int spinnerIndex1 = 0;

	private int shareType = 0;

	private static final int DIALOG_UPDATE_ME = 1001;
	private static final int DIALOG_UPDATE_RESULT = 1002;
	private static final int DIALOG_USE_HEART = 1003;
	private static final int DIALOG_UPDATE_RESULTS = 1004;
	private static final int DIALOG_MESSAGEBLOCK = 1005;
	private static final int DIALOG_SYNC_RESULT = 1006;
	private static final int DIALOG_SYNC_RESULTS = 1007;
	private static final int DIALOG_SHARE_TYPE = 1008;

	private static final int DIALOG_JOIN_UNION = 1009;
	private static final int DIALOG_CHECK_JOINEDUNION = 1010;
	private static final int DIALOG_SUBSCRIBE_VIP = 1011;
	private static final int DIALOG_CHECK_VIPISSCUBSCRIBED = 1012;

	/** leaderBoard 默认页 */
	private int defultPage = 1;
	/** LeaderBoard 默认每页返回多少条数据 */
	private int defultPageCount = 20;

	private int[][] gamString = 
			{ { R.string.gam_en_loadgameinfo, R.string.gam_zh_loadgameinfo }, { R.string.gam_en_loadgameme, R.string.gam_zh_loadgameme },
			{ R.string.gam_en_deleteme, R.string.gam_zh_deleteme }, { R.string.gam_en_useheart, R.string.gam_zh_useheart }, { R.string.gam_en_updateresult, R.string.gam_zh_updateresult },
			{ R.string.gam_en_updateresults, R.string.gam_zh_updateresults }, { R.string.gam_en_syncresult, R.string.gam_zh_syncresult }, { R.string.gam_en_syncresults, R.string.gam_zh_syncresults },
			{ R.string.gam_en_loadleaderboard, R.string.gam_zh_loadleaderboard }, { R.string.gam_en_messageblock, R.string.gam_zh_messageblock },
			{ R.string.gam_en_updateme, R.string.gam_zh_updateme }, { R.string.gam_en_friends, R.string.gam_zh_friends }, { R.string.gam_en_messagebox, R.string.gam_zh_messagebox },
			{ R.string.gam_en_share, R.string.gam_zh_share }, { R.string.gam_en_invite, R.string.gam_zh_invite }, { R.string.gam_en_joinunion, R.string.gam_zh_joinunion },
			{ R.string.gam_en_checkjoinedunion, R.string.gam_zh_checkjoinedunion }, { R.string.gam_en_subscribevip, R.string.gam_zh_subscribevip },
			{ R.string.gam_en_checkvipisscubscribed, R.string.gam_zh_checkvipisscubscribed }, {R.string.gam_en_openMiTalk, R.string.gam_zh_openMiTalk},
			{R.string.gam_en_groupslist,R.string.gam_zh_groupslist},{R.string.gam_en_viplist,R.string.gam_zh_viplist}};

	@Override
	protected void onCreate( Bundle savedInstanceState )
	{
		super.onCreate( savedInstanceState );

		setContentView( R.layout.gamlayout );

		GridView mGridView = (GridView) findViewById( R.id.gam_gridview );
		// mGridView.setOnItemClickListener( listener );

		mAdapter = new GamFunctionAdapter( this, this );
		mGridView.setAdapter( mAdapter );
		mAdapter.updateData( gamString );

		// init metaInfo
		metaInfo = new ArrayList< Map< String, String >>();
		Map< String, String > metaInfoAndroid = new HashMap< String, String >();
		metaInfoAndroid.put( "os", "android" );
		metaInfoAndroid.put( "executeurl", "" );
		metaInfo.add( metaInfoAndroid );

		Map< String, String > metaInfoIos = new HashMap< String, String >();
		metaInfoIos.put( "os", "ios" );
		metaInfoIos.put( "executeurl", "" );
		metaInfo.add( metaInfoIos );

		accountInfo = getIntent().getParcelableExtra( "accountInfo" );

		checkMiTalkStatus();
	}

	@Override
	protected void onResume()
	{
		super.onResume();

		if ( mAdapter == null )
		{
			return;
		}
		if ( mAdapter.getData() != null )
		{
			mAdapter.getData().clear();
			mAdapter.updateData( gamString );
		}
		else
		{
			return;
		}
	}

	@Override
	public void onClick( View v )
	{
		int id = (Integer) v.getTag();
		switch( id )
		{
			case R.string.gam_en_loadgameinfo:
				loadGameInfo();
			break;
			case R.string.gam_en_loadgameme:
				loadgameMe();
			break;
			case R.string.gam_en_deleteme:
				deleteMe();
			break;
			case R.string.gam_en_friends:
				Intent intent = new Intent( GamActivity.this, GameFriendListActivity.class );
				intent.putExtra( "accountInfo", accountInfo );
				startActivity( intent );
			break;
			case R.string.gam_en_loadleaderboard:
				createLeaderBoardKeysDialog();
			break;
			case R.string.gam_en_updateresult:
				createDialog( DIALOG_UPDATE_RESULT );
			break;
			case R.string.gam_en_updateresults:
				createDialog( DIALOG_UPDATE_RESULTS );
			break;
			case R.string.gam_en_updateme:
				createDialog( DIALOG_UPDATE_ME );
			break;
			case R.string.gam_en_messagebox:
				Intent intent1 = new Intent( GamActivity.this, GameMessageActivity.class );
				intent1.putExtra( "accountInfo", accountInfo );
				startActivity( intent1 );
			break;
			case R.string.gam_en_useheart:
				createDialog( DIALOG_USE_HEART );
			break;
			case R.string.gam_en_messageblock:
				createDialog( DIALOG_MESSAGEBLOCK );
			break;
			case R.string.gam_en_share:
				createDialog( DIALOG_SHARE_TYPE );
			break;
			case R.string.gam_en_invite:
				sendInviteMessage();
			break;
			case R.string.gam_en_syncresult:
				createDialog( DIALOG_SYNC_RESULT );
			break;
			case R.string.gam_en_syncresults:
				createDialog( DIALOG_SYNC_RESULTS );
			break;

			case R.string.gam_en_joinunion:
				createDialog( DIALOG_JOIN_UNION );
			break;
			case R.string.gam_en_checkjoinedunion:
				createDialog( DIALOG_CHECK_JOINEDUNION );
			break;

			case R.string.gam_en_subscribevip:
				createDialog( DIALOG_SUBSCRIBE_VIP );
			break;
			case R.string.gam_en_checkvipisscubscribed:
				createDialog( DIALOG_CHECK_VIPISSCUBSCRIBED );
			break;
			case R.string.gam_en_openMiTalk:
				openMiTalk();
			break;
			case R.string.gam_en_groupslist:
				getUnionList();
			break;
			case R.string.gam_en_viplist:
				getVipList();
			break;
			default:
			break;
		}
	}

	private void loadGameInfo()
	{
		showProgressDialog();
		MiCommplatform.getInstance().loadGameInfo( GamActivity.this, new MiResponseHandler()
			{
				@Override
				protected void onError( int sdkStatus, JSONObject result )
				{
					closeProgerssDialog();
					alert( GamActivity.this, "onError", "\n sdkstatus:" + sdkStatus );
				}

				@Override
				protected void onComplete( int arg1, JSONObject result )
				{
					closeProgerssDialog();
					alert( GamActivity.this, "onComplete", "\n sdkstatus:" + arg1 + "\n result:" + result );
					Log.i( "Game Info", "rechargeable_heart: " + result.optString( "rechargeable_heart" ) );
					Log.i( "Game Info", "game_message_interval: " + result.optString( "game_message_interval" ) );
					Log.i( "Game Info", "heart_regen_interval: " + result.optString( "heart_regen_interval" ) );
					Log.i( "Game Info", "invitation_interval: " + result.optString( "invitation_interval" ) );
					Log.i( "Game Info", "name: " + result.optString( "name" ) );
					Log.i( "Game Info", "max_heart: " + result.optString( "max_heart" ) );
					Log.i( "Game Info", "score_reset_wday: " + result.optString( "score_reset_wday" ) );
					Log.i( "Game Info", "score_reset_hour: " + result.optString( "score_reset_hour" ) );
					Log.i( "Game Info", "next_score_reset_time: " + result.optString( "next_score_reset_time" ) );
					Log.i( "Game Info", "min_version_for_ios: " + result.optString( "min_version_for_ios" ) );
					Log.i( "Game Info", "min_version_for_android: " + result.optString( "min_version_for_android" ) );
					Log.i( "Game Info", "current_version_for_ios:" + result.optString( "current_version_for_ios" ) );
					Log.i( "Game Info", "current_version_for_android: " + result.optString( "current_version_for_android" ) );
					Log.i( "Game Info", "notice: " + result.optString( "notice" ) );

					JSONArray leaderboards = result.optJSONArray( "leaderboards" );

					if ( leaderboardKeys != null )
						leaderboardKeys = new String[0];

					leaderboardKeys = new String[leaderboards.length()];

					try
					{
						Log.i( "", "-------- Game leaderboards" );
						for ( int i = 0; i < leaderboards.length(); i++ )
						{
							JSONObject leaderboard = leaderboards.getJSONObject( i );
							Log.i( "", "name: " + leaderboard.optString( "name" ) );
							Log.i( "", "key: " + leaderboard.optString( "key" ) );
							leaderboardKeys[i] = leaderboard.optString( "key" );
						}
					}
					catch ( JSONException e )
					{
						e.printStackTrace();
					}
				}
			} );
	}

	private void loadLeaderBoard( String leaderboardKey )
	{
		showProgressDialog();
		MiCommplatform.getInstance().loadLeaderBoard( GamActivity.this, leaderboardKey, defultPage, defultPageCount, new MiResponseHandler()
			{
				@Override
				protected void onError( int arg0, JSONObject arg1 )
				{
					closeProgerssDialog();
					alert( GamActivity.this, "onError", "\n sdkstatus:" + arg0 );
				}

				@Override
				protected void onComplete( int arg0, JSONObject arg1 )
				{
					closeProgerssDialog();
					// alert( GamActivity.this, "onComplete", "\n sdkstatus:" +
					// arg0 + "\n result:" + arg1 );

					Intent intent = new Intent( GamActivity.this, LeaderBoardActivity.class );
					intent.putExtra( "list", arg1.toString() );
					startActivity( intent );
				}
			} );
	}

	private void loadgameMe()
	{
		showProgressDialog();
		MiCommplatform.getInstance().loadGameMe( GamActivity.this, new MiResponseHandler()
			{
				@Override
				protected void onComplete( int arg0, JSONObject result )
				{
					closeProgerssDialog();
					// alert( GamActivity.this, "onComplete", "\n result:" +
					// result );

					Log.i( "", "-------- User Info" );
					Log.i( "", "user_id: " + result.optString( "user_id" ) );
					Log.i( "", "nickname: " + result.optString( "nickname" ) );
					Log.i( "", "profile_image_url: " + result.optString( "profile_image_url" ) );
					Log.i( "", "heart: " + result.optString( "heart" ) );

					currentHeart = Integer.parseInt( result.optString( "heart" ) );

					Log.i( "", "exp: " + result.optString( "exp" ) );
					Log.i( "", "heart_regen_starts_at: " + result.optString( "heart_regen_starts_at" ) );

					String publicData = result.optString( "public_data" );
					if ( publicData != null )
					{
						Log.i( "", "public_data : after- " + publicData );
						byte[] decoded = Base64.decode( publicData, 0 );
						publicData = new String( decoded );
						Log.i( "", "public_data: before-" + publicData );
					}

					String privateData = result.optString( "private_data" );
					if ( privateData != null )
					{
						Log.i( "", "private_data : after- " + privateData );
						byte[] decoded = Base64.decode( privateData, 0 );
						privateData = new String( decoded );
						Log.i( "", "private_data: before-" + privateData );
					}

					Log.i( "", "message_count: " + result.optString( "message_count" ) );

					final String message_block = result.optString( "message_blocked" );
					isMessageBlocked = message_block.equals( "1" );

					Log.i( "", "message_blocked: " + isMessageBlocked );

					JSONArray scores = result.optJSONArray( "scores" );

					Log.i( "", "-------- Score Info" );
					try
					{
						for ( int i = 0; i < scores.length(); i++ )
						{
							JSONObject score = scores.getJSONObject( i );
							Log.i( "", "leaderboard_key: " + score.optString( "leaderboard_key" ) );
							Log.i( "", "season_score: " + score.optString( "season_score" ) );
							Log.i( "", "last_season_score: " + score.optString( "last_season_score" ) );
							Log.i( "", "last_score: " + score.optString( "last_score" ) );
							Log.i( "", "best_score: " + score.optString( "best_score" ) );
						}
					}
					catch ( Exception e )
					{
						e.printStackTrace();
					}

					Intent intent = new Intent( GamActivity.this, UserInfoActivity.class );
					intent.putExtra( "info", result.toString() );
					startActivity( intent );
				}

				@Override
				protected void onError( int arg0, JSONObject result )
				{
					closeProgerssDialog();
					alert( GamActivity.this, "onError", "\n sdkstatus:" + arg0 );
				}
			} );
	}

	private void useHeart( int heart )
	{
		showProgressDialog();
		MiCommplatform.getInstance().useHeart( GamActivity.this, heart, new MiResponseHandler()
			{

				@Override
				protected void onError( int arg0, JSONObject arg1 )
				{
					closeProgerssDialog();
					alert( GamActivity.this, "onError", "\n sdkstatus:" + arg0 );
				}

				@Override
				protected void onComplete( int arg0, JSONObject arg1 )
				{
					closeProgerssDialog();
					alert( GamActivity.this, "onComplete", "\n sdkstatus:" + arg0 + "\n result:" + arg1 );
				}
			} );
	}

	private void updateMe( int heart, int currentHeart, byte[] publicData, byte[] privateData )
	{
		showProgressDialog();
		MiCommplatform.getInstance().updateMe( GamActivity.this, heart, currentHeart, publicData, privateData, new MiResponseHandler()
			{
				@Override
				protected void onError( int arg0, JSONObject arg1 )
				{
					closeProgerssDialog();
					alert( GamActivity.this, "onError", "\n sdkstatus:" + arg0 );
				}

				@Override
				protected void onComplete( int arg0, JSONObject arg1 )
				{
					closeProgerssDialog();
					alert( GamActivity.this, "onComplete", arg1.toString() );
				}
			} );
	}

	private void messageblock( boolean isMessageBlocked )
	{
		showProgressDialog();
		MiCommplatform.getInstance().messageBlock( GamActivity.this, isMessageBlocked, new MiResponseHandler()
			{
				@Override
				protected void onError( int arg0, JSONObject arg1 )
				{
					closeProgerssDialog();
					alert( GamActivity.this, "onError", "\n sdkstatus:" + arg0 );
				}

				@Override
				protected void onComplete( int arg0, JSONObject arg1 )
				{
					// closeProgerssDialog();
					// alert( GamActivity.this, "onComplete", arg1.toString() );
					loadgameMe();
				}
			} );
	}

	private void deleteMe()
	{
		showProgressDialog();
		MiCommplatform.getInstance().deleteMe( GamActivity.this, new MiResponseHandler()
			{

				@Override
				protected void onError( int arg0, JSONObject arg1 )
				{
					closeProgerssDialog();
					alert( GamActivity.this, "onError", "\n sdkstatus:" + arg0 );
				}

				@Override
				protected void onComplete( int arg0, JSONObject arg1 )
				{
					closeProgerssDialog();
					alert( GamActivity.this, "onComplete", arg1.toString() );
				}
			} );
	}

	private void updateResult( String leaderboardKey, int score, int exp, byte[] publicData, byte[] privateData )
	{
		showProgressDialog();
		MiCommplatform.getInstance().updateResult( GamActivity.this, leaderboardKey, score, exp, publicData, privateData, new MiResponseHandler()
			{
				@Override
				protected void onError( int arg0, JSONObject arg1 )
				{
					closeProgerssDialog();
					alert( GamActivity.this, "onError", "\n sdkstatus:" + arg0 );
				}

				@Override
				protected void onComplete( int arg0, JSONObject arg1 )
				{
					closeProgerssDialog();
					alert( GamActivity.this, "onComplete", arg1.toString() );
				}
			} );
	}

	private void updateResults( HashMap< String, Integer > scores, int exp, byte[] publicData, byte[] privateData )
	{
		showProgressDialog();
		MiCommplatform.getInstance().updateResults( GamActivity.this, scores, exp, publicData, privateData, new MiResponseHandler()
			{
				@Override
				protected void onError( int arg0, JSONObject arg1 )
				{
					closeProgerssDialog();
					alert( GamActivity.this, "onError", "\n sdkstatus:" + arg0 );
				}

				@Override
				protected void onComplete( int arg0, JSONObject arg1 )
				{
					closeProgerssDialog();
					alert( GamActivity.this, "onComplete", arg1.toString() );
				}
			} );
	}

	private void shareToMiTalk()
	{
		boolean sdCardExist = Environment.getExternalStorageState().equals( android.os.Environment.MEDIA_MOUNTED );
		if ( !sdCardExist )
		{
			Toast.makeText( GamActivity.this, "SD卡不存在", Toast.LENGTH_SHORT ).show();
			return;
		}

		final String imagePath = Environment.getExternalStorageDirectory() + "/misdktest/testImg.png";
		final String title = "大家一起来玩";
		final String message = "测试";
		// final String imagePath =
		// "http://lxcdn.dl.files.xiaomi.net/mfsv2/avatar/s008/p01CveXl9AOC/Qg1BlgmzRbie7P_150.jpg";
		// final String imagePath =
		// "http://static.manimal.happyelements.cn/level/jt00010001.jpg";

		/** 设置分享所需要的信息 */
		MiCommplatform.getInstance().shareToMiTalk( GamActivity.this, imagePath, title, message, new MiResponseHandler()
			{

				@Override
				protected void onError( int arg0, JSONObject arg1 )
				{
					alert( GamActivity.this, "onError", "sdkstatus:" + arg0 );
					if ( arg0 == 5200 )
					{
						// 取消分享
					}
					else if ( arg0 == -107 )
					{
						// 分享失败
					}
				}

				@Override
				protected void onComplete( int arg0, JSONObject arg1 )
				{
					if ( arg0 == 0 )
					{
						// 分享成功
					}
				}
			} );
	}

	private void shareToMiTalkForLargeImg()
	{
		boolean sdCardExist = Environment.getExternalStorageState().equals( android.os.Environment.MEDIA_MOUNTED );
		if ( !sdCardExist )
		{
			Toast.makeText( GamActivity.this, "SD卡不存在", Toast.LENGTH_SHORT ).show();
			return;
		}

		final String imagePath = Environment.getExternalStorageDirectory() + "/misdktest/testImg.png";
		final String message = "测试";
		// final String imagePath =
		// "http://lxcdn.dl.files.xiaomi.net/mfsv2/avatar/s008/p01CveXl9AOC/Qg1BlgmzRbie7P_150.jpg";
		// final String imagePath =
		// "http://static.manimal.happyelements.cn/level/jt00010001.jpg";

		/** 设置分享所需要的信息 */
		MiCommplatform.getInstance().shareToMiTalkForLargeImg( GamActivity.this, message, imagePath, new MiResponseHandler()
			{
				@Override
				protected void onError( int arg0, JSONObject arg1 )
				{
					alert( GamActivity.this, "onError", "sdkstatus:" + arg0 );
					if ( arg0 == 5200 )
					{
						// 取消分享
					}
					else if ( arg0 == -107 )
					{
						// 分享失败
					}
				}

				@Override
				protected void onComplete( int arg0, JSONObject arg1 )
				{
					if ( arg0 == 0 )
					{
						// 分享成功
					}
				}
			} );
	}
	
	
	private void shareToMiTalkForImgAndUrl()
	{
		//TODO
		showProgressDialog();
		final String defulText = "测试";
		final String title = "大家一起来玩";
		final String imagePath = "http://lxcdn.dl.files.xiaomi.net/mfsv2/avatar/s008/p01CveXl9AOC/Qg1BlgmzRbie7P_150.jpg";
		final String extraLargeImgPath = "http://lxcdn.dl.files.xiaomi.net/mfsv2/avatar/s008/p01CveXl9AOC/Qg1BlgmzRbie7P_150.jpg";
				/*Environment.getExternalStorageDirectory() + "/misdktest/testImg.png"*/;
		MiCommplatform.getInstance().shareToMiTalkForImgAndUrl( GamActivity.this, defulText, title, imagePath, extraLargeImgPath, new MiResponseHandler()
			{
				
				@Override
				protected void onError( int arg0, JSONObject arg1 )
				{
					closeProgerssDialog();
					alert( GamActivity.this, "onError", "\n sdkstatus:" + arg0 );
				}
				
				@Override
				protected void onComplete( int arg0, JSONObject arg1 )
				{
					closeProgerssDialog();
					alert( GamActivity.this, "onComplete", arg1.toString() );
				}
			} );
	}

	private void syncResult( String leaderboardKey, int score, int exp, byte[] publicData, byte[] privateData )
	{
		showProgressDialog();
		MiCommplatform.getInstance().syncResult( GamActivity.this, leaderboardKey, score, exp, publicData, privateData, new MiResponseHandler()
			{
				@Override
				protected void onError( int arg0, JSONObject arg1 )
				{
					closeProgerssDialog();
					alert( GamActivity.this, "onError", "\n sdkstatus:" + arg0 );
				}

				@Override
				protected void onComplete( int arg0, JSONObject arg1 )
				{
					closeProgerssDialog();
					alert( GamActivity.this, "onComplete", arg1.toString() );
				}
			} );
	}

	private void syncResults( HashMap< String, Integer > scores, int exp, byte[] publicData, byte[] privateData )
	{
		showProgressDialog();
		MiCommplatform.getInstance().syncResults( GamActivity.this, scores, exp, publicData, privateData, new MiResponseHandler()
			{
				@Override
				protected void onError( int arg0, JSONObject arg1 )
				{
					closeProgerssDialog();
					alert( GamActivity.this, "onError", "\n sdkstatus:" + arg0 );
				}

				@Override
				protected void onComplete( int arg0, JSONObject arg1 )
				{
					closeProgerssDialog();
					alert( GamActivity.this, "onComplete", arg1.toString() );
				}
			} );
	}

	private void createLeaderBoardKeysDialog()
	{
		if ( leaderboardKeys == null || leaderboardKeys.length == 0 )
		{
			alert( GamActivity.this, "Error", "Do not have any leaderboard information. Please call loadGameInfo API!" );
		}
		else
		{
			AlertDialog.Builder builder = new Builder( this );
			builder.setTitle( "Check leaderboard" );
			builder.setItems( leaderboardKeys, new DialogInterface.OnClickListener()
				{
					@Override
					public void onClick( DialogInterface dialog, int which )
					{
						dialog.dismiss();
						loadLeaderBoard( leaderboardKeys[which] );
					}
				} );
			builder.show();
		}
	}

	private void createDialog( int id )
	{
		final int actionId = id;
		spinnerIndex = 0;
		spinnerIndex1 = 0;

		final AlertDialog.Builder builder = new AlertDialog.Builder( GamActivity.this );
		builder.setCancelable( false );
		LinearLayout layout = new LinearLayout( this );
		layout.setOrientation( LinearLayout.VERTICAL );
		LayoutParams params = new LayoutParams( LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT );
		layout.setLayoutParams( params );
		switch( id )
		{
			case DIALOG_UPDATE_ME:
			{
				builder.setView( layout );
				final EditText heartEdit = new EditText( this );
				final EditText currentHeartEdit = new EditText( this );
				final EditText publicDataEdit = new EditText( this );
				final EditText privateDataEdit = new EditText( this );

				heartEdit.setLayoutParams( params );
				publicDataEdit.setLayoutParams( params );
				privateDataEdit.setLayoutParams( params );

				heartEdit.setHint( "heart" );
				currentHeartEdit.setHint( "current_heart" );
				publicDataEdit.setHint( "public data" );
				privateDataEdit.setHint( "private data" );

				ZEditFilter.setDigits( heartEdit, false );
				ZEditFilter.setDigits( currentHeartEdit, false );

				layout.addView( heartEdit );
				layout.addView( currentHeartEdit );
				layout.addView( publicDataEdit );
				layout.addView( privateDataEdit );

				if ( currentHeart < 0 )
				{
					Toast.makeText( GamActivity.this, "please call API loadGameMe", Toast.LENGTH_SHORT ).show();
					return;
				}
				currentHeartEdit.setText( String.valueOf( currentHeart ) ); // 设置当前体力值
				publicDataEdit.setText( "测试测试测试" );
				privateDataEdit.setText( "测试测试测试" );

				builder.setTitle( getString( R.string.update_me ) ).setPositiveButton( R.string.ok, new DialogInterface.OnClickListener()
					{
						@Override
						public void onClick( DialogInterface dialog, int which )
						{
							int heart = 0;
							int currentHeart = 0;
							byte[] publicData = null;
							byte[] privateData = null;

							if ( heartEdit.getText().toString().length() > 0 )
							{
								heart = Integer.parseInt( heartEdit.getText().toString() );
							}

							if ( currentHeartEdit.getText().toString().length() > 0 )
							{
								currentHeart = Integer.parseInt( currentHeartEdit.getText().toString() );
							}

							if ( publicDataEdit.getText().toString().length() > 0 )
							{
								publicData = publicDataEdit.getText().toString().getBytes();
							}

							if ( privateDataEdit.getText().toString().length() > 0 )
							{
								privateData = privateDataEdit.getText().toString().getBytes();
							}
							updateMe( heart, currentHeart, publicData, privateData );
						}
					} ).setNegativeButton( R.string.cancel, new DialogInterface.OnClickListener()
					{
						@Override
						public void onClick( DialogInterface dialog, int which )
						{
							dialog.dismiss();
						}
					} );
				break;
			}

			case DIALOG_USE_HEART:
			{
				builder.setView( layout );
				final EditText heartEdit = new EditText( this );
				heartEdit.setLayoutParams( params );
				heartEdit.setHint( "heart" );
				ZEditFilter.setDigits( heartEdit, false );
				layout.addView( heartEdit );

				builder.setTitle( R.string.useheart ).setPositiveButton( getString( R.string.ok ), new DialogInterface.OnClickListener()
					{
						@Override
						public void onClick( DialogInterface dialog, int which )
						{
							try
							{
								useHeart( Integer.parseInt( heartEdit.getText().toString() ) );
							}
							catch ( Exception e )
							{
								Toast.makeText( GamActivity.this, R.string.check_value, Toast.LENGTH_SHORT ).show();
							}
						}
					} ).setNegativeButton( getString( R.string.cancel ), new DialogInterface.OnClickListener()
					{

						@Override
						public void onClick( DialogInterface dialog, int which )
						{
							// dialog.dismiss();
						}
					} );

				break;
			}

			case DIALOG_UPDATE_RESULT:
			case DIALOG_SYNC_RESULT:
			{
				builder.setView( layout );
				final Spinner leaderBoardKeySpinner = new Spinner( this );
				final EditText scoreEdit = new EditText( this );
				final EditText expHeartEdit = new EditText( this );
				final EditText publicDataEdit = new EditText( this );
				final EditText privateDataEdit = new EditText( this );

				leaderBoardKeySpinner.setLayoutParams( params );
				scoreEdit.setLayoutParams( params );
				publicDataEdit.setLayoutParams( params );
				privateDataEdit.setLayoutParams( params );

				scoreEdit.setHint( "score" );
				expHeartEdit.setHint( "exp" );
				publicDataEdit.setHint( "public data" );
				privateDataEdit.setHint( "private data" );

				ZEditFilter.setDigits( scoreEdit, false );
				ZEditFilter.setDigits( expHeartEdit, false );

				if ( null != leaderboardKeys && leaderboardKeys.length > 0 )
				{
					ArrayAdapter< CharSequence > adapter = new ArrayAdapter< CharSequence >( this, android.R.layout.simple_spinner_item, leaderboardKeys );
					leaderBoardKeySpinner.setAdapter( adapter );
					leaderBoardKeySpinner.setOnItemSelectedListener( new OnItemSelectedListener()
						{
							@Override
							public void onItemSelected( AdapterView< ? > parent, View view, int position, long id )
							{
								spinnerIndex = position;
							}

							@Override
							public void onNothingSelected( AdapterView< ? > parent )
							{
							}
						} );
				}

				layout.addView( leaderBoardKeySpinner );
				layout.addView( scoreEdit );
				layout.addView( expHeartEdit );
				layout.addView( publicDataEdit );
				layout.addView( privateDataEdit );

				publicDataEdit.setText( "测试测试测试" );
				privateDataEdit.setText( "测试测试测试" );

				String title = "Update Result";
				if ( actionId == DIALOG_SYNC_RESULT )
					title = "Sync Result";

				builder.setTitle( title ).setPositiveButton( R.string.ok, new DialogInterface.OnClickListener()
					{
						@Override
						public void onClick( DialogInterface dialog, int which )
						{
							int score = 0;
							int exp = 0;
							byte[] publicData = null;
							byte[] privateData = null;

							if ( null == leaderboardKeys )
								return;

							if ( scoreEdit.getText().toString().length() > 0 )
							{
								score = Integer.parseInt( scoreEdit.getText().toString() );
							}

							if ( expHeartEdit.getText().toString().length() > 0 )
							{
								exp = Integer.parseInt( expHeartEdit.getText().toString() );
							}

							if ( publicDataEdit.getText().toString().length() > 0 )
							{
								publicData = publicDataEdit.getText().toString().getBytes();
							}

							if ( privateDataEdit.getText().toString().length() > 0 )
							{
								privateData = privateDataEdit.getText().toString().getBytes();
							}

							if ( actionId == DIALOG_UPDATE_RESULT )
								updateResult( leaderboardKeys[spinnerIndex], score, exp, publicData, privateData );
							else
								syncResult( leaderboardKeys[spinnerIndex], score, exp, publicData, privateData );
						}
					} ).setNegativeButton( R.string.cancel, new DialogInterface.OnClickListener()
					{
						@Override
						public void onClick( DialogInterface dialog, int which )
						{
							dialog.dismiss();
						}
					} );
				break;
			}

			case DIALOG_UPDATE_RESULTS:
			case DIALOG_SYNC_RESULTS:
			{
				builder.setView( layout );
				final Spinner leaderBoardKeySpinner1 = new Spinner( this );
				final EditText scoreEdit1 = new EditText( this );
				final Spinner leaderBoardKeySpinner2 = new Spinner( this );
				final EditText scoreEdit2 = new EditText( this );
				final EditText expEdit = new EditText( this );
				final EditText publicDataEdit = new EditText( this );
				final EditText privateDataEdit = new EditText( this );

				leaderBoardKeySpinner1.setLayoutParams( params );
				scoreEdit1.setLayoutParams( params );
				leaderBoardKeySpinner2.setLayoutParams( params );
				scoreEdit2.setLayoutParams( params );
				expEdit.setLayoutParams( params );
				publicDataEdit.setLayoutParams( params );
				privateDataEdit.setLayoutParams( params );

				scoreEdit1.setHint( "score" );
				scoreEdit2.setHint( "score" );
				expEdit.setHint( "exp" );

				ZEditFilter.setDigits( scoreEdit1, false );
				ZEditFilter.setDigits( scoreEdit2, false );

				publicDataEdit.setText( "测试测试测试" );
				privateDataEdit.setText( "测试测试测试" );

				if ( null != leaderboardKeys && leaderboardKeys.length > 0 )
				{
					ArrayAdapter< CharSequence > adapter = new ArrayAdapter< CharSequence >( this, android.R.layout.simple_spinner_item, leaderboardKeys );
					leaderBoardKeySpinner1.setAdapter( adapter );
					leaderBoardKeySpinner1.setOnItemSelectedListener( new OnItemSelectedListener()
						{
							@Override
							public void onItemSelected( AdapterView< ? > parent, View view, int position, long id )
							{
								spinnerIndex = position;
							}

							@Override
							public void onNothingSelected( AdapterView< ? > parent )
							{
							}
						} );

					ArrayAdapter< CharSequence > adapter1 = new ArrayAdapter< CharSequence >( this, android.R.layout.simple_spinner_item, leaderboardKeys );
					leaderBoardKeySpinner2.setAdapter( adapter1 );
					leaderBoardKeySpinner2.setSelection( spinnerIndex1 );
					leaderBoardKeySpinner2.setOnItemSelectedListener( new OnItemSelectedListener()
						{
							@Override
							public void onItemSelected( AdapterView< ? > parent, View view, int position, long id )
							{
								spinnerIndex1 = position;
							}

							@Override
							public void onNothingSelected( AdapterView< ? > parent )
							{
							}
						} );
				}

				layout.addView( leaderBoardKeySpinner1 );
				layout.addView( scoreEdit1 );
				layout.addView( leaderBoardKeySpinner2 );
				layout.addView( scoreEdit2 );
				layout.addView( expEdit );
				layout.addView( publicDataEdit );
				layout.addView( privateDataEdit );

				String title = "Update Results";
				if ( actionId == DIALOG_SYNC_RESULT )
					title = "Sync Results";
				builder.setTitle( title ).setPositiveButton( R.string.ok, new DialogInterface.OnClickListener()
					{
						@Override
						public void onClick( DialogInterface dialog, int which )
						{
							int score1 = 0;
							int score2 = 0;
							int exp = 0;
							byte[] publicData = null;
							byte[] privateData = null;

							if ( null == leaderboardKeys )
								return;

							if ( scoreEdit1.getText().toString().length() > 0 )
							{
								score1 = Integer.parseInt( scoreEdit1.getText().toString() );
							}

							if ( scoreEdit2.getText().toString().length() > 0 )
							{
								score2 = Integer.parseInt( scoreEdit2.getText().toString() );
							}

							if ( expEdit.getText().toString().length() > 0 )
							{
								exp = Integer.parseInt( expEdit.getText().toString() );
							}

							if ( publicDataEdit.getText().toString().length() > 0 )
							{
								publicData = publicDataEdit.getText().toString().getBytes();
							}

							if ( privateDataEdit.getText().toString().length() > 0 )
							{
								privateData = privateDataEdit.getText().toString().getBytes();
							}

							HashMap< String, Integer > scoreMap = new HashMap< String, Integer >();
							scoreMap.put( leaderboardKeys[spinnerIndex], score1 );

							if ( leaderboardKeys.length > 1 )
								scoreMap.put( leaderboardKeys[spinnerIndex1], score2 );

							if ( spinnerIndex == spinnerIndex1 )
							{
								Toast.makeText( GamActivity.this, "two leaderboardKeys can't same", Toast.LENGTH_SHORT ).show();
								return;
							}

							if ( actionId == DIALOG_UPDATE_RESULTS )
								updateResults( scoreMap, exp, publicData, privateData );
							else
								syncResults( scoreMap, exp, publicData, privateData );
						}
					} ).setNegativeButton( R.string.cancel, new DialogInterface.OnClickListener()
					{
						@Override
						public void onClick( DialogInterface dialog, int which )
						{
							dialog.dismiss();
						}
					} );

				break;
			}
			case DIALOG_MESSAGEBLOCK:
			{
				messageBolckIndex = 0;
				String[] items = { "接收消息", "屏蔽消息" };

				if ( isMessageBlocked )
					messageBolckIndex = 1;

				builder.setTitle( "MessageBlock" ).setSingleChoiceItems( items, messageBolckIndex, new DialogInterface.OnClickListener()
					{
						@Override
						public void onClick( DialogInterface dialog, int which )
						{
							if ( messageBolckIndex == which )
								return;

							dialog.dismiss();
							messageblock( !isMessageBlocked );
						}
					} );
				builder.setCancelable( true );

				break;
			}
			case DIALOG_SHARE_TYPE:
			{
				String[] items = { "分享（小图）", "分享（大图）" , "分享（图+文）" };
				builder.setTitle( "shareToMiTalk" ).setSingleChoiceItems( items, shareType, new DialogInterface.OnClickListener()
					{
						@Override
						public void onClick( DialogInterface dialog, int which )
						{
							shareType = which;
						}
					} );
				builder.setPositiveButton( "分享", new DialogInterface.OnClickListener()
					{
						@Override
						public void onClick( DialogInterface dialog, int which )
						{
							if ( shareType == 0 )
								shareToMiTalk();
							else if(shareType == 1)
								shareToMiTalkForLargeImg();
							else
								shareToMiTalkForImgAndUrl();
						}
					} );
				builder.setCancelable( true );
				break;
			}
			case DIALOG_JOIN_UNION:
				dialogSetting( builder, layout, "加入工会", "请输出工会ID", DIALOG_JOIN_UNION );
			break;
			case DIALOG_CHECK_JOINEDUNION:
				dialogSetting( builder, layout, "是否已加入工会", "请输出工会ID", DIALOG_CHECK_JOINEDUNION );
			break;
			case DIALOG_SUBSCRIBE_VIP:
				dialogSetting( builder, layout, "关注", "请输入服务号ID", DIALOG_SUBSCRIBE_VIP );
			break;
			case DIALOG_CHECK_VIPISSCUBSCRIBED:
				dialogSetting( builder, layout, "是否已关注", "请输入服务号ID", DIALOG_CHECK_VIPISSCUBSCRIBED );
			break;

			default:
			break;
		}
		builder.create().show();
	}

	private void sendInviteMessage()
	{
		final String title = "一起来玩游戏吧";
		final String message = "亲，赶紧来游戏让我抱抱大腿吧";
		final String imagePath = "http://lxcdn.dl.files.xiaomi.net/mfsv2/avatar/s008/p01CveXl9AOC/Qg1BlgmzRbie7P_150.jpg";
		MiCommplatform.getInstance().sendInviteMessage( GamActivity.this, title, message, imagePath, new MiResponseHandler()
			{
				@Override
				protected void onError( int arg0, JSONObject arg1 )
				{
					MessageUtil.alert( GamActivity.this, "onError", "\n sdkstatus:" + arg0 );
					if ( arg0 == 5200 )
					{
						// 取消邀请
					}
					else if ( arg0 == -107 )
					{
						// 邀请失败
					}
				}

				@Override
				protected void onComplete( int arg0, JSONObject arg1 )
				{
					MessageUtil.alert( GamActivity.this, "onComplete", arg1.toString() );
					if ( arg0 == 0 )
					{
						// 邀请成功
					}
				}
			} );
	}

	public static void alert( Activity activity, String title, String message )
	{
		new AlertDialog.Builder( activity ).setTitle( title ).setMessage( message ).setPositiveButton( android.R.string.ok, null ).setCancelable( false ).create().show();
	}

	/** 订单提交时等待浮窗 */
	private void showProgressDialog()
	{
		if ( null == progressDialog )
		{
			progressDialog = ProgressDialog.show( this, null, "正在获取请稍候..." );
			progressDialog.setCancelable( false );
		}
	}

	/** 关闭等待浮窗 */
	private void closeProgerssDialog()
	{
		try
		{
			if ( null != progressDialog && progressDialog.isShowing() )
			{
				progressDialog.dismiss();
				progressDialog = null;
			}
		}
		catch ( Exception e )
		{
			e.printStackTrace();
		}
	}

	/************************************************** 新增API START ******************************************************************/

	private void checkMiTalkStatus()
	{
		showProgressDialog();
		MiCommplatform.getInstance().checkMiTalkStatus( new MiResponseListener()
			{
				@Override
				protected void onResponseStatus( int code, String message )
				{
					closeProgerssDialog();
					if ( code == 0 )
						alert( GamActivity.this, "Tip", "米聊已登录" );
					else
					{
//						if(code == -10002)
//							alert( GamActivity.this, "Tip", "米聊版本过低" + code );
//						else if( code == -10001)
//							alert( GamActivity.this, "Tip", "米聊未安装" + code );
//						else
//							alert( GamActivity.this, "Tip", "米聊未登录" + code );
						
						alert( GamActivity.this, "Tip", message + ":" + code );
						
					}
				}
			} );
	}

	private void joinUnion( String unionId, String reason )
	{
		MiCommplatform.getInstance().joinUnion( unionId, reason, new MiResponseListener()
			{
				@Override
				protected void onResponseStatus( int code, String message )
				{
					alert( GamActivity.this, "Tip", "Code:" + code );
				}
			} );
	}

	private void checkJoinedUnion( String unionId )
	{
		MiCommplatform.getInstance().checkJoinedUnion( unionId, new MiResponseListener()
			{

				@Override
				protected void onResponseStatus( int code, String message )
				{
					alert( GamActivity.this, "Tip", "Code:" + code );
				}
			} );
	}

	private void subscribeVip( String vipId )
	{
		MiCommplatform.getInstance().subscribeVip( vipId, new MiResponseListener()
			{
				@Override
				protected void onResponseStatus( int code, String message )
				{
					alert( GamActivity.this, "Tip", "Code:" + code );
				}
			} );
	}

	private void checkVipIsScubscribed( String vipId )
	{
		MiCommplatform.getInstance().checkVipIsScubscribed( vipId, new MiResponseListener()
			{
				@Override
				protected void onResponseStatus( int code, String message )
				{
					alert( GamActivity.this, "Tip", "Code:" + code + "\nMessage:" + message );
				}
			} );
	}

	private void dialogSetting( AlertDialog.Builder builder, LinearLayout layout, String title, String tipText, final int msgId )
	{
		builder.setView( layout );

		final EditText mEditText = new EditText( this );
		LayoutParams params = new LayoutParams( LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT );
		mEditText.setLayoutParams( params );
		mEditText.setHint( tipText );
		ZEditFilter.setDigitsThen15( mEditText, false );
		layout.addView( mEditText );
		builder.setTitle( title );
		
		builder.setPositiveButton( "确定", new DialogInterface.OnClickListener()
			{
				@Override
				public void onClick( DialogInterface dialog, int which )
				{
					String id = mEditText.getText().toString();
					if ( TextUtils.isEmpty( id ) )
					{
						Toast.makeText( GamActivity.this, "ID不能为空", Toast.LENGTH_SHORT ).show();
						return;
					}

					switch( msgId )
					{
						case DIALOG_JOIN_UNION:
							joinUnion( id, "加入请求" );
						break;
						case DIALOG_CHECK_JOINEDUNION:
							checkJoinedUnion( id );
						break;
						case DIALOG_SUBSCRIBE_VIP:
							subscribeVip( id );
						break;
						case DIALOG_CHECK_VIPISSCUBSCRIBED:
							checkVipIsScubscribed( id );
						break;
						default:
						break;
					}
				}
			} );
	}
	
	
	private void openMiTalk()
	{
		MiCommplatform.getInstance().openMiTalkUpdateSite();
	}
	
	private void getUnionList()
	{
		showProgressDialog();
		MiCommplatform.getInstance().getUnionList( GamActivity.this, new MiResponseHandler()
			{
				@Override
				protected void onError( int arg0, JSONObject arg1 )
				{
					closeProgerssDialog();
//					alert( GamActivity.this, "", message );
				}
				
				@Override
				protected void onComplete( int arg0, JSONObject arg1 )
				{
					closeProgerssDialog();
					alert( GamActivity.this, "Tip", arg1.toString() );
				}
			} );
	}
	
	private void getVipList()
	{
		showProgressDialog();
		MiCommplatform.getInstance().getVipList( GamActivity.this, new MiResponseHandler()
			{
				@Override
				protected void onError( int arg0, JSONObject arg1 )
				{
					closeProgerssDialog();
				}
				
				@Override
				protected void onComplete( int arg0, JSONObject arg1 )
				{
					closeProgerssDialog();
					alert( GamActivity.this, "Tip", arg1.toString() );
				}
			} );
	}
	
	

	/************************************************** 新增API END ******************************************************************/

}
