.class Lcom/baidu/sapi2/a$21;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->b(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/SapiCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/OAuthResult;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/sapi2/result/OAuthResult;Ljava/lang/String;)V
    .registers 6
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 3062
    iput-object p1, p0, Lcom/baidu/sapi2/a$21;->d:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$21;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iput-object p4, p0, Lcom/baidu/sapi2/a$21;->b:Lcom/baidu/sapi2/result/OAuthResult;

    iput-object p5, p0, Lcom/baidu/sapi2/a$21;->c:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 3104
    iget-object v0, p0, Lcom/baidu/sapi2/a$21;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3105
    iget-object v0, p0, Lcom/baidu/sapi2/a$21;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 3106
    iget-object v0, p0, Lcom/baidu/sapi2/a$21;->b:Lcom/baidu/sapi2/result/OAuthResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/OAuthResult;->setResultCode(I)V

    .line 3107
    iget-object v0, p0, Lcom/baidu/sapi2/a$21;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/a$21;->b:Lcom/baidu/sapi2/result/OAuthResult;

    invoke-interface {v0, v1}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 3113
    :goto_23
    return-void

    .line 3110
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/a$21;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->b()V

    .line 3111
    iget-object v0, p0, Lcom/baidu/sapi2/a$21;->d:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$21;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/a$21;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/a;->b(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;)V

    goto :goto_23
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 3071
    iget-object v0, p0, Lcom/baidu/sapi2/a$21;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v0}, Lcom/baidu/sapi2/callback/SapiCallback;->onFinish()V

    .line 3072
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 3066
    iget-object v0, p0, Lcom/baidu/sapi2/a$21;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v0}, Lcom/baidu/sapi2/callback/SapiCallback;->onStart()V

    .line 3067
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 8
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 3076
    iget-object v3, p0, Lcom/baidu/sapi2/a$21;->d:Lcom/baidu/sapi2/a;

    invoke-static {v3}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/a$a;->d()V

    .line 3078
    :try_start_9
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3079
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v3, "errno"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3080
    .local v2, "resultCode":I
    iget-object v3, p0, Lcom/baidu/sapi2/a$21;->b:Lcom/baidu/sapi2/result/OAuthResult;

    invoke-virtual {v3, v2}, Lcom/baidu/sapi2/result/OAuthResult;->setResultCode(I)V

    .line 3081
    packed-switch v2, :pswitch_data_80

    .line 3093
    iget-object v3, p0, Lcom/baidu/sapi2/a$21;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v4, p0, Lcom/baidu/sapi2/a$21;->b:Lcom/baidu/sapi2/result/OAuthResult;

    invoke-interface {v3, v4}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 3100
    .end local v1    # "obj":Lorg/json/JSONObject;
    .end local v2    # "resultCode":I
    :goto_27
    return-void

    .line 3083
    .restart local v1    # "obj":Lorg/json/JSONObject;
    .restart local v2    # "resultCode":I
    :pswitch_28
    iget-object v3, p0, Lcom/baidu/sapi2/a$21;->b:Lcom/baidu/sapi2/result/OAuthResult;

    const-string v4, "access_token"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/result/OAuthResult;->accessToken:Ljava/lang/String;

    .line 3084
    iget-object v3, p0, Lcom/baidu/sapi2/a$21;->b:Lcom/baidu/sapi2/result/OAuthResult;

    const-string v4, "expires_in"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/baidu/sapi2/result/OAuthResult;->expiresIn:I

    .line 3085
    iget-object v3, p0, Lcom/baidu/sapi2/a$21;->b:Lcom/baidu/sapi2/result/OAuthResult;

    const-string v4, "scope"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/result/OAuthResult;->scope:Ljava/lang/String;

    .line 3086
    iget-object v3, p0, Lcom/baidu/sapi2/a$21;->b:Lcom/baidu/sapi2/result/OAuthResult;

    const-string v4, "refresh_token"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/result/OAuthResult;->refreshToken:Ljava/lang/String;

    .line 3087
    iget-object v3, p0, Lcom/baidu/sapi2/a$21;->b:Lcom/baidu/sapi2/result/OAuthResult;

    const-string v4, "session_key"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/result/OAuthResult;->sessionKey:Ljava/lang/String;

    .line 3088
    iget-object v3, p0, Lcom/baidu/sapi2/a$21;->b:Lcom/baidu/sapi2/result/OAuthResult;

    const-string v4, "session_secret"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/result/OAuthResult;->sessionSecret:Ljava/lang/String;

    .line 3089
    iget-object v3, p0, Lcom/baidu/sapi2/a$21;->b:Lcom/baidu/sapi2/result/OAuthResult;

    iput-object p2, v3, Lcom/baidu/sapi2/result/OAuthResult;->extra:Ljava/lang/String;

    .line 3090
    iget-object v3, p0, Lcom/baidu/sapi2/a$21;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v4, p0, Lcom/baidu/sapi2/a$21;->b:Lcom/baidu/sapi2/result/OAuthResult;

    invoke-interface {v3, v4}, Lcom/baidu/sapi2/callback/SapiCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_6f} :catch_70

    goto :goto_27

    .line 3096
    .end local v1    # "obj":Lorg/json/JSONObject;
    .end local v2    # "resultCode":I
    :catch_70
    move-exception v0

    .line 3097
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/baidu/sapi2/a$21;->b:Lcom/baidu/sapi2/result/OAuthResult;

    const/16 v4, -0xca

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/result/OAuthResult;->setResultCode(I)V

    .line 3098
    iget-object v3, p0, Lcom/baidu/sapi2/a$21;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v4, p0, Lcom/baidu/sapi2/a$21;->b:Lcom/baidu/sapi2/result/OAuthResult;

    invoke-interface {v3, v4}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_27

    .line 3081
    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_28
    .end packed-switch
.end method
