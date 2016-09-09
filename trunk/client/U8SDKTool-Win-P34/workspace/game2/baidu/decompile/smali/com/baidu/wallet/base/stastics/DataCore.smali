.class public Lcom/baidu/wallet/base/stastics/DataCore;
.super Ljava/lang/Object;


# static fields
.field private static b:Lorg/json/JSONObject;

.field private static f:Lcom/baidu/wallet/base/stastics/DataCore;


# instance fields
.field private a:I

.field private c:Lorg/json/JSONArray;

.field private d:Lorg/json/JSONArray;

.field private e:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/baidu/wallet/base/stastics/DataCore;->b:Lorg/json/JSONObject;

    new-instance v0, Lcom/baidu/wallet/base/stastics/DataCore;

    invoke-direct {v0}, Lcom/baidu/wallet/base/stastics/DataCore;-><init>()V

    sput-object v0, Lcom/baidu/wallet/base/stastics/DataCore;->f:Lcom/baidu/wallet/base/stastics/DataCore;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/wallet/base/stastics/DataCore;->a:I

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/base/stastics/DataCore;->c:Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/base/stastics/DataCore;->d:Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/base/stastics/DataCore;->e:Lorg/json/JSONArray;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 7

    const/4 v4, 0x0

    const-string v0, "wallet_stastics"

    const-string v1, "flushNormal cache to befe5b2c729481d3a0dea6748aaa7d98.json"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_d
    iget-object v2, p0, Lcom/baidu/wallet/base/stastics/DataCore;->c:Lorg/json/JSONArray;

    monitor-enter v2
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_10} :catch_52

    :try_start_10
    new-instance v0, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/baidu/wallet/base/stastics/DataCore;->c:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v3, "session"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_4f

    :try_start_21
    iget-object v2, p0, Lcom/baidu/wallet/base/stastics/DataCore;->d:Lorg/json/JSONArray;

    monitor-enter v2
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_24} :catch_52

    :try_start_24
    new-instance v0, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/baidu/wallet/base/stastics/DataCore;->d:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v3, "events"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_5b

    :goto_35
    const-string v0, "{}"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const v2, 0x32000

    if-lt v1, v2, :cond_5e

    invoke-static {}, Lcom/baidu/wallet/base/stastics/LogSender;->getInstance()Lcom/baidu/wallet/base/stastics/LogSender;

    move-result-object v0

    const-string v1, "normal_log"

    invoke-virtual {v0, p1, v1}, Lcom/baidu/wallet/base/stastics/LogSender;->onSend(Landroid/content/Context;Ljava/lang/String;)V

    :goto_4e
    return-void

    :catchall_4f
    move-exception v0

    :try_start_50
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    :try_start_51
    throw v0
    :try_end_52
    .catch Lorg/json/JSONException; {:try_start_51 .. :try_end_52} :catch_52

    :catch_52
    move-exception v0

    const-string v0, "flushNormalLogWithoutHeader() construct cache error"

    const-string v2, "wallet_stastics"

    invoke-static {v2, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    :catchall_5b
    move-exception v0

    :try_start_5c
    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    :try_start_5d
    throw v0
    :try_end_5e
    .catch Lorg/json/JSONException; {:try_start_5d .. :try_end_5e} :catch_52

    :cond_5e
    iput v1, p0, Lcom/baidu/wallet/base/stastics/DataCore;->a:I

    const-string v1, "wallet_stastics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flushNormal:cacheFileSize is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/baidu/wallet/base/stastics/DataCore;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "befe5b2c729481d3a0dea6748aaa7d98.json"

    invoke-static {v4, p1, v1, v0, v4}, Lcom/baidu/wallet/base/stastics/AdUtil;->write(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4e
.end method

.method public static getInstance()Lcom/baidu/wallet/base/stastics/DataCore;
    .registers 1

    sget-object v0, Lcom/baidu/wallet/base/stastics/DataCore;->f:Lcom/baidu/wallet/base/stastics/DataCore;

    return-object v0
.end method


# virtual methods
.method public clearCacheAndFlush(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    const/4 v2, 0x0

    const-string v0, "crash_log"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/base/stastics/DataCore;->e:Lorg/json/JSONArray;

    const-string v0, "baf6dbd265b64019b20884be93e10560.json"

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, p1, v0, v1, v2}, Lcom/baidu/wallet/base/stastics/AdUtil;->write(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1e
    return-void

    :cond_1f
    invoke-static {}, Lcom/baidu/wallet/base/stastics/p;->b()Lcom/baidu/wallet/base/stastics/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/base/stastics/p;->c()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/base/stastics/DataCore;->d:Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/base/stastics/DataCore;->c:Lorg/json/JSONArray;

    invoke-direct {p0, p1}, Lcom/baidu/wallet/base/stastics/DataCore;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/wallet/base/stastics/LogSender;->getInstance()Lcom/baidu/wallet/base/stastics/LogSender;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/base/stastics/LogSender;->logSendSuccessRemind(Landroid/content/Context;)V

    goto :goto_1e
.end method

.method public getSendData(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 13

    const/4 v0, 0x0

    const-string v1, "wallet_stastics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendLogData() begin.  type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/wallet/base/stastics/HeaderService;->a()Lcom/baidu/wallet/base/stastics/HeaderService;

    move-result-object v1

    sget-object v2, Lcom/baidu/wallet/base/stastics/DataCore;->b:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, v2}, Lcom/baidu/wallet/base/stastics/HeaderService;->installHeader(Landroid/content/Context;Lorg/json/JSONObject;)V

    const-string v1, "wallet_stastics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "constructHeader() begin."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/baidu/wallet/base/stastics/DataCore;->b:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/baidu/wallet/base/stastics/DataCore;->b:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lcom/baidu/wallet/base/stastics/DataCore;->b:Lorg/json/JSONObject;

    monitor-enter v2

    :try_start_4e
    new-instance v1, Lorg/json/JSONObject;

    sget-object v3, Lcom/baidu/wallet/base/stastics/DataCore;->b:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_59
    .catch Lorg/json/JSONException; {:try_start_4e .. :try_end_59} :catch_e4
    .catchall {:try_start_4e .. :try_end_59} :catchall_ff

    :try_start_59
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_109

    const-string v3, "crash_log"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_109

    iget-object v3, p0, Lcom/baidu/wallet/base/stastics/DataCore;->e:Lorg/json/JSONArray;

    monitor-enter v3
    :try_end_6a
    .catchall {:try_start_59 .. :try_end_6a} :catchall_ff

    :try_start_6a
    const-string v4, "exception"

    new-instance v5, Lorg/json/JSONArray;

    iget-object v6, p0, Lcom/baidu/wallet/base/stastics/DataCore;->e:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_7a} :catch_102
    .catchall {:try_start_6a .. :try_end_7a} :catchall_106

    :try_start_7a
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "sendContent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wallet_log_crash_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".log"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-static {p1, v0, v4, v5}, Lcom/baidu/wallet/base/stastics/AdUtil;->writeExt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    monitor-exit v3
    :try_end_da
    .catchall {:try_start_7a .. :try_end_da} :catchall_106

    :goto_da
    :try_start_da
    monitor-exit v2
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_ff

    const-string v0, "wallet_stastics"

    const-string v2, "sendLogData() end."

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_e3
    return-object v0

    :catch_e4
    move-exception v1

    :try_start_e5
    const-string v3, "wallet_stastics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2

    goto :goto_e3

    :catchall_ff
    move-exception v0

    monitor-exit v2
    :try_end_101
    .catchall {:try_start_e5 .. :try_end_101} :catchall_ff

    throw v0

    :catch_102
    move-exception v1

    :try_start_103
    monitor-exit v3
    :try_end_104
    .catchall {:try_start_103 .. :try_end_104} :catchall_106

    :try_start_104
    monitor-exit v2
    :try_end_105
    .catchall {:try_start_104 .. :try_end_105} :catchall_ff

    goto :goto_e3

    :catchall_106
    move-exception v0

    :try_start_107
    monitor-exit v3
    :try_end_108
    .catchall {:try_start_107 .. :try_end_108} :catchall_106

    :try_start_108
    throw v0

    :cond_109
    iget-object v3, p0, Lcom/baidu/wallet/base/stastics/DataCore;->c:Lorg/json/JSONArray;

    monitor-enter v3
    :try_end_10c
    .catchall {:try_start_108 .. :try_end_10c} :catchall_ff

    :try_start_10c
    const-string v4, "wallet_stastics"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send session part is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/wallet/base/stastics/DataCore;->c:Lorg/json/JSONArray;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_126
    .catchall {:try_start_10c .. :try_end_126} :catchall_14c

    :try_start_126
    const-string v4, "session"

    new-instance v5, Lorg/json/JSONArray;

    iget-object v6, p0, Lcom/baidu/wallet/base/stastics/DataCore;->c:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_136
    .catch Lorg/json/JSONException; {:try_start_126 .. :try_end_136} :catch_14f
    .catchall {:try_start_126 .. :try_end_136} :catchall_14c

    :try_start_136
    iget-object v4, p0, Lcom/baidu/wallet/base/stastics/DataCore;->d:Lorg/json/JSONArray;

    monitor-enter v4
    :try_end_139
    .catchall {:try_start_136 .. :try_end_139} :catchall_14c

    :try_start_139
    const-string v5, "events"

    new-instance v6, Lorg/json/JSONArray;

    iget-object v7, p0, Lcom/baidu/wallet/base/stastics/DataCore;->d:Lorg/json/JSONArray;

    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_149
    .catch Lorg/json/JSONException; {:try_start_139 .. :try_end_149} :catch_15c
    .catchall {:try_start_139 .. :try_end_149} :catchall_16b

    :try_start_149
    monitor-exit v4
    :try_end_14a
    .catchall {:try_start_149 .. :try_end_14a} :catchall_16b

    :try_start_14a
    monitor-exit v3

    goto :goto_da

    :catchall_14c
    move-exception v0

    monitor-exit v3
    :try_end_14e
    .catchall {:try_start_14a .. :try_end_14e} :catchall_14c

    :try_start_14e
    throw v0
    :try_end_14f
    .catchall {:try_start_14e .. :try_end_14f} :catchall_ff

    :catch_14f
    move-exception v1

    :try_start_150
    const-string v4, "wallet_stastics"

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v3
    :try_end_15a
    .catchall {:try_start_150 .. :try_end_15a} :catchall_14c

    :try_start_15a
    monitor-exit v2
    :try_end_15b
    .catchall {:try_start_15a .. :try_end_15b} :catchall_ff

    goto :goto_e3

    :catch_15c
    move-exception v1

    :try_start_15d
    const-string v5, "wallet_stastics"

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v4
    :try_end_167
    .catchall {:try_start_15d .. :try_end_167} :catchall_16b

    :try_start_167
    monitor-exit v3
    :try_end_168
    .catchall {:try_start_167 .. :try_end_168} :catchall_14c

    :try_start_168
    monitor-exit v2
    :try_end_169
    .catchall {:try_start_168 .. :try_end_169} :catchall_ff

    goto/16 :goto_e3

    :catchall_16b
    move-exception v0

    :try_start_16c
    monitor-exit v4
    :try_end_16d
    .catchall {:try_start_16c .. :try_end_16d} :catchall_16b

    :try_start_16d
    throw v0
    :try_end_16e
    .catchall {:try_start_16d .. :try_end_16e} :catchall_14c
.end method

.method public declared-synchronized installHeader(Landroid/content/Context;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/baidu/wallet/base/stastics/HeaderService;->a()Lcom/baidu/wallet/base/stastics/HeaderService;

    move-result-object v0

    sget-object v1, Lcom/baidu/wallet/base/stastics/DataCore;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/wallet/base/stastics/HeaderService;->installHeader(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isExceptionLogEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/stastics/DataCore;->e:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public isNormalLogEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/stastics/DataCore;->c:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/baidu/wallet/base/stastics/DataCore;->d:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public loadExceptionData(Landroid/content/Context;)V
    .registers 12

    const/16 v4, 0x1400

    const/4 v2, 0x0

    const-string v0, "baf6dbd265b64019b20884be93e10560.json"

    invoke-static {p1, v2, v0}, Lcom/baidu/wallet/base/stastics/AdUtil;->exists(Landroid/content/Context;ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    const-string v0, "baf6dbd265b64019b20884be93e10560.json"

    invoke-static {v2, p1, v0}, Lcom/baidu/wallet/base/stastics/AdUtil;->read(ZLandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v3, 0x2800

    if-le v0, v3, :cond_2b

    :cond_23
    const-string v0, "wallet_stastics"

    const-string v1, "\u5d29\u6e83\u65e5\u5fd7\u672c\u5730\u7f13\u5b58\u6587\u4ef6\u5185\u5bb9\u4e3a\u7a7a\u6216\u8005size\u8fc7\u5927."

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_2b
    invoke-static {p1, v1}, Lcom/baidu/wallet/base/stastics/AdUtil;->isWalletCrash(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "wallet_stastics"

    const-string v1, "\u5d29\u6e83\u65e5\u5fd7\u4e0d\u5c5e\u4e8e\u94b1\u5305sdk."

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_39
    :try_start_39
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-le v0, v4, :cond_a2

    const/16 v0, 0x1400

    new-array v3, v0, [B

    const/4 v0, 0x0

    const/16 v4, 0x1400

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v4, v3, v5}, Ljava/lang/String;->getBytes(II[BI)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_50} :catch_91

    :goto_50
    const-string v1, "wallet_stastics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8f7d\u5165\u672a\u53d1\u9001\u6210\u529f\u7684\u5d29\u6e83\u65e5\u5fd7.loadExceptionData\uff1a  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_68
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move v1, v2

    :goto_72
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_b

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "dim_excep_time"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide/32 v8, 0x240c8400

    cmp-long v2, v6, v8

    if-lez v2, :cond_94

    :goto_8d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_72

    :catch_91
    move-exception v0

    move-object v0, v1

    goto :goto_50

    :cond_94
    invoke-static {}, Lcom/baidu/wallet/base/stastics/DataCore;->getInstance()Lcom/baidu/wallet/base/stastics/DataCore;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/wallet/base/stastics/DataCore;->putException(Lorg/json/JSONObject;)V
    :try_end_9b
    .catch Lorg/json/JSONException; {:try_start_68 .. :try_end_9b} :catch_9c

    goto :goto_8d

    :catch_9c
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_b

    :cond_a2
    move-object v0, v1

    goto :goto_50
.end method

.method public loadStatData(Landroid/content/Context;)V
    .registers 14

    const-wide/32 v10, 0x240c8400

    const/4 v0, 0x0

    if-nez p1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    const-string v1, "befe5b2c729481d3a0dea6748aaa7d98.json"

    invoke-static {p1, v0, v1}, Lcom/baidu/wallet/base/stastics/AdUtil;->exists(Landroid/content/Context;ZLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "befe5b2c729481d3a0dea6748aaa7d98.json"

    invoke-static {v0, p1, v1}, Lcom/baidu/wallet/base/stastics/AdUtil;->read(ZLandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    const v3, 0x64000

    if-le v2, v3, :cond_2f

    :cond_27
    const-string v0, "wallet_stastics"

    const-string v1, "\u5e38\u89c4\u65e5\u5fd7\u7f13\u5b58\u6587\u4ef6\u4e3a\u7a7a\u6216\u8005size\u8fc7\u5927"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_2f
    const-string v2, "wallet_stastics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4ece\u672c\u5730\u52a0\u8f7d\u4e0a\u6b21\u672a\u53d1\u9001\u6210\u529f\u7684\u5e38\u89c4\u65e5\u5fd7\uff0cloadStatData\uff1a  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_47
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    iput v2, p0, Lcom/baidu/wallet/base/stastics/DataCore;->a:I

    const-string v2, "wallet_stastics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load Stat Data:cacheFileSize is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/baidu/wallet/base/stastics/DataCore;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "wallet_stastics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Load cache:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v1, "session"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v1, v0

    :goto_90
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_cc

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "dim_sess_st_time"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long v8, v4, v8

    cmp-long v7, v8, v10

    if-lez v7, :cond_a9

    :goto_a6
    add-int/lit8 v1, v1, 0x1

    goto :goto_90

    :cond_a9
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/baidu/wallet/base/stastics/DataCore;->putSession(Ljava/lang/String;)V
    :try_end_b0
    .catch Lorg/json/JSONException; {:try_start_47 .. :try_end_b0} :catch_b1

    goto :goto_a6

    :catch_b1
    move-exception v0

    const-string v1, "wallet_stastics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load stat data error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_cc
    :try_start_cc
    const-string v1, "events"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    :goto_d2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "dim_event_st_time"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long v6, v4, v6

    cmp-long v3, v6, v10

    if-lez v3, :cond_eb

    :goto_e8
    add-int/lit8 v0, v0, 0x1

    goto :goto_d2

    :cond_eb
    invoke-virtual {p0, v2}, Lcom/baidu/wallet/base/stastics/DataCore;->putEvent(Lorg/json/JSONObject;)V
    :try_end_ee
    .catch Lorg/json/JSONException; {:try_start_cc .. :try_end_ee} :catch_b1

    goto :goto_e8
.end method

.method public putEvent(Lorg/json/JSONObject;)V
    .registers 5

    iget-object v1, p0, Lcom/baidu/wallet/base/stastics/DataCore;->d:Lorg/json/JSONArray;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/baidu/wallet/base/stastics/DataCore;->d:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1b

    move-result v0

    :try_start_9
    iget-object v2, p0, Lcom/baidu/wallet/base/stastics/DataCore;->d:Lorg/json/JSONArray;

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_e} :catch_10
    .catchall {:try_start_9 .. :try_end_e} :catchall_1b

    :goto_e
    :try_start_e
    monitor-exit v1

    return-void

    :catch_10
    move-exception v0

    const-string v2, "wallet_stastics"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public putEventWithFlush(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 14

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const-string v2, "wallet_stastics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putEvent:eventSize is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/baidu/wallet/base/stastics/DataCore;->a:I

    add-int/2addr v1, v2

    const v2, 0x32000

    if-le v1, v2, :cond_36

    const-string v0, "wallet_stastics"

    const-string v1, "putEvent: size is full!"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_35
    return-void

    :cond_36
    :try_start_36
    const-string v1, "dim_event_id"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dim_event_label"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dim_event_error"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dim_event_value"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dim_event_st_time"

    invoke-virtual {v0, v1, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "dim_event_dur"

    invoke-virtual {v0, v1, p7, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "dim_page_id"

    invoke-static {}, Lcom/baidu/wallet/base/stastics/p;->b()Lcom/baidu/wallet/base/stastics/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/wallet/base/stastics/p;->d()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "dim_event_owner"

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v2

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/wallet/api/BaiduWallet;->getPassUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/android/pay/SafePay;->encryptProxy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/stastics/DataCore;->putEvent(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1}, Lcom/baidu/wallet/base/stastics/DataCore;->a(Landroid/content/Context;)V

    const-string v1, "wallet_stastics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "put event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_98
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_98} :catch_99

    goto :goto_35

    :catch_99
    move-exception v0

    const-string v1, "wallet_stastics"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35
.end method

.method public putException(Lorg/json/JSONObject;)V
    .registers 5

    iget-object v1, p0, Lcom/baidu/wallet/base/stastics/DataCore;->e:Lorg/json/JSONArray;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/baidu/wallet/base/stastics/DataCore;->e:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1b

    move-result v0

    :try_start_9
    iget-object v2, p0, Lcom/baidu/wallet/base/stastics/DataCore;->e:Lorg/json/JSONArray;

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_e} :catch_10
    .catchall {:try_start_9 .. :try_end_e} :catchall_1b

    :goto_e
    :try_start_e
    monitor-exit v1

    return-void

    :catch_10
    move-exception v0

    const-string v2, "wallet_stastics"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public putSession(Ljava/lang/String;)V
    .registers 12

    const/4 v0, 0x0

    const-string v1, "wallet_stastics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putSession "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/wallet/base/stastics/DataCore;->c:Lorg/json/JSONArray;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "{}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    :cond_35
    :goto_35
    return-void

    :cond_36
    iget-object v2, p0, Lcom/baidu/wallet/base/stastics/DataCore;->c:Lorg/json/JSONArray;

    monitor-enter v2

    :try_start_39
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    move v1, v0

    :goto_44
    iget-object v5, p0, Lcom/baidu/wallet/base/stastics/DataCore;->c:Lorg/json/JSONArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_7c

    iget-object v5, p0, Lcom/baidu/wallet/base/stastics/DataCore;->c:Lorg/json/JSONArray;

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "dim_sess_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v8, "dim_sess_id"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_69

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v0, 0x1

    :goto_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    :cond_69
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_6c
    .catch Lorg/json/JSONException; {:try_start_39 .. :try_end_6c} :catch_6d
    .catchall {:try_start_39 .. :try_end_6c} :catchall_79

    goto :goto_66

    :catch_6d
    move-exception v0

    :try_start_6e
    const-string v1, "wallet_stastics"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_77
    monitor-exit v2

    goto :goto_35

    :catchall_79
    move-exception v0

    monitor-exit v2
    :try_end_7b
    .catchall {:try_start_6e .. :try_end_7b} :catchall_79

    throw v0

    :cond_7c
    if-nez v0, :cond_81

    :try_start_7e
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_81
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/wallet/base/stastics/DataCore;->c:Lorg/json/JSONArray;
    :try_end_8c
    .catch Lorg/json/JSONException; {:try_start_7e .. :try_end_8c} :catch_6d
    .catchall {:try_start_7e .. :try_end_8c} :catchall_79

    goto :goto_77
.end method

.method public putSessionWithFlush(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    const-string v0, "{}"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    :try_start_11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_66

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const-string v2, "wallet_stastics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putSession:addSize is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/baidu/wallet/base/stastics/DataCore;->a:I

    add-int/2addr v1, v2

    const v2, 0x32000

    if-le v1, v2, :cond_66

    const-string v0, "wallet_stastics"

    const-string v1, "putSession: size is full!"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_48} :catch_49

    goto :goto_10

    :catch_49
    move-exception v0

    const-string v1, "wallet_stastics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putSession()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_62
    invoke-direct {p0, p1}, Lcom/baidu/wallet/base/stastics/DataCore;->a(Landroid/content/Context;)V

    goto :goto_10

    :cond_66
    :try_start_66
    invoke-virtual {p0, p2}, Lcom/baidu/wallet/base/stastics/DataCore;->putSession(Ljava/lang/String;)V

    const-string v1, "wallet_stastics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load last session:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_81
    .catch Lorg/json/JSONException; {:try_start_66 .. :try_end_81} :catch_49

    goto :goto_62
.end method
