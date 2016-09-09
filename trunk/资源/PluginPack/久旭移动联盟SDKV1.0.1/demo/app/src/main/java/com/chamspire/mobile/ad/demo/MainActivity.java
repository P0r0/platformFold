package com.chamspire.mobile.ad.demo;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import android.widget.Toast;

import com.google.android.gms.ads.AdRequest;
import com.max.sdk.ad.AdListener;
import com.max.sdk.ad.SdkInitListener;
import com.max.sdk.ad.open.AdModOpen;

/**
 * 久旭广告sdk demo主页
 */
public class MainActivity extends AppCompatActivity implements View.OnClickListener {
    final static String APPID = "72";                                          // 久旭appId
    final static String APPKEY = "69481c5894e0a7b8ef9d50079ad866b3";           // 久旭appKey

    String unitId = "";                                                        // 久旭广告单元id
    EditText edUnitId;                                                         // unitId编辑框
    View btnId;                                                                // 切换unitId按钮
    TextView currentId;                                                        // 当前使用的unitID
    View banner, interstitial;                                                 // 横幅、插页广告显示按钮
    LinearLayout content;                                                      // 横幅广告显示区域
    ProgressDialog dialog;                                                     // loading对话框
    boolean isBannerAdRequested;                                               // 横幅广告请求是否完成
    boolean isInterstitialAdRequested;                                         // 插页广告请求是否完成
    boolean isBannerAdLoaded;                                                  // 横幅广告下载是否成功
    boolean isInterstitialAdLoaded;                                            // 插页广告请下载是否成功

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        initView();
        initSdk();// 初始化sdk
    }

    private void initView() {
        banner = findViewById(R.id.banner);
        interstitial = findViewById(R.id.interstitial);
        content = (LinearLayout) findViewById(R.id.content);

        dialog = new ProgressDialog(this);
        dialog.setProgressStyle(ProgressDialog.STYLE_SPINNER);
        dialog.setCancelable(true);
        dialog.setCanceledOnTouchOutside(false);

        btnId = findViewById(R.id.change);
        edUnitId = (EditText) findViewById(R.id.unitid);
        currentId = (TextView) findViewById(R.id.current);

        btnId.setOnClickListener(this);
        banner.setOnClickListener(this);
        interstitial.setOnClickListener(this);

        findViewById(R.id.main).setOnTouchListener(new View.OnTouchListener() {
            @Override
            public boolean onTouch(View v, MotionEvent event) {
                closeInput();
                return false;
            }
        });

        ((TextView) findViewById(R.id.appid)).setText(APPID);
        ((TextView) findViewById(R.id.appkey)).setText(APPKEY);
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.change:// 更换unitID
                String id = edUnitId.getText().toString();
                if (!TextUtils.isEmpty(id)) {
                    closeInput();

                    unitId = id;
                    currentId.setText("unitID=" + unitId);
                    banner.setEnabled(false);
                    interstitial.setEnabled(false);
                    content.removeAllViews();
                    content.setVisibility(View.GONE);
                    isBannerAdRequested = false;
                    isInterstitialAdRequested = false;
                    isBannerAdLoaded = false;
                    isInterstitialAdLoaded = false;

                    dialog.show();
                    loadBannerAd();// 下载并显示横幅广告
                    loadInterstitialAd();// 预下载插页广告
                } else {
                    Toast.makeText(MainActivity.this, "请输入unitID", Toast.LENGTH_SHORT).show();
                }
                break;
            case R.id.banner:// 显示横幅广告
                closeInput();
                if (isBannerAdLoaded) {
                    content.setVisibility(View.VISIBLE);
                }
                break;
            case R.id.interstitial:// 显示插页广告
                closeInput();
                if (isInterstitialAdLoaded) {
                    AdModOpen.showFullAd(this);
                } else {
                    Toast.makeText(MainActivity.this, "插页广告未下载完成，请稍后", Toast.LENGTH_SHORT).show();
                }
                break;
            default:
                break;
        }
    }

    /**
     * 初始化sdk
     */
    private void initSdk() {
        dialog.setMessage("正在初始化广告sdk,请稍后...");
        dialog.show();
        AdModOpen.initialize(this, APPID, APPKEY, new SdkInitListener() {
            @Override
            public void initFinish() {
                dialog.dismiss();
                dialog.setMessage("正在下载广告,请稍后...");
                btnId.setEnabled(true);
                Toast.makeText(MainActivity.this, "sdk初始化成功", Toast.LENGTH_SHORT).show();
            }

            @Override
            public void initError() {
                dialog.dismiss();
                Toast.makeText(MainActivity.this, "初始化广告SDK失败,请确认网络连接或appid/appkey是否正确", Toast.LENGTH_LONG).show();
            }
        });
    }

    /**
     * 加载横幅广告
     */
    private void loadBannerAd() {
        AdModOpen.loadAd(MainActivity.this, unitId, content, new AdListener() {
            @Override
            public void onAdLoaded() {
                if (isInterstitialAdRequested)
                    dialog.dismiss();
                isBannerAdRequested = true;
                isBannerAdLoaded = true;
                banner.setEnabled(true);
                Toast.makeText(MainActivity.this, "下载横幅广告成功", Toast.LENGTH_SHORT).show();
                Log.d("loadAd", "onAdLoaded");
            }

            @Override
            public void onAdFailedToLoad(int errorCode, String errorMsg) {
                if (isInterstitialAdRequested)
                    dialog.dismiss();
                isBannerAdRequested = true;
                isBannerAdLoaded = false;
                banner.setEnabled(false);
                Toast.makeText(MainActivity.this, "下载横幅广告失败，原因：" + errorMsg, Toast.LENGTH_SHORT).show();
                Log.e("loadAd", "onAdFailedToLoad - > errorMsg=" + errorMsg);
            }

            @Override
            public void onAdOpened() {
                Log.d("loadAd", "onAdOpened");
            }

            @Override
            public void onAdClosed() {
                Log.d("loadAd", "onAdClosed");
            }

            @Override
            public void onAdLeftApplication() {
                Log.d("loadAd", "onAdLeftApplication");
            }
        });
    }

    /**
     * 加载插页广告
     */
    private void loadInterstitialAd() {
        AdModOpen.loadFullAd(MainActivity.this, unitId, new AdListener() {
            @Override
            public void onAdLoaded() {
                if (isBannerAdRequested)
                    dialog.dismiss();
                isInterstitialAdRequested = true;
                isInterstitialAdLoaded = true;
                interstitial.setEnabled(true);
                Toast.makeText(MainActivity.this, "下载插页广告成功", Toast.LENGTH_SHORT).show();
                Log.d("loadFullAd", "onAdLoaded");
            }

            @Override
            public void onAdFailedToLoad(int errorCode, String errorMsg) {
                if (isBannerAdRequested)
                    dialog.dismiss();
                isInterstitialAdRequested = true;
                isInterstitialAdLoaded = false;
                interstitial.setEnabled(false);
                Toast.makeText(MainActivity.this, "下载插页广告失败，原因：" + errorMsg, Toast.LENGTH_SHORT).show();
                Log.e("loadFullAd", "onAdFailedToLoad - > errorMsg=" + errorMsg);
            }

            @Override
            public void onAdOpened() {
                Log.d("loadFullAd", "onAdOpened");
            }

            @Override
            public void onAdClosed() {
                Log.d("loadFullAd", "onAdClosed");
            }

            @Override
            public void onAdLeftApplication() {
                Log.d("loadFullAd", "onAdLeftApplication");
            }
        });
    }

    /**
     * 隐藏键盘
     */
    private void closeInput() {
        InputMethodManager imm = (InputMethodManager) getSystemService(Context.INPUT_METHOD_SERVICE);
        imm.hideSoftInputFromWindow(edUnitId.getWindowToken(), 0);
    }
}
