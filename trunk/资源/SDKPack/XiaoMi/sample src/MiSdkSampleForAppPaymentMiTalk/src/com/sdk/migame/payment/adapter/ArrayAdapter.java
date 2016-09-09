package com.sdk.migame.payment.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;
import java.util.List;

/**
 * Adapter for ListView 
 * @author zhaotao
 *
 * @param <T>
 */
public abstract class ArrayAdapter<T> extends BaseAdapter {
    protected Context mContext;
    protected List<T> mData;
    protected boolean mDataValid;

    public ArrayAdapter(Context context) {
        mContext = context;
        mDataValid = false;
    }
    
    public void updateData(Object[] data) {
        if (data != null) {
            mDataValid = true;
            if(mData == null)
            {
            	mData = new ArrayList<T>(20); 
            	
            }
            for(Object t : data){
            	mData.add( (T) t );
            }
            postUpdateData();
            notifyDataSetChanged();
        } else {
            mDataValid = false;
            notifyDataSetInvalidated();
        }
        
    }

    public List<T> getData() {
        return mData;
    }

    @Override
    public int getCount() {
        if (mDataValid && mData != null) {
            return mData.size();
        } else {
            return 0;
        }
    }

    @Override
    public Object getItem(int position) {
        if (mDataValid && mData != null) {
            return mData.get(position);
        } else {
            return null;
        }
    }

    @Override
    public long getItemId(int position) {
        if (mDataValid && mData != null) {
            return position;
        } else {
            return 0;
        }
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        if (!mDataValid) {
            throw new IllegalStateException("this should only be called when the data is valid");
        }
        if (position < 0 || position >= mData.size()) {
            throw new IllegalStateException("couldn't get view at this position " + position);
        }
        T data = mData.get(position);
        View v;
        if (convertView == null) {
            v = newView(mContext, data, parent);
        } else {
            v = convertView;
        }
        bindView(v, position, data);
        return v;
    }

    public abstract View newView(Context context, T data, ViewGroup parent);

    public abstract void bindView(View view, int position, T data);

	protected void postUpdateData() {
		
	}
}
