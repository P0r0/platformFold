package com.sdk.migame.payment.adapter;

import java.util.List;

import org.json.JSONObject;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.sdk.migame.payment.R;

public class GameMessageAdapter extends ArrayAdapter<JSONObject> {

	public GameMessageAdapter(Context context, List<JSONObject> objects) {
		super(context, 0, objects);
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		Holder h;
		
		if (convertView == null) {
			convertView = View.inflate(getContext(), R.layout.friend_item, null);
			
			h = new Holder();
			h.ivProfile = (ImageView) convertView.findViewById(R.id.friend_item_iv_profile);
			h.tvNickname = (TextView) convertView.findViewById(R.id.friend_item_tv_nickname);
			h.tvMessageId = (TextView) convertView.findViewById( R.id.friend_item_tv_messageid );
			h.tvMessage = (TextView) convertView.findViewById( R.id.friend_item_tv_message );
			
			convertView.setTag(h);
		} else {
			h = (Holder) convertView.getTag();
		}
		JSONObject friend = getItem(position);
		
		h.tvNickname.setText(friend.optString("sender_nickname"));
		h.ivProfile.setImageResource( R.drawable.ic_launcher );
		h.tvMessage.setText( friend.optString( "message" ) );
//		ImageLoader.getInstance(getContext().getApplicationContext()).loadThumbnailImage(friend.optString("sender_profile_image_url"), h.ivProfile);
		
		h.tvMessageId.setText( "messageId:" + friend.optString( "message_id" ) );
		
		return convertView;
	}

	private class Holder {
		ImageView ivProfile;
		TextView tvNickname;
		TextView tvMessageId;
		TextView tvMessage;
	}
}
