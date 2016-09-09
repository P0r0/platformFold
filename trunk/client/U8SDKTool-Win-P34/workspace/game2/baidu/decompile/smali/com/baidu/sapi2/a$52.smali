.class Lcom/baidu/sapi2/a$52;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/GetRegCodeCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/GetRegCodeCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/GetRegCodeResult;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/GetRegCodeCallback;Lcom/baidu/sapi2/result/GetRegCodeResult;Ljava/lang/String;)V
    .registers 6
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 902
    iput-object p1, p0, Lcom/baidu/sapi2/a$52;->d:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$52;->a:Lcom/baidu/sapi2/callback/GetRegCodeCallback;

    iput-object p4, p0, Lcom/baidu/sapi2/a$52;->b:Lcom/baidu/sapi2/result/GetRegCodeResult;

    iput-object p5, p0, Lcom/baidu/sapi2/a$52;->c:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 943
    iget-object v0, p0, Lcom/baidu/sapi2/a$52;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 944
    iget-object v0, p0, Lcom/baidu/sapi2/a$52;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 945
    iget-object v0, p0, Lcom/baidu/sapi2/a$52;->b:Lcom/baidu/sapi2/result/GetRegCodeResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/GetRegCodeResult;->setResultCode(I)V

    .line 946
    iget-object v0, p0, Lcom/baidu/sapi2/a$52;->a:Lcom/baidu/sapi2/callback/GetRegCodeCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/a$52;->b:Lcom/baidu/sapi2/result/GetRegCodeResult;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/callback/GetRegCodeCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 951
    :goto_23
    return-void

    .line 948
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/a$52;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->b()V

    .line 949
    iget-object v0, p0, Lcom/baidu/sapi2/a$52;->d:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$52;->a:Lcom/baidu/sapi2/callback/GetRegCodeCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/a$52;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/GetRegCodeCallback;Ljava/lang/String;)V

    goto :goto_23
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 910
    iget-object v0, p0, Lcom/baidu/sapi2/a$52;->a:Lcom/baidu/sapi2/callback/GetRegCodeCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/GetRegCodeCallback;->onFinish()V

    .line 911
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 905
    iget-object v0, p0, Lcom/baidu/sapi2/a$52;->a:Lcom/baidu/sapi2/callback/GetRegCodeCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/GetRegCodeCallback;->onStart()V

    .line 906
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 10
    .param p1, "statusCode"    # I
    .param p2, "responseText"    # Ljava/lang/String;

    .prologue
    .line 915
    iget-object v5, p0, Lcom/baidu/sapi2/a$52;->d:Lcom/baidu/sapi2/a;

    invoke-static {v5}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/sapi2/a$a;->d()V

    .line 916
    iget-object v5, p0, Lcom/baidu/sapi2/a$52;->d:Lcom/baidu/sapi2/a;

    invoke-virtual {v5, p2}, Lcom/baidu/sapi2/a;->b(Ljava/lang/String;)I

    move-result v2

    .line 917
    .local v2, "resultCode":I
    iget-object v5, p0, Lcom/baidu/sapi2/a$52;->b:Lcom/baidu/sapi2/result/GetRegCodeResult;

    invoke-virtual {v5, v2}, Lcom/baidu/sapi2/result/GetRegCodeResult;->setResultCode(I)V

    .line 919
    :try_start_14
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 920
    .local v1, "responseJSONObj":Lorg/json/JSONObject;
    const-string v5, "sdk"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 921
    .local v4, "sdkJSONObj":Lorg/json/JSONObject;
    const-string v5, "msg"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 922
    .local v3, "resultMsg":Ljava/lang/String;
    iget-object v5, p0, Lcom/baidu/sapi2/a$52;->b:Lcom/baidu/sapi2/result/GetRegCodeResult;

    invoke-virtual {v5, v3}, Lcom/baidu/sapi2/result/GetRegCodeResult;->setResultMsg(Ljava/lang/String;)V

    .line 924
    sparse-switch v2, :sswitch_data_52

    .line 932
    iget-object v5, p0, Lcom/baidu/sapi2/a$52;->a:Lcom/baidu/sapi2/callback/GetRegCodeCallback;

    iget-object v6, p0, Lcom/baidu/sapi2/a$52;->b:Lcom/baidu/sapi2/result/GetRegCodeResult;

    invoke-virtual {v5, v6}, Lcom/baidu/sapi2/callback/GetRegCodeCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 939
    .end local v1    # "responseJSONObj":Lorg/json/JSONObject;
    .end local v3    # "resultMsg":Ljava/lang/String;
    .end local v4    # "sdkJSONObj":Lorg/json/JSONObject;
    :goto_34
    return-void

    .line 926
    .restart local v1    # "responseJSONObj":Lorg/json/JSONObject;
    .restart local v3    # "resultMsg":Ljava/lang/String;
    .restart local v4    # "sdkJSONObj":Lorg/json/JSONObject;
    :sswitch_35
    iget-object v5, p0, Lcom/baidu/sapi2/a$52;->a:Lcom/baidu/sapi2/callback/GetRegCodeCallback;

    iget-object v6, p0, Lcom/baidu/sapi2/a$52;->b:Lcom/baidu/sapi2/result/GetRegCodeResult;

    invoke-virtual {v5, v6}, Lcom/baidu/sapi2/callback/GetRegCodeCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3c} :catch_3d

    goto :goto_34

    .line 935
    .end local v1    # "responseJSONObj":Lorg/json/JSONObject;
    .end local v3    # "resultMsg":Ljava/lang/String;
    .end local v4    # "sdkJSONObj":Lorg/json/JSONObject;
    :catch_3d
    move-exception v0

    .line 936
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/baidu/sapi2/a$52;->a:Lcom/baidu/sapi2/callback/GetRegCodeCallback;

    iget-object v6, p0, Lcom/baidu/sapi2/a$52;->b:Lcom/baidu/sapi2/result/GetRegCodeResult;

    invoke-virtual {v5, v6}, Lcom/baidu/sapi2/callback/GetRegCodeCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 937
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_34

    .line 929
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "responseJSONObj":Lorg/json/JSONObject;
    .restart local v3    # "resultMsg":Ljava/lang/String;
    .restart local v4    # "sdkJSONObj":Lorg/json/JSONObject;
    :sswitch_49
    :try_start_49
    iget-object v5, p0, Lcom/baidu/sapi2/a$52;->a:Lcom/baidu/sapi2/callback/GetRegCodeCallback;

    iget-object v6, p0, Lcom/baidu/sapi2/a$52;->b:Lcom/baidu/sapi2/result/GetRegCodeResult;

    invoke-virtual {v5, v6}, Lcom/baidu/sapi2/callback/GetRegCodeCallback;->onPhoneNumberExist(Lcom/baidu/sapi2/result/GetRegCodeResult;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_50} :catch_3d

    goto :goto_34

    .line 924
    nop

    :sswitch_data_52
    .sparse-switch
        0x0 -> :sswitch_35
        0x8 -> :sswitch_49
    .end sparse-switch
.end method
