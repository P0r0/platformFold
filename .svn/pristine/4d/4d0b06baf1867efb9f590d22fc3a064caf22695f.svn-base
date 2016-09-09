.class public Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;
.super Ljava/lang/Object;
.source "BaiduGameBBSUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse;,
        Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$GetNameResponse;,
        Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$BaseBBSResponse;
    }
.end annotation


# static fields
.field private static final BBS_QUERY_API_URI:Landroid/net/Uri;

.field private static final CONNECTION_TIMEOUT_MS:I = 0x7530

.field private static final PREF_BBS_UTIL:Ljava/lang/String; = "BBS_UTIL"

.field private static final PREF_BBS_UTIL_DUOKU_ID:Ljava/lang/String; = "BBS_UTIL_DUOKU_ID"

.field private static final PREF_BBS_UTIL_HAS_UPLOADED_VIDEO:Ljava/lang/String; = "BBS_UTIL_HAS_UPLOADED_VIDEO"

.field private static final PREF_BBS_UTIL_NAME:Ljava/lang/String; = "BBS_UTIL_NAME"

.field private static final PREF_BBS_UTIL_PENDING_NAME:Ljava/lang/String; = "BBS_UTIL_PENDING_NAME"

.field private static final TYPE_GET_NAME:Ljava/lang/String; = "1"

.field private static final TYPE_IS_VALID_NAME:Ljava/lang/String; = "2"

.field private static sOkHttpClient:Lcom/squareup/okhttp/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-string v0, "http://bbs.g.baidu.com/api/video/index.php"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;->BBS_QUERY_API_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    return-void
.end method

