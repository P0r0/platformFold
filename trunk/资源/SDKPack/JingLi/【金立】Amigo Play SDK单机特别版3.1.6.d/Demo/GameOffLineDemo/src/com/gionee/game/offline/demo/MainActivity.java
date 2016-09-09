package com.gionee.game.offline.demo;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.Toast;

import com.example.gameofflinedemo.R;
import com.gionee.game.offlinesdk.GamePlatform;
import com.gionee.game.offlinesdk.InitPluginCallback;

public class MainActivity extends Activity implements OnClickListener {

    private InitPluginCallback mInitPluginCallback = new InitPluginCallback() {

        @Override
        public void onEvent(int event) {
            if (InitPluginCallback.EVENT_INIT_PLUGIN_FINISH == event) {
                // 插件初始化完成，请游戏根据实际情况处理
                Toast.makeText(MainActivity.this, "插件初始化完毕", Toast.LENGTH_SHORT).show();
            }
        }

    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        initViews();
        GamePlatform.getInstance().initPlugin(this, mInitPluginCallback);
    }

    private void initViews() {
        Button checkVersionButton = (Button) findViewById(R.id.plugin_test);
        checkVersionButton.setOnClickListener(this);

        Button payTestButton = (Button) findViewById(R.id.pay_test);
        payTestButton.setOnClickListener(this);
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.plugin_test:
                GamePlatform.getInstance().initPlugin(this, mInitPluginCallback);
                break;

            case R.id.pay_test:
                goToPayTestActivity();
                break;

            default:
                break;
        }

    }

    private void goToPayTestActivity() {
        Intent intent = new Intent(this, PayTestActivity.class);
        startActivity(intent);
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
    }
}
