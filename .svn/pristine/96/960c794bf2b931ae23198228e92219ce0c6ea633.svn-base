.class Lcom/baidu/sapi2/SapiWebView$23;
.super Ljava/lang/Object;
.source "SapiWebView.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/SapiWebView;->loadQQSSOLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tauth/Tencent;

.field final synthetic b:Lcom/baidu/sapi2/SapiWebView;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView;Lcom/tencent/tauth/Tencent;)V
    .registers 3

    .prologue
    .line 2395
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$23;->b:Lcom/baidu/sapi2/SapiWebView;

    iput-object p2, p0, Lcom/baidu/sapi2/SapiWebView$23;->a:Lcom/tencent/tauth/Tencent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .prologue
    .line 2432
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$23;->b:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiWebView;->finish()V

    .line 2433
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 11
    .param p1, "response"    # Ljava/lang/Object;

    .prologue
    .line 2398
    if-nez p1, :cond_8

    .line 2399
    iget-object v6, p0, Lcom/baidu/sapi2/SapiWebView$23;->b:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v6}, Lcom/baidu/sapi2/SapiWebView;->finish()V

    .line 2422
    :goto_7
    return-void

    :cond_8
    move-object v2, p1

    .line 2402
    check-cast v2, Lorg/json/JSONObject;

    .line 2403
    .local v2, "jsonResponse":Lorg/json/JSONObject;
    if-eqz v2, :cond_19

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-nez v6, :cond_19

    .line 2404
    iget-object v6, p0, Lcom/baidu/sapi2/SapiWebView$23;->b:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v6}, Lcom/baidu/sapi2/SapiWebView;->finish()V

    goto :goto_7

    .line 2408
    :cond_19
    :try_start_19
    const-string v6, "access_token"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2409
    .local v4, "token":Ljava/lang/String;
    const-string v6, "expires_in"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2410
    .local v1, "expires":Ljava/lang/String;
    const-string v6, "openid"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2411
    .local v3, "openId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_47

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_47

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_47

    .line 2413
    iget-object v6, p0, Lcom/baidu/sapi2/SapiWebView$23;->a:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v6, v4, v1}, Lcom/tencent/tauth/Tencent;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 2414
    iget-object v6, p0, Lcom/baidu/sapi2/SapiWebView$23;->a:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v6, v3}, Lcom/tencent/tauth/Tencent;->setOpenId(Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_47} :catch_65

    .line 2419
    .end local v1    # "expires":Ljava/lang/String;
    .end local v3    # "openId":Ljava/lang/String;
    .end local v4    # "token":Ljava/lang/String;
    :cond_47
    :goto_47
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v6

    iget-object v7, p0, Lcom/baidu/sapi2/SapiWebView$23;->a:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v7}, Lcom/tencent/tauth/Tencent;->getAccessToken()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/baidu/sapi2/SapiWebView$23;->a:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v8}, Lcom/tencent/tauth/Tencent;->getOpenId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/baidu/sapi2/SapiAccountService;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2421
    .local v5, "url":Ljava/lang/String;
    iget-object v6, p0, Lcom/baidu/sapi2/SapiWebView$23;->b:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v6, v5}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_7

    .line 2416
    .end local v5    # "url":Ljava/lang/String;
    :catch_65
    move-exception v0

    .line 2417
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_47
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .registers 5
    .param p1, "uiError"    # Lcom/tencent/tauth/UiError;

    .prologue
    .line 2426
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$23;->b:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiWebView;->finish()V

    .line 2427
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$23;->b:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2428
    return-void
.end method
