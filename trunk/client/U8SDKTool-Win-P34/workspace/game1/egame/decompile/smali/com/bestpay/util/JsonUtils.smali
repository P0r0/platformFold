.class public Lcom/bestpay/util/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static jsonToAccount(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .param p0, "jsonStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/bestpay/db/AccountInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .local v0, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/bestpay/db/AccountInfo;>;"
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 17
    .local v5, "json":Lorg/json/JSONObject;
    const-string v8, "success"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2f

    .line 18
    const-string v8, "success"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 19
    .local v7, "succ":Z
    if-eqz v7, :cond_2f

    .line 20
    const-string v8, "result"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2f

    .line 21
    const-string v8, "result"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 22
    .local v1, "array":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_29
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v3, v8, :cond_30

    .line 37
    .end local v0    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/bestpay/db/AccountInfo;>;"
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v5    # "json":Lorg/json/JSONObject;
    .end local v7    # "succ":Z
    :cond_2f
    :goto_2f
    return-object v0

    .line 23
    .restart local v0    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/bestpay/db/AccountInfo;>;"
    .restart local v1    # "array":Lorg/json/JSONArray;
    .restart local v3    # "i":I
    .restart local v5    # "json":Lorg/json/JSONObject;
    .restart local v7    # "succ":Z
    :cond_30
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 24
    .local v6, "obj":Lorg/json/JSONObject;
    new-instance v4, Lcom/bestpay/db/AccountInfo;

    invoke-direct {v4}, Lcom/bestpay/db/AccountInfo;-><init>()V

    .line 25
    .local v4, "info":Lcom/bestpay/db/AccountInfo;
    const-string v8, "tid"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/bestpay/db/AccountInfo;->setTid(Ljava/lang/String;)V

    .line 26
    const-string v8, "key_index"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/bestpay/db/AccountInfo;->setKey_index(Ljava/lang/String;)V

    .line 27
    const-string v8, "key_tid"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/bestpay/db/AccountInfo;->setKey_tid(Ljava/lang/String;)V

    .line 28
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_57} :catch_5a

    .line 22
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 34
    .end local v0    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/bestpay/db/AccountInfo;>;"
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v4    # "info":Lcom/bestpay/db/AccountInfo;
    .end local v5    # "json":Lorg/json/JSONObject;
    .end local v6    # "obj":Lorg/json/JSONObject;
    .end local v7    # "succ":Z
    :catch_5a
    move-exception v2

    .line 35
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    const/4 v0, 0x0

    goto :goto_2f
.end method
