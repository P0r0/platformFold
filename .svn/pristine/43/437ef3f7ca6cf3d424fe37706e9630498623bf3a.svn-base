.class Lcom/baidu/sapi2/a$11;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;Ljava/lang/String;)V
    .registers 6
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 2114
    iput-object p1, p0, Lcom/baidu/sapi2/a$11;->d:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$11;->a:Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;

    iput-object p4, p0, Lcom/baidu/sapi2/a$11;->b:Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;

    iput-object p5, p0, Lcom/baidu/sapi2/a$11;->c:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 2127
    iget-object v0, p0, Lcom/baidu/sapi2/a$11;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2128
    iget-object v0, p0, Lcom/baidu/sapi2/a$11;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 2129
    iget-object v0, p0, Lcom/baidu/sapi2/a$11;->b:Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;->setResultCode(I)V

    .line 2130
    iget-object v0, p0, Lcom/baidu/sapi2/a$11;->a:Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/a$11;->b:Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2135
    :goto_23
    return-void

    .line 2132
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/a$11;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->b()V

    .line 2133
    iget-object v0, p0, Lcom/baidu/sapi2/a$11;->d:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$11;->a:Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/a$11;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;Ljava/lang/String;)V

    goto :goto_23
.end method

.method public onFinish()V
    .registers 2

    .prologue
    .line 2122
    iget-object v0, p0, Lcom/baidu/sapi2/a$11;->a:Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;->onFinish()V

    .line 2123
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/baidu/sapi2/a$11;->a:Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;->onStart()V

    .line 2118
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 13
    .param p1, "statusCode"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 2139
    iget-object v8, p0, Lcom/baidu/sapi2/a$11;->d:Lcom/baidu/sapi2/a;

    invoke-static {v8}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/baidu/sapi2/a$a;->d()V

    .line 2141
    :try_start_9
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2142
    .local v7, "obj":Lorg/json/JSONObject;
    const-string v8, "errno"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 2143
    .local v1, "errno":I
    iget-object v8, p0, Lcom/baidu/sapi2/a$11;->b:Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;

    invoke-virtual {v8, v1}, Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;->setResultCode(I)V

    .line 2144
    iget-object v8, p0, Lcom/baidu/sapi2/a$11;->b:Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;

    const-string v9, "errmsg"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;->setResultMsg(Ljava/lang/String;)V

    .line 2145
    if-nez v1, :cond_79

    .line 2146
    const-string v8, "list"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 2147
    .local v4, "infoList":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 2148
    .local v5, "infoListLen":I
    iget-object v8, p0, Lcom/baidu/sapi2/a$11;->b:Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, v8, Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;->popularPortraitsInfoList:Ljava/util/List;

    .line 2150
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3a
    if-ge v2, v5, :cond_71

    .line 2151
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 2152
    .local v3, "info":Lorg/json/JSONObject;
    if-eqz v3, :cond_6e

    .line 2153
    new-instance v6, Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult$PopularPortraitsInfo;

    invoke-direct {v6}, Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult$PopularPortraitsInfo;-><init>()V

    .line 2155
    .local v6, "item":Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult$PopularPortraitsInfo;
    const-string v8, "num"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult$PopularPortraitsInfo;->num:I

    .line 2156
    const-string v8, "serie"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult$PopularPortraitsInfo;->series:Ljava/lang/String;

    .line 2157
    const-string v8, "url"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult$PopularPortraitsInfo;->url:Ljava/lang/String;

    .line 2158
    const-string v8, "myitem"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult$PopularPortraitsInfo;->myItem:I

    .line 2159
    iget-object v8, p0, Lcom/baidu/sapi2/a$11;->b:Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;

    iget-object v8, v8, Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;->popularPortraitsInfoList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2150
    .end local v6    # "item":Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult$PopularPortraitsInfo;
    :cond_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 2163
    .end local v3    # "info":Lorg/json/JSONObject;
    :cond_71
    iget-object v8, p0, Lcom/baidu/sapi2/a$11;->a:Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;

    iget-object v9, p0, Lcom/baidu/sapi2/a$11;->b:Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;

    invoke-virtual {v8, v9}, Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2172
    .end local v1    # "errno":I
    .end local v2    # "i":I
    .end local v4    # "infoList":Lorg/json/JSONArray;
    .end local v5    # "infoListLen":I
    .end local v7    # "obj":Lorg/json/JSONObject;
    :goto_78
    return-void

    .line 2165
    .restart local v1    # "errno":I
    .restart local v7    # "obj":Lorg/json/JSONObject;
    :cond_79
    iget-object v8, p0, Lcom/baidu/sapi2/a$11;->a:Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;

    iget-object v9, p0, Lcom/baidu/sapi2/a$11;->b:Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;

    invoke-virtual {v8, v9}, Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_80
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_80} :catch_81

    goto :goto_78

    .line 2167
    .end local v1    # "errno":I
    .end local v7    # "obj":Lorg/json/JSONObject;
    :catch_81
    move-exception v0

    .line 2168
    .local v0, "e":Lorg/json/JSONException;
    iget-object v8, p0, Lcom/baidu/sapi2/a$11;->b:Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;

    const/16 v9, -0xca

    invoke-virtual {v8, v9}, Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;->setResultCode(I)V

    .line 2169
    iget-object v8, p0, Lcom/baidu/sapi2/a$11;->a:Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;

    iget-object v9, p0, Lcom/baidu/sapi2/a$11;->b:Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;

    invoke-virtual {v8, v9}, Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2170
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_78
.end method
