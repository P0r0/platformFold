.class Lcom/baidu/sapi2/SapiWebView$2$3$1;
.super Lcom/baidu/sapi2/callback/GetUserInfoCallback;
.source "SapiWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/SapiWebView$2$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/baidu/sapi2/SapiWebView$2$3;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView$2$3;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 420
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$2$3$1;->b:Lcom/baidu/sapi2/SapiWebView$2$3;

    iput-object p2, p0, Lcom/baidu/sapi2/SapiWebView$2$3$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/sapi2/callback/GetUserInfoCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBdussExpired(Lcom/baidu/sapi2/result/GetUserInfoResult;)V
    .registers 3
    .param p1, "result"    # Lcom/baidu/sapi2/result/GetUserInfoResult;

    .prologue
    .line 423
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$2$3$1;->b:Lcom/baidu/sapi2/SapiWebView$2$3;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiWebView$2$3;->a:Lcom/baidu/sapi2/SapiWebView$2;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->h(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$ChangePwdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/sapi2/SapiWebView$ChangePwdCallback;->onSuccess()V

    .line 424
    return-void
.end method

.method public bridge synthetic onBdussExpired(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 420
    check-cast p1, Lcom/baidu/sapi2/result/GetUserInfoResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/sapi2/SapiWebView$2$3$1;->onBdussExpired(Lcom/baidu/sapi2/result/GetUserInfoResult;)V

    return-void
.end method

.method public onFailure(Lcom/baidu/sapi2/result/GetUserInfoResult;)V
    .registers 3
    .param p1, "result"    # Lcom/baidu/sapi2/result/GetUserInfoResult;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$2$3$1;->b:Lcom/baidu/sapi2/SapiWebView$2$3;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiWebView$2$3;->a:Lcom/baidu/sapi2/SapiWebView$2;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->h(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$ChangePwdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/sapi2/SapiWebView$ChangePwdCallback;->onSuccess()V

    .line 441
    return-void
.end method

.method public bridge synthetic onFailure(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 420
    check-cast p1, Lcom/baidu/sapi2/result/GetUserInfoResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/sapi2/SapiWebView$2$3$1;->onFailure(Lcom/baidu/sapi2/result/GetUserInfoResult;)V

    return-void
.end method

.method public onFinish()V
    .registers 3

    .prologue
    .line 455
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$2$3$1;->b:Lcom/baidu/sapi2/SapiWebView$2$3;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiWebView$2$3;->a:Lcom/baidu/sapi2/SapiWebView$2;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->i(Lcom/baidu/sapi2/SapiWebView;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 457
    :try_start_c
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$2$3$1;->b:Lcom/baidu/sapi2/SapiWebView$2$3;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiWebView$2$3;->a:Lcom/baidu/sapi2/SapiWebView$2;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->i(Lcom/baidu/sapi2/SapiWebView;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_19} :catch_1a

    .line 462
    :cond_19
    :goto_19
    return-void

    .line 458
    :catch_1a
    move-exception v0

    .line 459
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_19
.end method

.method public onStart()V
    .registers 7

    .prologue
    .line 446
    :try_start_0
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$2$3$1;->b:Lcom/baidu/sapi2/SapiWebView$2$3;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiWebView$2$3;->a:Lcom/baidu/sapi2/SapiWebView$2;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView$2$3$1;->b:Lcom/baidu/sapi2/SapiWebView$2$3;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiWebView$2$3;->a:Lcom/baidu/sapi2/SapiWebView$2;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "\u52a0\u8f7d\u4e2d..."

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/sapi2/SapiWebView;->a(Lcom/baidu/sapi2/SapiWebView;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 451
    :goto_1b
    return-void

    .line 448
    :catch_1c
    move-exception v0

    .line 449
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_1b
.end method

.method public onSuccess(Lcom/baidu/sapi2/result/GetUserInfoResult;)V
    .registers 5
    .param p1, "result"    # Lcom/baidu/sapi2/result/GetUserInfoResult;

    .prologue
    .line 428
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountManager;->getSession()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v0

    .line 430
    .local v0, "session":Lcom/baidu/sapi2/SapiAccount;
    if-eqz v0, :cond_18

    iget-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/sapi2/result/GetUserInfoResult;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 431
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$2$3$1;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    .line 433
    :cond_18
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/SapiAccountManager;->validate(Lcom/baidu/sapi2/SapiAccount;)Z

    .line 435
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$2$3$1;->b:Lcom/baidu/sapi2/SapiWebView$2$3;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiWebView$2$3;->a:Lcom/baidu/sapi2/SapiWebView$2;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->h(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$ChangePwdCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/baidu/sapi2/SapiWebView$ChangePwdCallback;->onSuccess()V

    .line 436
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 420
    check-cast p1, Lcom/baidu/sapi2/result/GetUserInfoResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/sapi2/SapiWebView$2$3$1;->onSuccess(Lcom/baidu/sapi2/result/GetUserInfoResult;)V

    return-void
.end method
