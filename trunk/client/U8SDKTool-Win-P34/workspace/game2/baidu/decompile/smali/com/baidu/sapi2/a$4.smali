.class Lcom/baidu/sapi2/a$4;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

.field final synthetic b:Z

.field final synthetic c:Lcom/baidu/sapi2/utils/SapiDataEncryptor;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/shell/callback/SapiCallBack;ZLcom/baidu/sapi2/utils/SapiDataEncryptor;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 1504
    iput-object p1, p0, Lcom/baidu/sapi2/a$4;->f:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$4;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    iput-boolean p4, p0, Lcom/baidu/sapi2/a$4;->b:Z

    iput-object p5, p0, Lcom/baidu/sapi2/a$4;->c:Lcom/baidu/sapi2/utils/SapiDataEncryptor;

    iput-object p6, p0, Lcom/baidu/sapi2/a$4;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/baidu/sapi2/a$4;->e:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 11
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    const/16 v1, -0x64

    .line 1508
    invoke-super {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1510
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 1511
    .local v7, "obj":Lorg/json/JSONObject;
    const-string v3, ""

    .line 1513
    .local v3, "json":Ljava/lang/String;
    :try_start_c
    const-string v0, "failure_info"

    invoke-virtual {v7, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1514
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_14} :catch_36

    move-result-object v3

    .line 1520
    :goto_15
    iget-object v0, p0, Lcom/baidu/sapi2/a$4;->f:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1521
    iget-object v0, p0, Lcom/baidu/sapi2/a$4;->f:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 1522
    iget-object v0, p0, Lcom/baidu/sapi2/a$4;->f:Lcom/baidu/sapi2/a;

    iget-object v2, p0, Lcom/baidu/sapi2/a$4;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    iget-boolean v4, p0, Lcom/baidu/sapi2/a$4;->b:Z

    iget-object v5, p0, Lcom/baidu/sapi2/a$4;->c:Lcom/baidu/sapi2/utils/SapiDataEncryptor;

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/sapi2/a;->a(ILcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;ZLcom/baidu/sapi2/utils/SapiDataEncryptor;)V

    .line 1528
    :goto_35
    return-void

    .line 1515
    :catch_36
    move-exception v6

    .line 1516
    .local v6, "e":Lorg/json/JSONException;
    iget-object v0, p0, Lcom/baidu/sapi2/a$4;->f:Lcom/baidu/sapi2/a;

    iget-object v2, p0, Lcom/baidu/sapi2/a$4;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    iget-boolean v4, p0, Lcom/baidu/sapi2/a$4;->b:Z

    iget-object v5, p0, Lcom/baidu/sapi2/a$4;->c:Lcom/baidu/sapi2/utils/SapiDataEncryptor;

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/sapi2/a;->a(ILcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;ZLcom/baidu/sapi2/utils/SapiDataEncryptor;)V

    .line 1517
    invoke-static {v6}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_15

    .line 1525
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_46
    iget-object v0, p0, Lcom/baidu/sapi2/a$4;->f:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->b()V

    .line 1526
    iget-object v0, p0, Lcom/baidu/sapi2/a$4;->f:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$4;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    iget-object v2, p0, Lcom/baidu/sapi2/a$4;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/sapi2/a$4;->e:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/baidu/sapi2/a$4;->b:Z

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_35
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 15
    .param p1, "statusCode"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1532
    invoke-super {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    .line 1534
    :try_start_3
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1535
    .local v11, "jSONObject":Lorg/json/JSONObject;
    const-string v0, "cert"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1536
    .local v2, "cert":Ljava/lang/String;
    const-string v0, "cert_id"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1537
    .local v3, "certId":Ljava/lang/String;
    iget-object v0, p0, Lcom/baidu/sapi2/a$4;->f:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$4;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    iget-object v4, p0, Lcom/baidu/sapi2/a$4;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/sapi2/a$4;->e:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/baidu/sapi2/a$4;->b:Z

    iget-object v7, p0, Lcom/baidu/sapi2/a$4;->c:Lcom/baidu/sapi2/utils/SapiDataEncryptor;

    invoke-static/range {v0 .. v7}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/sapi2/utils/SapiDataEncryptor;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_23} :catch_24

    .line 1543
    .end local v2    # "cert":Ljava/lang/String;
    .end local v3    # "certId":Ljava/lang/String;
    .end local v11    # "jSONObject":Lorg/json/JSONObject;
    :goto_23
    return-void

    .line 1538
    :catch_24
    move-exception v10

    .line 1539
    .local v10, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/baidu/sapi2/a$4;->f:Lcom/baidu/sapi2/a;

    const/16 v5, -0x64

    iget-object v6, p0, Lcom/baidu/sapi2/a$4;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    iget-boolean v8, p0, Lcom/baidu/sapi2/a$4;->b:Z

    iget-object v9, p0, Lcom/baidu/sapi2/a$4;->c:Lcom/baidu/sapi2/utils/SapiDataEncryptor;

    move-object v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/baidu/sapi2/a;->a(ILcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;ZLcom/baidu/sapi2/utils/SapiDataEncryptor;)V

    .line 1540
    invoke-static {v10}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_23
.end method
