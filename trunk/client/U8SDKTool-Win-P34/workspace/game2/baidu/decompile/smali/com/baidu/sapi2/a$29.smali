.class Lcom/baidu/sapi2/a$29;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/FaceLoginCallback;Lcom/baidu/sapi2/dto/FaceLoginDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/FaceLoginCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/FaceLoginResult;

.field final synthetic c:Lcom/baidu/sapi2/dto/FaceLoginDTO;

.field final synthetic d:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/FaceLoginCallback;Lcom/baidu/sapi2/result/FaceLoginResult;Lcom/baidu/sapi2/dto/FaceLoginDTO;)V
    .registers 6
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 3781
    iput-object p1, p0, Lcom/baidu/sapi2/a$29;->d:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$29;->a:Lcom/baidu/sapi2/callback/FaceLoginCallback;

    iput-object p4, p0, Lcom/baidu/sapi2/a$29;->b:Lcom/baidu/sapi2/result/FaceLoginResult;

    iput-object p5, p0, Lcom/baidu/sapi2/a$29;->c:Lcom/baidu/sapi2/dto/FaceLoginDTO;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 3818
    iget-object v0, p0, Lcom/baidu/sapi2/a$29;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3819
    iget-object v0, p0, Lcom/baidu/sapi2/a$29;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 3820
    iget-object v0, p0, Lcom/baidu/sapi2/a$29;->b:Lcom/baidu/sapi2/result/FaceLoginResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/FaceLoginResult;->setResultCode(I)V

    .line 3821
    iget-object v0, p0, Lcom/baidu/sapi2/a$29;->a:Lcom/baidu/sapi2/callback/FaceLoginCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/a$29;->b:Lcom/baidu/sapi2/result/FaceLoginResult;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/callback/FaceLoginCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 3827
    :goto_23
    return-void

    .line 3824
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/a$29;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->b()V

    .line 3825
    iget-object v0, p0, Lcom/baidu/sapi2/a$29;->d:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$29;->a:Lcom/baidu/sapi2/callback/FaceLoginCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/a$29;->c:Lcom/baidu/sapi2/dto/FaceLoginDTO;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/FaceLoginCallback;Lcom/baidu/sapi2/dto/FaceLoginDTO;)V

    goto :goto_23
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 3790
    iget-object v0, p0, Lcom/baidu/sapi2/a$29;->a:Lcom/baidu/sapi2/callback/FaceLoginCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/FaceLoginCallback;->onFinish()V

    .line 3791
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 3785
    iget-object v0, p0, Lcom/baidu/sapi2/a$29;->a:Lcom/baidu/sapi2/callback/FaceLoginCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/FaceLoginCallback;->onStart()V

    .line 3786
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 9
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 3795
    iget-object v4, p0, Lcom/baidu/sapi2/a$29;->d:Lcom/baidu/sapi2/a;

    invoke-static {v4}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/sapi2/a$a;->d()V

    .line 3796
    iget-object v4, p0, Lcom/baidu/sapi2/a$29;->d:Lcom/baidu/sapi2/a;

    invoke-virtual {v4, p2}, Lcom/baidu/sapi2/a;->b(Ljava/lang/String;)I

    move-result v3

    .line 3797
    .local v3, "resultCode":I
    iget-object v4, p0, Lcom/baidu/sapi2/a$29;->b:Lcom/baidu/sapi2/result/FaceLoginResult;

    invoke-virtual {v4, v3}, Lcom/baidu/sapi2/result/FaceLoginResult;->setResultCode(I)V

    .line 3799
    :try_start_14
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3800
    .local v2, "jsonObject":Lorg/json/JSONObject;
    if-nez v3, :cond_30

    .line 3801
    iget-object v4, p0, Lcom/baidu/sapi2/a$29;->d:Lcom/baidu/sapi2/a;

    invoke-virtual {v4, v2}, Lcom/baidu/sapi2/a;->a(Lorg/json/JSONObject;)Lcom/baidu/sapi2/SapiAccount;

    move-result-object v0

    .line 3802
    .local v0, "account":Lcom/baidu/sapi2/SapiAccount;
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/baidu/sapi2/SapiAccountManager;->validate(Lcom/baidu/sapi2/SapiAccount;)Z

    .line 3803
    iget-object v4, p0, Lcom/baidu/sapi2/a$29;->a:Lcom/baidu/sapi2/callback/FaceLoginCallback;

    iget-object v5, p0, Lcom/baidu/sapi2/a$29;->b:Lcom/baidu/sapi2/result/FaceLoginResult;

    invoke-virtual {v4, v5}, Lcom/baidu/sapi2/callback/FaceLoginCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 3814
    .end local v0    # "account":Lcom/baidu/sapi2/SapiAccount;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_2f
    return-void

    .line 3804
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_30
    const/4 v4, 0x4

    if-ne v4, v3, :cond_4b

    .line 3805
    iget-object v4, p0, Lcom/baidu/sapi2/a$29;->a:Lcom/baidu/sapi2/callback/FaceLoginCallback;

    iget-object v5, p0, Lcom/baidu/sapi2/a$29;->b:Lcom/baidu/sapi2/result/FaceLoginResult;

    invoke-virtual {v4, v5}, Lcom/baidu/sapi2/callback/FaceLoginCallback;->onPwdVerifyFailure(Lcom/baidu/sapi2/result/FaceLoginResult;)V
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_3a} :catch_3b

    goto :goto_2f

    .line 3810
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_3b
    move-exception v1

    .line 3811
    .local v1, "e":Lorg/json/JSONException;
    iget-object v4, p0, Lcom/baidu/sapi2/a$29;->b:Lcom/baidu/sapi2/result/FaceLoginResult;

    const/16 v5, -0xca

    invoke-virtual {v4, v5}, Lcom/baidu/sapi2/result/FaceLoginResult;->setResultCode(I)V

    .line 3812
    iget-object v4, p0, Lcom/baidu/sapi2/a$29;->a:Lcom/baidu/sapi2/callback/FaceLoginCallback;

    iget-object v5, p0, Lcom/baidu/sapi2/a$29;->b:Lcom/baidu/sapi2/result/FaceLoginResult;

    invoke-virtual {v4, v5}, Lcom/baidu/sapi2/callback/FaceLoginCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_2f

    .line 3807
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_4b
    :try_start_4b
    iget-object v4, p0, Lcom/baidu/sapi2/a$29;->b:Lcom/baidu/sapi2/result/FaceLoginResult;

    const-string v5, "errmsg"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/sapi2/result/FaceLoginResult;->setResultMsg(Ljava/lang/String;)V

    .line 3808
    iget-object v4, p0, Lcom/baidu/sapi2/a$29;->a:Lcom/baidu/sapi2/callback/FaceLoginCallback;

    iget-object v5, p0, Lcom/baidu/sapi2/a$29;->b:Lcom/baidu/sapi2/result/FaceLoginResult;

    invoke-virtual {v4, v5}, Lcom/baidu/sapi2/callback/FaceLoginCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_5d
    .catch Lorg/json/JSONException; {:try_start_4b .. :try_end_5d} :catch_3b

    goto :goto_2f
.end method
