.class Lcom/baidu/sapi2/SapiWebView$2$3;
.super Ljava/lang/Object;
.source "SapiWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/SapiWebView$2;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiWebView$2;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView$2;)V
    .registers 2

    .prologue
    .line 413
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$2$3;->a:Lcom/baidu/sapi2/SapiWebView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 416
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$2$3;->a:Lcom/baidu/sapi2/SapiWebView$2;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiWebView;->stopLoading()V

    .line 417
    invoke-static {}, Lcom/baidu/sapi2/utils/SapiUtils;->getCookieBduss()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "bduss":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 419
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v1

    new-instance v2, Lcom/baidu/sapi2/SapiWebView$2$3$1;

    invoke-direct {v2, p0, v0}, Lcom/baidu/sapi2/SapiWebView$2$3$1;-><init>(Lcom/baidu/sapi2/SapiWebView$2$3;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lcom/baidu/sapi2/SapiAccountService;->getUserInfo(Lcom/baidu/sapi2/callback/GetUserInfoCallback;Ljava/lang/String;)V

    .line 467
    :goto_21
    return-void

    .line 465
    :cond_22
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$2$3;->a:Lcom/baidu/sapi2/SapiWebView$2;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->h(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$ChangePwdCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/baidu/sapi2/SapiWebView$ChangePwdCallback;->onSuccess()V

    goto :goto_21
.end method
