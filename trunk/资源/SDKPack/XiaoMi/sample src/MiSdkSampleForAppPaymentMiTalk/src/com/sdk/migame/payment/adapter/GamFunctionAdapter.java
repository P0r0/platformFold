package com.sdk.migame.payment.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.sdk.migame.payment.R;

public class GamFunctionAdapter extends ArrayAdapter< int[] >
{
	private OnClickListener lisetner;
	public GamFunctionAdapter( Context context, OnClickListener listener )
	{
		super( context );
		this.lisetner = listener;
	}

	@Override
	public View newView( Context context, int[] data, ViewGroup parent )
	{
		GamFunctionItem item = new GamFunctionItem( context, lisetner );
		return item;
	}

	@Override
	public void bindView( View view, int position, int[] data )
	{
		if ( view instanceof GamFunctionItem )
		{
			( (GamFunctionItem) view ).bindData( data );
		}
	}

	class GamFunctionItem extends LinearLayout
	{
		private TextView enName;
		private Button zhButon;
		private OnClickListener lisetener;
		private Context context;

		public GamFunctionItem( Context context, OnClickListener listener )
		{
			super( context );
			this.context = context;
			this.lisetener = listener;
			LayoutInflater.from( context ).inflate( R.layout.function_item, this );
		}

//		public GamFunctionItem( Context context, AttributeSet attrs )
//		{
//			super( context, attrs );
//			LayoutInflater.from( context ).inflate( R.layout.function_item, this );
//		}

		private void initResourse()
		{
			enName = (TextView) findViewById( R.id.gam_en_name );
			enName.setSingleLine();
			zhButon = (Button) findViewById( R.id.gam_zh_name );
			if(lisetener != null)
				zhButon.setOnClickListener( lisetener );
		}

		public void bindData( int[] str )
		{
			initResourse();

			enName.setText( context.getResources().getString( str[0] ) );
			zhButon.setText( context.getResources().getString( str[1] ) );
			zhButon.setTag( str[0] );
		}
	}
}
