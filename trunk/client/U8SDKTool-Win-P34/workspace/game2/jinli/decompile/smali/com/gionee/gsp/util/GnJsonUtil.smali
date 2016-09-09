.class public Lcom/gionee/gsp/util/GnJsonUtil;
.super Ljava/lang/Object;
.source "GnJsonUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "JsonUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResponseForGet(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "strUrl"    # Ljava/lang/String;

    .prologue
    .line 63
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, "httpRequest":Lorg/apache/http/client/methods/HttpGet;
    invoke-static {v0}, Lcom/gionee/gsp/util/GnJsonUtil;->getRespose(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getResponseForGet(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "strUrl"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-static {p1}, Lcom/gionee/gsp/util/GnCommonUtil;->isConnnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 50
    invoke-static {p0}, Lcom/gionee/gsp/util/GnJsonUtil;->getResponseForGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getResponseForPost(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .param p0, "market_uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v2, 0x0

    .line 96
    if-eqz p0, :cond_7

    const-string v3, ""

    if-ne v3, p0, :cond_8

    .line 106
    :cond_7
    :goto_7
    return-object v2

    .line 99
    :cond_8
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 101
    .local v1, "request":Lorg/apache/http/client/methods/HttpPost;
    :try_start_d
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v3, p1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 102
    invoke-static {v1}, Lcom/gionee/gsp/util/GnJsonUtil;->getRespose(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_18} :catch_1a

    move-result-object v2

    goto :goto_7

    .line 103
    :catch_1a
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/gionee/gsp/util/GnCommonUtil;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_7
.end method

.method public static getResponseForPost(Ljava/lang/String;Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "market_uri"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {p2}, Lcom/gionee/gsp/util/GnCommonUtil;->isConnnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 81
    invoke-static {p0, p1}, Lcom/gionee/gsp/util/GnJsonUtil;->getResponseForPost(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 83
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getRespose(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;
    .registers 8
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .prologue
    .line 140
    :try_start_0
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v4, p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 141
    .local v1, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 142
    .local v3, "statusCode":I
    const/16 v4, 0xc8

    if-ne v4, v3, :cond_36

    .line 143
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "result":Ljava/lang/String;
    const-string v4, "JsonUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "results="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    .line 152
    .end local v1    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "statusCode":I
    :goto_31
    return-object v2

    .line 149
    :catch_32
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/gionee/gsp/util/GnCommonUtil;->printStackTrace(Ljava/lang/Exception;)V

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_36
    const/4 v2, 0x0

    goto :goto_31
.end method

.method public static getRespose2(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/json/JSONObject;
    .registers 8
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .prologue
    .line 118
    :try_start_0
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v4, p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 119
    .local v1, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 120
    .local v3, "statusCode":I
    const/16 v4, 0xc8

    if-ne v4, v3, :cond_3b

    .line 121
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "result":Ljava/lang/String;
    const-string v4, "JsonUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "results="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37

    .line 128
    .end local v1    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "statusCode":I
    :goto_36
    return-object v4

    .line 125
    :catch_37
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/gionee/gsp/util/GnCommonUtil;->printStackTrace(Ljava/lang/Exception;)V

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3b
    const/4 v4, 0x0

    goto :goto_36
.end method

.method public static final getSdkVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sdkModuleName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 310
    const-string v3, ""

    .line 311
    .local v3, "versionName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 312
    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 314
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    .line 315
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".version"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 316
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2f} :catch_43
    .catchall {:try_start_6 .. :try_end_2f} :catchall_53

    .line 317
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_2f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_66
    .catchall {:try_start_2f .. :try_end_32} :catchall_63

    move-result-object v3

    .line 320
    new-array v4, v8, [Ljava/io/Closeable;

    .line 321
    aput-object v0, v4, v7

    invoke-static {v4}, Lcom/gionee/gsp/util/GnUtils;->closeIOStream([Ljava/io/Closeable;)V

    new-array v4, v8, [Ljava/io/Closeable;

    .line 322
    aput-object v2, v4, v7

    invoke-static {v4}, Lcom/gionee/gsp/util/GnUtils;->closeIOStream([Ljava/io/Closeable;)V

    move-object v1, v2

    .line 324
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :goto_42
    return-object v3

    .line 318
    :catch_43
    move-exception v4

    .line 320
    :goto_44
    new-array v4, v8, [Ljava/io/Closeable;

    .line 321
    aput-object v0, v4, v7

    invoke-static {v4}, Lcom/gionee/gsp/util/GnUtils;->closeIOStream([Ljava/io/Closeable;)V

    new-array v4, v8, [Ljava/io/Closeable;

    .line 322
    aput-object v1, v4, v7

    invoke-static {v4}, Lcom/gionee/gsp/util/GnUtils;->closeIOStream([Ljava/io/Closeable;)V

    goto :goto_42

    .line 320
    :catchall_53
    move-exception v4

    :goto_54
    new-array v5, v8, [Ljava/io/Closeable;

    .line 321
    aput-object v0, v5, v7

    invoke-static {v5}, Lcom/gionee/gsp/util/GnUtils;->closeIOStream([Ljava/io/Closeable;)V

    new-array v5, v8, [Ljava/io/Closeable;

    .line 322
    aput-object v1, v5, v7

    invoke-static {v5}, Lcom/gionee/gsp/util/GnUtils;->closeIOStream([Ljava/io/Closeable;)V

    .line 323
    throw v4

    .line 320
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catchall_63
    move-exception v4

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_54

    .line 318
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_66
    move-exception v4

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_44
.end method

.method public static parserComponentConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/gionee/gsp/data/GnComponentConfigData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 173
    .local v1, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    :try_start_5
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_2b

    .line 179
    .local v6, "jsonArray":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .line 180
    .local v8, "length":I
    invoke-static {v6}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_15

    .line 181
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 183
    :cond_15
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\u8bfb\u53d6\u672c\u5730assets\u4e0b\u7684config\u6587\u4ef6\uff0c\u89e3\u6790\u5f97\u5230\u7684\u957f\u5ea6\u662f\uff1a"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/gionee/gsp/util/GnLogUtil;->i(Ljava/lang/String;)V

    .line 185
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_28
    if-lt v4, v8, :cond_30

    .line 258
    .end local v4    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v8    # "length":I
    :goto_2a
    return-object v1

    .line 174
    :catch_2b
    move-exception v3

    .line 176
    .local v3, "e1":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a

    .line 186
    .end local v3    # "e1":Ljava/lang/Exception;
    .restart local v4    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v8    # "length":I
    :cond_30
    new-instance v0, Lcom/gionee/gsp/data/GnComponentConfigData;

    invoke-direct {v0}, Lcom/gionee/gsp/data/GnComponentConfigData;-><init>()V

    .line 188
    .local v0, "config":Lcom/gionee/gsp/data/GnComponentConfigData;
    :try_start_35
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 190
    .local v7, "jsonObject":Lorg/json/JSONObject;
    const-string v10, "id"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v0, Lcom/gionee/gsp/data/GnComponentConfigData;->id:I

    .line 191
    const-string v10, "name"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/gionee/gsp/data/GnComponentConfigData;->name:Ljava/lang/String;

    .line 192
    const-string v10, "packageName"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/gionee/gsp/data/GnComponentConfigData;->packageName:Ljava/lang/String;

    .line 193
    const-string v10, "path"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/gionee/gsp/data/GnComponentConfigData;->path:Ljava/lang/String;

    .line 194
    const-string v10, "currentVersion"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/gionee/gsp/data/GnComponentConfigData;->currentVersion:Ljava/lang/String;

    .line 195
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\u9ed8\u8ba4\u914d\u7f6e\u7248\u672c\uff1a"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/gionee/gsp/data/GnComponentConfigData;->currentVersion:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/gionee/gsp/util/GnLogUtil;->i(Ljava/lang/String;)V

    .line 197
    const-string v10, "com.gionee.gsp"

    invoke-static {p0, v10}, Lcom/gionee/gsp/util/GnJsonUtil;->getSdkVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 198
    .local v9, "sdkVersionName":Ljava/lang/String;
    invoke-static {v9}, Lcom/gionee/gsp/util/GnCommonUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_97

    .line 200
    iput-object v9, v0, Lcom/gionee/gsp/data/GnComponentConfigData;->currentVersion:Ljava/lang/String;

    .line 201
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "com.gionee.gsp\u914d\u7f6e\u7248\u672c\uff1a"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/gionee/gsp/data/GnComponentConfigData;->currentVersion:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/gionee/gsp/util/GnLogUtil;->i(Ljava/lang/String;)V

    .line 206
    :cond_97
    const-string v10, "GioneeGameSdk"

    invoke-static {p0, v10}, Lcom/gionee/gsp/util/GnJsonUtil;->getSdkVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 207
    invoke-static {v9}, Lcom/gionee/gsp/util/GnCommonUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b9

    .line 209
    iput-object v9, v0, Lcom/gionee/gsp/data/GnComponentConfigData;->currentVersion:Ljava/lang/String;

    .line 210
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "GioneeGameSdk\u914d\u7f6e\u7248\u672c\uff1a"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/gionee/gsp/data/GnComponentConfigData;->currentVersion:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/gionee/gsp/util/GnLogUtil;->i(Ljava/lang/String;)V

    .line 213
    :cond_b9
    iget-object v10, v0, Lcom/gionee/gsp/data/GnComponentConfigData;->currentVersion:Ljava/lang/String;

    sput-object v10, Lcom/gionee/gsp/common/GnCommonConfig;->sGSPVersion:Ljava/lang/String;

    .line 214
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\u6700\u540e\u52a0\u8f7d\u914d\u7f6e\u7248\u672c\uff1a"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/gionee/gsp/data/GnComponentConfigData;->currentVersion:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/gionee/gsp/util/GnLogUtil;->i(Ljava/lang/String;)V

    .line 217
    const-string v10, "product"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/gionee/gsp/data/GnComponentConfigData;->product:Ljava/lang/String;

    .line 218
    const-string v10, "minVersion"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/gionee/gsp/data/GnComponentConfigData;->minVersion:Ljava/lang/String;

    .line 219
    const-string v10, "rom"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/gionee/gsp/data/GnComponentConfigData;->rom:Ljava/lang/String;

    .line 220
    const-string v10, "model"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/gionee/gsp/data/GnComponentConfigData;->model:Ljava/lang/String;

    .line 221
    const-string v10, "platform"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/gionee/gsp/data/GnComponentConfigData;->platform:Ljava/lang/String;

    .line 222
    const-string v10, "md5"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/gionee/gsp/data/GnComponentConfigData;->md5:Ljava/lang/String;

    .line 223
    const-string v10, "test"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v0, Lcom/gionee/gsp/data/GnComponentConfigData;->test:Z

    .line 226
    invoke-static {}, Lcom/gionee/gsp/util/GnCheckWorkMode;->getInstance()Lcom/gionee/gsp/util/GnCheckWorkMode;

    move-result-object v10

    iget-boolean v10, v10, Lcom/gionee/gsp/util/GnCheckWorkMode;->mIsTestMode:Z

    if-eqz v10, :cond_117

    .line 228
    const/4 v5, 0x0

    .line 242
    .local v5, "isUserTestModeToDownload":Z
    const/4 v5, 0x1

    .line 244
    if-eqz v5, :cond_117

    .line 245
    iput-boolean v5, v0, Lcom/gionee/gsp/data/GnComponentConfigData;->test:Z

    .line 249
    .end local v5    # "isUserTestModeToDownload":Z
    :cond_117
    iget v10, v0, Lcom/gionee/gsp/data/GnComponentConfigData;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_120
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_120} :catch_124

    .line 185
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "sdkVersionName":Ljava/lang/String;
    :goto_120
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_28

    .line 250
    :catch_124
    move-exception v2

    .line 252
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_120
.end method

.method public static parserDependConfig(Ljava/lang/String;)Ljava/util/Map;
    .registers 13
    .param p0, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/gionee/gsp/data/GnDependConfigData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 272
    .local v1, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnDependConfigData;>;"
    :try_start_5
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_2b

    .line 278
    .local v6, "jsonArray":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .line 279
    .local v8, "length":I
    invoke-static {v6}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_15

    .line 280
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 282
    :cond_15
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\u8bfb\u53d6\u672c\u5730assets\u4e0b\u7684config\u6587\u4ef6\uff0c\u89e3\u6790\u5f97\u5230\u7684\u957f\u5ea6\u662f\uff1a"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/gionee/gsp/util/GnLogUtil;->i(Ljava/lang/String;)V

    .line 284
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_28
    if-lt v4, v8, :cond_30

    .line 306
    .end local v4    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v8    # "length":I
    :goto_2a
    return-object v1

    .line 273
    :catch_2b
    move-exception v3

    .line 275
    .local v3, "e1":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a

    .line 285
    .end local v3    # "e1":Ljava/lang/Exception;
    .restart local v4    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v8    # "length":I
    :cond_30
    new-instance v0, Lcom/gionee/gsp/data/GnDependConfigData;

    invoke-direct {v0}, Lcom/gionee/gsp/data/GnDependConfigData;-><init>()V

    .line 287
    .local v0, "config":Lcom/gionee/gsp/data/GnDependConfigData;
    :try_start_35
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 288
    .local v7, "jsonObject":Lorg/json/JSONObject;
    const-string v10, "id"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v0, Lcom/gionee/gsp/data/GnDependConfigData;->id:I

    .line 289
    const-string v10, "depend"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 291
    .local v9, "ss":Lorg/json/JSONArray;
    if-eqz v9, :cond_5e

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_5e

    .line 292
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    new-array v10, v10, [I

    iput-object v10, v0, Lcom/gionee/gsp/data/GnDependConfigData;->depend:[I

    .line 293
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_58
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v5, v10, :cond_6a

    .line 297
    .end local v5    # "j":I
    :cond_5e
    iget v10, v0, Lcom/gionee/gsp/data/GnDependConfigData;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "ss":Lorg/json/JSONArray;
    :goto_67
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 294
    .restart local v5    # "j":I
    .restart local v7    # "jsonObject":Lorg/json/JSONObject;
    .restart local v9    # "ss":Lorg/json/JSONArray;
    :cond_6a
    iget-object v10, v0, Lcom/gionee/gsp/data/GnDependConfigData;->depend:[I

    invoke-virtual {v9, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    aput v11, v10, v5
    :try_end_72
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_72} :catch_75

    .line 293
    add-int/lit8 v5, v5, 0x1

    goto :goto_58

    .line 298
    .end local v5    # "j":I
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "ss":Lorg/json/JSONArray;
    :catch_75
    move-exception v2

    .line 300
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_67
.end method
