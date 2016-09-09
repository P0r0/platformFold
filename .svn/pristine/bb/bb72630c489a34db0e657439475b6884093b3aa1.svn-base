.class Lcom/baidu/sapi2/a$15;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/FillUsernameCallback;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/FillUsernameCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/FillUsernameResult;

.field final synthetic c:Lcom/baidu/sapi2/utils/SapiDataEncryptor;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/FillUsernameCallback;Lcom/baidu/sapi2/result/FillUsernameResult;Lcom/baidu/sapi2/utils/SapiDataEncryptor;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 2408
    iput-object p1, p0, Lcom/baidu/sapi2/a$15;->f:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$15;->a:Lcom/baidu/sapi2/callback/FillUsernameCallback;

    iput-object p4, p0, Lcom/baidu/sapi2/a$15;->b:Lcom/baidu/sapi2/result/FillUsernameResult;

    iput-object p5, p0, Lcom/baidu/sapi2/a$15;->c:Lcom/baidu/sapi2/utils/SapiDataEncryptor;

    iput-object p6, p0, Lcom/baidu/sapi2/a$15;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/baidu/sapi2/a$15;->e:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 7
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 2462
    iget-object v0, p0, Lcom/baidu/sapi2/a$15;->f:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2463
    iget-object v0, p0, Lcom/baidu/sapi2/a$15;->f:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 2464
    iget-object v0, p0, Lcom/baidu/sapi2/a$15;->b:Lcom/baidu/sapi2/result/FillUsernameResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/FillUsernameResult;->setResultCode(I)V

    .line 2465
    iget-object v0, p0, Lcom/baidu/sapi2/a$15;->a:Lcom/baidu/sapi2/callback/FillUsernameCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/a$15;->b:Lcom/baidu/sapi2/result/FillUsernameResult;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/callback/FillUsernameCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2470
    :goto_23
    return-void

    .line 2467
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/a$15;->f:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->b()V

    .line 2468
    iget-object v0, p0, Lcom/baidu/sapi2/a$15;->f:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$15;->a:Lcom/baidu/sapi2/callback/FillUsernameCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/a$15;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/sapi2/a$15;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/FillUsernameCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 2416
    iget-object v0, p0, Lcom/baidu/sapi2/a$15;->a:Lcom/baidu/sapi2/callback/FillUsernameCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/FillUsernameCallback;->onFinish()V

    .line 2417
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 2411
    iget-object v0, p0, Lcom/baidu/sapi2/a$15;->a:Lcom/baidu/sapi2/callback/FillUsernameCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/FillUsernameCallback;->onStart()V

    .line 2412
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 12
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 2421
    iget-object v7, p0, Lcom/baidu/sapi2/a$15;->f:Lcom/baidu/sapi2/a;

    invoke-static {v7}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/sapi2/a$a;->d()V

    .line 2422
    iget-object v7, p0, Lcom/baidu/sapi2/a$15;->f:Lcom/baidu/sapi2/a;

    invoke-virtual {v7, p2}, Lcom/baidu/sapi2/a;->b(Ljava/lang/String;)I

    move-result v4

    .line 2423
    .local v4, "resultCode":I
    iget-object v7, p0, Lcom/baidu/sapi2/a$15;->b:Lcom/baidu/sapi2/result/FillUsernameResult;

    invoke-virtual {v7, v4}, Lcom/baidu/sapi2/result/FillUsernameResult;->setResultCode(I)V

    .line 2425
    :try_start_14
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2426
    .local v3, "responseJOSNObj":Lorg/json/JSONObject;
    const-string v7, "userinfo"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2427
    .local v0, "cipherUserInfo":Ljava/lang/String;
    iget-object v7, p0, Lcom/baidu/sapi2/a$15;->c:Lcom/baidu/sapi2/utils/SapiDataEncryptor;

    invoke-virtual {v7, v0}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2428
    .local v2, "plainUserInfo":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2429
    .local v6, "userInfoJSONObj":Lorg/json/JSONObject;
    sparse-switch v4, :sswitch_data_a0

    .line 2451
    iget-object v7, p0, Lcom/baidu/sapi2/a$15;->a:Lcom/baidu/sapi2/callback/FillUsernameCallback;

    iget-object v8, p0, Lcom/baidu/sapi2/a$15;->b:Lcom/baidu/sapi2/result/FillUsernameResult;

    invoke-virtual {v7, v8}, Lcom/baidu/sapi2/callback/FillUsernameCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2458
    .end local v0    # "cipherUserInfo":Ljava/lang/String;
    .end local v2    # "plainUserInfo":Ljava/lang/String;
    .end local v3    # "responseJOSNObj":Lorg/json/JSONObject;
    .end local v6    # "userInfoJSONObj":Lorg/json/JSONObject;
    :goto_34
    return-void

    .line 2432
    .restart local v0    # "cipherUserInfo":Ljava/lang/String;
    .restart local v2    # "plainUserInfo":Ljava/lang/String;
    .restart local v3    # "responseJOSNObj":Lorg/json/JSONObject;
    .restart local v6    # "userInfoJSONObj":Lorg/json/JSONObject;
    :sswitch_35
    new-instance v5, Lcom/baidu/sapi2/SapiAccount;

    invoke-direct {v5}, Lcom/baidu/sapi2/SapiAccount;-><init>()V

    .line 2433
    .local v5, "session":Lcom/baidu/sapi2/SapiAccount;
    const-string v7, "bduss"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    .line 2434
    const-string v7, "ptoken"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    .line 2435
    const-string v7, "stoken"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    .line 2436
    const-string v7, "displayname"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    .line 2437
    const-string v7, "uname"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    .line 2438
    const-string v7, "uid"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    .line 2439
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    .line 2440
    invoke-static {}, Lcom/baidu/sapi2/share/a;->a()Lcom/baidu/sapi2/share/a;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/baidu/sapi2/share/a;->a(Lcom/baidu/sapi2/SapiAccount;)V

    .line 2441
    iget-object v7, p0, Lcom/baidu/sapi2/a$15;->b:Lcom/baidu/sapi2/result/FillUsernameResult;

    iput-object v5, v7, Lcom/baidu/sapi2/result/FillUsernameResult;->session:Lcom/baidu/sapi2/SapiAccount;

    .line 2442
    iget-object v7, p0, Lcom/baidu/sapi2/a$15;->a:Lcom/baidu/sapi2/callback/FillUsernameCallback;

    iget-object v8, p0, Lcom/baidu/sapi2/a$15;->b:Lcom/baidu/sapi2/result/FillUsernameResult;

    invoke-virtual {v7, v8}, Lcom/baidu/sapi2/callback/FillUsernameCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_82} :catch_83

    goto :goto_34

    .line 2454
    .end local v0    # "cipherUserInfo":Ljava/lang/String;
    .end local v2    # "plainUserInfo":Ljava/lang/String;
    .end local v3    # "responseJOSNObj":Lorg/json/JSONObject;
    .end local v5    # "session":Lcom/baidu/sapi2/SapiAccount;
    .end local v6    # "userInfoJSONObj":Lorg/json/JSONObject;
    :catch_83
    move-exception v1

    .line 2455
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v7, p0, Lcom/baidu/sapi2/a$15;->a:Lcom/baidu/sapi2/callback/FillUsernameCallback;

    iget-object v8, p0, Lcom/baidu/sapi2/a$15;->b:Lcom/baidu/sapi2/result/FillUsernameResult;

    invoke-virtual {v7, v8}, Lcom/baidu/sapi2/callback/FillUsernameCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2456
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_34

    .line 2445
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "cipherUserInfo":Ljava/lang/String;
    .restart local v2    # "plainUserInfo":Ljava/lang/String;
    .restart local v3    # "responseJOSNObj":Lorg/json/JSONObject;
    .restart local v6    # "userInfoJSONObj":Lorg/json/JSONObject;
    :sswitch_8f
    :try_start_8f
    iget-object v7, p0, Lcom/baidu/sapi2/a$15;->a:Lcom/baidu/sapi2/callback/FillUsernameCallback;

    iget-object v8, p0, Lcom/baidu/sapi2/a$15;->b:Lcom/baidu/sapi2/result/FillUsernameResult;

    invoke-virtual {v7, v8}, Lcom/baidu/sapi2/callback/FillUsernameCallback;->onUserHaveUsername(Lcom/baidu/sapi2/result/FillUsernameResult;)V

    goto :goto_34

    .line 2448
    :sswitch_97
    iget-object v7, p0, Lcom/baidu/sapi2/a$15;->a:Lcom/baidu/sapi2/callback/FillUsernameCallback;

    iget-object v8, p0, Lcom/baidu/sapi2/a$15;->b:Lcom/baidu/sapi2/result/FillUsernameResult;

    invoke-virtual {v7, v8}, Lcom/baidu/sapi2/callback/FillUsernameCallback;->onBdussExpired(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_9e} :catch_83

    goto :goto_34

    .line 2429
    nop

    :sswitch_data_a0
    .sparse-switch
        0x0 -> :sswitch_35
        0x1adb0 -> :sswitch_35
        0x27167 -> :sswitch_97
        0x27168 -> :sswitch_8f
    .end sparse-switch
.end method
