.class Lcom/baidu/sapi2/a$12;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/sapi2/dto/ReloginDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/SapiCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/ReloginResult;

.field final synthetic c:Lcom/baidu/sapi2/utils/SapiDataEncryptor;

.field final synthetic d:Lcom/baidu/sapi2/dto/ReloginDTO;

.field final synthetic e:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/sapi2/result/ReloginResult;Lcom/baidu/sapi2/utils/SapiDataEncryptor;Lcom/baidu/sapi2/dto/ReloginDTO;)V
    .registers 7
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/baidu/sapi2/a$12;->e:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$12;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iput-object p4, p0, Lcom/baidu/sapi2/a$12;->b:Lcom/baidu/sapi2/result/ReloginResult;

    iput-object p5, p0, Lcom/baidu/sapi2/a$12;->c:Lcom/baidu/sapi2/utils/SapiDataEncryptor;

    iput-object p6, p0, Lcom/baidu/sapi2/a$12;->d:Lcom/baidu/sapi2/dto/ReloginDTO;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/baidu/sapi2/a$12;->e:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 420
    iget-object v0, p0, Lcom/baidu/sapi2/a$12;->e:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 421
    iget-object v0, p0, Lcom/baidu/sapi2/a$12;->b:Lcom/baidu/sapi2/result/ReloginResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/ReloginResult;->setResultCode(I)V

    .line 422
    iget-object v0, p0, Lcom/baidu/sapi2/a$12;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/a$12;->b:Lcom/baidu/sapi2/result/ReloginResult;

    invoke-interface {v0, v1}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 427
    :goto_23
    return-void

    .line 424
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/a$12;->e:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->b()V

    .line 425
    iget-object v0, p0, Lcom/baidu/sapi2/a$12;->e:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$12;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/a$12;->d:Lcom/baidu/sapi2/dto/ReloginDTO;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/sapi2/dto/ReloginDTO;)V

    goto :goto_23
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/baidu/sapi2/a$12;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v0}, Lcom/baidu/sapi2/callback/SapiCallback;->onFinish()V

    .line 389
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/baidu/sapi2/a$12;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v0}, Lcom/baidu/sapi2/callback/SapiCallback;->onStart()V

    .line 384
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 11
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 393
    iget-object v6, p0, Lcom/baidu/sapi2/a$12;->e:Lcom/baidu/sapi2/a;

    invoke-static {v6}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/sapi2/a$a;->d()V

    .line 394
    iget-object v6, p0, Lcom/baidu/sapi2/a$12;->e:Lcom/baidu/sapi2/a;

    invoke-virtual {v6, p2}, Lcom/baidu/sapi2/a;->b(Ljava/lang/String;)I

    move-result v4

    .line 395
    .local v4, "resultCode":I
    iget-object v6, p0, Lcom/baidu/sapi2/a$12;->b:Lcom/baidu/sapi2/result/ReloginResult;

    invoke-virtual {v6, v4}, Lcom/baidu/sapi2/result/ReloginResult;->setResultCode(I)V

    .line 397
    :try_start_14
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 398
    .local v3, "responseJSONObj":Lorg/json/JSONObject;
    const-string v6, "userinfo"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "cipherUserInfo":Ljava/lang/String;
    iget-object v6, p0, Lcom/baidu/sapi2/a$12;->c:Lcom/baidu/sapi2/utils/SapiDataEncryptor;

    invoke-virtual {v6, v0}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, "plainUserInfo":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 401
    .local v5, "userInfoJSONObj":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/baidu/sapi2/a$12;->b:Lcom/baidu/sapi2/result/ReloginResult;

    const-string v7, "errmsg"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/baidu/sapi2/result/ReloginResult;->setResultMsg(Ljava/lang/String;)V

    .line 402
    packed-switch v4, :pswitch_data_5e

    .line 408
    iget-object v6, p0, Lcom/baidu/sapi2/a$12;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v7, p0, Lcom/baidu/sapi2/a$12;->b:Lcom/baidu/sapi2/result/ReloginResult;

    invoke-interface {v6, v7}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 415
    .end local v0    # "cipherUserInfo":Ljava/lang/String;
    .end local v2    # "plainUserInfo":Ljava/lang/String;
    .end local v3    # "responseJSONObj":Lorg/json/JSONObject;
    .end local v5    # "userInfoJSONObj":Lorg/json/JSONObject;
    :goto_3f
    return-void

    .line 404
    .restart local v0    # "cipherUserInfo":Ljava/lang/String;
    .restart local v2    # "plainUserInfo":Ljava/lang/String;
    .restart local v3    # "responseJSONObj":Lorg/json/JSONObject;
    .restart local v5    # "userInfoJSONObj":Lorg/json/JSONObject;
    :pswitch_40
    iget-object v6, p0, Lcom/baidu/sapi2/a$12;->b:Lcom/baidu/sapi2/result/ReloginResult;

    iget-object v7, p0, Lcom/baidu/sapi2/a$12;->e:Lcom/baidu/sapi2/a;

    invoke-virtual {v7, v5}, Lcom/baidu/sapi2/a;->a(Lorg/json/JSONObject;)Lcom/baidu/sapi2/SapiAccount;

    move-result-object v7

    iput-object v7, v6, Lcom/baidu/sapi2/result/ReloginResult;->session:Lcom/baidu/sapi2/SapiAccount;

    .line 405
    iget-object v6, p0, Lcom/baidu/sapi2/a$12;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v7, p0, Lcom/baidu/sapi2/a$12;->b:Lcom/baidu/sapi2/result/ReloginResult;

    invoke-interface {v6, v7}, Lcom/baidu/sapi2/callback/SapiCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_51} :catch_52

    goto :goto_3f

    .line 411
    .end local v0    # "cipherUserInfo":Ljava/lang/String;
    .end local v2    # "plainUserInfo":Ljava/lang/String;
    .end local v3    # "responseJSONObj":Lorg/json/JSONObject;
    .end local v5    # "userInfoJSONObj":Lorg/json/JSONObject;
    :catch_52
    move-exception v1

    .line 412
    .local v1, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/baidu/sapi2/a$12;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v7, p0, Lcom/baidu/sapi2/a$12;->b:Lcom/baidu/sapi2/result/ReloginResult;

    invoke-interface {v6, v7}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 413
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_3f

    .line 402
    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_40
    .end packed-switch
.end method
