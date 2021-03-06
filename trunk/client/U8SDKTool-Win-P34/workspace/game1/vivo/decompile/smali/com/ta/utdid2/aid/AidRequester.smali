.class public Lcom/ta/utdid2/aid/AidRequester;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/utdid2/aid/AidRequester$PostRestThread;
    }
.end annotation


# static fields
.field private static final AIDFUNCNAME:Ljava/lang/String; = "/get_aid/"

.field private static final AIDSERVER:Ljava/lang/String; = "http://hydra.alibaba.com/"

.field private static final NAME_AID:Ljava/lang/String; = "&aid="

.field private static final NAME_ID:Ljava/lang/String; = "&id="

.field private static final NAME_RESULT_ACTION:Ljava/lang/String; = "action"

.field private static final NAME_RESULT_AID:Ljava/lang/String; = "aid"

.field private static final NAME_RESULT_ISERROR:Ljava/lang/String; = "isError"

.field private static final NAME_RESULT_STATUS:Ljava/lang/String; = "status"

.field private static final NAME_RESUTL_DATA:Ljava/lang/String; = "data"

.field private static final NAME_TOKEN:Ljava/lang/String; = "auth[token]="

.field private static final NAME_TYPE:Ljava/lang/String; = "&type="

.field private static final RSP_ACTION_CHANGED:Ljava/lang/String; = "changed"

.field private static final RSP_ACTION_NEW:Ljava/lang/String; = "new"

.field private static final RSP_ACTION_UNCHANGED:Ljava/lang/String; = "unchanged"

.field private static final RSP_ISERROR_FALSE:Ljava/lang/String; = "false"

.field private static final RSP_ISERROR_TRUE:Ljava/lang/String; = "true"

.field private static final RSP_STATUS_INVALID_APP:Ljava/lang/String; = "404"

.field private static final RSP_STATUS_INVALID_TOKEN:Ljava/lang/String; = "401"

.field private static final RSP_STATUS_OK:Ljava/lang/String; = "200"

.field private static final SESSION_TIME_OUT:I = 0x3e8

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_UTDID:Ljava/lang/String; = "utdid"

.field private static final WEAK_SESSION_TIME_OUT:I = 0xbb8

.field private static sAidRequester:Lcom/ta/utdid2/aid/AidRequester;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcom/ta/utdid2/aid/AidRequester;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/ta/utdid2/aid/AidRequester;->sAidRequester:Lcom/ta/utdid2/aid/AidRequester;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/aid/AidRequester;->mLock:Ljava/lang/Object;

    .line 176
    iput-object p1, p0, Lcom/ta/utdid2/aid/AidRequester;->mContext:Landroid/content/Context;

    .line 177
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ta/utdid2/aid/AidRequester;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ta/utdid2/aid/AidRequester;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/ta/utdid2/aid/AidRequester;->getAidFromJsonRsp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/ta/utdid2/aid/AidRequester;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ta/utdid2/aid/AidRequester;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static getAidFromJsonRsp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 222
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 227
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 228
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 229
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 232
    const-string v1, "action"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    const-string v1, "aid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 233
    const-string v1, "action"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    const-string v2, "new"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3f

    const-string v2, "changed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 236
    :cond_3f
    const-string v1, "aid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 262
    :cond_45
    :goto_45
    return-object p1

    .line 241
    :cond_46
    const-string v1, "isError"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 243
    const-string v1, "isError"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    const-string v2, "status"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    const-string v1, "404"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7a

    const-string v1, "401"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 249
    :cond_7a
    sget-boolean v1, Lcom/ta/utdid2/android/utils/DebugUtils;->DBG:Z

    if-eqz v1, :cond_92

    .line 250
    sget-object v1, Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "remove the AID, status:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_92
    const-string p1, ""
    :try_end_94
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_94} :catch_95
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_94} :catch_a0

    goto :goto_45

    .line 256
    :catch_95
    move-exception v0

    .line 257
    sget-object v1, Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 258
    :catch_a0
    move-exception v0

    .line 259
    sget-object v1, Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/ta/utdid2/aid/AidRequester;
    .registers 3

    .prologue
    .line 168
    const-class v1, Lcom/ta/utdid2/aid/AidRequester;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/ta/utdid2/aid/AidRequester;->sAidRequester:Lcom/ta/utdid2/aid/AidRequester;

    if-nez v0, :cond_e

    .line 169
    new-instance v0, Lcom/ta/utdid2/aid/AidRequester;

    invoke-direct {v0, p0}, Lcom/ta/utdid2/aid/AidRequester;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ta/utdid2/aid/AidRequester;->sAidRequester:Lcom/ta/utdid2/aid/AidRequester;

    .line 172
    :cond_e
    sget-object v0, Lcom/ta/utdid2/aid/AidRequester;->sAidRequester:Lcom/ta/utdid2/aid/AidRequester;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 168
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getPostUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    :try_start_5
    const-string v0, "UTF-8"

    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_a} :catch_38

    move-result-object p2

    .line 280
    :goto_b
    const-string v0, "http://hydra.alibaba.com/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/get_aid/?auth[token]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&type=utdid&id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&aid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 274
    :catch_38
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_b
.end method


