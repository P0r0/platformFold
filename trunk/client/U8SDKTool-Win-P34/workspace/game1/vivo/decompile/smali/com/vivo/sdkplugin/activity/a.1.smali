.class final Lcom/vivo/sdkplugin/activity/a;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/a;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 8

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_42

    :goto_6
    return-void

    :sswitch_7
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/a;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    # getter for: Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;
    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->access$0(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)Lcom/vivo/sdkplugin/Utils/VivoWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/a;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    # getter for: Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;
    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->access$0(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)Lcom/vivo/sdkplugin/Utils/VivoWebView;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/a;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    # getter for: Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mStrategyContent:Ljava/lang/String;
    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->access$1(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/vivo/sdkplugin/Utils/VivoWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :sswitch_2a
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/a;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/a;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    iget-object v1, v1, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/vivo/assist/AssistWindowManager;->getInstance(Landroid/content/Context;)Lcom/vivo/assist/AssistWindowManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->access$2(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;Lcom/vivo/assist/AssistWindowManager;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/a;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    # getter for: Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mAssistWindowManager:Lcom/vivo/assist/AssistWindowManager;
    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->access$3(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)Lcom/vivo/assist/AssistWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/assist/AssistWindowManager;->hideAssistButtonNotification()V

    goto :goto_6

    nop

    :sswitch_data_42
    .sparse-switch
        0x1 -> :sswitch_7
        0xd -> :sswitch_2a
    .end sparse-switch
.end method
