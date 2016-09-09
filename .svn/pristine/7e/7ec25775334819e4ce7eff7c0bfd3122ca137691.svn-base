.class Lcom/baidu/sapi2/a$37;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->b(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/SapiCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/QrAppLoginResult;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/sapi2/result/QrAppLoginResult;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 4410
    iput-object p1, p0, Lcom/baidu/sapi2/a$37;->e:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$37;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iput-object p4, p0, Lcom/baidu/sapi2/a$37;->b:Lcom/baidu/sapi2/result/QrAppLoginResult;

    iput-object p5, p0, Lcom/baidu/sapi2/a$37;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/sapi2/a$37;->d:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 7
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 4423
    iget-object v0, p0, Lcom/baidu/sapi2/a$37;->e:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 4424
    iget-object v0, p0, Lcom/baidu/sapi2/a$37;->e:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 4425
    iget-object v0, p0, Lcom/baidu/sapi2/a$37;->b:Lcom/baidu/sapi2/result/QrAppLoginResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/QrAppLoginResult;->setResultCode(I)V

    .line 4426
    iget-object v0, p0, Lcom/baidu/sapi2/a$37;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/a$37;->b:Lcom/baidu/sapi2/result/QrAppLoginResult;

    invoke-interface {v0, v1}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 4431
    :goto_23
    return-void

    .line 4428
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/a$37;->e:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->b()V

    .line 4429
    iget-object v0, p0, Lcom/baidu/sapi2/a$37;->e:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$37;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/a$37;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/sapi2/a$37;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/sapi2/a;->b(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 4418
    iget-object v0, p0, Lcom/baidu/sapi2/a$37;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v0}, Lcom/baidu/sapi2/callback/SapiCallback;->onFinish()V

    .line 4419
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 4413
    iget-object v0, p0, Lcom/baidu/sapi2/a$37;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v0}, Lcom/baidu/sapi2/callback/SapiCallback;->onStart()V

    .line 4414
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 10
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 4435
    iget-object v5, p0, Lcom/baidu/sapi2/a$37;->e:Lcom/baidu/sapi2/a;

    invoke-static {v5}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/sapi2/a$a;->d()V

    .line 4437
    :try_start_9
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4438
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v5, "errno"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 4439
    .local v3, "resultCode":I
    iget-object v5, p0, Lcom/baidu/sapi2/a$37;->b:Lcom/baidu/sapi2/result/QrAppLoginResult;

    invoke-virtual {v5, v3}, Lcom/baidu/sapi2/result/QrAppLoginResult;->setResultCode(I)V

    .line 4440
    packed-switch v3, :pswitch_data_70

    .line 4453
    iget-object v5, p0, Lcom/baidu/sapi2/a$37;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v6, p0, Lcom/baidu/sapi2/a$37;->b:Lcom/baidu/sapi2/result/QrAppLoginResult;

    invoke-interface {v5, v6}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 4460
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v3    # "resultCode":I
    :goto_27
    return-void

    .line 4442
    .restart local v2    # "obj":Lorg/json/JSONObject;
    .restart local v3    # "resultCode":I
    :pswitch_28
    const-string v5, "local"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 4443
    .local v1, "locale":Lorg/json/JSONObject;
    if-eqz v1, :cond_4e

    .line 4444
    iget-object v5, p0, Lcom/baidu/sapi2/a$37;->b:Lcom/baidu/sapi2/result/QrAppLoginResult;

    const-string v6, "country"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/baidu/sapi2/result/QrAppLoginResult;->country:Ljava/lang/String;

    .line 4445
    iget-object v5, p0, Lcom/baidu/sapi2/a$37;->b:Lcom/baidu/sapi2/result/QrAppLoginResult;

    const-string v6, "provice"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/baidu/sapi2/result/QrAppLoginResult;->province:Ljava/lang/String;

    .line 4446
    iget-object v5, p0, Lcom/baidu/sapi2/a$37;->b:Lcom/baidu/sapi2/result/QrAppLoginResult;

    const-string v6, "city"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/baidu/sapi2/result/QrAppLoginResult;->city:Ljava/lang/String;

    .line 4448
    :cond_4e
    iget-object v5, p0, Lcom/baidu/sapi2/a$37;->e:Lcom/baidu/sapi2/a;

    invoke-virtual {v5, v2}, Lcom/baidu/sapi2/a;->a(Lorg/json/JSONObject;)Lcom/baidu/sapi2/SapiAccount;

    move-result-object v4

    .line 4449
    .local v4, "sapiAccount":Lcom/baidu/sapi2/SapiAccount;
    invoke-static {}, Lcom/baidu/sapi2/share/a;->a()Lcom/baidu/sapi2/share/a;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/baidu/sapi2/share/a;->a(Lcom/baidu/sapi2/SapiAccount;)V

    .line 4450
    iget-object v5, p0, Lcom/baidu/sapi2/a$37;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v6, p0, Lcom/baidu/sapi2/a$37;->b:Lcom/baidu/sapi2/result/QrAppLoginResult;

    invoke-interface {v5, v6}, Lcom/baidu/sapi2/callback/SapiCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_62} :catch_63

    goto :goto_27

    .line 4456
    .end local v1    # "locale":Lorg/json/JSONObject;
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v3    # "resultCode":I
    .end local v4    # "sapiAccount":Lcom/baidu/sapi2/SapiAccount;
    :catch_63
    move-exception v0

    .line 4457
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/baidu/sapi2/a$37;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v6, p0, Lcom/baidu/sapi2/a$37;->b:Lcom/baidu/sapi2/result/QrAppLoginResult;

    invoke-interface {v5, v6}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 4458
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_27

    .line 4440
    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_28
    .end packed-switch
.end method
