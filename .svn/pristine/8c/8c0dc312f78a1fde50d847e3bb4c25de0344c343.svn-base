.class final Lcom/vivo/sdkplugin/activity/h;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/h;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/h;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    # getter for: Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;
    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->access$0(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)Lcom/vivo/sdkplugin/Utils/VivoWebView;

    move-result-object v0

    const-string v1, "file:///android_asset/offline.html"

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoWebView;->loadUrl(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    const-string v0, "AccountAssistWebViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "------shouldOverrideUrlLoading()------url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
