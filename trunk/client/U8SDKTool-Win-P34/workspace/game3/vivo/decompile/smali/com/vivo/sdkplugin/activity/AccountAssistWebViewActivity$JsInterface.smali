.class public Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity$JsInterface;
.super Ljava/lang/Object;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity$JsInterface;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public SignKey([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mArrayList="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/vivo/md5/Wave;->getM2(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clipboard(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity$JsInterface;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public reload()V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "------------reload()---------------"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity$JsInterface;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity$JsInterface;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    sget-object v1, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->url:Ljava/lang/String;

    # invokes: Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->isUrl(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->access$8(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    :cond_17
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity$JsInterface;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    # getter for: Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;
    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->access$0(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)Lcom/vivo/sdkplugin/Utils/VivoWebView;

    move-result-object v0

    const-string v1, "file:///android_asset/offline.html"

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoWebView;->loadUrl(Ljava/lang/String;)V

    :goto_22
    return-void

    :cond_23
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity$JsInterface;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tab"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u653b\u7565"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity$JsInterface;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity$JsInterface;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->access$9(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity$JsInterface;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    # getter for: Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mStrategyId:Ljava/lang/String;
    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->access$10(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity$JsInterface;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->finish()V

    goto :goto_22

    :cond_5a
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity$JsInterface;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    # invokes: Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->requestStrategyDetail()V
    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->access$6(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)V

    goto :goto_22

    :cond_60
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity$JsInterface;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    # getter for: Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;
    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->access$0(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)Lcom/vivo/sdkplugin/Utils/VivoWebView;

    move-result-object v0

    sget-object v1, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_22
.end method

.method public toast(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-eqz p1, :cond_e

    const-string v0, ""

    if-eq p1, v0, :cond_e

    const-string v0, "toasttips"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity$JsInterface;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_e
.end method

.method public updateGift()V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity$JsInterface;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    # invokes: Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getClientrequestGamedynamicInfo()Ljava/util/Map;
    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->access$7(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)Ljava/util/Map;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method
