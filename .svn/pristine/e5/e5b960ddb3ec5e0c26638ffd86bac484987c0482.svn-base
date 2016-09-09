.class Lcom/baidu/sapi2/a$27;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/VoiceVerifyCallback;Lcom/baidu/sapi2/dto/VoiceVerifyDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/VoiceVerifyCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/VoiceVerifyResult;

.field final synthetic c:Lcom/baidu/sapi2/dto/VoiceVerifyDTO;

.field final synthetic d:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/VoiceVerifyCallback;Lcom/baidu/sapi2/result/VoiceVerifyResult;Lcom/baidu/sapi2/dto/VoiceVerifyDTO;)V
    .registers 6
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 3559
    iput-object p1, p0, Lcom/baidu/sapi2/a$27;->d:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$27;->a:Lcom/baidu/sapi2/callback/VoiceVerifyCallback;

    iput-object p4, p0, Lcom/baidu/sapi2/a$27;->b:Lcom/baidu/sapi2/result/VoiceVerifyResult;

    iput-object p5, p0, Lcom/baidu/sapi2/a$27;->c:Lcom/baidu/sapi2/dto/VoiceVerifyDTO;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 3592
    iget-object v0, p0, Lcom/baidu/sapi2/a$27;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3593
    iget-object v0, p0, Lcom/baidu/sapi2/a$27;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 3594
    iget-object v0, p0, Lcom/baidu/sapi2/a$27;->b:Lcom/baidu/sapi2/result/VoiceVerifyResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/VoiceVerifyResult;->setResultCode(I)V

    .line 3595
    iget-object v0, p0, Lcom/baidu/sapi2/a$27;->a:Lcom/baidu/sapi2/callback/VoiceVerifyCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/a$27;->b:Lcom/baidu/sapi2/result/VoiceVerifyResult;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/callback/VoiceVerifyCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 3601
    :goto_23
    return-void

    .line 3598
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/a$27;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->b()V

    .line 3599
    iget-object v0, p0, Lcom/baidu/sapi2/a$27;->d:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$27;->a:Lcom/baidu/sapi2/callback/VoiceVerifyCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/a$27;->c:Lcom/baidu/sapi2/dto/VoiceVerifyDTO;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/VoiceVerifyCallback;Lcom/baidu/sapi2/dto/VoiceVerifyDTO;)V

    goto :goto_23
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 3568
    iget-object v0, p0, Lcom/baidu/sapi2/a$27;->a:Lcom/baidu/sapi2/callback/VoiceVerifyCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/VoiceVerifyCallback;->onFinish()V

    .line 3569
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 3563
    iget-object v0, p0, Lcom/baidu/sapi2/a$27;->a:Lcom/baidu/sapi2/callback/VoiceVerifyCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/VoiceVerifyCallback;->onStart()V

    .line 3564
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 8
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 3573
    iget-object v3, p0, Lcom/baidu/sapi2/a$27;->d:Lcom/baidu/sapi2/a;

    invoke-static {v3}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/a$a;->d()V

    .line 3574
    iget-object v3, p0, Lcom/baidu/sapi2/a$27;->d:Lcom/baidu/sapi2/a;

    invoke-virtual {v3, p2}, Lcom/baidu/sapi2/a;->b(Ljava/lang/String;)I

    move-result v2

    .line 3575
    .local v2, "resultCode":I
    iget-object v3, p0, Lcom/baidu/sapi2/a$27;->b:Lcom/baidu/sapi2/result/VoiceVerifyResult;

    invoke-virtual {v3, v2}, Lcom/baidu/sapi2/result/VoiceVerifyResult;->setResultCode(I)V

    .line 3577
    :try_start_14
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3578
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-nez v2, :cond_23

    .line 3579
    iget-object v3, p0, Lcom/baidu/sapi2/a$27;->a:Lcom/baidu/sapi2/callback/VoiceVerifyCallback;

    iget-object v4, p0, Lcom/baidu/sapi2/a$27;->b:Lcom/baidu/sapi2/result/VoiceVerifyResult;

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/callback/VoiceVerifyCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 3588
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_22
    return-void

    .line 3581
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_23
    iget-object v3, p0, Lcom/baidu/sapi2/a$27;->b:Lcom/baidu/sapi2/result/VoiceVerifyResult;

    const-string v4, "errmsg"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/result/VoiceVerifyResult;->setResultMsg(Ljava/lang/String;)V

    .line 3582
    iget-object v3, p0, Lcom/baidu/sapi2/a$27;->a:Lcom/baidu/sapi2/callback/VoiceVerifyCallback;

    iget-object v4, p0, Lcom/baidu/sapi2/a$27;->b:Lcom/baidu/sapi2/result/VoiceVerifyResult;

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/callback/VoiceVerifyCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_35} :catch_36

    goto :goto_22

    .line 3584
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_36
    move-exception v0

    .line 3585
    .local v0, "e":Lorg/json/JSONException;
    iget-object v3, p0, Lcom/baidu/sapi2/a$27;->b:Lcom/baidu/sapi2/result/VoiceVerifyResult;

    const/16 v4, -0xca

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/result/VoiceVerifyResult;->setResultCode(I)V

    .line 3586
    iget-object v3, p0, Lcom/baidu/sapi2/a$27;->a:Lcom/baidu/sapi2/callback/VoiceVerifyCallback;

    iget-object v4, p0, Lcom/baidu/sapi2/a$27;->b:Lcom/baidu/sapi2/result/VoiceVerifyResult;

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/callback/VoiceVerifyCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_22
.end method
