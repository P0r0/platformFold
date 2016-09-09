.class public Lcom/gionee/gsp/service/account/sdk/task/GetSinaWeiboAccessTokenTask;
.super Landroid/os/AsyncTask;
.source "GetSinaWeiboAccessTokenTask.java"


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
.field private static final TAG:Ljava/lang/String; = "GetSinaWeiboAccessTokenTask"


# instance fields
.field private mListener:Lcom/gionee/gsp/service/account/sdk/listener/SinaWeiboListener;


# direct methods
.method public constructor <init>(Lcom/gionee/gsp/service/account/sdk/listener/SinaWeiboListener;Landroid/content/Context;)V
    .registers 3
    .param p1, "listener"    # Lcom/gionee/gsp/service/account/sdk/listener/SinaWeiboListener;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/gionee/gsp/service/account/sdk/task/GetSinaWeiboAccessTokenTask;->mListener:Lcom/gionee/gsp/service/account/sdk/listener/SinaWeiboListener;

    .line 19
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/gionee/gsp/service/account/sdk/task/GetSinaWeiboAccessTokenTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 23
    const/4 v0, 0x0

    .line 30
    .local v0, "sinaWeiboAccessToken":Ljava/lang/String;
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/gionee/gsp/service/account/sdk/task/GetSinaWeiboAccessTokenTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 10
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 36
    const-string v5, "GetSinaWeiboAccessTokenTask"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onPostExecute,result="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_cb

    .line 39
    :try_start_1d
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40
    .local v2, "obj":Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 41
    .local v0, "accessToken":Ljava/lang/String;
    const/4 v4, 0x0

    .line 42
    .local v4, "uid":Ljava/lang/String;
    const-string v5, "status"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 43
    const-string v5, "status"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "status":Ljava/lang/String;
    const-string v5, "GetSinaWeiboAccessTokenTask"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "status="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    const-string v5, "unlogin"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 46
    iget-object v5, p0, Lcom/gionee/gsp/service/account/sdk/task/GetSinaWeiboAccessTokenTask;->mListener:Lcom/gionee/gsp/service/account/sdk/listener/SinaWeiboListener;

    invoke-interface {v5}, Lcom/gionee/gsp/service/account/sdk/listener/SinaWeiboListener;->onUnlogin()V

    .line 77
    .end local v0    # "accessToken":Ljava/lang/String;
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v3    # "status":Ljava/lang/String;
    .end local v4    # "uid":Ljava/lang/String;
    :goto_53
    return-void

    .line 47
    .restart local v0    # "accessToken":Ljava/lang/String;
    .restart local v2    # "obj":Lorg/json/JSONObject;
    .restart local v3    # "status":Ljava/lang/String;
    .restart local v4    # "uid":Ljava/lang/String;
    :cond_54
    const-string v5, "unBind"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    .line 48
    iget-object v5, p0, Lcom/gionee/gsp/service/account/sdk/task/GetSinaWeiboAccessTokenTask;->mListener:Lcom/gionee/gsp/service/account/sdk/listener/SinaWeiboListener;

    invoke-interface {v5}, Lcom/gionee/gsp/service/account/sdk/listener/SinaWeiboListener;->onUnbind()V
    :try_end_61
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_61} :catch_62

    goto :goto_53

    .line 70
    .end local v0    # "accessToken":Ljava/lang/String;
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v3    # "status":Ljava/lang/String;
    .end local v4    # "uid":Ljava/lang/String;
    :catch_62
    move-exception v1

    .line 71
    .local v1, "e":Lorg/json/JSONException;
    const-string v5, "GetSinaWeiboAccessTokenTask"

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    iget-object v5, p0, Lcom/gionee/gsp/service/account/sdk/task/GetSinaWeiboAccessTokenTask;->mListener:Lcom/gionee/gsp/service/account/sdk/listener/SinaWeiboListener;

    invoke-interface {v5, v1}, Lcom/gionee/gsp/service/account/sdk/listener/SinaWeiboListener;->onError(Ljava/lang/Exception;)V

    goto :goto_53

    .line 49
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "accessToken":Ljava/lang/String;
    .restart local v2    # "obj":Lorg/json/JSONObject;
    .restart local v3    # "status":Ljava/lang/String;
    .restart local v4    # "uid":Ljava/lang/String;
    :cond_72
    :try_start_72
    const-string v5, "unRefresh"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 50
    iget-object v5, p0, Lcom/gionee/gsp/service/account/sdk/task/GetSinaWeiboAccessTokenTask;->mListener:Lcom/gionee/gsp/service/account/sdk/listener/SinaWeiboListener;

    invoke-interface {v5}, Lcom/gionee/gsp/service/account/sdk/listener/SinaWeiboListener;->onUnrefresh()V

    goto :goto_53

    .line 52
    :cond_80
    iget-object v5, p0, Lcom/gionee/gsp/service/account/sdk/task/GetSinaWeiboAccessTokenTask;->mListener:Lcom/gionee/gsp/service/account/sdk/listener/SinaWeiboListener;

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    invoke-interface {v5, v6}, Lcom/gionee/gsp/service/account/sdk/listener/SinaWeiboListener;->onError(Ljava/lang/Exception;)V

    goto :goto_53

    .line 56
    .end local v3    # "status":Ljava/lang/String;
    :cond_8b
    const-string v5, "access_token"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_99

    .line 57
    const-string v5, "access_token"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    :cond_99
    const-string v5, "uid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 60
    const-string v5, "uid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    :cond_a7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b9

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b9

    .line 64
    iget-object v5, p0, Lcom/gionee/gsp/service/account/sdk/task/GetSinaWeiboAccessTokenTask;->mListener:Lcom/gionee/gsp/service/account/sdk/listener/SinaWeiboListener;

    invoke-interface {v5, v0, v4}, Lcom/gionee/gsp/service/account/sdk/listener/SinaWeiboListener;->onComplete(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_53

    .line 66
    :cond_b9
    const-string v5, "GetSinaWeiboAccessTokenTask"

    const-string v6, "accessToken is empty or uid is empty"

    invoke-static {v5, v6}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    iget-object v5, p0, Lcom/gionee/gsp/service/account/sdk/task/GetSinaWeiboAccessTokenTask;->mListener:Lcom/gionee/gsp/service/account/sdk/listener/SinaWeiboListener;

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    invoke-interface {v5, v6}, Lcom/gionee/gsp/service/account/sdk/listener/SinaWeiboListener;->onError(Ljava/lang/Exception;)V
    :try_end_ca
    .catch Lorg/json/JSONException; {:try_start_72 .. :try_end_ca} :catch_62

    goto :goto_53

    .line 75
    .end local v0    # "accessToken":Ljava/lang/String;
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v4    # "uid":Ljava/lang/String;
    :cond_cb
    iget-object v5, p0, Lcom/gionee/gsp/service/account/sdk/task/GetSinaWeiboAccessTokenTask;->mListener:Lcom/gionee/gsp/service/account/sdk/listener/SinaWeiboListener;

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    invoke-interface {v5, v6}, Lcom/gionee/gsp/service/account/sdk/listener/SinaWeiboListener;->onError(Ljava/lang/Exception;)V

    goto/16 :goto_53
.end method
