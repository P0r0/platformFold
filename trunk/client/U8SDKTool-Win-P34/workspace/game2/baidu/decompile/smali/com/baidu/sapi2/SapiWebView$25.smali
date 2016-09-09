.class Lcom/baidu/sapi2/SapiWebView$25;
.super Ljava/lang/Object;
.source "SapiWebView.java"

# interfaces
.implements Lcom/huawei/hwid/openapi/out/IHwIDCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/SapiWebView;->loadHuaWeiSSOLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiWebView;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView;)V
    .registers 2

    .prologue
    .line 2585
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$25;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserInfo(Ljava/util/HashMap;)V
    .registers 10
    .param p1, "userInfo"    # Ljava/util/HashMap;

    .prologue
    .line 2589
    :try_start_0
    const-string v4, "accesstoken"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2590
    .local v0, "accessToken":Ljava/lang/String;
    const-string v4, "userID"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2592
    .local v2, "uid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 2593
    :cond_1c
    iget-object v4, p0, Lcom/baidu/sapi2/SapiWebView$25;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v4}, Lcom/baidu/sapi2/SapiWebView;->J(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$HuaweiHandler;

    move-result-object v4

    if-nez v4, :cond_30

    .line 2594
    iget-object v4, p0, Lcom/baidu/sapi2/SapiWebView$25;->a:Lcom/baidu/sapi2/SapiWebView;

    new-instance v5, Lcom/baidu/sapi2/SapiWebView$DefaultHuaweiHandler;

    iget-object v6, p0, Lcom/baidu/sapi2/SapiWebView$25;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-direct {v5, v6}, Lcom/baidu/sapi2/SapiWebView$DefaultHuaweiHandler;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-static {v4, v5}, Lcom/baidu/sapi2/SapiWebView;->a(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/SapiWebView$HuaweiHandler;)Lcom/baidu/sapi2/SapiWebView$HuaweiHandler;

    .line 2597
    :cond_30
    iget-object v4, p0, Lcom/baidu/sapi2/SapiWebView$25;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v4}, Lcom/baidu/sapi2/SapiWebView;->J(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$HuaweiHandler;

    move-result-object v4

    invoke-interface {v4}, Lcom/baidu/sapi2/SapiWebView$HuaweiHandler;->handleHuaweiLoginFailure()V

    .line 2609
    .end local v0    # "accessToken":Ljava/lang/String;
    .end local v2    # "uid":Ljava/lang/String;
    :goto_39
    return-void

    .line 2599
    .restart local v0    # "accessToken":Ljava/lang/String;
    .restart local v2    # "uid":Ljava/lang/String;
    :cond_3a
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v4

    sget-object v5, Lcom/baidu/sapi2/utils/enums/SocialType;->HUAWEI:Lcom/baidu/sapi2/utils/enums/SocialType;

    const-string v6, "UTF-8"

    invoke-static {v0, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v2, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/baidu/sapi2/SapiAccountService;->a(Lcom/baidu/sapi2/utils/enums/SocialType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2603
    .local v3, "url":Ljava/lang/String;
    iget-object v4, p0, Lcom/baidu/sapi2/SapiWebView$25;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v4, v3}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_59} :catch_5a

    goto :goto_39

    .line 2605
    .end local v0    # "accessToken":Ljava/lang/String;
    .end local v2    # "uid":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :catch_5a
    move-exception v1

    .line 2606
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_39
.end method