.method private static callApi(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 12
    .param p0, "queryType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "queryParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v7, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;->BBS_QUERY_API_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 165
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v7, "mod"

    const-string v8, "User"

    invoke-virtual {v0, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "type"

    invoke-virtual {v7, v8, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 167
    if-eqz p1, :cond_39

    .line 168
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_39

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 169
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1d

    .line 172
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_39
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 175
    .local v5, "uri":Landroid/net/Uri;
    :try_start_3d
    new-instance v6, Ljava/net/URL;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/net/MalformedURLException; {:try_start_3d .. :try_end_46} :catch_6d

    .line 179
    .local v6, "url":Ljava/net/URL;
    new-instance v7, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v7}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    invoke-virtual {v7, v6}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/net/URL;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v3

    .line 180
    .local v3, "request":Lcom/squareup/okhttp/Request;
    invoke-static {}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;->getOkHttpClient()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v4

    .line 181
    .local v4, "response":Lcom/squareup/okhttp/Response;
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v4}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v8

    invoke-virtual {v8}, Lcom/squareup/okhttp/ResponseBody;->string()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v7

    .line 176
    .end local v3    # "request":Lcom/squareup/okhttp/Request;
    .end local v4    # "response":Lcom/squareup/okhttp/Response;
    .end local v6    # "url":Ljava/net/URL;
    :catch_6d
    move-exception v1

    .line 177
    .local v1, "e":Ljava/net/MalformedURLException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method public static canUpdateUserName(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    invoke-static {p0}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;->getSharedBBSName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p0}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;->getSharedHasUploadedVideo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static getGlobalSharedDuokuUid(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    const-string v1, "com_dk_shared_preferences"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 120
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "dkuserid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getName(Landroid/content/Context;)Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$GetNameResponse;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {p0}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;->getGlobalSharedDuokuUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "globalSharedDuokuId":Ljava/lang/String;
    invoke-static {p0}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;->getSharedDuokuUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    .line 56
    const-string v6, ""

    invoke-static {p0, v6}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;->setSharedBBSName(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    invoke-static {p0, v1}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;->setSharedDuokuUid(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    const-string v6, ""

    invoke-static {p0, v6}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;->setSharedPendingBBSName(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    const/4 v6, 0x0

    invoke-static {p0, v6}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;->setSharedHasUploadedVideo(Landroid/content/Context;Z)V

    .line 61
    :cond_1f
    invoke-static {p0}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;->getSharedBBSName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 62
    .local v5, "sharedName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_39

    .line 63
    new-instance v0, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$GetNameResponse;

    invoke-direct {v0}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$GetNameResponse;-><init>()V

    .line 64
    .local v0, "cachedResponse":Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$GetNameResponse;
    sget-object v6, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$GetNameResponse$Status;->ID_REGISTERED:Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$GetNameResponse$Status;

    invoke-virtual {v6}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$GetNameResponse$Status;->ordinal()I

    move-result v6

    iput v6, v0, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$GetNameResponse;->status:I

    .line 65
    iput-object v5, v0, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$GetNameResponse;->name:Ljava/lang/String;

    .line 77
    .end local v0    # "cachedResponse":Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$GetNameResponse;
    :goto_38
    return-object v0

    .line 68
    :cond_39
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 70
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "duokuid"

    invoke-virtual {v3, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v6, "1"

    invoke-static {v6, v3}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;->callApi(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    .line 72
    .local v2, "jsonObject":Lorg/json/JSONObject;
    new-instance v4, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$GetNameResponse;

    invoke-direct {v4, v2}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$GetNameResponse;-><init>(Lorg/json/JSONObject;)V

    .line 73
    .local v4, "response":Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$GetNameResponse;
    invoke-virtual {v4}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$GetNameResponse;->hasRegisteredName()Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 74
    iget-object v6, v4, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$GetNameResponse;->name:Ljava/lang/String;

    invoke-static {p0, v6}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;->setSharedBBSName(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    const-string v6, ""

    invoke-static {p0, v6}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;->setSharedPendingBBSName(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5e
    move-object v0, v4

    .line 77
    goto :goto_38
.end method

.method private static getOkHttpClient()Lcom/squareup/okhttp/OkHttpClient;
    .registers 5

    .prologue
    .line 185
    sget-object v1, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;->sOkHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    if-nez v1, :cond_25

    .line 186
    const-class v0, Lcom/squareup/okhttp/OkHttpClient;

    .line 187
    .local v0, "clazz":Ljava/lang/Class;
    monitor-enter v0

    .line 188
    :try_start_7
    sget-object v1, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;->sOkHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    if-nez v1, :cond_24

    .line 189
    new-instance v1, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v1}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    sput-object v1, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;->sOkHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    .line 190
    sget-object v1, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;->sOkHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    const-wide/16 v2, 0x7530

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lcom/squareup/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 191
    sget-object v1, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;->sOkHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    const-wide/16 v2, 0x7530

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lcom/squareup/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 193
    :cond_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_28

    .line 195
    :cond_25
    sget-object v1, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;->sOkHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    return-object v1

    .line 193
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public static getReportMetaMap(Landroid/content/Context;)Ljava/util/HashMap;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 99
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "duokuid"

    invoke-static {p0}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;->getSharedDuokuUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {p0}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;->getSharedBBSName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 102
    const-string v1, "username"

    invoke-static {p0}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;->getSharedBBSName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :goto_21
    return-object v0

    .line 105
    :cond_22
    const-string v1, "username"

    invoke-static {p0}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;->getSharedPendingBBSName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21
.end method

.method public static getSharedBBSName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    const-string v1, "BBS_UTIL"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 125
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "BBS_UTIL_NAME"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getSharedDuokuUid(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    const-string v1, "BBS_UTIL"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 150
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "BBS_UTIL_DUOKU_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSharedHasUploadedVideo(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 144
    const-string v1, "BBS_UTIL"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 145
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "BBS_UTIL_HAS_UPLOADED_VIDEO"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getSharedPendingBBSName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    const-string v1, "BBS_UTIL"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 130
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "BBS_UTIL_PENDING_NAME"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isValidName(Landroid/content/Context;Ljava/lang/String;)Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 83
    new-instance v2, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse;

    invoke-direct {v2}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse;-><init>()V

    .line 84
    .local v2, "response":Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse;
    sget-object v3, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse$Status;->NAME_INVALID:Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse$Status;

    invoke-virtual {v3}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse$Status;->ordinal()I

    move-result v3

    iput v3, v2, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse;->status:I

    .line 85
    const-string v3, "omp_upload_video_name_error_empty"

    invoke-static {p0, v3}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse;->message:Ljava/lang/String;

    .line 93
    :goto_1f
    return-object v2

    .line 88
    .end local v2    # "response":Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse;
    :cond_20
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "username"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v3, "2"

    invoke-static {v3, v1}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;->callApi(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    .line 92
    .local v0, "jsonObject":Lorg/json/JSONObject;
    new-instance v2, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse;

    invoke-direct {v2, v0}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse;-><init>(Lorg/json/JSONObject;)V

    .line 93
    .restart local v2    # "response":Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse;
    goto :goto_1f
.end method

.method private static readAsJSON(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .registers 4
    .param p0, "response"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p0}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;->readAsString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v1

    .line 211
    :catch_a
    move-exception v0

    .line 212
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static readAsString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6
    .param p0, "response"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 200
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 201
    .local v0, "buf":[B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 202
    .local v2, "resultBytes":Ljava/io/ByteArrayOutputStream;
    :goto_a
    array-length v3, v0

    invoke-virtual {p0, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, "read":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_16

    .line 203
    invoke-virtual {v2, v0, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_a

    .line 205
    :cond_16
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    return-object v3
.end method

.method private static setSharedBBSName(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 159
    const-string v1, "BBS_UTIL"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 160
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "BBS_UTIL_NAME"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 161
    return-void
.end method

.method private static setSharedDuokuUid(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 154
    const-string v1, "BBS_UTIL"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 155
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "BBS_UTIL_DUOKU_ID"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 156
    return-void
.end method

.method public static setSharedHasUploadedVideo(Landroid/content/Context;Z)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uploadVideo"    # Z

    .prologue
    .line 139
    const-string v1, "BBS_UTIL"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 140
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "BBS_UTIL_HAS_UPLOADED_VIDEO"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 141
    return-void
.end method

.method public static setSharedPendingBBSName(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 134
    const-string v1, "BBS_UTIL"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 135
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "BBS_UTIL_PENDING_NAME"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 136
    return-void
.end method
