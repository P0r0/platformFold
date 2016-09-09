.class final Lcom/baidu/bdgame/sdk/obf/jb$6;
.super Lcom/baidu/sapi2/callback/DynamicPwdLoginCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/jb;->c(Ljava/lang/String;Ljava/lang/String;)V
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
    .line 198
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/jb$6;->b:Lcom/baidu/bdgame/sdk/obf/jb;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/jb$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/sapi2/callback/DynamicPwdLoginCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/sapi2/result/DynamicPwdLoginResult;)V
    .registers 4

    .prologue
    .line 202
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb$6;->b:Lcom/baidu/bdgame/sdk/obf/jb;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jb$6;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jb;->c(Lcom/baidu/bdgame/sdk/obf/jb;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public b(Lcom/baidu/sapi2/result/DynamicPwdLoginResult;)V
    .registers 5

    .prologue
    .line 217
    const-string v0, "BaiduPlatformSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pass sms login failed. result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/sapi2/result/DynamicPwdLoginResult;->getResultCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/sapi2/result/DynamicPwdLoginResult;->getResultMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb$6;->b:Lcom/baidu/bdgame/sdk/obf/jb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jb;->d(Lcom/baidu/bdgame/sdk/obf/jb;)Lcom/baidu/bdgame/sdk/obf/ld;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ld;->k()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/sapi2/result/DynamicPwdLoginResult;->getResultMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public synthetic onFailure(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 198
    check-cast p1, Lcom/baidu/sapi2/result/DynamicPwdLoginResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/jb$6;->b(Lcom/baidu/sapi2/result/DynamicPwdLoginResult;)V

    return-void
.end method

.method public onFinish()V
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb$6;->b:Lcom/baidu/bdgame/sdk/obf/jb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jb;->d(Lcom/baidu/bdgame/sdk/obf/jb;)Lcom/baidu/bdgame/sdk/obf/ld;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ld;->m()V

    .line 213
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb$6;->b:Lcom/baidu/bdgame/sdk/obf/jb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jb;->d(Lcom/baidu/bdgame/sdk/obf/jb;)Lcom/baidu/bdgame/sdk/obf/ld;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ld;->b(Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public synthetic onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 198
    check-cast p1, Lcom/baidu/sapi2/result/DynamicPwdLoginResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/jb$6;->a(Lcom/baidu/sapi2/result/DynamicPwdLoginResult;)V

    return-void
.end method
