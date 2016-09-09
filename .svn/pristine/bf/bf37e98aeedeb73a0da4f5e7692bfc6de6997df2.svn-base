.class Lcom/baidu/sapi2/a$10;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/GetHistoryPortraitsCallback;Lcom/baidu/sapi2/dto/GetHistoryPortraitsDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;

.field final synthetic b:Lcom/baidu/sapi2/callback/GetHistoryPortraitsCallback;

.field final synthetic c:Lcom/baidu/sapi2/dto/GetHistoryPortraitsDTO;

.field final synthetic d:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;Lcom/baidu/sapi2/callback/GetHistoryPortraitsCallback;Lcom/baidu/sapi2/dto/GetHistoryPortraitsDTO;)V
    .registers 6
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 2050
    iput-object p1, p0, Lcom/baidu/sapi2/a$10;->d:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$10;->a:Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;

    iput-object p4, p0, Lcom/baidu/sapi2/a$10;->b:Lcom/baidu/sapi2/callback/GetHistoryPortraitsCallback;

    iput-object p5, p0, Lcom/baidu/sapi2/a$10;->c:Lcom/baidu/sapi2/dto/GetHistoryPortraitsDTO;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 2053
    iget-object v0, p0, Lcom/baidu/sapi2/a$10;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2054
    iget-object v0, p0, Lcom/baidu/sapi2/a$10;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 2055
    iget-object v0, p0, Lcom/baidu/sapi2/a$10;->a:Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;->setResultCode(I)V

    .line 2056
    iget-object v0, p0, Lcom/baidu/sapi2/a$10;->b:Lcom/baidu/sapi2/callback/GetHistoryPortraitsCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/a$10;->a:Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/callback/GetHistoryPortraitsCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2061
    :goto_23
    return-void

    .line 2058
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/a$10;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->b()V

    .line 2059
    iget-object v0, p0, Lcom/baidu/sapi2/a$10;->d:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$10;->b:Lcom/baidu/sapi2/callback/GetHistoryPortraitsCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/a$10;->c:Lcom/baidu/sapi2/dto/GetHistoryPortraitsDTO;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/GetHistoryPortraitsCallback;Lcom/baidu/sapi2/dto/GetHistoryPortraitsDTO;)V

    goto :goto_23
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 11
    .param p1, "statusCode"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 2065
    iget-object v6, p0, Lcom/baidu/sapi2/a$10;->d:Lcom/baidu/sapi2/a;

    invoke-static {v6}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/sapi2/a$a;->d()V

    .line 2067
    :try_start_9
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2068
    .local v4, "obj":Lorg/json/JSONObject;
    const-string v6, "errno"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2069
    .local v2, "errorNo":I
    iget-object v6, p0, Lcom/baidu/sapi2/a$10;->a:Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;

    invoke-virtual {v6, v2}, Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;->setResultCode(I)V

    .line 2070
    iget-object v6, p0, Lcom/baidu/sapi2/a$10;->a:Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;

    const-string v7, "errmsg"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;->setResultMsg(Ljava/lang/String;)V

    .line 2071
    if-nez v2, :cond_52

    .line 2072
    const-string v6, "history"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 2073
    .local v5, "portraits":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 2074
    .local v0, "arrLen":I
    iget-object v6, p0, Lcom/baidu/sapi2/a$10;->a:Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, v6, Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;->historyPortraits:Ljava/util/List;

    .line 2075
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3a
    if-ge v3, v0, :cond_4a

    .line 2076
    iget-object v6, p0, Lcom/baidu/sapi2/a$10;->a:Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;

    iget-object v6, v6, Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;->historyPortraits:Ljava/util/List;

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2075
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 2079
    :cond_4a
    iget-object v6, p0, Lcom/baidu/sapi2/a$10;->b:Lcom/baidu/sapi2/callback/GetHistoryPortraitsCallback;

    iget-object v7, p0, Lcom/baidu/sapi2/a$10;->a:Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;

    invoke-virtual {v6, v7}, Lcom/baidu/sapi2/callback/GetHistoryPortraitsCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2088
    .end local v0    # "arrLen":I
    .end local v2    # "errorNo":I
    .end local v3    # "i":I
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v5    # "portraits":Lorg/json/JSONArray;
    :goto_51
    return-void

    .line 2081
    .restart local v2    # "errorNo":I
    .restart local v4    # "obj":Lorg/json/JSONObject;
    :cond_52
    iget-object v6, p0, Lcom/baidu/sapi2/a$10;->b:Lcom/baidu/sapi2/callback/GetHistoryPortraitsCallback;

    iget-object v7, p0, Lcom/baidu/sapi2/a$10;->a:Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;

    invoke-virtual {v6, v7}, Lcom/baidu/sapi2/callback/GetHistoryPortraitsCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_59
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_59} :catch_5a

    goto :goto_51

    .line 2083
    .end local v2    # "errorNo":I
    .end local v4    # "obj":Lorg/json/JSONObject;
    :catch_5a
    move-exception v1

    .line 2084
    .local v1, "e":Lorg/json/JSONException;
    iget-object v6, p0, Lcom/baidu/sapi2/a$10;->a:Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;

    const/16 v7, -0xca

    invoke-virtual {v6, v7}, Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;->setResultCode(I)V

    .line 2085
    iget-object v6, p0, Lcom/baidu/sapi2/a$10;->b:Lcom/baidu/sapi2/callback/GetHistoryPortraitsCallback;

    iget-object v7, p0, Lcom/baidu/sapi2/a$10;->a:Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;

    invoke-virtual {v6, v7}, Lcom/baidu/sapi2/callback/GetHistoryPortraitsCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2086
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_51
.end method
