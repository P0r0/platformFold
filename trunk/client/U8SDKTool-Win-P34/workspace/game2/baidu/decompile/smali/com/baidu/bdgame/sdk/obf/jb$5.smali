.class final Lcom/baidu/bdgame/sdk/obf/jb$5;
.super Lcom/baidu/sapi2/callback/GetDynamicPwdCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/jb;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/jb;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/jb;)V
    .registers 2

    .prologue
    .line 153
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/jb$5;->a:Lcom/baidu/bdgame/sdk/obf/jb;

    invoke-direct {p0}, Lcom/baidu/sapi2/callback/GetDynamicPwdCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/sapi2/result/GetDynamicPwdResult;)V
    .registers 5

    .prologue
    .line 157
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb$5;->a:Lcom/baidu/bdgame/sdk/obf/jb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jb;->c(Lcom/baidu/bdgame/sdk/obf/jb;)Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jb$5;->a:Lcom/baidu/bdgame/sdk/obf/jb;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/jb;->c(Lcom/baidu/bdgame/sdk/obf/jb;)Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bdp_account_phonereg_sent_verifycode"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;I)V

    .line 158
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb$5;->a:Lcom/baidu/bdgame/sdk/obf/jb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jb;->d(Lcom/baidu/bdgame/sdk/obf/jb;)Lcom/baidu/bdgame/sdk/obf/ld;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ld;->n()V

    .line 159
    return-void
.end method

.method public b(Lcom/baidu/sapi2/result/GetDynamicPwdResult;)V
    .registers 5

    .prologue
    .line 171
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/baidu/sapi2/result/GetDynamicPwdResult;->getResultCode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_12

    .line 172
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb$5;->a:Lcom/baidu/bdgame/sdk/obf/jb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jb;->d(Lcom/baidu/bdgame/sdk/obf/jb;)Lcom/baidu/bdgame/sdk/obf/ld;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ld;->o()V

    .line 174
    :cond_12
    if-eqz p1, :cond_4f

    .line 175
    const-string v0, "BaiduPlatformSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pass send valid verifycode failed. result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/sapi2/result/GetDynamicPwdResult;->getResultCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/sapi2/result/GetDynamicPwdResult;->getResultMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb$5;->a:Lcom/baidu/bdgame/sdk/obf/jb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jb;->d(Lcom/baidu/bdgame/sdk/obf/jb;)Lcom/baidu/bdgame/sdk/obf/ld;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ld;->k()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/sapi2/result/GetDynamicPwdResult;->getResultMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 178
    :cond_4f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb$5;->a:Lcom/baidu/bdgame/sdk/obf/jb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jb;->d(Lcom/baidu/bdgame/sdk/obf/jb;)Lcom/baidu/bdgame/sdk/obf/ld;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ld;->g()V

    .line 179
    return-void
.end method

.method public c(Lcom/baidu/sapi2/result/GetDynamicPwdResult;)V
    .registers 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb$5;->a:Lcom/baidu/bdgame/sdk/obf/jb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jb;->d(Lcom/baidu/bdgame/sdk/obf/jb;)Lcom/baidu/bdgame/sdk/obf/ld;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ld;->o()V

    .line 184
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb$5;->a:Lcom/baidu/bdgame/sdk/obf/jb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jb;->d(Lcom/baidu/bdgame/sdk/obf/jb;)Lcom/baidu/bdgame/sdk/obf/ld;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ld;->g()V

    .line 185
    return-void
.end method

.method public synthetic onCaptchaRequired(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 153
    check-cast p1, Lcom/baidu/sapi2/result/GetDynamicPwdResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/jb$5;->c(Lcom/baidu/sapi2/result/GetDynamicPwdResult;)V

    return-void
.end method

.method public synthetic onFailure(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 153
    check-cast p1, Lcom/baidu/sapi2/result/GetDynamicPwdResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/jb$5;->b(Lcom/baidu/sapi2/result/GetDynamicPwdResult;)V

    return-void
.end method

.method public onFinish()V
    .registers 1

    .prologue
    .line 167
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb$5;->a:Lcom/baidu/bdgame/sdk/obf/jb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jb;->d(Lcom/baidu/bdgame/sdk/obf/jb;)Lcom/baidu/bdgame/sdk/obf/ld;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ld;->f()V

    .line 164
    return-void
.end method

.method public synthetic onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 153
    check-cast p1, Lcom/baidu/sapi2/result/GetDynamicPwdResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/jb$5;->a(Lcom/baidu/sapi2/result/GetDynamicPwdResult;)V

    return-void
.end method
