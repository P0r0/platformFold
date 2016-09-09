.class public Lcom/gionee/gsp/service/account/sdk/task/GetBaiduPCSAccessTokenTask;
.super Landroid/os/AsyncTask;
.source "GetBaiduPCSAccessTokenTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GetBaiduPCSAccessTokenTask"


# instance fields
.field private mListener:Lcom/gionee/gsp/service/account/sdk/listener/BaiduPCSListener;


# direct methods
.method public constructor <init>(Lcom/gionee/gsp/service/account/sdk/listener/BaiduPCSListener;Landroid/content/Context;)V
    .registers 3
    .param p1, "listener"    # Lcom/gionee/gsp/service/account/sdk/listener/BaiduPCSListener;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/gionee/gsp/service/account/sdk/task/GetBaiduPCSAccessTokenTask;->mListener:Lcom/gionee/gsp/service/account/sdk/listener/BaiduPCSListener;

    .line 19
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/gionee/gsp/service/account/sdk/task/GetBaiduPCSAccessTokenTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 23
    const/4 v3, 0x0

    aget-object v0, p1, v3

    .line 24
    .local v0, "appId":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v2, p1, v3

    .line 25
    .local v2, "invalidToken":Ljava/lang/String;
    const/4 v1, 0x0

    .line 32
    .local v1, "baiduPCSAccessToken":Ljava/lang/String;
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/gionee/gsp/service/account/sdk/task/GetBaiduPCSAccessTokenTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 12
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 38
    const-string v7, "GetBaiduPCSAccessTokenTask"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "onPostExecute,result="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_ac

    .line 41
    :try_start_1d
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 42
    .local v3, "obj":Lorg/json/JSONObject;
    const-string v7, "status"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_59

    .line 43
    const-string v7, "status"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 44
    .local v6, "status":Ljava/lang/String;
    const-string v7, "unlogin"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 45
    iget-object v7, p0, Lcom/gionee/gsp/service/account/sdk/task/GetBaiduPCSAccessTokenTask;->mListener:Lcom/gionee/gsp/service/account/sdk/listener/BaiduPCSListener;

    invoke-interface {v7}, Lcom/gionee/gsp/service/account/sdk/listener/BaiduPCSListener;->onUnlogin()V

    .line 84
    .end local v3    # "obj":Lorg/json/JSONObject;
    .end local v6    # "status":Ljava/lang/String;
    :goto_3d
    return-void

    .line 47
    .restart local v3    # "obj":Lorg/json/JSONObject;
    .restart local v6    # "status":Ljava/lang/String;
    :cond_3e
    iget-object v7, p0, Lcom/gionee/gsp/service/account/sdk/task/GetBaiduPCSAccessTokenTask;->mListener:Lcom/gionee/gsp/service/account/sdk/listener/BaiduPCSListener;

    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8}, Ljava/lang/Exception;-><init>()V

    invoke-interface {v7, v8}, Lcom/gionee/gsp/service/account/sdk/listener/BaiduPCSListener;->onError(Ljava/lang/Exception;)V
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_48} :catch_49

    goto :goto_3d

    .line 76
    .end local v3    # "obj":Lorg/json/JSONObject;
    .end local v6    # "status":Ljava/lang/String;
    :catch_49
    move-exception v1

    .line 77
    .local v1, "e":Lorg/json/JSONException;
    const-string v7, "GetBaiduPCSAccessTokenTask"

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    iget-object v7, p0, Lcom/gionee/gsp/service/account/sdk/task/GetBaiduPCSAccessTokenTask;->mListener:Lcom/gionee/gsp/service/account/sdk/listener/BaiduPCSListener;

    invoke-interface {v7, v1}, Lcom/gionee/gsp/service/account/sdk/listener/BaiduPCSListener;->onError(Ljava/lang/Exception;)V

    goto :goto_3d

    .line 52
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v3    # "obj":Lorg/json/JSONObject;
    :cond_59
    const/4 v0, 0x0

    .line 53
    .local v0, "accessToken":Ljava/lang/String;
    const/4 v2, 0x0

    .line 54
    .local v2, "expiresIn":Ljava/lang/String;
    const/4 v4, 0x0

    .line 55
    .local v4, "refreshToken":Ljava/lang/String;
    const/4 v5, 0x0

    .line 56
    .local v5, "scope":Ljava/lang/String;
    :try_start_5d
    const-string v7, "access_token"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 57
    const-string v7, "access_token"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    :cond_6b
    const-string v7, "expires_in"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_79

    .line 60
    const-string v7, "expires_in"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    :cond_79
    const-string v7, "refresh_token"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_87

    .line 63
    const-string v7, "refresh_token"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 65
    :cond_87
    const-string v7, "scope"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_95

    .line 66
    const-string v7, "scope"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 70
    :cond_95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a1

    .line 71
    iget-object v7, p0, Lcom/gionee/gsp/service/account/sdk/task/GetBaiduPCSAccessTokenTask;->mListener:Lcom/gionee/gsp/service/account/sdk/listener/BaiduPCSListener;

    invoke-interface {v7, v0, v4, v2, v5}, Lcom/gionee/gsp/service/account/sdk/listener/BaiduPCSListener;->onComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    .line 73
    :cond_a1
    iget-object v7, p0, Lcom/gionee/gsp/service/account/sdk/task/GetBaiduPCSAccessTokenTask;->mListener:Lcom/gionee/gsp/service/account/sdk/listener/BaiduPCSListener;

    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8}, Ljava/lang/Exception;-><init>()V

    invoke-interface {v7, v8}, Lcom/gionee/gsp/service/account/sdk/listener/BaiduPCSListener;->onError(Ljava/lang/Exception;)V
    :try_end_ab
    .catch Lorg/json/JSONException; {:try_start_5d .. :try_end_ab} :catch_49

    goto :goto_3d

    .line 81
    .end local v0    # "accessToken":Ljava/lang/String;
    .end local v2    # "expiresIn":Ljava/lang/String;
    .end local v3    # "obj":Lorg/json/JSONObject;
    .end local v4    # "refreshToken":Ljava/lang/String;
    .end local v5    # "scope":Ljava/lang/String;
    :cond_ac
    const-string v7, "GetBaiduPCSAccessTokenTask"

    const-string v8, "result is empty"

    invoke-static {v7, v8}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    iget-object v7, p0, Lcom/gionee/gsp/service/account/sdk/task/GetBaiduPCSAccessTokenTask;->mListener:Lcom/gionee/gsp/service/account/sdk/listener/BaiduPCSListener;

    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8}, Ljava/lang/Exception;-><init>()V

    invoke-interface {v7, v8}, Lcom/gionee/gsp/service/account/sdk/listener/BaiduPCSListener;->onError(Ljava/lang/Exception;)V

    goto :goto_3d
.end method
