.class public Lcom/vivo/upgrade/net/NetConnectClient;
.super Ljava/lang/Object;
.source "NetConnectClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/upgrade/net/NetConnectClient$AppendInfo;
    }
.end annotation


# static fields
.field public static final CONNECT_TYPE_HTTPCLIENT_GET:I = 0x0

.field public static final CONNECT_TYPE_HTTPCLIENT_POST:I = 0x1

.field private static final DEFAULT_TRY_NUM:I = 0x3

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv:1.9.2) Gecko/20100115 Firefox/3.6"

.field private static final SOCKET_OPERATION_TIMEOUT:I = 0x4e20

.field private static final TAG:Ljava/lang/String; = "Upgrade.NetConnectClient"


# instance fields
.field private mAppendInfo:Lcom/vivo/upgrade/net/NetConnectClient$AppendInfo;

.field private mContext:Landroid/content/Context;

.field private mDisconnected:Z

.field private mHttpClient:Lorg/apache/http/client/HttpClient;

.field private mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

.field private mTimeOut:I

.field private mTryNum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vivo/upgrade/net/NetConnectResponse;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "httpResponed"    # Lcom/vivo/upgrade/net/NetConnectResponse;

    .prologue
    .line 92
    const/16 v0, 0x4e20

    invoke-direct {p0, p1, p2, v0}, Lcom/vivo/upgrade/net/NetConnectClient;-><init>(Landroid/content/Context;Lcom/vivo/upgrade/net/NetConnectResponse;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vivo/upgrade/net/NetConnectResponse;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "httpResponed"    # Lcom/vivo/upgrade/net/NetConnectResponse;
    .param p3, "timeout"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v0, p0, Lcom/vivo/upgrade/net/NetConnectClient;->mContext:Landroid/content/Context;

    .line 74
    iput-object v0, p0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    .line 76
    iput-object v0, p0, Lcom/vivo/upgrade/net/NetConnectClient;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 78
    const/4 v0, 0x3

    iput v0, p0, Lcom/vivo/upgrade/net/NetConnectClient;->mTryNum:I

    .line 80
    iput-boolean v1, p0, Lcom/vivo/upgrade/net/NetConnectClient;->mDisconnected:Z

    .line 82
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/vivo/upgrade/net/NetConnectClient;->mTimeOut:I

    .line 103
    iput-object p1, p0, Lcom/vivo/upgrade/net/NetConnectClient;->mContext:Landroid/content/Context;

    .line 104
    iput-boolean v1, p0, Lcom/vivo/upgrade/net/NetConnectClient;->mDisconnected:Z

    .line 105
    iput-object p2, p0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    .line 106
    iput p3, p0, Lcom/vivo/upgrade/net/NetConnectClient;->mTimeOut:I

    .line 107
    invoke-direct {p0}, Lcom/vivo/upgrade/net/NetConnectClient;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/upgrade/net/NetConnectClient;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 108
    return-void
.end method

.method private doHttpClient(Ljava/lang/String;Ljava/util/HashMap;I)V
    .registers 44
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "method"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v32, p1

    .line 183
    .local v32, "requestUrl":Ljava/lang/String;
    const/16 v18, 0x0

    .line 185
    .local v18, "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    if-nez p3, :cond_178

    .line 187
    if-eqz p2, :cond_79

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v36

    if-nez v36, :cond_79

    .line 189
    const-string v27, ""

    .line 193
    .local v27, "paramStr":Ljava/lang/String;
    :try_start_10
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .line 195
    .local v24, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_18
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1b} :catch_12a

    move-result v36

    if-nez v36, :cond_cc

    .line 224
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v36

    if-nez v36, :cond_79

    .line 226
    const-string v36, "?"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v36

    if-nez v36, :cond_3e

    .line 227
    const-string v36, "&"

    const-string v37, "?"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 230
    :cond_3e
    const-string v36, "Upgrade.NetConnectClient"

    new-instance v37, Ljava/lang/StringBuilder;

    const-string v38, "url "

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " paramStr "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/vivo/upgrade/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 236
    .end local v24    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v27    # "paramStr":Ljava/lang/String;
    :cond_79
    :try_start_79
    new-instance v19, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_82
    .catch Ljava/lang/IllegalArgumentException; {:try_start_79 .. :try_end_82} :catch_151

    .line 237
    .end local v18    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    .local v19, "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    :try_start_82
    const-string v36, "Upgrade.NetConnectClient"

    new-instance v37, Ljava/lang/StringBuilder;

    const-string v38, "doGet the url after encode is "

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_82 .. :try_end_9a} :catch_86f

    move-object/from16 v18, v19

    .line 308
    .end local v19    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v18    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    :goto_9c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 310
    .local v15, "httpClient":Lorg/apache/http/client/HttpClient;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mDisconnected:Z

    move/from16 v36, v0

    if-nez v36, :cond_aa

    if-nez v15, :cond_275

    .line 312
    :cond_aa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    move-object/from16 v36, v0

    if-eqz v36, :cond_cb

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    move-object/from16 v36, v0

    const/16 v37, 0xcf

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move/from16 v2, v37

    move/from16 v3, v38

    move-object/from16 v4, v39

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vivo/upgrade/net/NetConnectResponse;->response(Lcom/vivo/upgrade/net/NetConnectClient;IILjava/lang/String;)V

    .line 601
    .end local v15    # "httpClient":Lorg/apache/http/client/HttpClient;
    :cond_cb
    :goto_cb
    return-void

    .line 197
    .restart local v24    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v27    # "paramStr":Ljava/lang/String;
    :cond_cc
    :try_start_cc
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 198
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 199
    .local v25, "key":Ljava/lang/String;
    if-eqz v25, :cond_e4

    .line 200
    const-string v36, "UTF-8"

    move-object/from16 v0, v25

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 203
    :cond_e4
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    .line 205
    .local v35, "val":Ljava/lang/String;
    if-eqz v35, :cond_f2

    .line 206
    const-string v36, "UTF-8"

    invoke-static/range {v35 .. v36}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 209
    :cond_f2
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v37, Ljava/lang/StringBuilder;

    const-string v38, "&"

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v36

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_127} :catch_12a

    move-result-object v27

    goto/16 :goto_18

    .line 211
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v25    # "key":Ljava/lang/String;
    .end local v35    # "val":Ljava/lang/String;
    :catch_12a
    move-exception v10

    .line 216
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    move-object/from16 v36, v0

    if-eqz v36, :cond_cb

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    move-object/from16 v36, v0

    const/16 v37, 0xc9

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move/from16 v2, v37

    move/from16 v3, v38

    move-object/from16 v4, v39

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vivo/upgrade/net/NetConnectResponse;->response(Lcom/vivo/upgrade/net/NetConnectClient;IILjava/lang/String;)V

    goto/16 :goto_cb

    .line 238
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v27    # "paramStr":Ljava/lang/String;
    :catch_151
    move-exception v10

    .line 242
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    :goto_152
    invoke-virtual {v10}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    move-object/from16 v36, v0

    if-eqz v36, :cond_cb

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    move-object/from16 v36, v0

    const/16 v37, 0xc9

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move/from16 v2, v37

    move/from16 v3, v38

    move-object/from16 v4, v39

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vivo/upgrade/net/NetConnectResponse;->response(Lcom/vivo/upgrade/net/NetConnectClient;IILjava/lang/String;)V

    goto/16 :goto_cb

    .line 248
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    :cond_178
    const/16 v36, 0x1

    move/from16 v0, p3

    move/from16 v1, v36

    if-ne v0, v1, :cond_25b

    .line 251
    const/16 v17, 0x0

    .line 252
    .local v17, "httpParams":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-eqz p2, :cond_197

    .line 254
    new-instance v17, Ljava/util/ArrayList;

    .end local v17    # "httpParams":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .restart local v17    # "httpParams":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .line 257
    .restart local v24    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_191
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-nez v36, :cond_1e2

    .line 272
    .end local v24    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_197
    :try_start_197
    new-instance v19, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_1a0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_197 .. :try_end_1a0} :catch_20b

    .line 273
    .end local v18    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v19    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    :try_start_1a0
    const-string v36, "Upgrade.NetConnectClient"

    new-instance v37, Ljava/lang/StringBuilder;

    const-string v38, "url = "

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ", httpParams = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a0 .. :try_end_1c6} :catch_86a

    .line 287
    if-eqz v17, :cond_874

    .line 288
    :try_start_1c8
    move-object/from16 v0, v19

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v36, v0

    new-instance v37, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v38, "UTF-8"

    move-object/from16 v0, v37

    move-object/from16 v1, v17

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual/range {v36 .. v37}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1de
    .catch Ljava/lang/Exception; {:try_start_1c8 .. :try_end_1de} :catch_232

    move-object/from16 v18, v19

    .line 290
    .end local v19    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v18    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    goto/16 :goto_9c

    .line 259
    .restart local v24    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1e2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 260
    .restart local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 261
    .restart local v25    # "key":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    .line 262
    .restart local v35    # "val":Ljava/lang/String;
    if-nez v35, :cond_1f8

    .line 263
    const-string v35, ""

    .line 266
    :cond_1f8
    new-instance v36, Lorg/apache/http/message/BasicNameValuePair;

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_191

    .line 274
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v25    # "key":Ljava/lang/String;
    .end local v35    # "val":Ljava/lang/String;
    :catch_20b
    move-exception v10

    .line 278
    .restart local v10    # "e":Ljava/lang/IllegalArgumentException;
    :goto_20c
    invoke-virtual {v10}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    move-object/from16 v36, v0

    if-eqz v36, :cond_cb

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    move-object/from16 v36, v0

    const/16 v37, 0xc9

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move/from16 v2, v37

    move/from16 v3, v38

    move-object/from16 v4, v39

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vivo/upgrade/net/NetConnectResponse;->response(Lcom/vivo/upgrade/net/NetConnectClient;IILjava/lang/String;)V

    goto/16 :goto_cb

    .line 290
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    .end local v18    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v19    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    :catch_232
    move-exception v10

    .line 295
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    move-object/from16 v36, v0

    if-eqz v36, :cond_257

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    move-object/from16 v36, v0

    const/16 v37, 0xc9

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move/from16 v2, v37

    move/from16 v3, v38

    move-object/from16 v4, v39

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vivo/upgrade/net/NetConnectResponse;->response(Lcom/vivo/upgrade/net/NetConnectClient;IILjava/lang/String;)V

    :cond_257
    move-object/from16 v18, v19

    .line 301
    .end local v19    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v18    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    goto/16 :goto_cb

    .line 304
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v17    # "httpParams":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_25b
    const-string v36, "Upgrade.NetConnectClient"

    new-instance v37, Ljava/lang/StringBuilder;

    const-string v38, "doHttpClient, unspport connect type: "

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v37

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/vivo/upgrade/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_cb

    .line 319
    .restart local v15    # "httpClient":Lorg/apache/http/client/HttpClient;
    :cond_275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    const-string v37, "connectivity"

    invoke-virtual/range {v36 .. v37}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    .line 320
    .local v8, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v26

    .line 321
    .local v26, "networkinfo":Landroid/net/NetworkInfo;
    if-nez v26, :cond_2b3

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    move-object/from16 v36, v0

    if-eqz v36, :cond_cb

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    move-object/from16 v36, v0

    const/16 v37, 0xca

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move/from16 v2, v37

    move/from16 v3, v38

    move-object/from16 v4, v39

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vivo/upgrade/net/NetConnectResponse;->response(Lcom/vivo/upgrade/net/NetConnectClient;IILjava/lang/String;)V

    .line 324
    const-string v36, "Upgrade.NetConnectClient"

    const-string v37, "connect failed"

    invoke-static/range {v36 .. v37}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_cb

    .line 330
    :cond_2b3
    invoke-virtual/range {v26 .. v26}, Landroid/net/NetworkInfo;->getType()I

    move-result v36

    if-nez v36, :cond_314

    .line 332
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v14

    .line 333
    .local v14, "host":Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v28

    .line 335
    .local v28, "port":I
    if-eqz v14, :cond_314

    const/16 v36, -0x1

    move/from16 v0, v28

    move/from16 v1, v36

    if-eq v0, v1, :cond_314

    .line 337
    const-string v36, "Upgrade.NetConnectClient"

    new-instance v37, Ljava/lang/StringBuilder;

    const-string v38, "Proxy host: is "

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " port is: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/vivo/upgrade/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    new-instance v29, Lorg/apache/http/HttpHost;

    const-string v36, "http"

    move-object/from16 v0, v29

    move/from16 v1, v28

    move-object/from16 v2, v36

    invoke-direct {v0, v14, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 339
    .local v29, "proxy":Lorg/apache/http/HttpHost;
    invoke-interface {v15}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v36

    const-string v37, "http.route.default-proxy"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 340
    invoke-interface {v15}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v36

    const/16 v37, 0x1

    invoke-static/range {v36 .. v37}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 344
    .end local v14    # "host":Ljava/lang/String;
    .end local v28    # "port":I
    .end local v29    # "proxy":Lorg/apache/http/HttpHost;
    :cond_314
    const/4 v12, 0x0

    .line 345
    .local v12, "gIs":Ljava/util/zip/GZIPInputStream;
    const/16 v22, 0x0

    .line 346
    .local v22, "inputStream":Ljava/io/InputStream;
    const/16 v20, 0x0

    .line 347
    .local v20, "httpResponse":Lorg/apache/http/HttpResponse;
    const/16 v21, 0x0

    .line 349
    .local v21, "inputSteamString":Ljava/lang/String;
    const-string v36, "accept-encoding"

    const-string v37, "gzip"

    move-object/from16 v0, v18

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :try_start_328
    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_32d
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_328 .. :try_end_32d} :catch_363
    .catch Ljava/lang/IllegalArgumentException; {:try_start_328 .. :try_end_32d} :catch_394
    .catch Ljava/io/IOException; {:try_start_328 .. :try_end_32d} :catch_3c5
    .catch Ljava/lang/IllegalStateException; {:try_start_328 .. :try_end_32d} :catch_426
    .catch Ljava/lang/NullPointerException; {:try_start_328 .. :try_end_32d} :catch_487

    move-result-object v20

    .line 430
    if-nez v20, :cond_512

    .line 432
    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 433
    const-string v36, "Upgrade.NetConnectClient"

    const-string v37, "doHttpClientConnect, got httpRespones is null"

    invoke-static/range {v36 .. v37}, Lcom/vivo/upgrade/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mTryNum:I

    move/from16 v36, v0

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-lt v0, v1, :cond_4e8

    .line 435
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mTryNum:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, -0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vivo/upgrade/net/NetConnectClient;->mTryNum:I

    .line 436
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/vivo/upgrade/net/NetConnectClient;->doHttpClient(Ljava/lang/String;Ljava/util/HashMap;I)V

    goto/16 :goto_cb

    .line 354
    :catch_363
    move-exception v10

    .line 355
    .local v10, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v10}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 356
    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 357
    const-string v36, "Upgrade.NetConnectClient"

    const-string v37, "doHttpClientConnect, can\'t connect because ClientProtocolException"

    invoke-static/range {v36 .. v37}, Lcom/vivo/upgrade/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    move-object/from16 v36, v0

    if-eqz v36, :cond_cb

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    move-object/from16 v36, v0

    const/16 v37, 0xc9

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move/from16 v2, v37

    move/from16 v3, v38

    move-object/from16 v4, v39

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vivo/upgrade/net/NetConnectResponse;->response(Lcom/vivo/upgrade/net/NetConnectClient;IILjava/lang/String;)V

    goto/16 :goto_cb

    .line 364
    .end local v10    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_394
    move-exception v10

    .line 366
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v10}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 367
    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 368
    const-string v36, "Upgrade.NetConnectClient"

    const-string v37, "doHttpClientConnect, can\'t connect because IllegalArgumentException"

    invoke-static/range {v36 .. v37}, Lcom/vivo/upgrade/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    move-object/from16 v36, v0

    if-eqz v36, :cond_cb

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    move-object/from16 v36, v0

    const/16 v37, 0xca

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move/from16 v2, v37

    move/from16 v3, v38

    move-object/from16 v4, v39

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vivo/upgrade/net/NetConnectResponse;->response(Lcom/vivo/upgrade/net/NetConnectClient;IILjava/lang/String;)V

    goto/16 :goto_cb

    .line 375
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3c5
    move-exception v10

    .line 376
    .local v10, "e":Ljava/io/IOException;
    const-string v36, "Upgrade.NetConnectClient"

    const-string v37, "doHttpClientConnect, get a IOException when connect to server"

    invoke-static/range {v36 .. v37}, Lcom/vivo/upgrade/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 378
    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 380
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mTryNum:I

    move/from16 v36, v0

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-lt v0, v1, :cond_3fc

    .line 381
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mTryNum:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, -0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vivo/upgrade/net/NetConnectClient;->mTryNum:I

    .line 382
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/vivo/upgrade/net/NetConnectClient;->doHttpClient(Ljava/lang/String;Ljava/util/HashMap;I)V

    goto/16 :goto_cb

    .line 385
    :cond_3fc
    const-string v36, "Upgrade.NetConnectClient"

    const-string v37, "doHttpClientConnect, can\'t connect because IOException"

    invoke-static/range {v36 .. v37}, Lcom/vivo/upgrade/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    move-object/from16 v36, v0

    if-eqz v36, :cond_cb

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    move-object/from16 v36, v0

    const/16 v37, 0xca

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move/from16 v2, v37

    move/from16 v3, v38

    move-object/from16 v4, v39

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vivo/upgrade/net/NetConnectResponse;->response(Lcom/vivo/upgrade/net/NetConnectClient;IILjava/lang/String;)V

    goto/16 :goto_cb

    .line 393
    .end local v10    # "e":Ljava/io/IOException;
    :catch_426
    move-exception v10

    .line 394
    .local v10, "e":Ljava/lang/IllegalStateException;
    const-string v36, "Upgrade.NetConnectClient"

    const-string v37, "doHttpClientConnect, get a IllegalStateException when connect to server"

    invoke-static/range {v36 .. v37}, Lcom/vivo/upgrade/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {v10}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 396
    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 398
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mTryNum:I

    move/from16 v36, v0

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-lt v0, v1, :cond_45d

    .line 399
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mTryNum:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, -0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vivo/upgrade/net/NetConnectClient;->mTryNum:I

    .line 400
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/vivo/upgrade/net/NetConnectClient;->doHttpClient(Ljava/lang/String;Ljava/util/HashMap;I)V

    goto/16 :goto_cb

    .line 403
    :cond_45d
    const-string v36, "Upgrade.NetConnectClient"

    const-string v37, "doHttpClientConnect, can\'t connect because IllegalStateException"

    invoke-static/range {v36 .. v37}, Lcom/vivo/upgrade/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    move-object/from16 v36, v0

    if-eqz v36, :cond_cb

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    move-object/from16 v36, v0

    const/16 v37, 0xca

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move/from16 v2, v37

    move/from16 v3, v38

    move-object/from16 v4, v39

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vivo/upgrade/net/NetConnectResponse;->response(Lcom/vivo/upgrade/net/NetConnectClient;IILjava/lang/String;)V

    goto/16 :goto_cb

    .line 411
    .end local v10    # "e":Ljava/lang/IllegalStateException;
    :catch_487
    move-exception v10

    .line 412
    .local v10, "e":Ljava/lang/NullPointerException;
    const-string v36, "Upgrade.NetConnectClient"

    const-string v37, "doHttpClientConnect, get a NullPointerException when connect to server"

    invoke-static/range {v36 .. v37}, Lcom/vivo/upgrade/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 414
    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 416
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mTryNum:I

    move/from16 v36, v0

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-lt v0, v1, :cond_4be

    .line 417
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mTryNum:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, -0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vivo/upgrade/net/NetConnectClient;->mTryNum:I

    .line 418
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/vivo/upgrade/net/NetConnectClient;->doHttpClient(Ljava/lang/String;Ljava/util/HashMap;I)V

    goto/16 :goto_cb

    .line 421
    :cond_4be
    const-string v36, "Upgrade.NetConnectClient"

    const-string v37, "doHttpClientConnect, can\'t connect because NullPointerException"

    invoke-static/range {v36 .. v37}, Lcom/vivo/upgrade/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    move-object/from16 v36, v0

    if-eqz v36, :cond_cb

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    move-object/from16 v36, v0

    const/16 v37, 0xca

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move/from16 v2, v37

    move/from16 v3, v38

    move-object/from16 v4, v39

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vivo/upgrade/net/NetConnectResponse;->response(Lcom/vivo/upgrade/net/NetConnectClient;IILjava/lang/String;)V

    goto/16 :goto_cb

    .line 439
    .end local v10    # "e":Ljava/lang/NullPointerException;
    :cond_4e8
    const-string v36, "Upgrade.NetConnectClient"

    const-string v37, "can not connect to server because get HttpRespones always null"

    invoke-static/range {v36 .. v37}, Lcom/vivo/upgrade/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    move-object/from16 v36, v0

    if-eqz v36, :cond_cb

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    move-object/from16 v36, v0

    const/16 v37, 0xcb

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move/from16 v2, v37

    move/from16 v3, v38

    move-object/from16 v4, v39

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vivo/upgrade/net/NetConnectResponse;->response(Lcom/vivo/upgrade/net/NetConnectClient;IILjava/lang/String;)V

    goto/16 :goto_cb

    .line 448
    :cond_512
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v34

    .line 449
    .local v34, "statusLine":Lorg/apache/http/StatusLine;
    if-nez v34, :cond_575

    .line 450
    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 451
    const-string v36, "Upgrade.NetConnectClient"

    const-string v37, "doHttpClientConnect, get status line is null"

    invoke-static/range {v36 .. v37}, Lcom/vivo/upgrade/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mTryNum:I

    move/from16 v36, v0

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-lt v0, v1, :cond_54b

    .line 454
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mTryNum:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, -0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vivo/upgrade/net/NetConnectClient;->mTryNum:I

    .line 455
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/vivo/upgrade/net/NetConnectClient;->doHttpClient(Ljava/lang/String;Ljava/util/HashMap;I)V

    goto/16 :goto_cb

    .line 458
    :cond_54b
    const-string v36, "Upgrade.NetConnectClient"

    const-string v37, "can not get the status code"

    invoke-static/range {v36 .. v37}, Lcom/vivo/upgrade/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    move-object/from16 v36, v0

    if-eqz v36, :cond_cb

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    move-object/from16 v36, v0

    const/16 v37, 0xcc

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move/from16 v2, v37

    move/from16 v3, v38

    move-object/from16 v4, v39

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vivo/upgrade/net/NetConnectResponse;->response(Lcom/vivo/upgrade/net/NetConnectClient;IILjava/lang/String;)V

    goto/16 :goto_cb

    .line 468
    :cond_575
    invoke-interface/range {v34 .. v34}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v33

    .line 470
    .local v33, "ret":I
    const/16 v36, 0xc8

    move/from16 v0, v33

    move/from16 v1, v36

    if-ne v0, v1, :cond_7e2

    .line 473
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v16

    .line 475
    .local v16, "httpEntity":Lorg/apache/http/HttpEntity;
    if-eqz v16, :cond_608

    .line 477
    const/4 v5, 0x0

    .line 478
    .local v5, "buffer":Ljava/io/BufferedReader;
    const/16 v30, 0x0

    .line 481
    .local v30, "reader":Ljava/io/InputStreamReader;
    const/16 v23, 0x0

    .line 482
    .local v23, "isGzip":Z
    :try_start_58c
    const-string v36, "Content-Encoding"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v13

    .line 483
    .local v13, "header":Lorg/apache/http/Header;
    if-eqz v13, :cond_5aa

    invoke-interface {v13}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v36

    const-string v37, "gzip"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_5aa

    .line 484
    const/16 v23, 0x1

    .line 486
    :cond_5aa
    const-string v36, "Upgrade.NetConnectClient"

    new-instance v37, Ljava/lang/StringBuilder;

    const-string v38, "isGzip "

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v37

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/vivo/upgrade/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v22

    .line 490
    if-eqz v23, :cond_62c

    .line 491
    new-instance v31, Ljava/io/InputStreamReader;

    new-instance v36, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, v36

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .end local v30    # "reader":Ljava/io/InputStreamReader;
    .local v31, "reader":Ljava/io/InputStreamReader;
    move-object/from16 v30, v31

    .line 496
    .end local v31    # "reader":Ljava/io/InputStreamReader;
    .restart local v30    # "reader":Ljava/io/InputStreamReader;
    :goto_5dc
    new-instance v6, Ljava/io/BufferedReader;

    move-object/from16 v0, v30

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5e3
    .catch Ljava/lang/IllegalStateException; {:try_start_58c .. :try_end_5e3} :catch_867
    .catch Ljava/io/IOException; {:try_start_58c .. :try_end_5e3} :catch_6ed
    .catchall {:try_start_58c .. :try_end_5e3} :catchall_7a0

    .line 497
    .end local v5    # "buffer":Ljava/io/BufferedReader;
    .local v6, "buffer":Ljava/io/BufferedReader;
    :try_start_5e3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 498
    .local v7, "builder":Ljava/lang/StringBuilder;
    const-string v9, ""

    .line 499
    .local v9, "data":Ljava/lang/String;
    :goto_5ea
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_638

    .line 503
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5f3
    .catch Ljava/lang/IllegalStateException; {:try_start_5e3 .. :try_end_5f3} :catch_63c
    .catch Ljava/io/IOException; {:try_start_5e3 .. :try_end_5f3} :catch_863
    .catchall {:try_start_5e3 .. :try_end_5f3} :catchall_85f

    move-result-object v21

    .line 543
    if-eqz v22, :cond_5f9

    .line 545
    :try_start_5f6
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_5f9
    .catch Ljava/io/IOException; {:try_start_5f6 .. :try_end_5f9} :catch_7ca

    .line 551
    :cond_5f9
    :goto_5f9
    if-eqz v12, :cond_5fe

    .line 553
    :try_start_5fb
    invoke-virtual {v12}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_5fe
    .catch Ljava/io/IOException; {:try_start_5fb .. :try_end_5fe} :catch_7d0

    .line 559
    :cond_5fe
    :goto_5fe
    if-eqz v6, :cond_603

    .line 561
    :try_start_600
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_603
    .catch Ljava/io/IOException; {:try_start_600 .. :try_end_603} :catch_7d6

    .line 567
    :cond_603
    :goto_603
    if-eqz v30, :cond_608

    .line 569
    :try_start_605
    invoke-virtual/range {v30 .. v30}, Ljava/io/InputStreamReader;->close()V
    :try_end_608
    .catch Ljava/io/IOException; {:try_start_605 .. :try_end_608} :catch_7dc

    .line 596
    .end local v6    # "buffer":Ljava/io/BufferedReader;
    .end local v7    # "builder":Ljava/lang/StringBuilder;
    .end local v9    # "data":Ljava/lang/String;
    .end local v13    # "header":Lorg/apache/http/Header;
    .end local v23    # "isGzip":Z
    .end local v30    # "reader":Ljava/io/InputStreamReader;
    :cond_608
    :goto_608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    move-object/from16 v36, v0

    if-eqz v36, :cond_627

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    move-object/from16 v36, v0

    const/16 v37, 0x12c

    const/16 v38, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move/from16 v2, v37

    move/from16 v3, v38

    move-object/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vivo/upgrade/net/NetConnectResponse;->response(Lcom/vivo/upgrade/net/NetConnectClient;IILjava/lang/String;)V

    .line 600
    :cond_627
    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    goto/16 :goto_cb

    .line 493
    .restart local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v13    # "header":Lorg/apache/http/Header;
    .restart local v23    # "isGzip":Z
    .restart local v30    # "reader":Ljava/io/InputStreamReader;
    :cond_62c
    :try_start_62c
    new-instance v31, Ljava/io/InputStreamReader;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_635
    .catch Ljava/lang/IllegalStateException; {:try_start_62c .. :try_end_635} :catch_867
    .catch Ljava/io/IOException; {:try_start_62c .. :try_end_635} :catch_6ed
    .catchall {:try_start_62c .. :try_end_635} :catchall_7a0

    .end local v30    # "reader":Ljava/io/InputStreamReader;
    .restart local v31    # "reader":Ljava/io/InputStreamReader;
    move-object/from16 v30, v31

    .end local v31    # "reader":Ljava/io/InputStreamReader;
    .restart local v30    # "reader":Ljava/io/InputStreamReader;
    goto :goto_5dc

    .line 500
    .end local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v6    # "buffer":Ljava/io/BufferedReader;
    .restart local v7    # "builder":Ljava/lang/StringBuilder;
    .restart local v9    # "data":Ljava/lang/String;
    :cond_638
    :try_start_638
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_63b
    .catch Ljava/lang/IllegalStateException; {:try_start_638 .. :try_end_63b} :catch_63c
    .catch Ljava/io/IOException; {:try_start_638 .. :try_end_63b} :catch_863
    .catchall {:try_start_638 .. :try_end_63b} :catchall_85f

    goto :goto_5ea

    .line 505
    .end local v7    # "builder":Ljava/lang/StringBuilder;
    .end local v9    # "data":Ljava/lang/String;
    :catch_63c
    move-exception v10

    move-object v5, v6

    .line 507
    .end local v6    # "buffer":Ljava/io/BufferedReader;
    .end local v13    # "header":Lorg/apache/http/Header;
    .restart local v5    # "buffer":Ljava/io/BufferedReader;
    .local v10, "e":Ljava/lang/IllegalStateException;
    :goto_63e
    :try_start_63e
    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 508
    const-string v36, "Upgrade.NetConnectClient"

    const-string v37, "doHttpClientConnect, get an IllegalStateException when get content from HttpResonse"

    invoke-static/range {v36 .. v37}, Lcom/vivo/upgrade/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mTryNum:I

    move/from16 v36, v0

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-lt v0, v1, :cond_69a

    .line 510
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mTryNum:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, -0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vivo/upgrade/net/NetConnectClient;->mTryNum:I

    .line 511
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/vivo/upgrade/net/NetConnectClient;->doHttpClient(Ljava/lang/String;Ljava/util/HashMap;I)V
    :try_end_66f
    .catchall {:try_start_63e .. :try_end_66f} :catchall_7a0

    .line 543
    if-eqz v22, :cond_674

    .line 545
    :try_start_671
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_674
    .catch Ljava/io/IOException; {:try_start_671 .. :try_end_674} :catch_68b

    .line 551
    .end local v10    # "e":Ljava/lang/IllegalStateException;
    :cond_674
    :goto_674
    if-eqz v12, :cond_679

    .line 553
    :try_start_676
    invoke-virtual {v12}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_679
    .catch Ljava/io/IOException; {:try_start_676 .. :try_end_679} :catch_690

    .line 559
    :cond_679
    :goto_679
    if-eqz v5, :cond_67e

    .line 561
    :try_start_67b
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_67e
    .catch Ljava/io/IOException; {:try_start_67b .. :try_end_67e} :catch_695

    .line 567
    :cond_67e
    :goto_67e
    if-eqz v30, :cond_cb

    .line 569
    :try_start_680
    invoke-virtual/range {v30 .. v30}, Ljava/io/InputStreamReader;->close()V
    :try_end_683
    .catch Ljava/io/IOException; {:try_start_680 .. :try_end_683} :catch_685

    goto/16 :goto_cb

    .line 570
    :catch_685
    move-exception v10

    .line 571
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_cb

    .line 546
    .local v10, "e":Ljava/lang/IllegalStateException;
    :catch_68b
    move-exception v10

    .line 547
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_674

    .line 554
    .end local v10    # "e":Ljava/io/IOException;
    :catch_690
    move-exception v10

    .line 555
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_679

    .line 562
    .end local v10    # "e":Ljava/io/IOException;
    :catch_695
    move-exception v10

    .line 563
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_67e

    .line 514
    .local v10, "e":Ljava/lang/IllegalStateException;
    :cond_69a
    :try_start_69a
    const-string v36, "Upgrade.NetConnectClient"

    const-string v37, "doHttpClientConnect, can not get content from HttpResponse because IllegalStateException"

    invoke-static/range {v36 .. v37}, Lcom/vivo/upgrade/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    move-object/from16 v36, v0

    if-eqz v36, :cond_6c2

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    move-object/from16 v36, v0

    const/16 v37, 0xce

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move/from16 v2, v37

    move/from16 v3, v38

    move-object/from16 v4, v39

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vivo/upgrade/net/NetConnectResponse;->response(Lcom/vivo/upgrade/net/NetConnectClient;IILjava/lang/String;)V
    :try_end_6c2
    .catchall {:try_start_69a .. :try_end_6c2} :catchall_7a0

    .line 543
    :cond_6c2
    if-eqz v22, :cond_6c7

    .line 545
    :try_start_6c4
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_6c7
    .catch Ljava/io/IOException; {:try_start_6c4 .. :try_end_6c7} :catch_6de

    .line 551
    .end local v10    # "e":Ljava/lang/IllegalStateException;
    :cond_6c7
    :goto_6c7
    if-eqz v12, :cond_6cc

    .line 553
    :try_start_6c9
    invoke-virtual {v12}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_6cc
    .catch Ljava/io/IOException; {:try_start_6c9 .. :try_end_6cc} :catch_6e3

    .line 559
    :cond_6cc
    :goto_6cc
    if-eqz v5, :cond_6d1

    .line 561
    :try_start_6ce
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6d1
    .catch Ljava/io/IOException; {:try_start_6ce .. :try_end_6d1} :catch_6e8

    .line 567
    :cond_6d1
    :goto_6d1
    if-eqz v30, :cond_cb

    .line 569
    :try_start_6d3
    invoke-virtual/range {v30 .. v30}, Ljava/io/InputStreamReader;->close()V
    :try_end_6d6
    .catch Ljava/io/IOException; {:try_start_6d3 .. :try_end_6d6} :catch_6d8

    goto/16 :goto_cb

    .line 570
    :catch_6d8
    move-exception v10

    .line 571
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_cb

    .line 546
    .local v10, "e":Ljava/lang/IllegalStateException;
    :catch_6de
    move-exception v10

    .line 547
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6c7

    .line 554
    .end local v10    # "e":Ljava/io/IOException;
    :catch_6e3
    move-exception v10

    .line 555
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6cc

    .line 562
    .end local v10    # "e":Ljava/io/IOException;
    :catch_6e8
    move-exception v10

    .line 563
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6d1

    .line 522
    .end local v10    # "e":Ljava/io/IOException;
    :catch_6ed
    move-exception v10

    .line 524
    .restart local v10    # "e":Ljava/io/IOException;
    :goto_6ee
    :try_start_6ee
    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 525
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 526
    const-string v36, "Upgrade.NetConnectClient"

    const-string v37, "doHttpClientConnect, get an IOException when get content from HttpResponse"

    invoke-static/range {v36 .. v37}, Lcom/vivo/upgrade/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mTryNum:I

    move/from16 v36, v0

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-lt v0, v1, :cond_74d

    .line 529
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mTryNum:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, -0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vivo/upgrade/net/NetConnectClient;->mTryNum:I

    .line 530
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/vivo/upgrade/net/NetConnectClient;->doHttpClient(Ljava/lang/String;Ljava/util/HashMap;I)V
    :try_end_722
    .catchall {:try_start_6ee .. :try_end_722} :catchall_7a0

    .line 543
    if-eqz v22, :cond_727

    .line 545
    :try_start_724
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_727
    .catch Ljava/io/IOException; {:try_start_724 .. :try_end_727} :catch_73e

    .line 551
    :cond_727
    :goto_727
    if-eqz v12, :cond_72c

    .line 553
    :try_start_729
    invoke-virtual {v12}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_72c
    .catch Ljava/io/IOException; {:try_start_729 .. :try_end_72c} :catch_743

    .line 559
    :cond_72c
    :goto_72c
    if-eqz v5, :cond_731

    .line 561
    :try_start_72e
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_731
    .catch Ljava/io/IOException; {:try_start_72e .. :try_end_731} :catch_748

    .line 567
    :cond_731
    :goto_731
    if-eqz v30, :cond_cb

    .line 569
    :try_start_733
    invoke-virtual/range {v30 .. v30}, Ljava/io/InputStreamReader;->close()V
    :try_end_736
    .catch Ljava/io/IOException; {:try_start_733 .. :try_end_736} :catch_738

    goto/16 :goto_cb

    .line 570
    :catch_738
    move-exception v10

    .line 571
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_cb

    .line 546
    :catch_73e
    move-exception v10

    .line 547
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_727

    .line 554
    :catch_743
    move-exception v10

    .line 555
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_72c

    .line 562
    :catch_748
    move-exception v10

    .line 563
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_731

    .line 533
    :cond_74d
    :try_start_74d
    const-string v36, "Upgrade.NetConnectClient"

    const-string v37, "doHttpClientConnect, can not get content from HttpResponse because IOException"

    invoke-static/range {v36 .. v37}, Lcom/vivo/upgrade/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    move-object/from16 v36, v0

    if-eqz v36, :cond_775

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    move-object/from16 v36, v0

    const/16 v37, 0xce

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move/from16 v2, v37

    move/from16 v3, v38

    move-object/from16 v4, v39

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vivo/upgrade/net/NetConnectResponse;->response(Lcom/vivo/upgrade/net/NetConnectClient;IILjava/lang/String;)V
    :try_end_775
    .catchall {:try_start_74d .. :try_end_775} :catchall_7a0

    .line 543
    :cond_775
    if-eqz v22, :cond_77a

    .line 545
    :try_start_777
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_77a
    .catch Ljava/io/IOException; {:try_start_777 .. :try_end_77a} :catch_791

    .line 551
    :cond_77a
    :goto_77a
    if-eqz v12, :cond_77f

    .line 553
    :try_start_77c
    invoke-virtual {v12}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_77f
    .catch Ljava/io/IOException; {:try_start_77c .. :try_end_77f} :catch_796

    .line 559
    :cond_77f
    :goto_77f
    if-eqz v5, :cond_784

    .line 561
    :try_start_781
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_784
    .catch Ljava/io/IOException; {:try_start_781 .. :try_end_784} :catch_79b

    .line 567
    :cond_784
    :goto_784
    if-eqz v30, :cond_cb

    .line 569
    :try_start_786
    invoke-virtual/range {v30 .. v30}, Ljava/io/InputStreamReader;->close()V
    :try_end_789
    .catch Ljava/io/IOException; {:try_start_786 .. :try_end_789} :catch_78b

    goto/16 :goto_cb

    .line 570
    :catch_78b
    move-exception v10

    .line 571
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_cb

    .line 546
    :catch_791
    move-exception v10

    .line 547
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_77a

    .line 554
    :catch_796
    move-exception v10

    .line 555
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_77f

    .line 562
    :catch_79b
    move-exception v10

    .line 563
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_784

    .line 541
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_7a0
    move-exception v36

    .line 543
    :goto_7a1
    if-eqz v22, :cond_7a6

    .line 545
    :try_start_7a3
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_7a6
    .catch Ljava/io/IOException; {:try_start_7a3 .. :try_end_7a6} :catch_7b6

    .line 551
    :cond_7a6
    :goto_7a6
    if-eqz v12, :cond_7ab

    .line 553
    :try_start_7a8
    invoke-virtual {v12}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_7ab
    .catch Ljava/io/IOException; {:try_start_7a8 .. :try_end_7ab} :catch_7bb

    .line 559
    :cond_7ab
    :goto_7ab
    if-eqz v5, :cond_7b0

    .line 561
    :try_start_7ad
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7b0
    .catch Ljava/io/IOException; {:try_start_7ad .. :try_end_7b0} :catch_7c0

    .line 567
    :cond_7b0
    :goto_7b0
    if-eqz v30, :cond_7b5

    .line 569
    :try_start_7b2
    invoke-virtual/range {v30 .. v30}, Ljava/io/InputStreamReader;->close()V
    :try_end_7b5
    .catch Ljava/io/IOException; {:try_start_7b2 .. :try_end_7b5} :catch_7c5

    .line 574
    :cond_7b5
    :goto_7b5
    throw v36

    .line 546
    :catch_7b6
    move-exception v10

    .line 547
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7a6

    .line 554
    .end local v10    # "e":Ljava/io/IOException;
    :catch_7bb
    move-exception v10

    .line 555
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7ab

    .line 562
    .end local v10    # "e":Ljava/io/IOException;
    :catch_7c0
    move-exception v10

    .line 563
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7b0

    .line 570
    .end local v10    # "e":Ljava/io/IOException;
    :catch_7c5
    move-exception v10

    .line 571
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7b5

    .line 546
    .end local v5    # "buffer":Ljava/io/BufferedReader;
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v6    # "buffer":Ljava/io/BufferedReader;
    .restart local v7    # "builder":Ljava/lang/StringBuilder;
    .restart local v9    # "data":Ljava/lang/String;
    .restart local v13    # "header":Lorg/apache/http/Header;
    :catch_7ca
    move-exception v10

    .line 547
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5f9

    .line 554
    .end local v10    # "e":Ljava/io/IOException;
    :catch_7d0
    move-exception v10

    .line 555
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5fe

    .line 562
    .end local v10    # "e":Ljava/io/IOException;
    :catch_7d6
    move-exception v10

    .line 563
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_603

    .line 570
    .end local v10    # "e":Ljava/io/IOException;
    :catch_7dc
    move-exception v10

    .line 571
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_608

    .line 578
    .end local v6    # "buffer":Ljava/io/BufferedReader;
    .end local v7    # "builder":Ljava/lang/StringBuilder;
    .end local v9    # "data":Ljava/lang/String;
    .end local v10    # "e":Ljava/io/IOException;
    .end local v13    # "header":Lorg/apache/http/Header;
    .end local v16    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v23    # "isGzip":Z
    .end local v30    # "reader":Ljava/io/InputStreamReader;
    :cond_7e2
    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 579
    const-string v36, "Upgrade.NetConnectClient"

    new-instance v37, Ljava/lang/StringBuilder;

    const-string v38, "doHttpClientConnect, get wrong status code : "

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v37

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/vivo/upgrade/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mTryNum:I

    move/from16 v36, v0

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-lt v0, v1, :cond_826

    .line 582
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mTryNum:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, -0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vivo/upgrade/net/NetConnectClient;->mTryNum:I

    .line 583
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/vivo/upgrade/net/NetConnectClient;->doHttpClient(Ljava/lang/String;Ljava/util/HashMap;I)V

    goto/16 :goto_cb

    .line 586
    :cond_826
    const-string v36, "Upgrade.NetConnectClient"

    new-instance v37, Ljava/lang/StringBuilder;

    const-string v38, "doHttpClientConnect, status code error, status code is "

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v37

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/vivo/upgrade/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    move-object/from16 v36, v0

    if-eqz v36, :cond_cb

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/net/NetConnectClient;->mResponedCallback:Lcom/vivo/upgrade/net/NetConnectResponse;

    move-object/from16 v36, v0

    const/16 v37, 0xcd

    const/16 v38, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move/from16 v2, v37

    move/from16 v3, v33

    move-object/from16 v4, v38

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vivo/upgrade/net/NetConnectResponse;->response(Lcom/vivo/upgrade/net/NetConnectClient;IILjava/lang/String;)V

    goto/16 :goto_cb

    .line 541
    .restart local v6    # "buffer":Ljava/io/BufferedReader;
    .restart local v13    # "header":Lorg/apache/http/Header;
    .restart local v16    # "httpEntity":Lorg/apache/http/HttpEntity;
    .restart local v23    # "isGzip":Z
    .restart local v30    # "reader":Ljava/io/InputStreamReader;
    :catchall_85f
    move-exception v36

    move-object v5, v6

    .end local v6    # "buffer":Ljava/io/BufferedReader;
    .restart local v5    # "buffer":Ljava/io/BufferedReader;
    goto/16 :goto_7a1

    .line 522
    .end local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v6    # "buffer":Ljava/io/BufferedReader;
    :catch_863
    move-exception v10

    move-object v5, v6

    .end local v6    # "buffer":Ljava/io/BufferedReader;
    .restart local v5    # "buffer":Ljava/io/BufferedReader;
    goto/16 :goto_6ee

    .line 505
    .end local v13    # "header":Lorg/apache/http/Header;
    :catch_867
    move-exception v10

    goto/16 :goto_63e

    .line 274
    .end local v5    # "buffer":Ljava/io/BufferedReader;
    .end local v8    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v12    # "gIs":Ljava/util/zip/GZIPInputStream;
    .end local v15    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v16    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v18    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    .end local v20    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v21    # "inputSteamString":Ljava/lang/String;
    .end local v22    # "inputStream":Ljava/io/InputStream;
    .end local v23    # "isGzip":Z
    .end local v26    # "networkinfo":Landroid/net/NetworkInfo;
    .end local v30    # "reader":Ljava/io/InputStreamReader;
    .end local v33    # "ret":I
    .end local v34    # "statusLine":Lorg/apache/http/StatusLine;
    .restart local v17    # "httpParams":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v19    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    :catch_86a
    move-exception v10

    move-object/from16 v18, v19

    .end local v19    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v18    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    goto/16 :goto_20c

    .line 238
    .end local v17    # "httpParams":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v18    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v19    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    :catch_86f
    move-exception v10

    move-object/from16 v18, v19

    .end local v19    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v18    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    goto/16 :goto_152

    .end local v18    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v17    # "httpParams":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v19    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_874
    move-object/from16 v18, v19

    .end local v19    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v18    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    goto/16 :goto_9c
