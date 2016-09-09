.class Lcom/baidu/sapi2/a$2;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/GetDynamicPwdCallback;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/GetDynamicPwdCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/GetDynamicPwdResult;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/GetDynamicPwdCallback;Lcom/baidu/sapi2/result/GetDynamicPwdResult;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 1314
    iput-object p1, p0, Lcom/baidu/sapi2/a$2;->e:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$2;->a:Lcom/baidu/sapi2/callback/GetDynamicPwdCallback;

    iput-object p4, p0, Lcom/baidu/sapi2/a$2;->b:Lcom/baidu/sapi2/result/GetDynamicPwdResult;

    iput-object p5, p0, Lcom/baidu/sapi2/a$2;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/sapi2/a$2;->d:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 7
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/baidu/sapi2/a$2;->e:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1358
    iget-object v0, p0, Lcom/baidu/sapi2/a$2;->e:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 1359
    iget-object v0, p0, Lcom/baidu/sapi2/a$2;->b:Lcom/baidu/sapi2/result/GetDynamicPwdResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/GetDynamicPwdResult;->setResultCode(I)V

    .line 1360
    iget-object v0, p0, Lcom/baidu/sapi2/a$2;->a:Lcom/baidu/sapi2/callback/GetDynamicPwdCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/a$2;->b:Lcom/baidu/sapi2/result/GetDynamicPwdResult;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/callback/GetDynamicPwdCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1365
    :goto_23
    return-void

    .line 1362
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/a$2;->e:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->b()V

    .line 1363
    iget-object v0, p0, Lcom/baidu/sapi2/a$2;->e:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$2;->a:Lcom/baidu/sapi2/callback/GetDynamicPwdCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/a$2;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/sapi2/a$2;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/GetDynamicPwdCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/baidu/sapi2/a$2;->a:Lcom/baidu/sapi2/callback/GetDynamicPwdCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/GetDynamicPwdCallback;->onFinish()V

    .line 1323
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/baidu/sapi2/a$2;->a:Lcom/baidu/sapi2/callback/GetDynamicPwdCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/GetDynamicPwdCallback;->onStart()V

    .line 1318
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 10
    .param p1, "statusCode"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1327
    iget-object v5, p0, Lcom/baidu/sapi2/a$2;->e:Lcom/baidu/sapi2/a;

    invoke-static {v5}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/sapi2/a$a;->d()V

    .line 1328
    iget-object v5, p0, Lcom/baidu/sapi2/a$2;->e:Lcom/baidu/sapi2/a;

    invoke-virtual {v5, p2}, Lcom/baidu/sapi2/a;->b(Ljava/lang/String;)I

    move-result v2

    .line 1329
    .local v2, "resultCode":I
    iget-object v5, p0, Lcom/baidu/sapi2/a$2;->b:Lcom/baidu/sapi2/result/GetDynamicPwdResult;

    invoke-virtual {v5, v2}, Lcom/baidu/sapi2/result/GetDynamicPwdResult;->setResultCode(I)V

    .line 1331
    :try_start_14
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1332
    .local v1, "responseJSONObj":Lorg/json/JSONObject;
    const-string v5, "sdk"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1333
    .local v4, "sdkJSONObj":Lorg/json/JSONObject;
    const-string v5, "msg"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1334
    .local v3, "resultMsg":Ljava/lang/String;
    iget-object v5, p0, Lcom/baidu/sapi2/a$2;->b:Lcom/baidu/sapi2/result/GetDynamicPwdResult;

    invoke-virtual {v5, v3}, Lcom/baidu/sapi2/result/GetDynamicPwdResult;->setResultMsg(Ljava/lang/String;)V

    .line 1336
    sparse-switch v2, :sswitch_data_68

    .line 1346
    iget-object v5, p0, Lcom/baidu/sapi2/a$2;->a:Lcom/baidu/sapi2/callback/GetDynamicPwdCallback;

    iget-object v6, p0, Lcom/baidu/sapi2/a$2;->b:Lcom/baidu/sapi2/result/GetDynamicPwdResult;

    invoke-virtual {v5, v6}, Lcom/baidu/sapi2/callback/GetDynamicPwdCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1353
    .end local v1    # "responseJSONObj":Lorg/json/JSONObject;
    .end local v3    # "resultMsg":Ljava/lang/String;
    .end local v4    # "sdkJSONObj":Lorg/json/JSONObject;
    :goto_34
    return-void

    .line 1338
    .restart local v1    # "responseJSONObj":Lorg/json/JSONObject;
    .restart local v3    # "resultMsg":Ljava/lang/String;
    .restart local v4    # "sdkJSONObj":Lorg/json/JSONObject;
    :sswitch_35
    iget-object v5, p0, Lcom/baidu/sapi2/a$2;->a:Lcom/baidu/sapi2/callback/GetDynamicPwdCallback;

    iget-object v6, p0, Lcom/baidu/sapi2/a$2;->b:Lcom/baidu/sapi2/result/GetDynamicPwdResult;

    invoke-virtual {v5, v6}, Lcom/baidu/sapi2/callback/GetDynamicPwdCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3c} :catch_3d

    goto :goto_34

    .line 1349
    .end local v1    # "responseJSONObj":Lorg/json/JSONObject;
    .end local v3    # "resultMsg":Ljava/lang/String;
    .end local v4    # "sdkJSONObj":Lorg/json/JSONObject;
    :catch_3d
    move-exception v0

    .line 1350
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/baidu/sapi2/a$2;->a:Lcom/baidu/sapi2/callback/GetDynamicPwdCallback;

    iget-object v6, p0, Lcom/baidu/sapi2/a$2;->b:Lcom/baidu/sapi2/result/GetDynamicPwdResult;

    invoke-virtual {v5, v6}, Lcom/baidu/sapi2/callback/GetDynamicPwdCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1351
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_34

    .line 1341
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "responseJSONObj":Lorg/json/JSONObject;
    .restart local v3    # "resultMsg":Ljava/lang/String;
    .restart local v4    # "sdkJSONObj":Lorg/json/JSONObject;
    :sswitch_49
    :try_start_49
    iget-object v5, p0, Lcom/baidu/sapi2/a$2;->e:Lcom/baidu/sapi2/a;

    const-string v6, "vcodestr"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;Ljava/lang/String;)Ljava/lang/String;

    .line 1342
    iget-object v5, p0, Lcom/baidu/sapi2/a$2;->e:Lcom/baidu/sapi2/a;

    const-string v6, "vcodesign"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/sapi2/a;->b(Lcom/baidu/sapi2/a;Ljava/lang/String;)Ljava/lang/String;

    .line 1343
    iget-object v5, p0, Lcom/baidu/sapi2/a$2;->a:Lcom/baidu/sapi2/callback/GetDynamicPwdCallback;

    iget-object v6, p0, Lcom/baidu/sapi2/a$2;->b:Lcom/baidu/sapi2/result/GetDynamicPwdResult;

    invoke-virtual {v5, v6}, Lcom/baidu/sapi2/callback/GetDynamicPwdCallback;->onCaptchaRequired(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_66} :catch_3d

    goto :goto_34

    .line 1336
    nop

    :sswitch_data_68
    .sparse-switch
        0x0 -> :sswitch_35
        0x5 -> :sswitch_49
    .end sparse-switch
.end method
