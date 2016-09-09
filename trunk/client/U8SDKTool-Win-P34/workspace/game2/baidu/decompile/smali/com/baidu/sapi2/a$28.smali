.class Lcom/baidu/sapi2/a$28;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/FaceCheckCallback;Lcom/baidu/sapi2/dto/FaceCheckDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/FaceCheckCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/FaceCheckResult;

.field final synthetic c:Lcom/baidu/sapi2/dto/FaceCheckDTO;

.field final synthetic d:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/FaceCheckCallback;Lcom/baidu/sapi2/result/FaceCheckResult;Lcom/baidu/sapi2/dto/FaceCheckDTO;)V
    .registers 6
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 3662
    iput-object p1, p0, Lcom/baidu/sapi2/a$28;->d:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$28;->a:Lcom/baidu/sapi2/callback/FaceCheckCallback;

    iput-object p4, p0, Lcom/baidu/sapi2/a$28;->b:Lcom/baidu/sapi2/result/FaceCheckResult;

    iput-object p5, p0, Lcom/baidu/sapi2/a$28;->c:Lcom/baidu/sapi2/dto/FaceCheckDTO;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 3714
    iget-object v0, p0, Lcom/baidu/sapi2/a$28;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3715
    iget-object v0, p0, Lcom/baidu/sapi2/a$28;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 3716
    iget-object v0, p0, Lcom/baidu/sapi2/a$28;->b:Lcom/baidu/sapi2/result/FaceCheckResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/FaceCheckResult;->setResultCode(I)V

    .line 3717
    iget-object v0, p0, Lcom/baidu/sapi2/a$28;->a:Lcom/baidu/sapi2/callback/FaceCheckCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/a$28;->b:Lcom/baidu/sapi2/result/FaceCheckResult;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/callback/FaceCheckCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 3723
    :goto_23
    return-void

    .line 3720
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/a$28;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->b()V

    .line 3721
    iget-object v0, p0, Lcom/baidu/sapi2/a$28;->d:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$28;->a:Lcom/baidu/sapi2/callback/FaceCheckCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/a$28;->c:Lcom/baidu/sapi2/dto/FaceCheckDTO;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/FaceCheckCallback;Lcom/baidu/sapi2/dto/FaceCheckDTO;)V

    goto :goto_23
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 3671
    iget-object v0, p0, Lcom/baidu/sapi2/a$28;->a:Lcom/baidu/sapi2/callback/FaceCheckCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/FaceCheckCallback;->onFinish()V

    .line 3672
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 3666
    iget-object v0, p0, Lcom/baidu/sapi2/a$28;->a:Lcom/baidu/sapi2/callback/FaceCheckCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/FaceCheckCallback;->onStart()V

    .line 3667
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 11
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3676
    iget-object v5, p0, Lcom/baidu/sapi2/a$28;->d:Lcom/baidu/sapi2/a;

    invoke-static {v5}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/sapi2/a$a;->d()V

    .line 3677
    iget-object v5, p0, Lcom/baidu/sapi2/a$28;->d:Lcom/baidu/sapi2/a;

    invoke-virtual {v5, p2}, Lcom/baidu/sapi2/a;->b(Ljava/lang/String;)I

    move-result v2

    .line 3678
    .local v2, "resultCode":I
    iget-object v5, p0, Lcom/baidu/sapi2/a$28;->b:Lcom/baidu/sapi2/result/FaceCheckResult;

    invoke-virtual {v5, v2}, Lcom/baidu/sapi2/result/FaceCheckResult;->setResultCode(I)V

    .line 3680
    :try_start_16
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3681
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-nez v2, :cond_9a

    .line 3682
    iget-object v5, p0, Lcom/baidu/sapi2/a$28;->b:Lcom/baidu/sapi2/result/FaceCheckResult;

    const-string v6, "faceid"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/baidu/sapi2/result/FaceCheckResult;->faceId:Ljava/lang/String;

    .line 3683
    iget-object v5, p0, Lcom/baidu/sapi2/a$28;->b:Lcom/baidu/sapi2/result/FaceCheckResult;

    iget-object v6, p0, Lcom/baidu/sapi2/a$28;->b:Lcom/baidu/sapi2/result/FaceCheckResult;

    iget-object v6, v6, Lcom/baidu/sapi2/result/FaceCheckResult;->faceId:Ljava/lang/String;

    sget-object v7, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->b:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/baidu/sapi2/result/FaceCheckResult;->uid:Ljava/lang/String;

    .line 3685
    iget-object v6, p0, Lcom/baidu/sapi2/a$28;->b:Lcom/baidu/sapi2/result/FaceCheckResult;

    const-string v5, "hasface"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v3, :cond_50

    move v5, v3

    :goto_40
    iput-boolean v5, v6, Lcom/baidu/sapi2/result/FaceCheckResult;->hasFace:Z

    .line 3686
    iget-object v5, p0, Lcom/baidu/sapi2/a$28;->b:Lcom/baidu/sapi2/result/FaceCheckResult;

    iget-boolean v5, v5, Lcom/baidu/sapi2/result/FaceCheckResult;->hasFace:Z

    if-nez v5, :cond_52

    .line 3687
    iget-object v3, p0, Lcom/baidu/sapi2/a$28;->a:Lcom/baidu/sapi2/callback/FaceCheckCallback;

    iget-object v4, p0, Lcom/baidu/sapi2/a$28;->b:Lcom/baidu/sapi2/result/FaceCheckResult;

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/callback/FaceCheckCallback;->onNoRegistered(Lcom/baidu/sapi2/result/FaceCheckResult;)V

    .line 3710
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_4f
    return-void

    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_50
    move v5, v4

    .line 3685
    goto :goto_40

    .line 3689
    :cond_52
    iget-object v5, p0, Lcom/baidu/sapi2/a$28;->b:Lcom/baidu/sapi2/result/FaceCheckResult;

    const-string v6, "isTrusted"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_86

    :goto_5c
    iput-boolean v3, v5, Lcom/baidu/sapi2/result/FaceCheckResult;->isTrusted:Z

    .line 3690
    iget-object v3, p0, Lcom/baidu/sapi2/a$28;->b:Lcom/baidu/sapi2/result/FaceCheckResult;

    iget-boolean v3, v3, Lcom/baidu/sapi2/result/FaceCheckResult;->isTrusted:Z

    if-eqz v3, :cond_88

    .line 3691
    iget-object v3, p0, Lcom/baidu/sapi2/a$28;->b:Lcom/baidu/sapi2/result/FaceCheckResult;

    const-string v4, "authsid"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/result/FaceCheckResult;->authId:Ljava/lang/String;

    .line 3692
    iget-object v3, p0, Lcom/baidu/sapi2/a$28;->a:Lcom/baidu/sapi2/callback/FaceCheckCallback;

    iget-object v4, p0, Lcom/baidu/sapi2/a$28;->b:Lcom/baidu/sapi2/result/FaceCheckResult;

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/callback/FaceCheckCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_75
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_75} :catch_76

    goto :goto_4f

    .line 3706
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_76
    move-exception v0

    .line 3707
    .local v0, "e":Lorg/json/JSONException;
    iget-object v3, p0, Lcom/baidu/sapi2/a$28;->b:Lcom/baidu/sapi2/result/FaceCheckResult;

    const/16 v4, -0xca

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/result/FaceCheckResult;->setResultCode(I)V

    .line 3708
    iget-object v3, p0, Lcom/baidu/sapi2/a$28;->a:Lcom/baidu/sapi2/callback/FaceCheckCallback;

    iget-object v4, p0, Lcom/baidu/sapi2/a$28;->b:Lcom/baidu/sapi2/result/FaceCheckResult;

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/callback/FaceCheckCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_4f

    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_86
    move v3, v4

    .line 3689
    goto :goto_5c

    .line 3694
    :cond_88
    :try_start_88
    iget-object v3, p0, Lcom/baidu/sapi2/a$28;->b:Lcom/baidu/sapi2/result/FaceCheckResult;

    const-string v4, "authtoken"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/result/FaceCheckResult;->authToken:Ljava/lang/String;

    .line 3695
    iget-object v3, p0, Lcom/baidu/sapi2/a$28;->a:Lcom/baidu/sapi2/callback/FaceCheckCallback;

    iget-object v4, p0, Lcom/baidu/sapi2/a$28;->b:Lcom/baidu/sapi2/result/FaceCheckResult;

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/callback/FaceCheckCallback;->onNeedVerify(Lcom/baidu/sapi2/result/FaceCheckResult;)V

    goto :goto_4f

    .line 3698
    :cond_9a
    const/4 v4, 0x3

    if-ne v4, v2, :cond_a5

    .line 3699
    iget-object v3, p0, Lcom/baidu/sapi2/a$28;->a:Lcom/baidu/sapi2/callback/FaceCheckCallback;

    iget-object v4, p0, Lcom/baidu/sapi2/a$28;->b:Lcom/baidu/sapi2/result/FaceCheckResult;

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/callback/FaceCheckCallback;->onAccountTypeConflict(Lcom/baidu/sapi2/result/FaceCheckResult;)V

    goto :goto_4f

    .line 3700
    :cond_a5
    if-ne v3, v2, :cond_af

    .line 3701
    iget-object v3, p0, Lcom/baidu/sapi2/a$28;->a:Lcom/baidu/sapi2/callback/FaceCheckCallback;

    iget-object v4, p0, Lcom/baidu/sapi2/a$28;->b:Lcom/baidu/sapi2/result/FaceCheckResult;

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/callback/FaceCheckCallback;->onBdussExpired(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_4f

    .line 3703
    :cond_af
    iget-object v3, p0, Lcom/baidu/sapi2/a$28;->b:Lcom/baidu/sapi2/result/FaceCheckResult;

    const-string v4, "errmsg"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/result/FaceCheckResult;->setResultMsg(Ljava/lang/String;)V

    .line 3704
    iget-object v3, p0, Lcom/baidu/sapi2/a$28;->a:Lcom/baidu/sapi2/callback/FaceCheckCallback;

    iget-object v4, p0, Lcom/baidu/sapi2/a$28;->b:Lcom/baidu/sapi2/result/FaceCheckResult;

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/callback/FaceCheckCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_c1
    .catch Lorg/json/JSONException; {:try_start_88 .. :try_end_c1} :catch_76

    goto :goto_4f
.end method
