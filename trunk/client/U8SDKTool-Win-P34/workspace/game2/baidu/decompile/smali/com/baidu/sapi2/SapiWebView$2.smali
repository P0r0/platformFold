.class Lcom/baidu/sapi2/SapiWebView$2;
.super Landroid/webkit/WebViewClient;
.source "SapiWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/SapiWebView;->b()V
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
    .line 341
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 494
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 496
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x7

    if-le v3, v4, :cond_12

    .line 497
    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 500
    :cond_12
    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    const-string v4, "javascript:(function(){if(window.Pass&&Pass.client&&Pass.client.net){Pass.client.net()}}())"

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    .line 502
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiAccountService;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 503
    .local v0, "uriAfterAuth":Landroid/net/Uri;
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiAccountService;->m()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 504
    .local v1, "uriFinishBind":Landroid/net/Uri;
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiAccountService;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 506
    .local v2, "uriSSOFinish":Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 510
    :cond_a6
    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    const-string v4, "javascript:prompt(JSON.stringify({\'action\':{\'name\': \'authorized_response\', \'params\': [document.getElementsByTagName(\'html\')[0].innerHTML, \'1\', \'prompt_on_cancel\']}}));"

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    .line 514
    :cond_ad
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiAccountService;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 515
    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    const-string v4, "javascript:prompt(JSON.stringify({\'action\':{\'name\': \'authorized_response\', \'params\': [document.body.innerHTML, \'0\', \'prompt_on_cancel\']}}));"

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    .line 519
    :cond_c6
    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v3}, Lcom/baidu/sapi2/SapiWebView;->b(Lcom/baidu/sapi2/SapiWebView;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v4}, Lcom/baidu/sapi2/SapiWebView;->e(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$TimeoutTask;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 520
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 12
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 379
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 382
    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v3}, Lcom/baidu/sapi2/SapiWebView;->e(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$TimeoutTask;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/baidu/sapi2/SapiWebView$TimeoutTask;->setUrl(Ljava/lang/String;)V

    .line 383
    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v3}, Lcom/baidu/sapi2/SapiWebView;->b(Lcom/baidu/sapi2/SapiWebView;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v4}, Lcom/baidu/sapi2/SapiWebView;->e(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$TimeoutTask;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v5}, Lcom/baidu/sapi2/SapiWebView;->f(Lcom/baidu/sapi2/SapiWebView;)J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 384
    if-eqz p2, :cond_cf

    .line 385
    const-string v3, "__wp-action=auth-widget"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 386
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 387
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, "authsid"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, "authSid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4d

    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v3}, Lcom/baidu/sapi2/SapiWebView;->g(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$AuthWidgetCallback;

    move-result-object v3

    if-eqz v3, :cond_4d

    .line 389
    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    new-instance v4, Lcom/baidu/sapi2/SapiWebView$2$1;

    invoke-direct {v4, p0, v1}, Lcom/baidu/sapi2/SapiWebView$2$1;-><init>(Lcom/baidu/sapi2/SapiWebView$2;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    .line 397
    .end local v1    # "authSid":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_4d
    const-string v3, "forget-pwd"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5d

    const-string v3, "modify-pwd"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 398
    :cond_5d
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 399
    .restart local v2    # "uri":Landroid/net/Uri;
    const-string v3, "__wp-action"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "action":Ljava/lang/String;
    const-string v3, "forget-pwd"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 401
    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v3}, Lcom/baidu/sapi2/SapiWebView;->h(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$ChangePwdCallback;

    move-result-object v3

    if-eqz v3, :cond_81

    .line 402
    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    new-instance v4, Lcom/baidu/sapi2/SapiWebView$2$2;

    invoke-direct {v4, p0}, Lcom/baidu/sapi2/SapiWebView$2$2;-><init>(Lcom/baidu/sapi2/SapiWebView$2;)V

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    .line 411
    :cond_81
    const-string v3, "modify-pwd"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 412
    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v3}, Lcom/baidu/sapi2/SapiWebView;->h(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$ChangePwdCallback;

    move-result-object v3

    if-eqz v3, :cond_9b

    .line 413
    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    new-instance v4, Lcom/baidu/sapi2/SapiWebView$2$3;

    invoke-direct {v4, p0}, Lcom/baidu/sapi2/SapiWebView$2$3;-><init>(Lcom/baidu/sapi2/SapiWebView$2;)V

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    .line 472
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_9b
    const-string v3, "__wp-action=renren-offline"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 473
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 474
    .restart local v2    # "uri":Landroid/net/Uri;
    const-string v3, "renren-offline"

    const-string v4, "__wp-action"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 475
    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v3}, Lcom/baidu/sapi2/SapiWebView;->j(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/shell/response/SocialResponse;

    move-result-object v3

    if-nez v3, :cond_d0

    .line 476
    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v3}, Lcom/baidu/sapi2/SapiWebView;->k(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

    move-result-object v3

    if-eqz v3, :cond_cf

    .line 477
    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    new-instance v4, Lcom/baidu/sapi2/SapiWebView$2$4;

    invoke-direct {v4, p0}, Lcom/baidu/sapi2/SapiWebView$2$4;-><init>(Lcom/baidu/sapi2/SapiWebView$2;)V

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    .line 490
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_cf
    :goto_cf
    return-void

    .line 485
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_d0
    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    iget-object v4, p0, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v4}, Lcom/baidu/sapi2/SapiWebView;->j(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/shell/response/SocialResponse;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/sapi2/SapiWebView;->a(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/shell/response/SocialResponse;)V

    goto :goto_cf
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 11
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 344
    if-eqz p2, :cond_cd

    .line 345
    const-string v4, "sms"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    const-string v4, "tel"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    const-string v4, "bdscenter"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 349
    :cond_1b
    :try_start_1b
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 350
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 351
    iget-object v4, p0, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v4}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_34} :catch_36

    .end local v2    # "intent":Landroid/content/Intent;
    :goto_34
    move v4, v5

    .line 374
    :goto_35
    return v4

    .line 352
    :catch_36
    move-exception v1

    .line 353
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1, v4, v6}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_34

    .line 358
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_42
    const-string v4, "wtloginmqq"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    move v4, v5

    .line 359
    goto :goto_35

    .line 362
    :cond_4c
    iget-object v4, p0, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v4}, Lcom/baidu/sapi2/SapiWebView;->c(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/callback/SapiCallback;

    move-result-object v4

    if-eqz v4, :cond_cd

    .line 363
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 364
    .local v3, "uri":Landroid/net/Uri;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "://"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/net/Uri;->getPort()I

    move-result v4

    const/4 v7, -0x1

    if-ne v4, v7, :cond_b5

    const-string v4, ""

    :goto_7c
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "domain":Ljava/lang/String;
    iget-object v4, p0, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v4}, Lcom/baidu/sapi2/SapiWebView;->d(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v4

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v4}, Lcom/baidu/sapi2/utils/enums/Domain;->getWap()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cd

    const-string v4, "/wp/login/proxy"

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cd

    .line 368
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v4

    iget-object v6, p0, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v6}, Lcom/baidu/sapi2/SapiWebView;->c(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/callback/SapiCallback;

    move-result-object v6

    invoke-virtual {v4, v6, p2}, Lcom/baidu/sapi2/SapiAccountService;->a(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;)V

    move v4, v5

    .line 370
    goto :goto_35

    .line 364
    .end local v0    # "domain":Ljava/lang/String;
    :cond_b5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->getPort()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_7c

    .line 374
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_cd
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v4

    goto/16 :goto_35
.end method
