.class Lcom/baidu/sapi2/a$8;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;Lcom/baidu/sapi2/dto/SetPopularPortraitDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/result/SetPopularPortraitResult;

.field final synthetic b:Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;

.field final synthetic c:Lcom/baidu/sapi2/dto/SetPopularPortraitDTO;

.field final synthetic d:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/result/SetPopularPortraitResult;Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;Lcom/baidu/sapi2/dto/SetPopularPortraitDTO;)V
    .registers 6
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 1876
    iput-object p1, p0, Lcom/baidu/sapi2/a$8;->d:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$8;->a:Lcom/baidu/sapi2/result/SetPopularPortraitResult;

    iput-object p4, p0, Lcom/baidu/sapi2/a$8;->b:Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;

    iput-object p5, p0, Lcom/baidu/sapi2/a$8;->c:Lcom/baidu/sapi2/dto/SetPopularPortraitDTO;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1879
    iget-object v0, p0, Lcom/baidu/sapi2/a$8;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1880
    iget-object v0, p0, Lcom/baidu/sapi2/a$8;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 1881
    iget-object v0, p0, Lcom/baidu/sapi2/a$8;->a:Lcom/baidu/sapi2/result/SetPopularPortraitResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/SetPopularPortraitResult;->setResultCode(I)V

    .line 1882
    iget-object v0, p0, Lcom/baidu/sapi2/a$8;->b:Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/a$8;->a:Lcom/baidu/sapi2/result/SetPopularPortraitResult;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1887
    :goto_23
    return-void

    .line 1884
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/a$8;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->b()V

    .line 1885
    iget-object v0, p0, Lcom/baidu/sapi2/a$8;->d:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$8;->b:Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/a$8;->c:Lcom/baidu/sapi2/dto/SetPopularPortraitDTO;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;Lcom/baidu/sapi2/dto/SetPopularPortraitDTO;)V

    goto :goto_23
.end method

.method public onFinish()V
    .registers 2

    .prologue
    .line 1916
    iget-object v0, p0, Lcom/baidu/sapi2/a$8;->b:Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;->onFinish()V

    .line 1917
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/baidu/sapi2/a$8;->b:Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;->onStart()V

    .line 1912
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 8
    .param p1, "statusCode"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1891
    iget-object v3, p0, Lcom/baidu/sapi2/a$8;->d:Lcom/baidu/sapi2/a;

    invoke-static {v3}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/a$a;->d()V

    .line 1893
    :try_start_9
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1894
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v3, "errno"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1895
    .local v1, "errorNo":I
    iget-object v3, p0, Lcom/baidu/sapi2/a$8;->a:Lcom/baidu/sapi2/result/SetPopularPortraitResult;

    invoke-virtual {v3, v1}, Lcom/baidu/sapi2/result/SetPopularPortraitResult;->setResultCode(I)V

    .line 1896
    iget-object v3, p0, Lcom/baidu/sapi2/a$8;->a:Lcom/baidu/sapi2/result/SetPopularPortraitResult;

    const-string v4, "errmsg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/result/SetPopularPortraitResult;->setResultMsg(Ljava/lang/String;)V

    .line 1897
    if-nez v1, :cond_2e

    .line 1898
    iget-object v3, p0, Lcom/baidu/sapi2/a$8;->b:Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;

    iget-object v4, p0, Lcom/baidu/sapi2/a$8;->a:Lcom/baidu/sapi2/result/SetPopularPortraitResult;

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1907
    .end local v1    # "errorNo":I
    .end local v2    # "obj":Lorg/json/JSONObject;
    :goto_2d
    return-void

    .line 1900
    .restart local v1    # "errorNo":I
    .restart local v2    # "obj":Lorg/json/JSONObject;
    :cond_2e
    iget-object v3, p0, Lcom/baidu/sapi2/a$8;->b:Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;

    iget-object v4, p0, Lcom/baidu/sapi2/a$8;->a:Lcom/baidu/sapi2/result/SetPopularPortraitResult;

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_35} :catch_36

    goto :goto_2d

    .line 1902
    .end local v1    # "errorNo":I
    .end local v2    # "obj":Lorg/json/JSONObject;
    :catch_36
    move-exception v0

    .line 1903
    .local v0, "e":Lorg/json/JSONException;
    iget-object v3, p0, Lcom/baidu/sapi2/a$8;->a:Lcom/baidu/sapi2/result/SetPopularPortraitResult;

    const/16 v4, -0xca

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/result/SetPopularPortraitResult;->setResultCode(I)V

    .line 1904
    iget-object v3, p0, Lcom/baidu/sapi2/a$8;->b:Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;

    iget-object v4, p0, Lcom/baidu/sapi2/a$8;->a:Lcom/baidu/sapi2/result/SetPopularPortraitResult;

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1905
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_2d
.end method
