.class final Lcom/baidu/bdgame/sdk/obf/jb$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/sapi2/callback/SapiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/jb;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/sapi2/callback/SapiCallback",
        "<",
        "Lcom/baidu/sapi2/result/PhoneRegResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/jb;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/jb;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 121
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/jb$4;->b:Lcom/baidu/bdgame/sdk/obf/jb;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/jb$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/sapi2/result/PhoneRegResult;)V
    .registers 4

    .prologue
    .line 125
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "pass login success"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb$4;->b:Lcom/baidu/bdgame/sdk/obf/jb;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jb$4;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jb;->c(Lcom/baidu/bdgame/sdk/obf/jb;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public b(Lcom/baidu/sapi2/result/PhoneRegResult;)V
    .registers 5

    .prologue
    .line 141
    const-string v0, "BaiduPlatformSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pass phone reg failed. result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/sapi2/result/PhoneRegResult;->getResultCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/sapi2/result/PhoneRegResult;->getResultMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb$4;->b:Lcom/baidu/bdgame/sdk/obf/jb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jb;->b(Lcom/baidu/bdgame/sdk/obf/jb;)Lcom/baidu/bdgame/sdk/obf/me;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/me;->k()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/sapi2/result/PhoneRegResult;->getResultMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public synthetic onFailure(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 121
    check-cast p1, Lcom/baidu/sapi2/result/PhoneRegResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/jb$4;->b(Lcom/baidu/sapi2/result/PhoneRegResult;)V

    return-void
.end method

.method public onFinish()V
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb$4;->b:Lcom/baidu/bdgame/sdk/obf/jb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jb;->b(Lcom/baidu/bdgame/sdk/obf/jb;)Lcom/baidu/bdgame/sdk/obf/me;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/me;->m()V

    .line 137
    return-void
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb$4;->b:Lcom/baidu/bdgame/sdk/obf/jb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jb;->b(Lcom/baidu/bdgame/sdk/obf/jb;)Lcom/baidu/bdgame/sdk/obf/me;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jb$4;->b:Lcom/baidu/bdgame/sdk/obf/jb;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/jb;->b(Lcom/baidu/bdgame/sdk/obf/jb;)Lcom/baidu/bdgame/sdk/obf/me;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/me;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_dialog_loading_account_create"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/me;->c(I)V

    .line 132
    return-void
.end method

.method public synthetic onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 121
    check-cast p1, Lcom/baidu/sapi2/result/PhoneRegResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/jb$4;->a(Lcom/baidu/sapi2/result/PhoneRegResult;)V

    return-void
.end method
