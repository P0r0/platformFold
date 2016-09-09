.class public Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;
.super Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/os/HandlerThread;

.field private b:Lcom/vivo/sdkplugin/activity/dM;

.field private c:Landroid/os/Handler;

.field private d:Landroid/widget/ProgressBar;

.field private e:Landroid/webkit/WebView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->a:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->b:Lcom/vivo/sdkplugin/activity/dM;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->c:Landroid/os/Handler;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->d:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->e:Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->f:Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->g:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;)Landroid/widget/ProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;)Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->e:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->f:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;)V
    .registers 9

    const/16 v1, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-direct {v0, p0, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_REGISTE_PROTOCOL_URL:Ljava/lang/String;

    new-instance v7, Lcom/vivo/sdkplugin/activity/dN;

    invoke-direct {v7, p0, v5}, Lcom/vivo/sdkplugin/activity/dN;-><init>(Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;B)V

    move v5, v4

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-void
.end method

.method static synthetic f(Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public agreeBtnClick()V
    .registers 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->mAgreeProtocal:Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .registers 1

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_8

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->agreeBtnClick()V

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->g:Landroid/widget/TextView;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->d:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->b:Lcom/vivo/sdkplugin/activity/dM;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/dM;->sendEmptyMessage(I)Z

    goto :goto_7
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "RegisterProtocolActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "vivo_registe_protocol"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleLeftBtn_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleLeftBtn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->i:Landroid/widget/Button;

    new-instance v1, Lcom/vivo/sdkplugin/activity/dK;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/dK;-><init>(Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->h:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/vivo/sdkplugin/activity/dL;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/dL;-><init>(Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "load_progress"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->d:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "protocol_content"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->e:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->e:Landroid/webkit/WebView;

    new-instance v1, Lcom/vivo/sdkplugin/activity/dP;

    invoke-direct {v1, p0, v3}, Lcom/vivo/sdkplugin/activity/dP;-><init>(Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "agree_btn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "retry_btn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->a:Landroid/os/HandlerThread;

    if-nez v0, :cond_f4

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "com.vivo.sdkplugin.HandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->a:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/vivo/sdkplugin/activity/dM;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/activity/dM;-><init>(Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->b:Lcom/vivo/sdkplugin/activity/dM;

    :cond_f4
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->c:Landroid/os/Handler;

    if-nez v0, :cond_ff

    new-instance v0, Lcom/vivo/sdkplugin/activity/dO;

    invoke-direct {v0, p0, v3}, Lcom/vivo/sdkplugin/activity/dO;-><init>(Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;B)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->c:Landroid/os/Handler;

    :cond_ff
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->b:Lcom/vivo/sdkplugin/activity/dM;

    invoke-virtual {v0, v4}, Lcom/vivo/sdkplugin/activity/dM;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onDestroy()V

    const-string v0, "RegisterProtocolActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_13
    return-void
.end method

.method protected onPause()V
    .registers 3

    const-string v0, "RegisterProtocolActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    const-string v0, "RegisterProtocolActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onResume()V

    return-void
.end method

.method public refuseBtnClick()V
    .registers 1

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->finish()V

    return-void
.end method
