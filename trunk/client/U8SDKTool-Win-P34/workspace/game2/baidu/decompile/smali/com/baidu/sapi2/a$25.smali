.class Lcom/baidu/sapi2/a$25;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/VoiceCodeSetCallback;Lcom/baidu/sapi2/dto/VoiceCodeSetDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/VoiceCodeSetCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/VoiceCodeSetResult;

.field final synthetic c:Lcom/baidu/sapi2/dto/VoiceCodeSetDTO;

.field final synthetic d:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/VoiceCodeSetCallback;Lcom/baidu/sapi2/result/VoiceCodeSetResult;Lcom/baidu/sapi2/dto/VoiceCodeSetDTO;)V
    .registers 6
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 3376
    iput-object p1, p0, Lcom/baidu/sapi2/a$25;->d:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$25;->a:Lcom/baidu/sapi2/callback/VoiceCodeSetCallback;

    iput-object p4, p0, Lcom/baidu/sapi2/a$25;->b:Lcom/baidu/sapi2/result/VoiceCodeSetResult;

    iput-object p5, p0, Lcom/baidu/sapi2/a$25;->c:Lcom/baidu/sapi2/dto/VoiceCodeSetDTO;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 3410
    iget-object v0, p0, Lcom/baidu/sapi2/a$25;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3411
    iget-object v0, p0, Lcom/baidu/sapi2/a$25;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 3412
    iget-object v0, p0, Lcom/baidu/sapi2/a$25;->b:Lcom/baidu/sapi2/result/VoiceCodeSetResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/VoiceCodeSetResult;->setResultCode(I)V

    .line 3413
    iget-object v0, p0, Lcom/baidu/sapi2/a$25;->a:Lcom/baidu/sapi2/callback/VoiceCodeSetCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/a$25;->b:Lcom/baidu/sapi2/result/VoiceCodeSetResult;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/callback/VoiceCodeSetCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 3419
    :goto_23
    return-void

    .line 3416
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/a$25;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->b()V

    .line 3417
    iget-object v0, p0, Lcom/baidu/sapi2/a$25;->d:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$25;->a:Lcom/baidu/sapi2/callback/VoiceCodeSetCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/a$25;->c:Lcom/baidu/sapi2/dto/VoiceCodeSetDTO;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/VoiceCodeSetCallback;Lcom/baidu/sapi2/dto/VoiceCodeSetDTO;)V

    goto :goto_23
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 3385
    iget-object v0, p0, Lcom/baidu/sapi2/a$25;->a:Lcom/baidu/sapi2/callback/VoiceCodeSetCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/VoiceCodeSetCallback;->onFinish()V

    .line 3386
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 3380
    iget-object v0, p0, Lcom/baidu/sapi2/a$25;->a:Lcom/baidu/sapi2/callback/VoiceCodeSetCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/VoiceCodeSetCallback;->onStart()V

    .line 3381
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 8
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 3390
    iget-object v3, p0, Lcom/baidu/sapi2/a$25;->d:Lcom/baidu/sapi2/a;

    invoke-static {v3}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/a$a;->d()V

    .line 3392
    :try_start_9
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3393
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v3, "errno"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3394
    .local v2, "resultCode":I
    iget-object v3, p0, Lcom/baidu/sapi2/a$25;->b:Lcom/baidu/sapi2/result/VoiceCodeSetResult;

    invoke-virtual {v3, v2}, Lcom/baidu/sapi2/result/VoiceCodeSetResult;->setResultCode(I)V

    .line 3395
    if-nez v2, :cond_27

    .line 3396
    iget-object v3, p0, Lcom/baidu/sapi2/a$25;->a:Lcom/baidu/sapi2/callback/VoiceCodeSetCallback;

    iget-object v4, p0, Lcom/baidu/sapi2/a$25;->b:Lcom/baidu/sapi2/result/VoiceCodeSetResult;

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/callback/VoiceCodeSetCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 3406
    .end local v1    # "obj":Lorg/json/JSONObject;
    .end local v2    # "resultCode":I
    :goto_26
    return-void

    .line 3397
    .restart local v1    # "obj":Lorg/json/JSONObject;
    .restart local v2    # "resultCode":I
    :cond_27
    const/4 v3, 0x1

    if-ne v3, v2, :cond_42

    .line 3398
    iget-object v3, p0, Lcom/baidu/sapi2/a$25;->a:Lcom/baidu/sapi2/callback/VoiceCodeSetCallback;

    iget-object v4, p0, Lcom/baidu/sapi2/a$25;->b:Lcom/baidu/sapi2/result/VoiceCodeSetResult;

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/callback/VoiceCodeSetCallback;->onBdussExpired(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_31} :catch_32

    goto :goto_26

    .line 3402
    .end local v1    # "obj":Lorg/json/JSONObject;
    .end local v2    # "resultCode":I
    :catch_32
    move-exception v0

    .line 3403
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/baidu/sapi2/a$25;->b:Lcom/baidu/sapi2/result/VoiceCodeSetResult;

    const/16 v4, -0xca

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/result/VoiceCodeSetResult;->setResultCode(I)V

    .line 3404
    iget-object v3, p0, Lcom/baidu/sapi2/a$25;->a:Lcom/baidu/sapi2/callback/VoiceCodeSetCallback;

    iget-object v4, p0, Lcom/baidu/sapi2/a$25;->b:Lcom/baidu/sapi2/result/VoiceCodeSetResult;

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/callback/VoiceCodeSetCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_26

    .line 3400
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "obj":Lorg/json/JSONObject;
    .restart local v2    # "resultCode":I
    :cond_42
    :try_start_42
    iget-object v3, p0, Lcom/baidu/sapi2/a$25;->a:Lcom/baidu/sapi2/callback/VoiceCodeSetCallback;

    iget-object v4, p0, Lcom/baidu/sapi2/a$25;->b:Lcom/baidu/sapi2/result/VoiceCodeSetResult;

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/callback/VoiceCodeSetCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_49} :catch_32

    goto :goto_26
.end method
