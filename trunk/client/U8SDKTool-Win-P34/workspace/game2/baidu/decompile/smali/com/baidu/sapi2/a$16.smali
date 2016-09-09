.class Lcom/baidu/sapi2/a$16;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;

.field final synthetic b:Lcom/baidu/sapi2/utils/SapiDataEncryptor;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Lcom/baidu/sapi2/utils/SapiDataEncryptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 2491
    iput-object p1, p0, Lcom/baidu/sapi2/a$16;->f:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$16;->a:Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;

    iput-object p4, p0, Lcom/baidu/sapi2/a$16;->b:Lcom/baidu/sapi2/utils/SapiDataEncryptor;

    iput-object p5, p0, Lcom/baidu/sapi2/a$16;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/sapi2/a$16;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/baidu/sapi2/a$16;->e:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 11
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 2495
    invoke-super {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 2496
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2497
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v1, ""

    .line 2499
    .local v1, "json":Ljava/lang/String;
    :try_start_a
    const-string v3, "failure_info"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2500
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_12} :catch_34

    move-result-object v1

    .line 2505
    :goto_13
    iget-object v3, p0, Lcom/baidu/sapi2/a$16;->f:Lcom/baidu/sapi2/a;

    invoke-static {v3}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/a$a;->c()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 2506
    iget-object v3, p0, Lcom/baidu/sapi2/a$16;->f:Lcom/baidu/sapi2/a;

    invoke-static {v3}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/a$a;->d()V

    .line 2507
    iget-object v3, p0, Lcom/baidu/sapi2/a$16;->f:Lcom/baidu/sapi2/a;

    const/16 v4, -0x64

    iget-object v5, p0, Lcom/baidu/sapi2/a$16;->a:Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;

    iget-object v6, p0, Lcom/baidu/sapi2/a$16;->b:Lcom/baidu/sapi2/utils/SapiDataEncryptor;

    invoke-static {v3, v4, v5, v1, v6}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;ILcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Ljava/lang/String;Lcom/baidu/sapi2/utils/SapiDataEncryptor;)V

    .line 2511
    :goto_33
    return-void

    .line 2501
    :catch_34
    move-exception v0

    .line 2502
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_13

    .line 2509
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_39
    iget-object v3, p0, Lcom/baidu/sapi2/a$16;->f:Lcom/baidu/sapi2/a;

    iget-object v4, p0, Lcom/baidu/sapi2/a$16;->a:Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;

    iget-object v5, p0, Lcom/baidu/sapi2/a$16;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/baidu/sapi2/a$16;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/baidu/sapi2/a$16;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 13
    .param p1, "statusCode"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 2515
    invoke-super {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    .line 2516
    iget-object v0, p0, Lcom/baidu/sapi2/a$16;->f:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 2518
    :try_start_c
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2519
    .local v9, "jSONObject":Lorg/json/JSONObject;
    const-string v0, "cert"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2520
    .local v5, "cert":Ljava/lang/String;
    const-string v0, "cert_id"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2521
    .local v6, "certId":Ljava/lang/String;
    iget-object v0, p0, Lcom/baidu/sapi2/a$16;->f:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$16;->a:Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;

    iget-object v2, p0, Lcom/baidu/sapi2/a$16;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/sapi2/a$16;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/sapi2/a$16;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/baidu/sapi2/a$16;->b:Lcom/baidu/sapi2/utils/SapiDataEncryptor;

    invoke-static/range {v0 .. v7}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/utils/SapiDataEncryptor;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2c} :catch_2d

    .line 2527
    .end local v5    # "cert":Ljava/lang/String;
    .end local v6    # "certId":Ljava/lang/String;
    .end local v9    # "jSONObject":Lorg/json/JSONObject;
    :goto_2c
    return-void

    .line 2522
    :catch_2d
    move-exception v8

    .line 2523
    .local v8, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/baidu/sapi2/a$16;->f:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$16;->f:Lcom/baidu/sapi2/a;

    invoke-virtual {v1, p2}, Lcom/baidu/sapi2/a;->c(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/sapi2/a$16;->a:Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;

    iget-object v3, p0, Lcom/baidu/sapi2/a$16;->b:Lcom/baidu/sapi2/utils/SapiDataEncryptor;

    invoke-static {v0, v1, v2, p2, v3}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;ILcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Ljava/lang/String;Lcom/baidu/sapi2/utils/SapiDataEncryptor;)V

    .line 2525
    invoke-static {v8}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_2c
.end method