.end method

.method private getHttpClient()Lorg/apache/http/client/HttpClient;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 130
    .local v1, "httpParams":Lorg/apache/http/params/BasicHttpParams;
    iget v4, p0, Lcom/vivo/upgrade/net/NetConnectClient;->mTimeOut:I

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 131
    iget v4, p0, Lcom/vivo/upgrade/net/NetConnectClient;->mTimeOut:I

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 132
    const/16 v4, 0x2000

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 133
    const/4 v4, 0x1

    invoke-static {v1, v4}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 134
    const-string v3, "Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv:1.9.2) Gecko/20100115 Firefox/3.6"

    .line 135
    .local v3, "userAgent":Ljava/lang/String;
    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 136
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v0    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 138
    .restart local v0    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    if-eqz v0, :cond_2e

    .line 139
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-direct {v2, v5, v5}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    .line 140
    .local v2, "retryhandler":Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 143
    .end local v2    # "retryhandler":Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
    :cond_2e
    return-object v0
.end method


# virtual methods
.method public connect(Ljava/lang/String;Ljava/util/HashMap;I)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "method"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 170
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "connect url can\'t be url"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_e
    iget-object v0, p0, Lcom/vivo/upgrade/net/NetConnectClient;->mAppendInfo:Lcom/vivo/upgrade/net/NetConnectClient$AppendInfo;

    if-eqz v0, :cond_19

    .line 174
    iget-object v0, p0, Lcom/vivo/upgrade/net/NetConnectClient;->mAppendInfo:Lcom/vivo/upgrade/net/NetConnectClient$AppendInfo;

    iget-object v1, p0, Lcom/vivo/upgrade/net/NetConnectClient;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p2}, Lcom/vivo/upgrade/net/NetConnectClient$AppendInfo;->onAppendRequestInfo(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 177
    :cond_19
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/upgrade/net/NetConnectClient;->doHttpClient(Ljava/lang/String;Ljava/util/HashMap;I)V

    .line 178
    return-void
.end method

.method public disconnect()V
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/vivo/upgrade/net/NetConnectClient;->mHttpClient:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_13

    .line 150
    iget-object v0, p0, Lcom/vivo/upgrade/net/NetConnectClient;->mHttpClient:Lorg/apache/http/client/HttpClient;

    instance-of v0, v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_1a

    .line 151
    iget-object v0, p0, Lcom/vivo/upgrade/net/NetConnectClient;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 157
    :cond_13
    :goto_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/upgrade/net/NetConnectClient;->mDisconnected:Z

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/upgrade/net/NetConnectClient;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 159
    return-void

    .line 152
    :cond_1a
    iget-object v0, p0, Lcom/vivo/upgrade/net/NetConnectClient;->mHttpClient:Lorg/apache/http/client/HttpClient;

    instance-of v0, v0, Landroid/net/http/AndroidHttpClient;

    if-eqz v0, :cond_13

    .line 153
    iget-object v0, p0, Lcom/vivo/upgrade/net/NetConnectClient;->mHttpClient:Lorg/apache/http/client/HttpClient;

    check-cast v0, Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_13
.end method

.method public setAppendInfo(Lcom/vivo/upgrade/net/NetConnectClient$AppendInfo;)V
    .registers 2
    .param p1, "appendInfo"    # Lcom/vivo/upgrade/net/NetConnectClient$AppendInfo;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/vivo/upgrade/net/NetConnectClient;->mAppendInfo:Lcom/vivo/upgrade/net/NetConnectClient$AppendInfo;

    .line 124
    return-void
.end method

.method public setTryNum(I)V
    .registers 2
    .param p1, "tryNum"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/vivo/upgrade/net/NetConnectClient;->mTryNum:I

    .line 116
    return-void
.end method
