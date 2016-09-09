.class final Lcom/baidu/bdgame/sdk/obf/z$2$1;
.super Lcom/baidu/sapi2/callback/GetUserInfoCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/z$2;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/z$2;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/z$2;)V
    .registers 3

    .prologue
    .line 147
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/z$2$1;->a:Lcom/baidu/bdgame/sdk/obf/z$2;

    invoke-direct {p0}, Lcom/baidu/sapi2/callback/GetUserInfoCallback;-><init>()V

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/z$2$1;->b:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/sapi2/result/GetUserInfoResult;)V
    .registers 8

    .prologue
    .line 154
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/z$2$1;->a:Lcom/baidu/bdgame/sdk/obf/z$2;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/z$2;->c:Lcom/baidu/bdgame/sdk/obf/z;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/z;->b(Lcom/baidu/bdgame/sdk/obf/z;)Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/z$2$1;->a:Lcom/baidu/bdgame/sdk/obf/z$2;

    iget-object v2, v2, Lcom/baidu/bdgame/sdk/obf/z$2;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ax;->h()Lcom/baidu/bdgame/sdk/obf/ag;

    move-result-object v2

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/le;->a()J

    move-result-wide v4

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/baidu/bdgame/sdk/obf/at;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ag;J)V

    .line 157
    return-void
.end method

.method public b(Lcom/baidu/sapi2/result/GetUserInfoResult;)V
    .registers 2

    .prologue
    .line 160
    return-void
.end method

.method public c(Lcom/baidu/sapi2/result/GetUserInfoResult;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 175
    const-string v0, "BaiduPlatformSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetUserInfoResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    if-eqz p1, :cond_3f

    .line 177
    iget-object v0, p1, Lcom/baidu/sapi2/result/GetUserInfoResult;->secureMobile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 178
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/z$2$1;->a:Lcom/baidu/bdgame/sdk/obf/z$2;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/z$2;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-virtual {v0, v3}, Lcom/baidu/bdgame/sdk/obf/ax;->b(Z)V

    .line 179
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/z$2$1;->a:Lcom/baidu/bdgame/sdk/obf/z$2;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/z$2;->c:Lcom/baidu/bdgame/sdk/obf/z;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/z$2$1;->a:Lcom/baidu/bdgame/sdk/obf/z$2;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/z$2;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/z$2$1;->a:Lcom/baidu/bdgame/sdk/obf/z$2;

    iget-object v2, v2, Lcom/baidu/bdgame/sdk/obf/z$2;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/z;->a(Lcom/baidu/bdgame/sdk/obf/z;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_3d
    iput-boolean v3, p0, Lcom/baidu/bdgame/sdk/obf/z$2$1;->b:Z

    .line 186
    :cond_3f
    return-void

    .line 181
    :cond_40
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/z$2$1;->a:Lcom/baidu/bdgame/sdk/obf/z$2;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/z$2;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ax;->b(Z)V

    .line 182
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/z$2$1;->a:Lcom/baidu/bdgame/sdk/obf/z$2;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/z$2;->c:Lcom/baidu/bdgame/sdk/obf/z;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/z$2$1;->a:Lcom/baidu/bdgame/sdk/obf/z$2;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/z$2;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/z$2$1;->a:Lcom/baidu/bdgame/sdk/obf/z$2;

    iget-object v2, v2, Lcom/baidu/bdgame/sdk/obf/z$2;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/z;->b(Lcom/baidu/bdgame/sdk/obf/z;Lcom/baidu/bdgame/sdk/obf/ax;Ljava/lang/String;)V

    goto :goto_3d
.end method

.method public synthetic onBdussExpired(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 147
    check-cast p1, Lcom/baidu/sapi2/result/GetUserInfoResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/z$2$1;->a(Lcom/baidu/sapi2/result/GetUserInfoResult;)V

    return-void
.end method

.method public synthetic onFailure(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 147
    check-cast p1, Lcom/baidu/sapi2/result/GetUserInfoResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/z$2$1;->b(Lcom/baidu/sapi2/result/GetUserInfoResult;)V

    return-void
.end method

.method public onFinish()V
    .registers 3

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/z$2$1;->b:Z

    if-nez v0, :cond_c

    .line 165
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/z$2$1;->a:Lcom/baidu/bdgame/sdk/obf/z$2;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/z$2;->c:Lcom/baidu/bdgame/sdk/obf/z;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/z;->a(Lcom/baidu/bdgame/sdk/obf/z;Z)V

    .line 167
    :cond_c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/z$2$1;->a:Lcom/baidu/bdgame/sdk/obf/z$2;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/z$2;->c:Lcom/baidu/bdgame/sdk/obf/z;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/z;->a(Lcom/baidu/bdgame/sdk/obf/z;)Lcom/baidu/bdgame/sdk/obf/mt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/mt;->b()V

    .line 168
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 171
    return-void
.end method

.method public synthetic onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 147
    check-cast p1, Lcom/baidu/sapi2/result/GetUserInfoResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/z$2$1;->c(Lcom/baidu/sapi2/result/GetUserInfoResult;)V

    return-void
.end method
