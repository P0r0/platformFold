.class Lcom/baidu/sapi2/a$13;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/GetUserInfoCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/GetUserInfoCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/GetUserInfoResult;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/GetUserInfoCallback;Lcom/baidu/sapi2/result/GetUserInfoResult;Ljava/lang/String;)V
    .registers 6
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 2211
    iput-object p1, p0, Lcom/baidu/sapi2/a$13;->d:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$13;->a:Lcom/baidu/sapi2/callback/GetUserInfoCallback;

    iput-object p4, p0, Lcom/baidu/sapi2/a$13;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    iput-object p5, p0, Lcom/baidu/sapi2/a$13;->c:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 2265
    iget-object v0, p0, Lcom/baidu/sapi2/a$13;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2266
    iget-object v0, p0, Lcom/baidu/sapi2/a$13;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 2267
    iget-object v0, p0, Lcom/baidu/sapi2/a$13;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/GetUserInfoResult;->setResultCode(I)V

    .line 2268
    iget-object v0, p0, Lcom/baidu/sapi2/a$13;->a:Lcom/baidu/sapi2/callback/GetUserInfoCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/a$13;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/callback/GetUserInfoCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2273
    :goto_23
    return-void

    .line 2270
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/a$13;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->b()V

    .line 2271
    iget-object v0, p0, Lcom/baidu/sapi2/a$13;->d:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$13;->a:Lcom/baidu/sapi2/callback/GetUserInfoCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/a$13;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/GetUserInfoCallback;Ljava/lang/String;)V

    goto :goto_23
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 2220
    iget-object v0, p0, Lcom/baidu/sapi2/a$13;->a:Lcom/baidu/sapi2/callback/GetUserInfoCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/GetUserInfoCallback;->onFinish()V

    .line 2221
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 2215
    iget-object v0, p0, Lcom/baidu/sapi2/a$13;->a:Lcom/baidu/sapi2/callback/GetUserInfoCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/GetUserInfoCallback;->onStart()V

    .line 2216
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 12
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 2225
    iget-object v4, p0, Lcom/baidu/sapi2/a$13;->d:Lcom/baidu/sapi2/a;

    invoke-static {v4}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/sapi2/a$a;->d()V

    .line 2226
    iget-object v4, p0, Lcom/baidu/sapi2/a$13;->d:Lcom/baidu/sapi2/a;

    invoke-virtual {v4, p2}, Lcom/baidu/sapi2/a;->b(Ljava/lang/String;)I

    move-result v3

    .line 2227
    .local v3, "resultCode":I
    iget-object v4, p0, Lcom/baidu/sapi2/a$13;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    invoke-virtual {v4, v3}, Lcom/baidu/sapi2/result/GetUserInfoResult;->setResultCode(I)V

    .line 2228
    sparse-switch v3, :sswitch_data_d0

    .line 2258
    iget-object v4, p0, Lcom/baidu/sapi2/a$13;->a:Lcom/baidu/sapi2/callback/GetUserInfoCallback;

    iget-object v5, p0, Lcom/baidu/sapi2/a$13;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    invoke-virtual {v4, v5}, Lcom/baidu/sapi2/callback/GetUserInfoCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2261
    :goto_1e
    return-void

    .line 2231
    :sswitch_1f
    :try_start_1f
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2232
    .local v1, "obj":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/baidu/sapi2/a$13;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    const-string v5, "portrait_tag"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/sapi2/result/GetUserInfoResult;->portraitSign:Ljava/lang/String;

    .line 2233
    iget-object v4, p0, Lcom/baidu/sapi2/a$13;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    const-string v5, "0"

    iget-object v6, p0, Lcom/baidu/sapi2/a$13;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    iget-object v6, v6, Lcom/baidu/sapi2/result/GetUserInfoResult;->portraitSign:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/baidu/sapi2/result/GetUserInfoResult;->isInitialPortrait:Z

    .line 2234
    const-string v4, "portrait"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2235
    .local v2, "portrait":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5f

    .line 2236
    iget-object v4, p0, Lcom/baidu/sapi2/a$13;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    const-string v5, "http://himg.bdimg.com/sys/portrait/item/%s.jpg?%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/baidu/sapi2/a$13;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    iget-object v8, v8, Lcom/baidu/sapi2/result/GetUserInfoResult;->portraitSign:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/sapi2/result/GetUserInfoResult;->portrait:Ljava/lang/String;

    .line 2241
    :cond_5f
    iget-object v4, p0, Lcom/baidu/sapi2/a$13;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    const-string v5, "username"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/sapi2/result/GetUserInfoResult;->username:Ljava/lang/String;

    .line 2242
    iget-object v4, p0, Lcom/baidu/sapi2/a$13;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    const-string v5, "userid"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/sapi2/result/GetUserInfoResult;->uid:Ljava/lang/String;

    .line 2243
    iget-object v4, p0, Lcom/baidu/sapi2/a$13;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    const-string v5, "displayname"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/sapi2/result/GetUserInfoResult;->displayname:Ljava/lang/String;

    .line 2244
    iget-object v4, p0, Lcom/baidu/sapi2/a$13;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    const-string v5, "1"

    const-string v6, "incomplete_user"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/baidu/sapi2/result/GetUserInfoResult;->incompleteUser:Z

    .line 2245
    iget-object v4, p0, Lcom/baidu/sapi2/a$13;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    const-string v5, "securemobil"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/sapi2/result/GetUserInfoResult;->secureMobile:Ljava/lang/String;

    .line 2246
    iget-object v4, p0, Lcom/baidu/sapi2/a$13;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    const-string v5, "secureemail"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/sapi2/result/GetUserInfoResult;->secureEmail:Ljava/lang/String;

    .line 2247
    iget-object v4, p0, Lcom/baidu/sapi2/a$13;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    const-string v5, "1"

    const-string v6, "have_psw"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/baidu/sapi2/result/GetUserInfoResult;->havePwd:Z

    .line 2248
    iget-object v4, p0, Lcom/baidu/sapi2/a$13;->a:Lcom/baidu/sapi2/callback/GetUserInfoCallback;

    iget-object v5, p0, Lcom/baidu/sapi2/a$13;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    invoke-virtual {v4, v5}, Lcom/baidu/sapi2/callback/GetUserInfoCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_b8} :catch_ba

    goto/16 :goto_1e

    .line 2249
    .end local v1    # "obj":Lorg/json/JSONObject;
    .end local v2    # "portrait":Ljava/lang/String;
    :catch_ba
    move-exception v0

    .line 2250
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/baidu/sapi2/a$13;->a:Lcom/baidu/sapi2/callback/GetUserInfoCallback;

    iget-object v5, p0, Lcom/baidu/sapi2/a$13;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    invoke-virtual {v4, v5}, Lcom/baidu/sapi2/callback/GetUserInfoCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2251
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 2255
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_c7
    iget-object v4, p0, Lcom/baidu/sapi2/a$13;->a:Lcom/baidu/sapi2/callback/GetUserInfoCallback;

    iget-object v5, p0, Lcom/baidu/sapi2/a$13;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    invoke-virtual {v4, v5}, Lcom/baidu/sapi2/callback/GetUserInfoCallback;->onBdussExpired(Lcom/baidu/sapi2/result/SapiResult;)V

    goto/16 :goto_1e

    .line 2228
    :sswitch_data_d0
    .sparse-switch
        0x0 -> :sswitch_1f
        0x61a95 -> :sswitch_c7
    .end sparse-switch
.end method
