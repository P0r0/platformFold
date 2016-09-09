package com.sdk.migame.payment.adapter;

import java.util.List;

import org.json.JSONObject;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

import com.sdk.migame.payment.R;

public class UserInfoScoresAdapter extends ArrayAdapter< JSONObject >
{

	public UserInfoScoresAdapter( Context context, List< JSONObject > objects )
	{
		super( context, 0, objects );
	}
	
	@Override
	public View getView( int position, View convertView, ViewGroup parent )
	{
		Holder h;
		if(null == convertView)
		{
			convertView = View.inflate(getContext(), R.layout.user_info_scores_item, null);
			h = new Holder();
			h.tvLeaderBoardKey = (TextView) convertView.findViewById( R.id.info_leaderboard_key );
			h.tvSeasonScore = (TextView) convertView.findViewById( R.id.info_season_score );
			h.tvLastScore = (TextView) convertView.findViewById( R.id.info_last_score );
			h.tvLastSeasonScore = (TextView) convertView.findViewById( R.id.info_last_season_score );
			h.tvBestScore = (TextView) convertView.findViewById( R.id.info_best_score );
			convertView.setTag(h);
		}
		else
		{
			h = (Holder) convertView.getTag();
		}
		
		JSONObject jb = getItem( position );
		h.tvLeaderBoardKey.setText( "LeaderBoardKey:" + jb.optString( "leaderboard_key" ) );
		h.tvSeasonScore.setText( "SeasonScore:" + jb.optString( "season_score" ) );
		h.tvLastScore.setText( "LastScore:" + jb.optString( "last_score" ) );
		h.tvLastSeasonScore.setText( "LastSeasonScore:" + jb.optString( "last_season_score" ) );
		h.tvBestScore.setText( "BestScore:" + jb.optString( "best_score" ) );
		return convertView;
	}
	
	private class Holder
	{
		TextView tvLeaderBoardKey;
		TextView tvSeasonScore;
		TextView tvLastScore;
		TextView tvLastSeasonScore;
		TextView tvBestScore;
	}
}
