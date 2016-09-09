.class Lcom/baidu/sapi2/a$55;
.super Lcom/baidu/sapi2/callback/GetUserInfoCallback;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/Web2NativeLoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/Web2NativeLoginCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/Web2NativeLoginResult;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Lcom/baidu/sapi2/callback/Web2NativeLoginCallback;Lcom/baidu/sapi2/result/Web2NativeLoginResult;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1227
    iput-object p1, p0, Lcom/baidu/sapi2/a$55;->d:Lcom/baidu/sapi2/a;

    iput-object p2, p0, Lcom/baidu/sapi2/a$55;->a:Lcom/baidu/sapi2/callback/Web2NativeLoginCallback;

    iput-object p3, p0, Lcom/baidu/sapi2/a$55;->b:Lcom/baidu/sapi2/result/Web2NativeLoginResult;

    iput-object p4, p0, Lcom/baidu/sapi2/a$55;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/sapi2/callback/GetUserInfoCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/sapi2/result/GetUserInfoResult;)V
    .registers 4
    .param p1, "getUserInfoResult"    # Lcom/baidu/sapi2/result/GetUserInfoResult;

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/baidu/sapi2/a$55;->a:Lcom/baidu/sapi2/callback/Web2NativeLoginCallback;

    if-eqz v0, :cond_13

    .line 1231
    iget-object v0, p0, Lcom/baidu/sapi2/a$55;->b:Lcom/baidu/sapi2/result/Web2NativeLoginResult;

    const v1, 0x61a95

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/Web2NativeLoginResult;->setResultCode(I)V

    .line 1232
    iget-object v0, p0, Lcom/baidu/sapi2/a$55;->a:Lcom/baidu/sapi2/callback/Web2NativeLoginCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/a$55;->b:Lcom/baidu/sapi2/result/Web2NativeLoginResult;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/callback/Web2NativeLoginCallback;->onBdussExpired(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1234
    :cond_13
    return-void
.end method

.method public b(Lcom/baidu/sapi2/result/GetUserInfoResult;)V
    .registers 5
    .param p1, "getUserInfoResult"    # Lcom/baidu/sapi2/result/GetUserInfoResult;

    .prologue
    .line 1238
    new-instance v0, Lcom/baidu/sapi2/SapiAccount;

    invoke-direct {v0}, Lcom/baidu/sapi2/SapiAccount;-><init>()V

    .line 1239
    .local v0, "account":Lcom/baidu/sapi2/SapiAccount;
    iget-object v1, p1, Lcom/baidu/sapi2/result/GetUserInfoResult;->uid:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    .line 1240
    iget-object v1, p1, Lcom/baidu/sapi2/result/GetUserInfoResult;->username:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    .line 1241
    iget-object v1, p1, Lcom/baidu/sapi2/result/GetUserInfoResult;->displayname:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    .line 1242
    iget-object v1, p0, Lcom/baidu/sapi2/a$55;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    .line 1243
    invoke-static {}, Lcom/baidu/sapi2/share/a;->a()Lcom/baidu/sapi2/share/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/share/a;->a(Lcom/baidu/sapi2/SapiAccount;)V

    .line 1244
    iget-object v1, p0, Lcom/baidu/sapi2/a$55;->a:Lcom/baidu/sapi2/callback/Web2NativeLoginCallback;

    if-eqz v1, :cond_2d

    .line 1245
    iget-object v1, p0, Lcom/baidu/sapi2/a$55;->b:Lcom/baidu/sapi2/result/Web2NativeLoginResult;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/sapi2/result/Web2NativeLoginResult;->setResultCode(I)V

    .line 1246
    iget-object v1, p0, Lcom/baidu/sapi2/a$55;->a:Lcom/baidu/sapi2/callback/Web2NativeLoginCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/a$55;->b:Lcom/baidu/sapi2/result/Web2NativeLoginResult;

    invoke-virtual {v1, v2}, Lcom/baidu/sapi2/callback/Web2NativeLoginCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1248
    :cond_2d
    return-void
.end method

.method public c(Lcom/baidu/sapi2/result/GetUserInfoResult;)V
    .registers 4
    .param p1, "getUserInfoResult"    # Lcom/baidu/sapi2/result/GetUserInfoResult;

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/baidu/sapi2/a$55;->a:Lcom/baidu/sapi2/callback/Web2NativeLoginCallback;

    if-eqz v0, :cond_12

    .line 1253
    iget-object v0, p0, Lcom/baidu/sapi2/a$55;->b:Lcom/baidu/sapi2/result/Web2NativeLoginResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/Web2NativeLoginResult;->setResultCode(I)V

    .line 1254
    iget-object v0, p0, Lcom/baidu/sapi2/a$55;->a:Lcom/baidu/sapi2/callback/Web2NativeLoginCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/a$55;->b:Lcom/baidu/sapi2/result/Web2NativeLoginResult;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/callback/Web2NativeLoginCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1256
    :cond_12
    return-void
.end method

.method public synthetic onBdussExpired(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 1227
    check-cast p1, Lcom/baidu/sapi2/result/GetUserInfoResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/sapi2/a$55;->a(Lcom/baidu/sapi2/result/GetUserInfoResult;)V

    return-void
.end method

.method public synthetic onFailure(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 1227
    check-cast p1, Lcom/baidu/sapi2/result/GetUserInfoResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/sapi2/a$55;->c(Lcom/baidu/sapi2/result/GetUserInfoResult;)V

    return-void
.end method

.method public onFinish()V
    .registers 2

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/baidu/sapi2/a$55;->a:Lcom/baidu/sapi2/callback/Web2NativeLoginCallback;

    if-eqz v0, :cond_9

    .line 1268
    iget-object v0, p0, Lcom/baidu/sapi2/a$55;->a:Lcom/baidu/sapi2/callback/Web2NativeLoginCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/Web2NativeLoginCallback;->onFinish()V

    .line 1270
    :cond_9
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/baidu/sapi2/a$55;->a:Lcom/baidu/sapi2/callback/Web2NativeLoginCallback;

    if-eqz v0, :cond_9

    .line 1261
    iget-object v0, p0, Lcom/baidu/sapi2/a$55;->a:Lcom/baidu/sapi2/callback/Web2NativeLoginCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/Web2NativeLoginCallback;->onStart()V

    .line 1263
    :cond_9
    return-void
.end method

.method public synthetic onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 1227
    check-cast p1, Lcom/baidu/sapi2/result/GetUserInfoResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/sapi2/a$55;->b(Lcom/baidu/sapi2/result/GetUserInfoResult;)V

    return-void
.end method
