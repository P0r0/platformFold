.class Lcom/baidu/sapi2/a$3;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/SapiCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/DynamicPwdLoginResult;

.field final synthetic c:Lcom/baidu/sapi2/utils/SapiDataEncryptor;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/sapi2/result/DynamicPwdLoginResult;Lcom/baidu/sapi2/utils/SapiDataEncryptor;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 1416
    iput-object p1, p0, Lcom/baidu/sapi2/a$3;->f:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$3;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iput-object p4, p0, Lcom/baidu/sapi2/a$3;->b:Lcom/baidu/sapi2/result/DynamicPwdLoginResult;

    iput-object p5, p0, Lcom/baidu/sapi2/a$3;->c:Lcom/baidu/sapi2/utils/SapiDataEncryptor;

    iput-object p6, p0, Lcom/baidu/sapi2/a$3;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/baidu/sapi2/a$3;->e:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 7
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/baidu/sapi2/a$3;->f:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1468
    iget-object v0, p0, Lcom/baidu/sapi2/a$3;->f:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 1469
    iget-object v0, p0, Lcom/baidu/sapi2/a$3;->b:Lcom/baidu/sapi2/result/DynamicPwdLoginResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/DynamicPwdLoginResult;->setResultCode(I)V

    .line 1470
    iget-object v0, p0, Lcom/baidu/sapi2/a$3;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/a$3;->b:Lcom/baidu/sapi2/result/DynamicPwdLoginResult;

    invoke-interface {v0, v1}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1475
    :goto_23
    return-void

    .line 1472
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/a$3;->f:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->b()V

    .line 1473
    iget-object v0, p0, Lcom/baidu/sapi2/a$3;->f:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$3;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/a$3;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/sapi2/a$3;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/baidu/sapi2/a$3;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v0}, Lcom/baidu/sapi2/callback/SapiCallback;->onFinish()V

    .line 1425
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/baidu/sapi2/a$3;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v0}, Lcom/baidu/sapi2/callback/SapiCallback;->onStart()V

    .line 1420
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 14
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 1429
    iget-object v9, p0, Lcom/baidu/sapi2/a$3;->f:Lcom/baidu/sapi2/a;

    invoke-static {v9}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/baidu/sapi2/a$a;->d()V

    .line 1430
    iget-object v9, p0, Lcom/baidu/sapi2/a$3;->f:Lcom/baidu/sapi2/a;

    invoke-virtual {v9, p2}, Lcom/baidu/sapi2/a;->b(Ljava/lang/String;)I

    move-result v5

    .line 1431
    .local v5, "resultCode":I
    iget-object v9, p0, Lcom/baidu/sapi2/a$3;->b:Lcom/baidu/sapi2/result/DynamicPwdLoginResult;

    invoke-virtual {v9, v5}, Lcom/baidu/sapi2/result/DynamicPwdLoginResult;->setResultCode(I)V

    .line 1433
    :try_start_14
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1434
    .local v4, "responseJSONObj":Lorg/json/JSONObject;
    const-string v9, "userinfo"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1435
    .local v1, "cipherUserInfo":Ljava/lang/String;
    iget-object v9, p0, Lcom/baidu/sapi2/a$3;->c:Lcom/baidu/sapi2/utils/SapiDataEncryptor;

    invoke-virtual {v9, v1}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1436
    .local v3, "plainUserInfo":Ljava/lang/String;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1437
    .local v8, "userInfoJSONObj":Lorg/json/JSONObject;
    const-string v9, "sdk"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 1438
    .local v7, "sdkJSONObj":Lorg/json/JSONObject;
    const-string v9, "msg"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1439
    .local v6, "resultMsg":Ljava/lang/String;
    iget-object v9, p0, Lcom/baidu/sapi2/a$3;->b:Lcom/baidu/sapi2/result/DynamicPwdLoginResult;

    invoke-virtual {v9, v6}, Lcom/baidu/sapi2/result/DynamicPwdLoginResult;->setResultMsg(Ljava/lang/String;)V

    .line 1441
    packed-switch v5, :pswitch_data_80

    .line 1456
    iget-object v9, p0, Lcom/baidu/sapi2/a$3;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v10, p0, Lcom/baidu/sapi2/a$3;->b:Lcom/baidu/sapi2/result/DynamicPwdLoginResult;

    invoke-interface {v9, v10}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1463
    .end local v1    # "cipherUserInfo":Ljava/lang/String;
    .end local v3    # "plainUserInfo":Ljava/lang/String;
    .end local v4    # "responseJSONObj":Lorg/json/JSONObject;
    .end local v6    # "resultMsg":Ljava/lang/String;
    .end local v7    # "sdkJSONObj":Lorg/json/JSONObject;
    .end local v8    # "userInfoJSONObj":Lorg/json/JSONObject;
    :goto_45
    return-void

    .line 1443
    .restart local v1    # "cipherUserInfo":Ljava/lang/String;
    .restart local v3    # "plainUserInfo":Ljava/lang/String;
    .restart local v4    # "responseJSONObj":Lorg/json/JSONObject;
    .restart local v6    # "resultMsg":Ljava/lang/String;
    .restart local v7    # "sdkJSONObj":Lorg/json/JSONObject;
    .restart local v8    # "userInfoJSONObj":Lorg/json/JSONObject;
    :pswitch_46
    iget-object v9, p0, Lcom/baidu/sapi2/a$3;->f:Lcom/baidu/sapi2/a;

    invoke-virtual {v9, v8}, Lcom/baidu/sapi2/a;->a(Lorg/json/JSONObject;)Lcom/baidu/sapi2/SapiAccount;

    move-result-object v0

    .line 1444
    .local v0, "account":Lcom/baidu/sapi2/SapiAccount;
    iget-object v9, p0, Lcom/baidu/sapi2/a$3;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    instance-of v9, v9, Lcom/baidu/sapi2/callback/SapiCallbackInterceptor;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_50} :catch_6e

    if-eqz v9, :cond_5f

    .line 1446
    :try_start_52
    iget-object v9, p0, Lcom/baidu/sapi2/a$3;->b:Lcom/baidu/sapi2/result/DynamicPwdLoginResult;

    iput-object v0, v9, Lcom/baidu/sapi2/result/DynamicPwdLoginResult;->session:Lcom/baidu/sapi2/SapiAccount;

    .line 1447
    iget-object v9, p0, Lcom/baidu/sapi2/a$3;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    check-cast v9, Lcom/baidu/sapi2/callback/SapiCallbackInterceptor;

    iget-object v10, p0, Lcom/baidu/sapi2/a$3;->b:Lcom/baidu/sapi2/result/DynamicPwdLoginResult;

    invoke-interface {v9, v10}, Lcom/baidu/sapi2/callback/SapiCallbackInterceptor;->beforeSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_5f} :catch_7a
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5f} :catch_6e

    .line 1452
    :cond_5f
    :goto_5f
    :try_start_5f
    invoke-static {}, Lcom/baidu/sapi2/share/a;->a()Lcom/baidu/sapi2/share/a;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/baidu/sapi2/share/a;->a(Lcom/baidu/sapi2/SapiAccount;)V

    .line 1453
    iget-object v9, p0, Lcom/baidu/sapi2/a$3;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v10, p0, Lcom/baidu/sapi2/a$3;->b:Lcom/baidu/sapi2/result/DynamicPwdLoginResult;

    invoke-interface {v9, v10}, Lcom/baidu/sapi2/callback/SapiCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_6d} :catch_6e

    goto :goto_45

    .line 1459
    .end local v0    # "account":Lcom/baidu/sapi2/SapiAccount;
    .end local v1    # "cipherUserInfo":Ljava/lang/String;
    .end local v3    # "plainUserInfo":Ljava/lang/String;
    .end local v4    # "responseJSONObj":Lorg/json/JSONObject;
    .end local v6    # "resultMsg":Ljava/lang/String;
    .end local v7    # "sdkJSONObj":Lorg/json/JSONObject;
    .end local v8    # "userInfoJSONObj":Lorg/json/JSONObject;
    :catch_6e
    move-exception v2

    .line 1460
    .local v2, "e":Ljava/lang/Exception;
    iget-object v9, p0, Lcom/baidu/sapi2/a$3;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v10, p0, Lcom/baidu/sapi2/a$3;->b:Lcom/baidu/sapi2/result/DynamicPwdLoginResult;

    invoke-interface {v9, v10}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1461
    invoke-static {v2}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_45

    .line 1448
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "account":Lcom/baidu/sapi2/SapiAccount;
    .restart local v1    # "cipherUserInfo":Ljava/lang/String;
    .restart local v3    # "plainUserInfo":Ljava/lang/String;
    .restart local v4    # "responseJSONObj":Lorg/json/JSONObject;
    .restart local v6    # "resultMsg":Ljava/lang/String;
    .restart local v7    # "sdkJSONObj":Lorg/json/JSONObject;
    .restart local v8    # "userInfoJSONObj":Lorg/json/JSONObject;
    :catch_7a
    move-exception v2

    .line 1449
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_7b
    invoke-static {v2}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_6e

    goto :goto_5f

    .line 1441
    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_46
    .end packed-switch
.end method
