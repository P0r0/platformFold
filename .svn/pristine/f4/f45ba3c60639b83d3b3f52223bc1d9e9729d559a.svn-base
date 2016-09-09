.class public Lcom/gionee/gsp/service/account/sdk/task/GetAmigoTokenTask;
.super Landroid/os/AsyncTask;
.source "GetAmigoTokenTask.java"


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
.field private static final TAG:Ljava/lang/String; = "GetAmigoTokenTask"


# instance fields
.field private mGSPAccountInterface:Lcom/gionee/account/aidl/GSPAccountInterface;

.field private mListener:Lcom/gionee/gsp/service/account/sdk/listener/AmigoTokenListener;


# direct methods
.method public constructor <init>(Lcom/gionee/gsp/service/account/sdk/listener/AmigoTokenListener;Lcom/gionee/account/aidl/GSPAccountInterface;)V
    .registers 3
    .param p1, "listener"    # Lcom/gionee/gsp/service/account/sdk/listener/AmigoTokenListener;
    .param p2, "gSPAccountInterface"    # Lcom/gionee/account/aidl/GSPAccountInterface;

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/gionee/gsp/service/account/sdk/task/GetAmigoTokenTask;->mListener:Lcom/gionee/gsp/service/account/sdk/listener/AmigoTokenListener;

    .line 21
    iput-object p2, p0, Lcom/gionee/gsp/service/account/sdk/task/GetAmigoTokenTask;->mGSPAccountInterface:Lcom/gionee/account/aidl/GSPAccountInterface;

    .line 22
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/gionee/gsp/service/account/sdk/task/GetAmigoTokenTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 26
    const-string v2, "GetAmigoTokenTask"

    const-string v3, "doInBackground"

    invoke-static {v2, v3}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    const/4 v1, 0x0

    .line 29
    .local v1, "gioneeAccessToken":Ljava/lang/String;
    :try_start_8
    iget-object v2, p0, Lcom/gionee/gsp/service/account/sdk/task/GetAmigoTokenTask;->mGSPAccountInterface:Lcom/gionee/account/aidl/GSPAccountInterface;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-interface {v2, v3}, Lcom/gionee/account/aidl/GSPAccountInterface;->getInfo(Ljava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10} :catch_12

    move-result-object v1

    .line 34
    :goto_11
    return-object v1

    .line 30
    :catch_12
    move-exception v0

    .line 31
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 32
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/gionee/gsp/service/account/sdk/task/GetAmigoTokenTask;->mGSPAccountInterface:Lcom/gionee/account/aidl/GSPAccountInterface;

    goto :goto_11
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/gionee/gsp/service/account/sdk/task/GetAmigoTokenTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 12
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 40
    const-string v7, "GetAmigoTokenTask"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "onPostExecute,result="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b2

    .line 43
    :try_start_1d
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v7, "status"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_59

    .line 45
    const-string v7, "status"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "status":Ljava/lang/String;
    const-string v7, "unlogin"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 47
    iget-object v7, p0, Lcom/gionee/gsp/service/account/sdk/task/GetAmigoTokenTask;->mListener:Lcom/gionee/gsp/service/account/sdk/listener/AmigoTokenListener;

    invoke-interface {v7}, Lcom/gionee/gsp/service/account/sdk/listener/AmigoTokenListener;->onUnlogin()V

    .line 85
    .end local v1    # "obj":Lorg/json/JSONObject;
    .end local v2    # "status":Ljava/lang/String;
    :goto_3d
    return-void

    .line 49
    .restart local v1    # "obj":Lorg/json/JSONObject;
    .restart local v2    # "status":Ljava/lang/String;
    :cond_3e
    iget-object v7, p0, Lcom/gionee/gsp/service/account/sdk/task/GetAmigoTokenTask;->mListener:Lcom/gionee/gsp/service/account/sdk/listener/AmigoTokenListener;

    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8}, Ljava/lang/Exception;-><init>()V

    invoke-interface {v7, v8}, Lcom/gionee/gsp/service/account/sdk/listener/AmigoTokenListener;->onError(Ljava/lang/Exception;)V
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_48} :catch_49

    goto :goto_3d

    .line 77
    .end local v1    # "obj":Lorg/json/JSONObject;
    .end local v2    # "status":Ljava/lang/String;
    :catch_49
    move-exception v0

    .line 78
    .local v0, "e":Lorg/json/JSONException;
    const-string v7, "GetAmigoTokenTask"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    iget-object v7, p0, Lcom/gionee/gsp/service/account/sdk/task/GetAmigoTokenTask;->mListener:Lcom/gionee/gsp/service/account/sdk/listener/AmigoTokenListener;

    invoke-interface {v7, v0}, Lcom/gionee/gsp/service/account/sdk/listener/AmigoTokenListener;->onError(Ljava/lang/Exception;)V

    goto :goto_3d

    .line 54
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "obj":Lorg/json/JSONObject;
    :cond_59
    const/4 v5, 0x0

    .line 55
    .local v5, "userId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 56
    .local v3, "telNo":Ljava/lang/String;
    const/4 v4, 0x0

    .line 57
    .local v4, "token":Ljava/lang/String;
    const/4 v6, 0x0

    .line 59
    .local v6, "userLevel":Ljava/lang/String;
    :try_start_5d
    const-string v7, "u"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 60
    const-string v7, "u"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 62
    :cond_6b
    const-string v7, "tn"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_79

    .line 63
    const-string v7, "tn"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    :cond_79
    const-string v7, "token"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_87

    .line 66
    const-string v7, "token"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 68
    :cond_87
    const-string v7, "ul"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_95

    .line 69
    const-string v7, "ul"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 72
    :cond_95
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a7

    .line 73
    iget-object v7, p0, Lcom/gionee/gsp/service/account/sdk/task/GetAmigoTokenTask;->mListener:Lcom/gionee/gsp/service/account/sdk/listener/AmigoTokenListener;

    invoke-interface {v7, v4, v5, v3, v6}, Lcom/gionee/gsp/service/account/sdk/listener/AmigoTokenListener;->onComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    .line 75
    :cond_a7
    iget-object v7, p0, Lcom/gionee/gsp/service/account/sdk/task/GetAmigoTokenTask;->mListener:Lcom/gionee/gsp/service/account/sdk/listener/AmigoTokenListener;

    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8}, Ljava/lang/Exception;-><init>()V

    invoke-interface {v7, v8}, Lcom/gionee/gsp/service/account/sdk/listener/AmigoTokenListener;->onError(Ljava/lang/Exception;)V
    :try_end_b1
    .catch Lorg/json/JSONException; {:try_start_5d .. :try_end_b1} :catch_49

    goto :goto_3d

    .line 82
    .end local v1    # "obj":Lorg/json/JSONObject;
    .end local v3    # "telNo":Ljava/lang/String;
    .end local v4    # "token":Ljava/lang/String;
    .end local v5    # "userId":Ljava/lang/String;
    .end local v6    # "userLevel":Ljava/lang/String;
    :cond_b2
    const-string v7, "GetAmigoTokenTask"

    const-string v8, "result is empty"

    invoke-static {v7, v8}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    iget-object v7, p0, Lcom/gionee/gsp/service/account/sdk/task/GetAmigoTokenTask;->mListener:Lcom/gionee/gsp/service/account/sdk/listener/AmigoTokenListener;

    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8}, Ljava/lang/Exception;-><init>()V

    invoke-interface {v7, v8}, Lcom/gionee/gsp/service/account/sdk/listener/AmigoTokenListener;->onError(Ljava/lang/Exception;)V

    goto/16 :goto_3d
.end method
