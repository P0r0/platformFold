.class final Lcom/baidu/bdgame/sdk/obf/jb$3;
.super Lcom/baidu/sapi2/callback/GetRegCodeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/jb;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/jb;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/jb;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 78
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/jb$3;->b:Lcom/baidu/bdgame/sdk/obf/jb;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/jb$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/sapi2/callback/GetRegCodeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/sapi2/result/GetRegCodeResult;)V
    .registers 5

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb$3;->b:Lcom/baidu/bdgame/sdk/obf/jb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jb;->c(Lcom/baidu/bdgame/sdk/obf/jb;)Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jb$3;->b:Lcom/baidu/bdgame/sdk/obf/jb;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/jb;->c(Lcom/baidu/bdgame/sdk/obf/jb;)Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bdp_account_phonereg_sent_verifycode"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;I)V

    .line 83
    return-void
.end method

.method public b(Lcom/baidu/sapi2/result/GetRegCodeResult;)V
    .registers 5

    .prologue
    .line 95
    const-string v0, "BaiduPlatformSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pass send verifycode failed. result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/sapi2/result/GetRegCodeResult;->getResultCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/sapi2/result/GetRegCodeResult;->getResultMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb$3;->b:Lcom/baidu/bdgame/sdk/obf/jb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jb;->c(Lcom/baidu/bdgame/sdk/obf/jb;)Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/sapi2/result/GetRegCodeResult;->getResultMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb$3;->b:Lcom/baidu/bdgame/sdk/obf/jb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jb;->b(Lcom/baidu/bdgame/sdk/obf/jb;)Lcom/baidu/bdgame/sdk/obf/me;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/me;->g()V

    .line 98
    return-void
.end method

.method public synthetic onFailure(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 78
    check-cast p1, Lcom/baidu/sapi2/result/GetRegCodeResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/jb$3;->b(Lcom/baidu/sapi2/result/GetRegCodeResult;)V

    return-void
.end method

.method public onFinish()V
    .registers 1

    .prologue
    .line 91
    return-void
.end method

.method public onPhoneNumberExist(Lcom/baidu/sapi2/result/GetRegCodeResult;)V
    .registers 5
    .param p1, "arg0"    # Lcom/baidu/sapi2/result/GetRegCodeResult;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb$3;->b:Lcom/baidu/bdgame/sdk/obf/jb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jb;->c(Lcom/baidu/bdgame/sdk/obf/jb;)Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jb$3;->b:Lcom/baidu/bdgame/sdk/obf/jb;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/jb;->c(Lcom/baidu/bdgame/sdk/obf/jb;)Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bdp_account_phonereg_phone_exist_toast"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;I)V

    .line 103
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb$3;->b:Lcom/baidu/bdgame/sdk/obf/jb;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jb$3;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jb;->b(Lcom/baidu/bdgame/sdk/obf/jb;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb$3;->b:Lcom/baidu/bdgame/sdk/obf/jb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jb;->b(Lcom/baidu/bdgame/sdk/obf/jb;)Lcom/baidu/bdgame/sdk/obf/me;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/me;->f()V

    .line 88
    return-void
.end method

.method public synthetic onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 78
    check-cast p1, Lcom/baidu/sapi2/result/GetRegCodeResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/jb$3;->a(Lcom/baidu/sapi2/result/GetRegCodeResult;)V

    return-void
.end method
