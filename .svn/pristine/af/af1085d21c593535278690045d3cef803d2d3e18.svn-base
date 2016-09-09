package com.sdk.migame.payment.adapter;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.json.JSONObject;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.text.Html;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

import com.sdk.migame.payment.R;
import com.sdk.migame.payment.utiles.MessageUtil;
import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.entry.MiAccountInfo;
import com.xiaomi.gamecenter.sdk.gam.MiResponseHandler;

public class GameFriendListAdapter extends ArrayAdapter< JSONObject >
{

	ArrayList< Map< String, String >> metaInfo;
	Activity activity;
	
	MiAccountInfo accountInfo;

	public GameFriendListAdapter( Context context, List< JSONObject > objects, ArrayList< Map< String, String >> metaInfo, MiAccountInfo accountInfo )
	{
		super( context, 0, objects );
		activity = (Activity) context;
		this.metaInfo = metaInfo;
		this.accountInfo = accountInfo;
	}

	@Override
	public View getView( int position, View convertView, ViewGroup parent )
	{
		Holder h;

		if ( convertView == null )
		{
			convertView = View.inflate( getContext(), R.layout.game_friend_item, null );

			h = new Holder();
			h.tvRank = (TextView) convertView.findViewById( R.id.rank_tv );
			h.ivProfile = (ImageView) convertView.findViewById( R.id.friend_item_iv_profile );
			h.tvNickname = (TextView) convertView.findViewById( R.id.friend_item_tv_nickname );
			h.tvScore = (TextView) convertView.findViewById( R.id.friend_item_tv_score );
			h.tvUserId = (TextView) convertView.findViewById( R.id.friend_item_tv_userid );
			h.messageButton = (Button) convertView.findViewById( R.id.message_button );

			convertView.setTag( h );
		}
		else
		{
			h = (Holder) convertView.getTag();
		}

		JSONObject friend = getItem( position );
		
//		if(null != friend && friend.length() > 0)
		{
			h.tvNickname.setText( friend.optString( "nickname" ) );
			h.tvScore.setText( friend.optString( "season_score" ) );
			h.ivProfile.setImageResource( R.drawable.ic_launcher );
//			ImageLoader.getInstance(getContext().getApplicationContext()).loadThumbnailImage(friend.optString("profile_image_url"),h.ivProfile);

			final String userId = friend.optString( "user_id" );
			h.tvUserId.setText( "UserId：" + userId );
			if ( Character.isLetter( userId.charAt( 0 ) ) )
			{
				h.tvRank.setText( ": (" );
				h.messageButton.setText( "invite" );
				h.messageButton.setOnClickListener( new OnClickListener()
					{

						@Override
						public void onClick( View v )
						{
							alertSendInviteMessage( userId );
						}
					} );
			}
			else
			{
				h.tvRank.setText( friend.optString( "rank" ) );
				h.messageButton.setText( "赠送体力" );
				h.messageButton.setOnClickListener( new OnClickListener()
					{

						@Override
						public void onClick( View v )
						{
							alertSendHeartMessage( userId );
						}
					} );
				
			}
			
			if(null != accountInfo)
			{
				if((accountInfo.getUid()+"").equals( userId ) )
				{
					h.messageButton.setEnabled( false );
				}
				else
					h.messageButton.setEnabled( true );
			}
		}

		return convertView;
	}

	private void alertSendHeartMessage( final String userId )
	{
		final String message = "亲，赶紧来游戏让我抱抱大腿吧";
		final byte[] data = "testdata".getBytes();
		final String dialogMessage = activity.getString( R.string.should_send_message ) + "<br/><br/>" + message + "<br/> Send To:" + userId;

		AlertDialog.Builder builder = new AlertDialog.Builder( activity );
		builder.setMessage( Html.fromHtml( dialogMessage ) );
		builder.setPositiveButton( android.R.string.ok, new DialogInterface.OnClickListener()
			{

				@Override
				public void onClick( DialogInterface dialog, int which )
				{
					sendGameMessage( userId, message, "Game message", 1, data );
				}
			} );
		builder.setNegativeButton( android.R.string.cancel, null );
		builder.create().show();
	}

	private void alertSendInviteMessage( final String userId )
	{
		final String message = "亲，赶紧来游戏让我抱抱大腿吧";
		final String dialogMessage = activity.getString( R.string.should_send_message ) + "<br/><br/>" + message + "<br/> Send To:" + userId;

		AlertDialog.Builder builder = new AlertDialog.Builder( activity );
		builder.setMessage( Html.fromHtml( dialogMessage ) );
		builder.setPositiveButton( android.R.string.ok, new DialogInterface.OnClickListener()
			{

				@Override
				public void onClick( DialogInterface dialog, int which )
				{
					sendInviteMessage( userId, message );
				}
			} );
		builder.setNegativeButton( android.R.string.cancel, null );
		builder.create().show();
	}

	private void sendGameMessage( String userId, String message, String gameMsg, int heart, byte[] data )
	{
		MiCommplatform.getInstance().sendGameMessage( activity, userId, false, message, gameMsg, heart, data, metaInfo, new MiResponseHandler()
			{
				@Override
				protected void onError( int arg0, JSONObject arg1 )
				{
					MessageUtil.alert( activity, "onError", "\n sdkstatus:" + arg0 );
				}

				@Override
				protected void onComplete( int arg0, JSONObject arg1 )
				{
					MessageUtil.alert( activity, "onComplete", arg1.toString() );
				}
			} );
	}

	private void sendInviteMessage( String userId, String message )
	{
		MiCommplatform.getInstance().sendInviteMessage( activity, userId, false, message, metaInfo, new MiResponseHandler()
			{
				@Override
				protected void onError( int arg0, JSONObject arg1 )
				{
					MessageUtil.alert( activity, "onError", "\n sdkstatus:" + arg0 );
				}

				@Override
				protected void onComplete( int arg0, JSONObject arg1 )
				{
					MessageUtil.alert( activity, "onComplete", arg1.toString() );
				}
			} );
	}

	private class Holder
	{
		TextView tvRank;
		ImageView ivProfile;
		TextView tvNickname;
		TextView tvScore;
		TextView tvUserId;
		Button messageButton;
	}
}
