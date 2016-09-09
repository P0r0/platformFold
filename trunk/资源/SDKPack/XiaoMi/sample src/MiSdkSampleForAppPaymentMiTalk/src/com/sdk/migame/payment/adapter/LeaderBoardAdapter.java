package com.sdk.migame.payment.adapter;

import java.util.List;

import org.json.JSONObject;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

import com.sdk.migame.payment.R;

public class LeaderBoardAdapter extends ArrayAdapter< JSONObject >
{

	public LeaderBoardAdapter( Context context, List< JSONObject > objects )
	{
		super( context, 0, objects );
	}

	@Override
	public View getView( int position, View convertView, ViewGroup parent )
	{
		Holder h;
		if(null == convertView)
		{
			convertView = View.inflate(getContext(), R.layout.leaderboard_list_item, null);
			h = new Holder();
			h.tvUserId = (TextView) convertView.findViewById( R.id.leader_userid );
			h.tvNickName = (TextView) convertView.findViewById( R.id.leader_nickname );
			h.tvSeasonScore = (TextView) convertView.findViewById( R.id.leader_season_score );
			h.tvLastSeasonScore = (TextView) convertView.findViewById( R.id.leader_last_season_score );
			h.tvBestScore = (TextView) convertView.findViewById( R.id.leader_best_score );
			h.tvLastScoreTime = (TextView) convertView.findViewById( R.id.leader_last_time );
			
			convertView.setTag(h);
		}
		else
		{
			h = (Holder) convertView.getTag();
		}
		
		JSONObject leaderBoard = getItem(position);
		
		h.tvUserId.setText( "UserId:" + leaderBoard.optString( "user_id" ) );
		h.tvNickName.setText( "NickName:" + leaderBoard.optString( "nickname" ) );
		h.tvSeasonScore.setText( "SeasonScore:" + leaderBoard.optString( "season_score" ) );
		h.tvLastSeasonScore.setText( "LastSeasonScore:" + leaderBoard.optString( "last_season_score" ) );
		h.tvBestScore.setText( "BestScore:" + leaderBoard.optString( "best_score" ) );
		h.tvLastScoreTime.setText( "LastScoreTime:" + leaderBoard.optString( "last_score_time" ) );
		
		return convertView;
	}

	private class Holder
	{
		TextView tvUserId;
		TextView tvNickName;
		TextView tvSeasonScore;
		TextView tvLastSeasonScore;
		TextView tvBestScore;
		TextView tvLastScoreTime;
	}
}
