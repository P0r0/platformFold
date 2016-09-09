.class Lcom/baidu/sapi2/a$43;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/cloudsdk/common/http/RequestParams;Landroid/os/Handler;Ljava/lang/Runnable;[Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/result/FastRegResult;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Lcom/baidu/sapi2/callback/SapiCallback;

.field final synthetic e:Lcom/baidu/cloudsdk/common/http/RequestParams;

.field final synthetic f:[Z

.field final synthetic g:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/result/FastRegResult;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/cloudsdk/common/http/RequestParams;[Z)V
    .registers 9
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 4767
    iput-object p1, p0, Lcom/baidu/sapi2/a$43;->g:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$43;->a:Lcom/baidu/sapi2/result/FastRegResult;

    iput-object p4, p0, Lcom/baidu/sapi2/a$43;->b:Landroid/os/Handler;

    iput-object p5, p0, Lcom/baidu/sapi2/a$43;->c:Ljava/lang/Runnable;

    iput-object p6, p0, Lcom/baidu/sapi2/a$43;->d:Lcom/baidu/sapi2/callback/SapiCallback;

    iput-object p7, p0, Lcom/baidu/sapi2/a$43;->e:Lcom/baidu/cloudsdk/common/http/RequestParams;

    iput-object p8, p0, Lcom/baidu/sapi2/a$43;->f:[Z

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 9
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 4819
    iget-object v0, p0, Lcom/baidu/sapi2/a$43;->g:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 4820
    iget-object v0, p0, Lcom/baidu/sapi2/a$43;->g:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 4821
    iget-object v0, p0, Lcom/baidu/sapi2/a$43;->a:Lcom/baidu/sapi2/result/FastRegResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/FastRegResult;->setResultCode(I)V

    .line 4822
    iget-object v0, p0, Lcom/baidu/sapi2/a$43;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/sapi2/a$43;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4823
    iget-object v0, p0, Lcom/baidu/sapi2/a$43;->d:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v0}, Lcom/baidu/sapi2/callback/SapiCallback;->onFinish()V

    .line 4824
    iget-object v0, p0, Lcom/baidu/sapi2/a$43;->d:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/a$43;->a:Lcom/baidu/sapi2/result/FastRegResult;

    invoke-interface {v0, v1}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 4829
    :goto_2f
    return-void

    .line 4826
    :cond_30
    iget-object v0, p0, Lcom/baidu/sapi2/a$43;->g:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->b()V

    .line 4827
    iget-object v0, p0, Lcom/baidu/sapi2/a$43;->g:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$43;->d:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/a$43;->e:Lcom/baidu/cloudsdk/common/http/RequestParams;

    iget-object v3, p0, Lcom/baidu/sapi2/a$43;->b:Landroid/os/Handler;

    iget-object v4, p0, Lcom/baidu/sapi2/a$43;->c:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/baidu/sapi2/a$43;->f:[Z

    invoke-static/range {v0 .. v5}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/cloudsdk/common/http/RequestParams;Landroid/os/Handler;Ljava/lang/Runnable;[Z)V

    goto :goto_2f
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 13
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 4771
    iget-object v6, p0, Lcom/baidu/sapi2/a$43;->g:Lcom/baidu/sapi2/a;

    invoke-virtual {v6, p2}, Lcom/baidu/sapi2/a;->b(Ljava/lang/String;)I

    move-result v3

    .line 4772
    .local v3, "resultCode":I
    iget-object v6, p0, Lcom/baidu/sapi2/a$43;->a:Lcom/baidu/sapi2/result/FastRegResult;

    invoke-virtual {v6, v3}, Lcom/baidu/sapi2/result/FastRegResult;->setResultCode(I)V

    .line 4774
    :try_start_b
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4775
    .local v2, "responseJSONObj":Lorg/json/JSONObject;
    const-string v6, "sdk"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 4776
    .local v5, "sdkJSONObj":Lorg/json/JSONObject;
    const-string v6, "msg"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4777
    .local v4, "resultMsg":Ljava/lang/String;
    iget-object v6, p0, Lcom/baidu/sapi2/a$43;->a:Lcom/baidu/sapi2/result/FastRegResult;

    invoke-virtual {v6, v4}, Lcom/baidu/sapi2/result/FastRegResult;->setResultMsg(Ljava/lang/String;)V

    .line 4779
    sparse-switch v3, :sswitch_data_be

    .line 4802
    iget-object v6, p0, Lcom/baidu/sapi2/a$43;->g:Lcom/baidu/sapi2/a;

    invoke-static {v6}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/sapi2/a$a;->d()V

    .line 4803
    iget-object v6, p0, Lcom/baidu/sapi2/a$43;->b:Landroid/os/Handler;

    iget-object v7, p0, Lcom/baidu/sapi2/a$43;->c:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4804
    iget-object v6, p0, Lcom/baidu/sapi2/a$43;->d:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v6}, Lcom/baidu/sapi2/callback/SapiCallback;->onFinish()V

    .line 4805
    iget-object v6, p0, Lcom/baidu/sapi2/a$43;->d:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v7, p0, Lcom/baidu/sapi2/a$43;->a:Lcom/baidu/sapi2/result/FastRegResult;

    invoke-interface {v6, v7}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 4815
    .end local v2    # "responseJSONObj":Lorg/json/JSONObject;
    .end local v4    # "resultMsg":Ljava/lang/String;
    .end local v5    # "sdkJSONObj":Lorg/json/JSONObject;
    :goto_40
    return-void

    .line 4781
    .restart local v2    # "responseJSONObj":Lorg/json/JSONObject;
    .restart local v4    # "resultMsg":Ljava/lang/String;
    .restart local v5    # "sdkJSONObj":Lorg/json/JSONObject;
    :sswitch_41
    iget-object v6, p0, Lcom/baidu/sapi2/a$43;->g:Lcom/baidu/sapi2/a;

    invoke-static {v6}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/sapi2/a$a;->d()V

    .line 4782
    iget-object v6, p0, Lcom/baidu/sapi2/a$43;->g:Lcom/baidu/sapi2/a;

    invoke-virtual {v6, v2}, Lcom/baidu/sapi2/a;->a(Lorg/json/JSONObject;)Lcom/baidu/sapi2/SapiAccount;

    move-result-object v0

    .line 4783
    .local v0, "account":Lcom/baidu/sapi2/SapiAccount;
    invoke-static {}, Lcom/baidu/sapi2/share/a;->a()Lcom/baidu/sapi2/share/a;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/baidu/sapi2/share/a;->a(Lcom/baidu/sapi2/SapiAccount;)V

    .line 4784
    iget-object v6, p0, Lcom/baidu/sapi2/a$43;->a:Lcom/baidu/sapi2/result/FastRegResult;

    const-string v7, "newreg"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v6, Lcom/baidu/sapi2/result/FastRegResult;->newReg:Z

    .line 4785
    iget-object v6, p0, Lcom/baidu/sapi2/a$43;->a:Lcom/baidu/sapi2/result/FastRegResult;

    const-string v7, "authsid"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/baidu/sapi2/result/FastRegResult;->authSid:Ljava/lang/String;

    .line 4786
    const-string v6, "null"

    iget-object v7, p0, Lcom/baidu/sapi2/a$43;->a:Lcom/baidu/sapi2/result/FastRegResult;

    iget-object v7, v7, Lcom/baidu/sapi2/result/FastRegResult;->authSid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 4787
    iget-object v6, p0, Lcom/baidu/sapi2/a$43;->a:Lcom/baidu/sapi2/result/FastRegResult;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/baidu/sapi2/result/FastRegResult;->authSid:Ljava/lang/String;

    .line 4789
    :cond_7c
    iget-object v6, p0, Lcom/baidu/sapi2/a$43;->b:Landroid/os/Handler;

    iget-object v7, p0, Lcom/baidu/sapi2/a$43;->c:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4790
    iget-object v6, p0, Lcom/baidu/sapi2/a$43;->d:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v6}, Lcom/baidu/sapi2/callback/SapiCallback;->onFinish()V

    .line 4791
    iget-object v6, p0, Lcom/baidu/sapi2/a$43;->d:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v7, p0, Lcom/baidu/sapi2/a$43;->a:Lcom/baidu/sapi2/result/FastRegResult;

    invoke-interface {v6, v7}, Lcom/baidu/sapi2/callback/SapiCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_8f} :catch_90

    goto :goto_40

    .line 4808
    .end local v0    # "account":Lcom/baidu/sapi2/SapiAccount;
    .end local v2    # "responseJSONObj":Lorg/json/JSONObject;
    .end local v4    # "resultMsg":Ljava/lang/String;
    .end local v5    # "sdkJSONObj":Lorg/json/JSONObject;
    :catch_90
    move-exception v1

    .line 4809
    .local v1, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/baidu/sapi2/a$43;->g:Lcom/baidu/sapi2/a;

    invoke-static {v6}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/sapi2/a$a;->d()V

    .line 4810
    iget-object v6, p0, Lcom/baidu/sapi2/a$43;->b:Landroid/os/Handler;

    iget-object v7, p0, Lcom/baidu/sapi2/a$43;->c:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4811
    iget-object v6, p0, Lcom/baidu/sapi2/a$43;->d:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v6}, Lcom/baidu/sapi2/callback/SapiCallback;->onFinish()V

    .line 4812
    iget-object v6, p0, Lcom/baidu/sapi2/a$43;->d:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v7, p0, Lcom/baidu/sapi2/a$43;->a:Lcom/baidu/sapi2/result/FastRegResult;

    invoke-interface {v6, v7}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 4813
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_40

    .line 4794
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "responseJSONObj":Lorg/json/JSONObject;
    .restart local v4    # "resultMsg":Ljava/lang/String;
    .restart local v5    # "sdkJSONObj":Lorg/json/JSONObject;
    :sswitch_b1
    :try_start_b1
    iget-object v6, p0, Lcom/baidu/sapi2/a$43;->b:Landroid/os/Handler;

    new-instance v7, Lcom/baidu/sapi2/a$43$1;

    invoke-direct {v7, p0}, Lcom/baidu/sapi2/a$43$1;-><init>(Lcom/baidu/sapi2/a$43;)V

    const-wide/16 v8, 0x190

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_bd} :catch_90

    goto :goto_40

    .line 4779
    :sswitch_data_be
    .sparse-switch
        0x0 -> :sswitch_41
        0x7 -> :sswitch_b1
    .end sparse-switch
.end method
