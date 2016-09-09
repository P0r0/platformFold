.class final Lcom/baidu/bdgame/sdk/obf/nn$18;
.super Lcom/baidu/sapi2/callback/QuickUserRegCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/nn;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/nn;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/nn;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 334
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/nn$18;->b:Lcom/baidu/bdgame/sdk/obf/nn;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/nn$18;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/sapi2/callback/QuickUserRegCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/sapi2/result/QuickUserRegResult;)V
    .registers 4

    .prologue
    .line 338
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "pass quickUserReg captcha required"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn$18;->b:Lcom/baidu/bdgame/sdk/obf/nn;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/nn;->b(Lcom/baidu/bdgame/sdk/obf/nn;Z)V

    .line 341
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn$18;->b:Lcom/baidu/bdgame/sdk/obf/nn;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/nn;->j(Lcom/baidu/bdgame/sdk/obf/nn;)V

    .line 342
    return-void
.end method

.method public b(Lcom/baidu/sapi2/result/QuickUserRegResult;)V
    .registers 6

    .prologue
    .line 347
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "pass quickUserReg success"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getSession()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v0

    .line 350
    if-eqz v0, :cond_52

    iget-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 351
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nn$18;->b:Lcom/baidu/bdgame/sdk/obf/nn;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/nn;->k()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/nn$18;->b:Lcom/baidu/bdgame/sdk/obf/nn;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/nn;->k()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bdp_passport_register"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;I)V

    .line 352
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nn$18;->b:Lcom/baidu/bdgame/sdk/obf/nn;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/nn$18;->b:Lcom/baidu/bdgame/sdk/obf/nn;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/nn;->k()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bdp_dialog_loading_login"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/nn;->c(I)V

    .line 353
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nn$18;->b:Lcom/baidu/bdgame/sdk/obf/nn;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/nn;->k()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/nn$18;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    new-instance v3, Lcom/baidu/bdgame/sdk/obf/nn$18$1;

    invoke-direct {v3, p0}, Lcom/baidu/bdgame/sdk/obf/nn$18$1;-><init>(Lcom/baidu/bdgame/sdk/obf/nn$18;)V

    invoke-static {v1, v2, v0, v3}, Lcom/baidu/bdgame/sdk/obf/ca;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/bz;

    .line 369
    :goto_51
    return-void

    .line 367
    :cond_52
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn$18;->b:Lcom/baidu/bdgame/sdk/obf/nn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/nn;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nn$18;->b:Lcom/baidu/bdgame/sdk/obf/nn;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/nn;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_error_fail_register"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;I)V

    goto :goto_51
.end method

.method public c(Lcom/baidu/sapi2/result/QuickUserRegResult;)V
    .registers 5

    .prologue
    .line 391
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "pass quickUserReg fail"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    if-eqz p1, :cond_26

    .line 394
    invoke-virtual {p1}, Lcom/baidu/sapi2/result/QuickUserRegResult;->getResultMsg()Ljava/lang/String;

    move-result-object v0

    .line 398
    :goto_d
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nn$18;->b:Lcom/baidu/bdgame/sdk/obf/nn;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/nn;->k()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn$18;->b:Lcom/baidu/bdgame/sdk/obf/nn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/nn;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ci;->b(I)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 401
    return-void

    .line 396
    :cond_26
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn$18;->b:Lcom/baidu/bdgame/sdk/obf/nn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/nn;->l()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nn$18;->b:Lcom/baidu/bdgame/sdk/obf/nn;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/nn;->l()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bdp_error_fail_register"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public synthetic onCaptchaRequired(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 334
    check-cast p1, Lcom/baidu/sapi2/result/QuickUserRegResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/nn$18;->a(Lcom/baidu/sapi2/result/QuickUserRegResult;)V

    return-void
.end method

.method public synthetic onFailure(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 334
    check-cast p1, Lcom/baidu/sapi2/result/QuickUserRegResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/nn$18;->c(Lcom/baidu/sapi2/result/QuickUserRegResult;)V

    return-void
.end method

.method public onFinish()V
    .registers 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn$18;->b:Lcom/baidu/bdgame/sdk/obf/nn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/nn;->m()V

    .line 411
    return-void
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 405
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn$18;->b:Lcom/baidu/bdgame/sdk/obf/nn;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nn$18;->b:Lcom/baidu/bdgame/sdk/obf/nn;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/nn;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_dialog_loading_register"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/nn;->c(I)V

    .line 406
    return-void
.end method

.method public synthetic onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 334
    check-cast p1, Lcom/baidu/sapi2/result/QuickUserRegResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/nn$18;->b(Lcom/baidu/sapi2/result/QuickUserRegResult;)V

    return-void
.end method

.method public onUsernameExist(Lcom/baidu/sapi2/result/QuickUserRegResult;)V
    .registers 5
    .param p1, "result"    # Lcom/baidu/sapi2/result/QuickUserRegResult;

    .prologue
    .line 374
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "pass quickUserReg username exist"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn$18;->b:Lcom/baidu/bdgame/sdk/obf/nn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/nn;->l()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lcom/baidu/sapi2/result/QuickUserRegResult;->sugUsernameList:Ljava/util/List;

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/nn$18$2;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/nn$18$2;-><init>(Lcom/baidu/bdgame/sdk/obf/nn$18;)V

    invoke-static {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bt;->a(Landroid/content/Context;Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/bt$a;)V

    .line 386
    return-void
.end method
