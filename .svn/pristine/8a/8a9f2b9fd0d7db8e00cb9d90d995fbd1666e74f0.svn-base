.class Lcom/baidu/sapi2/a$35;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/QrPcLoginCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/QrPcLoginCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/QrPcLoginResult;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/QrPcLoginCallback;Lcom/baidu/sapi2/result/QrPcLoginResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 4246
    iput-object p1, p0, Lcom/baidu/sapi2/a$35;->f:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$35;->a:Lcom/baidu/sapi2/callback/QrPcLoginCallback;

    iput-object p4, p0, Lcom/baidu/sapi2/a$35;->b:Lcom/baidu/sapi2/result/QrPcLoginResult;

    iput-object p5, p0, Lcom/baidu/sapi2/a$35;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/sapi2/a$35;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/baidu/sapi2/a$35;->e:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 8
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 4259
    iget-object v0, p0, Lcom/baidu/sapi2/a$35;->f:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 4260
    iget-object v0, p0, Lcom/baidu/sapi2/a$35;->f:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 4261
    iget-object v0, p0, Lcom/baidu/sapi2/a$35;->b:Lcom/baidu/sapi2/result/QrPcLoginResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/QrPcLoginResult;->setResultCode(I)V

    .line 4262
    iget-object v0, p0, Lcom/baidu/sapi2/a$35;->a:Lcom/baidu/sapi2/callback/QrPcLoginCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/a$35;->b:Lcom/baidu/sapi2/result/QrPcLoginResult;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/callback/QrPcLoginCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 4267
    :goto_23
    return-void

    .line 4264
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/a$35;->f:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->b()V

    .line 4265
    iget-object v0, p0, Lcom/baidu/sapi2/a$35;->f:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$35;->a:Lcom/baidu/sapi2/callback/QrPcLoginCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/a$35;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/sapi2/a$35;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/sapi2/a$35;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/QrPcLoginCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 4254
    iget-object v0, p0, Lcom/baidu/sapi2/a$35;->a:Lcom/baidu/sapi2/callback/QrPcLoginCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/QrPcLoginCallback;->onFinish()V

    .line 4255
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 4249
    iget-object v0, p0, Lcom/baidu/sapi2/a$35;->a:Lcom/baidu/sapi2/callback/QrPcLoginCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/QrPcLoginCallback;->onStart()V

    .line 4250
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 9
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 4271
    iget-object v4, p0, Lcom/baidu/sapi2/a$35;->f:Lcom/baidu/sapi2/a;

    invoke-static {v4}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/sapi2/a$a;->d()V

    .line 4273
    :try_start_9
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4274
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v4, "errno"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 4275
    .local v3, "resultCode":I
    iget-object v4, p0, Lcom/baidu/sapi2/a$35;->b:Lcom/baidu/sapi2/result/QrPcLoginResult;

    invoke-virtual {v4, v3}, Lcom/baidu/sapi2/result/QrPcLoginResult;->setResultCode(I)V

    .line 4276
    iget-object v4, p0, Lcom/baidu/sapi2/a$35;->b:Lcom/baidu/sapi2/result/QrPcLoginResult;

    invoke-virtual {v4}, Lcom/baidu/sapi2/result/QrPcLoginResult;->getResultCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_78

    .line 4294
    iget-object v4, p0, Lcom/baidu/sapi2/a$35;->a:Lcom/baidu/sapi2/callback/QrPcLoginCallback;

    iget-object v5, p0, Lcom/baidu/sapi2/a$35;->b:Lcom/baidu/sapi2/result/QrPcLoginResult;

    invoke-virtual {v4, v5}, Lcom/baidu/sapi2/callback/QrPcLoginCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 4301
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v3    # "resultCode":I
    :goto_2d
    return-void

    .line 4278
    .restart local v2    # "obj":Lorg/json/JSONObject;
    .restart local v3    # "resultCode":I
    :sswitch_2e
    const-string v4, "local"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 4279
    .local v1, "locale":Lorg/json/JSONObject;
    if-eqz v1, :cond_54

    .line 4280
    iget-object v4, p0, Lcom/baidu/sapi2/a$35;->b:Lcom/baidu/sapi2/result/QrPcLoginResult;

    const-string v5, "country"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/sapi2/result/QrPcLoginResult;->country:Ljava/lang/String;

    .line 4281
    iget-object v4, p0, Lcom/baidu/sapi2/a$35;->b:Lcom/baidu/sapi2/result/QrPcLoginResult;

    const-string v5, "provice"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/sapi2/result/QrPcLoginResult;->province:Ljava/lang/String;

    .line 4282
    iget-object v4, p0, Lcom/baidu/sapi2/a$35;->b:Lcom/baidu/sapi2/result/QrPcLoginResult;

    const-string v5, "city"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/sapi2/result/QrPcLoginResult;->city:Ljava/lang/String;

    .line 4284
    :cond_54
    iget-object v4, p0, Lcom/baidu/sapi2/a$35;->a:Lcom/baidu/sapi2/callback/QrPcLoginCallback;

    iget-object v5, p0, Lcom/baidu/sapi2/a$35;->b:Lcom/baidu/sapi2/result/QrPcLoginResult;

    invoke-virtual {v4, v5}, Lcom/baidu/sapi2/callback/QrPcLoginCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_5b} :catch_5c

    goto :goto_2d

    .line 4297
    .end local v1    # "locale":Lorg/json/JSONObject;
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v3    # "resultCode":I
    :catch_5c
    move-exception v0

    .line 4298
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/baidu/sapi2/a$35;->a:Lcom/baidu/sapi2/callback/QrPcLoginCallback;

    iget-object v5, p0, Lcom/baidu/sapi2/a$35;->b:Lcom/baidu/sapi2/result/QrPcLoginResult;

    invoke-virtual {v4, v5}, Lcom/baidu/sapi2/callback/QrPcLoginCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 4299
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_2d

    .line 4287
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "obj":Lorg/json/JSONObject;
    .restart local v3    # "resultCode":I
    :sswitch_68
    :try_start_68
    iget-object v4, p0, Lcom/baidu/sapi2/a$35;->a:Lcom/baidu/sapi2/callback/QrPcLoginCallback;

    iget-object v5, p0, Lcom/baidu/sapi2/a$35;->b:Lcom/baidu/sapi2/result/QrPcLoginResult;

    invoke-virtual {v4, v5}, Lcom/baidu/sapi2/callback/QrPcLoginCallback;->onIncompleteUser(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_2d

    .line 4291
    :sswitch_70
    iget-object v4, p0, Lcom/baidu/sapi2/a$35;->a:Lcom/baidu/sapi2/callback/QrPcLoginCallback;

    iget-object v5, p0, Lcom/baidu/sapi2/a$35;->b:Lcom/baidu/sapi2/result/QrPcLoginResult;

    invoke-virtual {v4, v5}, Lcom/baidu/sapi2/callback/QrPcLoginCallback;->onBdussExpired(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_77} :catch_5c

    goto :goto_2d

    .line 4276
    :sswitch_data_78
    .sparse-switch
        0x0 -> :sswitch_2e
        0x2 -> :sswitch_70
        0x3 -> :sswitch_68
        0x27166 -> :sswitch_70
    .end sparse-switch
.end method
