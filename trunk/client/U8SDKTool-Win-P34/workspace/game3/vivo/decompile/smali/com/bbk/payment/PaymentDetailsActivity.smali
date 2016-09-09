.class public Lcom/bbk/payment/PaymentDetailsActivity;
.super Lcom/bbk/payment/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/webkit/WebView;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/bbk/payment/BaseActivity;-><init>()V

    iput-object p0, p0, Lcom/bbk/payment/PaymentDetailsActivity;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/bbk/payment/PaymentDetailsActivity;->b:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbk/payment/PaymentDetailsActivity;->c:Landroid/webkit/WebView;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bbk/payment/PaymentDetailsActivity;->h:I

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/PaymentDetailsActivity;)Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentDetailsActivity;->c:Landroid/webkit/WebView;

    return-object v0
.end method

.method private a()V
    .registers 8

    const/16 v2, 0x8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bbk/payment/PaymentDetailsActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v1, p0, Lcom/bbk/payment/PaymentDetailsActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v1, Lcom/bbk/payment/model/DeviceInfo;

    iget-object v2, p0, Lcom/bbk/payment/PaymentDetailsActivity;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/bbk/payment/model/DeviceInfo;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x8

    :try_start_16
    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "version"

    const-string v6, "2.0.6"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "appId"

    iget-object v6, p0, Lcom/bbk/payment/PaymentDetailsActivity;->f:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "model"

    invoke-virtual {v1}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "imei"

    invoke-virtual {v1}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    iget-object v1, p0, Lcom/bbk/payment/PaymentDetailsActivity;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_61

    iget-object v1, p0, Lcom/bbk/payment/PaymentDetailsActivity;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/bbk/payment/PaymentDetailsActivity;->i:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v4, p0, Lcom/bbk/payment/PaymentDetailsActivity;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGamePackageName(Ljava/lang/String;)V

    :cond_61
    const/4 v3, 0x4

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "packageName"

    invoke-direct {v4, v5, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    iget-object v1, p0, Lcom/bbk/payment/PaymentDetailsActivity;->i:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getmainOpenId()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "uid"

    invoke-direct {v4, v5, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v1, 0x6

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "activityId"

    iget-object v5, p0, Lcom/bbk/payment/PaymentDetailsActivity;->d:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const/4 v1, 0x7

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "pixel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/bbk/payment/PaymentDetailsActivity;->h:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    sget-boolean v1, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v1, :cond_a7

    :goto_a4
    array-length v1, v2

    if-lt v0, v1, :cond_b0

    :cond_a7
    new-instance v0, Lcom/bbk/payment/PaymentDetailsActivity$InitialDetailsTask;

    invoke-direct {v0, p0}, Lcom/bbk/payment/PaymentDetailsActivity$InitialDetailsTask;-><init>(Lcom/bbk/payment/PaymentDetailsActivity;)V

    invoke-virtual {v0, v2}, Lcom/bbk/payment/PaymentDetailsActivity$InitialDetailsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_af
    return-void

    :cond_b0
    const-string v1, "PaymentDetailsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "---------------nameValuePairs"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_d0} :catch_d3

    add-int/lit8 v0, v0, 0x1

    goto :goto_a4

    :catch_d3
    move-exception v0

    const-string v1, "PaymentDetailsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send initial payment failed,error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_af
.end method

.method static synthetic b(Lcom/bbk/payment/PaymentDetailsActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentDetailsActivity;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public agreeBtnClick()V
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentDetailsActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentDetailsActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .registers 1

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentDetailsActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/bbk/payment/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "PaymentDetailsActivity"

    const-string v1, "***********************onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentDetailsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_action_details_context"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentDetailsActivity;->setContentView(I)V

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bbk/payment/PaymentDetailsActivity;->i:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_49

    const-string v1, "activityId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bbk/payment/PaymentDetailsActivity;->d:Ljava/lang/String;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bbk/payment/PaymentDetailsActivity;->e:Ljava/lang/String;

    const-string v1, "appId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bbk/payment/PaymentDetailsActivity;->f:Ljava/lang/String;

    const-string v1, "gamePackageName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/payment/PaymentDetailsActivity;->g:Ljava/lang/String;

    :cond_49
    const-string v0, "PaymentDetailsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "***********************onCreate="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbk/payment/PaymentDetailsActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mTitle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/PaymentDetailsActivity;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mAppId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/PaymentDetailsActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentDetailsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "title"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bbk/payment/PaymentDetailsActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentDetailsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_back"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentDetailsActivity;->showTitleLeftButton(I)V

    new-instance v0, Lcom/bbk/payment/ab;

    invoke-direct {v0, p0}, Lcom/bbk/payment/ab;-><init>(Lcom/bbk/payment/PaymentDetailsActivity;)V

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentDetailsActivity;->onTitleLeftButtonPressed(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentDetailsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "load_progress"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbk/payment/PaymentDetailsActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentDetailsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "action_details_content"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/bbk/payment/PaymentDetailsActivity;->c:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/bbk/payment/PaymentDetailsActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcom/bbk/payment/PaymentDetailsActivity;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/bbk/payment/ac;

    invoke-direct {v1, p0, v3}, Lcom/bbk/payment/ac;-><init>(Lcom/bbk/payment/PaymentDetailsActivity;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Lcom/bbk/payment/PaymentDetailsActivity;->h:I

    const-string v1, "PaymentDetailsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initTitle==============="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",mDensityDpi="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/bbk/payment/PaymentDetailsActivity;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/bbk/payment/PaymentDetailsActivity;->a()V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/bbk/payment/BaseActivity;->onDestroy()V

    const-string v0, "PaymentDetailsActivity"

    const-string v1, "***********************onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onPause()V
    .registers 3

    const-string v0, "PaymentDetailsActivity"

    const-string v1, "***********************onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/bbk/payment/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    const-string v0, "PaymentDetailsActivity"

    const-string v1, "***********************onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/bbk/payment/BaseActivity;->onResume()V

    return-void
.end method

.method public refuseBtnClick()V
    .registers 1

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentDetailsActivity;->finish()V

    return-void
.end method
