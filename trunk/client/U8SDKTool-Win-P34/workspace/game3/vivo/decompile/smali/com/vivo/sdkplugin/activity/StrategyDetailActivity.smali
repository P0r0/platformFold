.class public Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;
.super Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/webkit/WebView;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;->c:Landroid/webkit/WebView;

    new-instance v0, Lcom/vivo/sdkplugin/activity/em;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/em;-><init>(Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;)Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;->c:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;->finish()V

    :goto_1e
    return-void

    :cond_1f
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "vivo_webview_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "webview"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;->c:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    const-string v0, "StrategyDetailActivity"

    const-string v1, "%%%%%%%requestStrategyDetail%%%%%%%"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/vivo/sdkplugin/activity/en;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/en;-><init>(Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;)V

    invoke-static {p0}, Lcom/huanju/data/HjDataClient;->getInstance(Landroid/content/Context;)Lcom/huanju/data/HjDataClient;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;->a:Ljava/lang/String;

    sget-object v3, Lcom/huanju/data/content/raw/HjRequestFrom;->hj_gamedetial:Lcom/huanju/data/content/raw/HjRequestFrom;

    invoke-virtual {v1, v0, v2, v3}, Lcom/huanju/data/HjDataClient;->requestInfoDetail(Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;Ljava/lang/String;Lcom/huanju/data/content/raw/HjRequestFrom;)V

    goto :goto_1e
.end method

.method protected onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_9
    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onPause()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;->c:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    :cond_17
    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onResume()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_11
    return-void
.end method
