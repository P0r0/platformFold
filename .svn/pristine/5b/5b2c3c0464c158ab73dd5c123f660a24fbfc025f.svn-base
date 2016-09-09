/*
 * File Name: PayActivity.java 
 * History:
 * Created by Administrator on 2015-3-24
 */
package com.example.usercentertest;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;

import com.anzhi.usercenter.sdk.AnzhiUserCenter;
import com.test.anzhi.newtest.a.R;

public class UploadScoreActivity extends Activity {

	private EditText mETScore;
	private EditText mETDescript;
	private Button mBtnUpload;
	private AnzhiUserCenter mCenter;

	private long mScore;
	private String mDescript;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.upload_score);
		mCenter = AnzhiUserCenter.getInstance();
		mETScore = (EditText) findViewById(R.id.score);
		mETDescript = (EditText) findViewById(R.id.descript);
		mBtnUpload = (Button) findViewById(R.id.upload);
		mBtnUpload.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub

				if (TextUtils.isEmpty(mETScore.getText())
						|| (TextUtils.isEmpty(mETDescript.getText()))) {

					return;
				}

				mScore = Long.parseLong(mETScore.getText().toString().trim());
				mDescript = mETDescript.getText().toString().trim();

				mCenter.submitGameScore(UploadScoreActivity.this, mScore,
						mDescript, 0);
				
			}
		});
	}
}
