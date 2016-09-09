.class final Lcom/baidu/paysdk/ui/PassNormalizeActivity$a;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/paysdk/ui/PassNormalizeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/paysdk/ui/PassNormalizeActivity;


# direct methods
.method private constructor <init>(Lcom/baidu/paysdk/ui/PassNormalizeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity$a;->a:Lcom/baidu/paysdk/ui/PassNormalizeActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/paysdk/ui/PassNormalizeActivity;Lcom/baidu/paysdk/ui/PassNormalizeActivity$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/paysdk/ui/PassNormalizeActivity$a;-><init>(Lcom/baidu/paysdk/ui/PassNormalizeActivity;)V

    return-void
.end method


# virtual methods
.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .registers 4

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageFinished url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity$a;->a:Lcom/baidu/paysdk/ui/PassNormalizeActivity;

    invoke-static {v0}, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->a(Lcom/baidu/paysdk/ui/PassNormalizeActivity;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity$a;->a:Lcom/baidu/paysdk/ui/PassNormalizeActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    :cond_24
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity$a;->a:Lcom/baidu/paysdk/ui/PassNormalizeActivity;

    invoke-static {v0}, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->a(Lcom/baidu/paysdk/ui/PassNormalizeActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/DebugConfig;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/core/DebugConfig;

    move-result-object v0

    const-string v1, "pass_complete_verify"

    const-string v2, "http://wappass.baidu.com/v2/?bindingret"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/core/DebugConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_47

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity$a;->a:Lcom/baidu/paysdk/ui/PassNormalizeActivity;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->a:Landroid/webkit/WebView;

    const-string v1, "javascript:window.sapi_obj.authorized_response(document.body.innerHTML);"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_47
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;)V

    if-eqz p2, :cond_45

    const-string v0, "http://www.baidu.com/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity$a;->a:Lcom/baidu/paysdk/ui/PassNormalizeActivity;

    invoke-static {v0}, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->a(Lcom/baidu/paysdk/ui/PassNormalizeActivity;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity$a;->a:Lcom/baidu/paysdk/ui/PassNormalizeActivity;

    iget v1, v1, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->c:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/core/utils/PassUtil;->backNormalized(Landroid/content/Context;ILjava/util/Map;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity$a;->a:Lcom/baidu/paysdk/ui/PassNormalizeActivity;

    invoke-static {v0}, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->a(Lcom/baidu/paysdk/ui/PassNormalizeActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "normalizeVerify"

    const-string v2, "cancel"

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity$a;->a:Lcom/baidu/paysdk/ui/PassNormalizeActivity;

    invoke-virtual {v0}, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->finish()V

    :goto_44
    return-void

    :cond_45
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity$a;->a:Lcom/baidu/paysdk/ui/PassNormalizeActivity;

    invoke-static {v0}, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->a(Lcom/baidu/paysdk/ui/PassNormalizeActivity;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity$a;->a:Lcom/baidu/paysdk/ui/PassNormalizeActivity;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity$a;->a:Lcom/baidu/paysdk/ui/PassNormalizeActivity;

    invoke-static {v2}, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->a(Lcom/baidu/paysdk/ui/PassNormalizeActivity;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "ebpay_loading"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    :cond_5f
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_44
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 6

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity$a;->a:Lcom/baidu/paysdk/ui/PassNormalizeActivity;

    invoke-virtual {v0}, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/DebugConfig;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/core/DebugConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/DebugConfig;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "RD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_1e
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    :goto_21
    return-void

    :cond_22
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    goto :goto_21
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    if-eqz p2, :cond_3e

    const-string v0, "sms"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "tel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "bdscenter"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_1a
    :try_start_1a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity$a;->a:Lcom/baidu/paysdk/ui/PassNormalizeActivity;

    invoke-static {v1}, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->a(Lcom/baidu/paysdk/ui/PassNormalizeActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_33} :catch_35

    :goto_33
    const/4 v0, 0x1

    :goto_34
    return v0

    :catch_35
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;)V

    goto :goto_33

    :cond_3e
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_34
.end method