# virtual methods
.method public postRest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .prologue
    .line 193
    invoke-static {p1, p2, p3, p4}, Lcom/ta/utdid2/aid/AidRequester;->getPostUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    iget-object v0, p0, Lcom/ta/utdid2/aid/AidRequester;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/NetworkUtils;->isConnectedToWeakNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_68

    const/16 v0, 0xbb8

    .line 198
    :goto_e
    sget-boolean v2, Lcom/ta/utdid2/android/utils/DebugUtils;->DBG:Z

    if-eqz v2, :cond_30

    .line 199
    sget-object v2, Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "url:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; timeout:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_30
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 203
    new-instance v1, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;

    invoke-direct {v1, p0, v2}, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;-><init>(Lcom/ta/utdid2/aid/AidRequester;Lorg/apache/http/client/methods/HttpPost;)V

    .line 204
    invoke-virtual {v1}, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->start()V

    .line 206
    :try_start_3d
    iget-object v2, p0, Lcom/ta/utdid2/aid/AidRequester;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_6e

    .line 207
    :try_start_40
    iget-object v3, p0, Lcom/ta/utdid2/aid/AidRequester;->mLock:Ljava/lang/Object;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 208
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_6b

    .line 212
    :goto_47
    invoke-virtual {v1}, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->getResponseLine()Ljava/lang/String;

    move-result-object v0

    .line 213
    sget-boolean v1, Lcom/ta/utdid2/android/utils/DebugUtils;->DBG:Z

    if-eqz v1, :cond_63

    .line 214
    sget-object v1, Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mLine:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_63
    invoke-static {v0, p4}, Lcom/ta/utdid2/aid/AidRequester;->getAidFromJsonRsp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    return-object v0

    .line 195
    :cond_68
    const/16 v0, 0x3e8

    goto :goto_e

    .line 208
    :catchall_6b
    move-exception v0

    :try_start_6c
    monitor-exit v2

    throw v0
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6e} :catch_6e

    .line 211
    :catch_6e
    move-exception v0

    .line 210
    sget-object v2, Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47
.end method

.method public postRestAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ut/device/AidCallback;)V
    .registers 13

    .prologue
    .line 181
    invoke-static {p1, p2, p3, p4}, Lcom/ta/utdid2/aid/AidRequester;->getPostUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    sget-boolean v1, Lcom/ta/utdid2/android/utils/DebugUtils;->DBG:Z

    if-eqz v1, :cond_2a

    .line 183
    sget-object v1, Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "url:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; len:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_2a
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 187
    new-instance v0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;

    move-object v1, p0

    move-object v3, p5

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;-><init>(Lcom/ta/utdid2/aid/AidRequester;Lorg/apache/http/client/methods/HttpPost;Lcom/ut/device/AidCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0}, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->start()V

    .line 189
    return-void
.end method
