.class final Lcom/baidu/platformsdk/SapiWebActivity$4$1;
.super Lcom/baidu/sapi2/callback/GetUserInfoCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/platformsdk/SapiWebActivity$4;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field a:Lcom/baidu/bdgame/sdk/obf/mt;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/ax;

.field final synthetic c:Lcom/baidu/platformsdk/SapiWebActivity$4;


# direct methods
.method constructor <init>(Lcom/baidu/platformsdk/SapiWebActivity$4;Lcom/baidu/bdgame/sdk/obf/ax;)V
    .registers 5

    .prologue
    .line 208
    iput-object p1, p0, Lcom/baidu/platformsdk/SapiWebActivity$4$1;->c:Lcom/baidu/platformsdk/SapiWebActivity$4;

    iput-object p2, p0, Lcom/baidu/platformsdk/SapiWebActivity$4$1;->b:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-direct {p0}, Lcom/baidu/sapi2/callback/GetUserInfoCallback;-><init>()V

    .line 210
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/mt;

    iget-object v1, p0, Lcom/baidu/platformsdk/SapiWebActivity$4$1;->c:Lcom/baidu/platformsdk/SapiWebActivity$4;

    iget-object v1, v1, Lcom/baidu/platformsdk/SapiWebActivity$4;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$4$1;->a:Lcom/baidu/bdgame/sdk/obf/mt;

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/sapi2/result/GetUserInfoResult;)V
    .registers 6

    .prologue
    .line 214
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

    .line 215
    if-eqz p1, :cond_3b

    iget-object v0, p1, Lcom/baidu/sapi2/result/GetUserInfoResult;->secureMobile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 216
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$4$1;->b:Lcom/baidu/bdgame/sdk/obf/ax;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ax;->b(Z)V

    .line 217
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$4$1;->c:Lcom/baidu/platformsdk/SapiWebActivity$4;

    iget-object v0, v0, Lcom/baidu/platformsdk/SapiWebActivity$4;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/platformsdk/SapiWebActivity$4$1;->c:Lcom/baidu/platformsdk/SapiWebActivity$4;

    iget-object v2, v2, Lcom/baidu/platformsdk/SapiWebActivity$4;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    const-string v3, "bdp_success"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/platformsdk/SapiWebActivity;->a(ILjava/lang/String;Landroid/os/Parcelable;)V

    .line 220
    :cond_3b
    return-void
.end method

.method public b(Lcom/baidu/sapi2/result/GetUserInfoResult;)V
    .registers 2

    .prologue
    .line 234
    return-void
.end method

.method public c(Lcom/baidu/sapi2/result/GetUserInfoResult;)V
    .registers 8

    .prologue
    .line 239
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/platformsdk/SapiWebActivity$4$1;->c:Lcom/baidu/platformsdk/SapiWebActivity$4;

    iget-object v1, v1, Lcom/baidu/platformsdk/SapiWebActivity$4;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    iget-object v2, p0, Lcom/baidu/platformsdk/SapiWebActivity$4$1;->b:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ax;->h()Lcom/baidu/bdgame/sdk/obf/ag;

    move-result-object v2

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/le;->a()J

    move-result-wide v4

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/baidu/bdgame/sdk/obf/at;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ag;J)V

    .line 244
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/platformsdk/SapiWebActivity$4$1;->c:Lcom/baidu/platformsdk/SapiWebActivity$4;

    iget-object v1, v1, Lcom/baidu/platformsdk/SapiWebActivity$4;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    const-string v2, "baidu password modified."

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/at;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->logout()V

    .line 248
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$4$1;->c:Lcom/baidu/platformsdk/SapiWebActivity$4;

    iget-object v0, v0, Lcom/baidu/platformsdk/SapiWebActivity$4;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ca;->e(Landroid/content/Context;)Z

    .line 249
    return-void
.end method

.method public synthetic onBdussExpired(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 208
    check-cast p1, Lcom/baidu/sapi2/result/GetUserInfoResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/platformsdk/SapiWebActivity$4$1;->c(Lcom/baidu/sapi2/result/GetUserInfoResult;)V

    return-void
.end method

.method public synthetic onFailure(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 208
    check-cast p1, Lcom/baidu/sapi2/result/GetUserInfoResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/platformsdk/SapiWebActivity$4$1;->b(Lcom/baidu/sapi2/result/GetUserInfoResult;)V

    return-void
.end method

.method public onFinish()V
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$4$1;->a:Lcom/baidu/bdgame/sdk/obf/mt;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/mt;->b()V

    .line 230
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$4$1;->c:Lcom/baidu/platformsdk/SapiWebActivity$4;

    iget-object v0, v0, Lcom/baidu/platformsdk/SapiWebActivity$4;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-virtual {v0}, Lcom/baidu/platformsdk/SapiWebActivity;->finish()V

    .line 231
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$4$1;->a:Lcom/baidu/bdgame/sdk/obf/mt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mt;->a(Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public synthetic onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 208
    check-cast p1, Lcom/baidu/sapi2/result/GetUserInfoResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/platformsdk/SapiWebActivity$4$1;->a(Lcom/baidu/sapi2/result/GetUserInfoResult;)V

    return-void
.end method
