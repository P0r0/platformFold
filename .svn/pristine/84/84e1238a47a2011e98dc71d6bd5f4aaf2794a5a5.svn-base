package com.sdk.migame.payment;

import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;

import android.app.AlertDialog;
import android.app.ListActivity;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ListView;

import com.sdk.migame.payment.adapter.GameMessageAdapter;
import com.sdk.migame.payment.utiles.MessageUtil;
import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.entry.MiAccountInfo;
import com.xiaomi.gamecenter.sdk.gam.MiResponseHandler;

public class GameMessageActivity extends ListActivity
{

	private static final String TAG = "GameMessageActivity";

	private ArrayList< JSONObject > messages;

	private GameMessageAdapter messageAdapeter;
	
	private MiAccountInfo accountInfo;

	@Override
	protected void onCreate( Bundle savedInstanceState )
	{
		super.onCreate( savedInstanceState );
		setContentView( R.layout.game_messages_activity );

		accountInfo = getIntent().getParcelableExtra( "accountInfo" );

		Button acceptAllButton = (Button) findViewById( R.id.accept_all_button );
		acceptAllButton.setOnClickListener( new OnClickListener()
			{

				@Override
				public void onClick( View v )
				{
					MiCommplatform.getInstance().acceptAllMessage( GameMessageActivity.this, new MiResponseHandler()
						{

							@Override
							protected void onError( int miStatus, JSONObject result )
							{
								MessageUtil.alert( GameMessageActivity.this, result.toString() );

							}

							@Override
							protected void onComplete( int miStatus, JSONObject result )
							{
//								MessageUtil.alert( GameMessageActivity.this, "sdkStatus: " + miStatus + "result: " + result );
								getMessages();
							}
						} );
				}
			} );

		messages = new ArrayList< JSONObject >();
		messageAdapeter = new GameMessageAdapter( getApplicationContext(), messages );
		setListAdapter( messageAdapeter );
		getMessages();

	}

	private void getMessages()
	{
		MiCommplatform.getInstance().loadGameMessage( GameMessageActivity.this, new MiResponseHandler()
			{
				@Override
				protected void onError( int miStatus, JSONObject result )
				{
					MessageUtil.alert( GameMessageActivity.this, "onError", "sdkStatus: " + miStatus + ", result: " + result );
				}
				
				@Override
				protected void onComplete( int miStatus, JSONObject result )
				{
					if ( !result.has( "messages" ) )
					{
						Log.e( TAG, "message is null." );
						return;
					}

					JSONArray messageArray = result.optJSONArray( "messages" );

					if ( messageArray.length() == 0 )
						MessageUtil.alert( GameMessageActivity.this, "no message" );

					messages.clear();
					Log.i( TAG, "-------- messages" );
					for ( int i = 0, n = messageArray.length(); i < n; i++ )
					{
						JSONObject message = messageArray.optJSONObject( i );
						if ( message != null )
						{
							messages.add( message );
						}

						Log.i( TAG, "-------- messages[" + i + "]" );
						Log.i( TAG, "message_id" + message.optString( "message_id" ) );
						Log.i( TAG, "sender_id" + message.optString( "sender_id" ) );
						Log.i( TAG, "sender_nickname" + message.optString( "sender_nickname" ) );
						Log.i( TAG, "sender_profile_image_url" + message.optString( "sender_profile_image_url" ) );
						Log.i( TAG, "heart" + message.optString( "heart" ) );
						Log.i( TAG, "message" + message.optString( "message" ) );
						Log.i( TAG, "sent_at" + message.optString( "sent_at" ) );

						String data = message.optString( "data" );
						if ( data != null )
						{
							Log.i( TAG, "data : after- " + data );
							byte[] decoded = Base64.decode( data, 0 );
							data = new String( decoded );
							Log.i( TAG, "data: before-" + data );
						}
					}

					messageAdapeter.notifyDataSetChanged();

//					MessageUtil.alert( GameMessageActivity.this, "onComplete", "sdkStatus: " + miStatus + ", result: " + result );
				}
			} );
	}

	@Override
	protected void onListItemClick( ListView l, View v, int position, long id )
	{
		final JSONObject message = (JSONObject) l.getItemAtPosition( position );
		if ( !message.has( "sender_nickname" ) )
			return;

		String[] items = { "接收消息(体力)" };

		AlertDialog.Builder builder = new AlertDialog.Builder( this );
		builder.setTitle( "Message" );
		builder.setItems( items, new DialogInterface.OnClickListener()
			{

				@Override
				public void onClick( DialogInterface dialog, int which )
				{
					String messageId = message.optString( "message_id" );
					acceptMessage( messageId );

				}
			} );
		builder.create().show();

	}

	private void acceptMessage( String messageId )
	{
		MiCommplatform.getInstance().acceptMessage( GameMessageActivity.this, messageId, new MiResponseHandler()
			{
				
				@Override
				protected void onError( int miStatus, JSONObject result )
				{
					MessageUtil.alert( GameMessageActivity.this, result.toString() );
				}
				
				@Override
				protected void onComplete( int miStatus, JSONObject result )
				{
					getMessages();
//					MessageUtil.alert( GameMessageActivity.this, "sdkStatus: " + miStatus + ", result: " + result );
					
				}
			} );
	}

}
