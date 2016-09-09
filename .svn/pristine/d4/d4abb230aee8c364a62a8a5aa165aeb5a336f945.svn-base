.class public Lcom/baidu/cloudsdk/common/http/JsonHttpResponseHandler;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "JsonHttpResponseHandler.java"


# static fields
.field protected static final SUCCESS_JSON_MESSAGE:I = 0x64


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected handleFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 152
    if-eqz p2, :cond_23

    .line 153
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/baidu/cloudsdk/common/http/JsonHttpResponseHandler;->parseResponse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 154
    .local v1, "json":Ljava/lang/Object;
    instance-of v2, v1, Lorg/json/JSONObject;

    if-eqz v2, :cond_10

    .line 155
    check-cast v1, Lorg/json/JSONObject;

    .end local v1    # "json":Ljava/lang/Object;
    invoke-virtual {p0, p1, v1}, Lcom/baidu/cloudsdk/common/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    .line 167
    :goto_f
    return-void

    .line 156
    .restart local v1    # "json":Ljava/lang/Object;
    :cond_10
    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_1f

    .line 157
    check-cast v1, Lorg/json/JSONArray;

    .end local v1    # "json":Ljava/lang/Object;
    invoke-virtual {p0, p1, v1}, Lcom/baidu/cloudsdk/common/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_19} :catch_1a

    goto :goto_f

    .line 164
    :catch_1a
    move-exception v0

    .line 165
    .local v0, "ex":Lorg/json/JSONException;
    invoke-virtual {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_f

    .line 159
    .end local v0    # "ex":Lorg/json/JSONException;
    .restart local v1    # "json":Ljava/lang/Object;
    :cond_1f
    :try_start_1f
    invoke-virtual {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_f

    .line 162
    .end local v1    # "json":Ljava/lang/Object;
    :cond_23
    const-string v2, ""

    invoke-virtual {p0, p1, v2}, Lcom/baidu/cloudsdk/common/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_28} :catch_1a

    goto :goto_f
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 115
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_20

    .line 122
    invoke-super {p0, p1}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 125
    :goto_8
    return-void

    .line 117
    :pswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 118
    .local v0, "objs":[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {p0, v1, v2}, Lcom/baidu/cloudsdk/common/http/JsonHttpResponseHandler;->handleSuccessJsonMessage(ILjava/lang/Object;)V

    goto :goto_8

    .line 115
    :pswitch_data_20
    .packed-switch 0x64
        :pswitch_9
    .end packed-switch
.end method

.method protected handleSuccessJsonMessage(ILjava/lang/Object;)V
    .registers 6
    .param p1, "statusCode"    # I
    .param p2, "json"    # Ljava/lang/Object;

    .prologue
    .line 134
    instance-of v0, p2, Lorg/json/JSONObject;

    if-eqz v0, :cond_a

    .line 135
    check-cast p2, Lorg/json/JSONObject;

    .end local p2    # "json":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/JsonHttpResponseHandler;->onSuccess(ILorg/json/JSONObject;)V

    .line 141
    :goto_9
    return-void

    .line 136
    .restart local p2    # "json":Ljava/lang/Object;
    :cond_a
    instance-of v0, p2, Lorg/json/JSONArray;

    if-eqz v0, :cond_14

    .line 137
    check-cast p2, Lorg/json/JSONArray;

    .end local p2    # "json":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/JsonHttpResponseHandler;->onSuccess(ILorg/json/JSONArray;)V

    goto :goto_9

    .line 139
    .restart local p2    # "json":Ljava/lang/Object;
    :cond_14
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/baidu/cloudsdk/common/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_9
.end method

.method protected onFailure(Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "errorResponse"    # Lorg/json/JSONArray;

    .prologue
    .line 43
    return-void
.end method

.method protected onFailure(Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "errorResponse"    # Lorg/json/JSONObject;

    .prologue
    .line 53
    return-void
.end method

.method protected onSuccess(ILorg/json/JSONArray;)V
    .registers 3
    .param p1, "statusCode"    # I
    .param p2, "response"    # Lorg/json/JSONArray;

    .prologue
    .line 80
    invoke-virtual {p0, p2}, Lcom/baidu/cloudsdk/common/http/JsonHttpResponseHandler;->onSuccess(Lorg/json/JSONArray;)V

    .line 81
    return-void
.end method

.method protected onSuccess(ILorg/json/JSONObject;)V
    .registers 3
    .param p1, "statusCode"    # I
    .param p2, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 90
    invoke-virtual {p0, p2}, Lcom/baidu/cloudsdk/common/http/JsonHttpResponseHandler;->onSuccess(Lorg/json/JSONObject;)V

    .line 91
    return-void
.end method

.method protected onSuccess(Lorg/json/JSONArray;)V
    .registers 2
    .param p1, "response"    # Lorg/json/JSONArray;

    .prologue
    .line 62
    return-void
.end method

.method protected onSuccess(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 71
    return-void
.end method

.method protected parseResponse(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "responseBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "result":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 180
    const-string v1, "{"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 181
    :cond_15
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    .line 183
    .end local v0    # "result":Ljava/lang/Object;
    :cond_1e
    if-nez v0, :cond_21

    .line 184
    move-object v0, p1

    .line 186
    :cond_21
    return-object v0
.end method

.method protected sendSuccessMessage(ILjava/lang/String;)V
    .registers 10
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x64

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 100
    const/16 v2, 0xcc

    if-eq p1, v2, :cond_29

    .line 102
    :try_start_9
    invoke-virtual {p0, p2}, Lcom/baidu/cloudsdk/common/http/JsonHttpResponseHandler;->parseResponse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 103
    .local v1, "json":Ljava/lang/Object;
    const/16 v2, 0x64

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/baidu/cloudsdk/common/http/JsonHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/baidu/cloudsdk/common/http/JsonHttpResponseHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_23} :catch_24

    .line 111
    .end local v1    # "json":Ljava/lang/Object;
    :goto_23
    return-void

    .line 104
    :catch_24
    move-exception v0

    .line 105
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {p0, v0, p2}, Lcom/baidu/cloudsdk/common/http/JsonHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_23

    .line 108
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_29
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    aput-object v3, v2, v5

    invoke-virtual {p0, v6, v2}, Lcom/baidu/cloudsdk/common/http/JsonHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/baidu/cloudsdk/common/http/JsonHttpResponseHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_23
.end method
