.class public final Lcom/duoku/platform/download/DownloadUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/download/DownloadUtil$a;,
        Lcom/duoku/platform/download/DownloadUtil$b;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadUtil"

.field static volatile allDownloadObserver:Lcom/duoku/platform/download/DownloadUtil$a;

.field static checkPackage:Z

.field private static itemObservers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/duoku/platform/download/DownloadUtil$b;",
            ">;"
        }
    .end annotation
.end field

.field static lock:Ljava/lang/Object;

.field private static useMain:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 300
    sput-boolean v0, Lcom/duoku/platform/download/DownloadUtil;->checkPackage:Z

    .line 648
    sput-boolean v0, Lcom/duoku/platform/download/DownloadUtil;->useMain:Z

    .line 1157
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/duoku/platform/download/DownloadUtil;->itemObservers:Ljava/util/Map;

    .line 1208
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/duoku/platform/download/DownloadUtil;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic access$0()Z
    .registers 1

    .prologue
    .line 648
    sget-boolean v0, Lcom/duoku/platform/download/DownloadUtil;->useMain:Z

    return v0
.end method

.method static synthetic access$1(Landroid/database/Cursor;)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;
    .registers 2

    .prologue
    .line 833
    invoke-static {p0}, Lcom/duoku/platform/download/DownloadUtil;->extractData(Landroid/database/Cursor;)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    move-result-object v0

    return-object v0
.end method

.method public static addAllDownloadsListener(Landroid/content/Context;Lcom/duoku/platform/download/DownloadConfiguration$DownloadListener;)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1219
    sget-object v1, Lcom/duoku/platform/download/DownloadUtil;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1221
    :try_start_3
    sget-object v0, Lcom/duoku/platform/download/DownloadUtil;->allDownloadObserver:Lcom/duoku/platform/download/DownloadUtil$a;

    if-nez v0, :cond_34

    .line 1223
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "addAllDownloadsListener"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1224
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 1225
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1226
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1227
    new-instance v0, Lcom/duoku/platform/download/DownloadUtil$a;

    invoke-direct {v0, p0, v2}, Lcom/duoku/platform/download/DownloadUtil$a;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 1228
    invoke-virtual {v0, p1}, Lcom/duoku/platform/download/DownloadUtil$a;->a(Lcom/duoku/platform/download/DownloadConfiguration$DownloadListener;)V

    .line 1229
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/duoku/platform/download/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1230
    sput-object v0, Lcom/duoku/platform/download/DownloadUtil;->allDownloadObserver:Lcom/duoku/platform/download/DownloadUtil$a;

    .line 1219
    :goto_32
    monitor-exit v1

    .line 1238
    return-void

    .line 1234
    :cond_34
    sget-object v0, Lcom/duoku/platform/download/DownloadUtil;->allDownloadObserver:Lcom/duoku/platform/download/DownloadUtil$a;

    invoke-virtual {v0, p1}, Lcom/duoku/platform/download/DownloadUtil$a;->a(Lcom/duoku/platform/download/DownloadConfiguration$DownloadListener;)V

    goto :goto_32

    .line 1219
    :catchall_3a
    move-exception v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public static addDownloadItemListener(Landroid/content/Context;JLcom/duoku/platform/download/DownloadConfiguration$DownloadItemListener;)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1162
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1168
    const-class v2, Lcom/duoku/platform/download/DownloadUtil;

    monitor-enter v2

    .line 1170
    :try_start_7
    sget-object v0, Lcom/duoku/platform/download/DownloadUtil;->itemObservers:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/DownloadUtil$b;

    .line 1171
    if-nez v0, :cond_49

    .line 1173
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "registerDownloadListener"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1174
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 1175
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1177
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1183
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1184
    new-instance v0, Lcom/duoku/platform/download/DownloadUtil$b;

    invoke-direct {v0, p0, p1, p2, v3}, Lcom/duoku/platform/download/DownloadUtil$b;-><init>(Landroid/content/Context;JLandroid/os/Handler;)V

    .line 1185
    sget-object v3, Lcom/duoku/platform/download/DownloadUtil;->itemObservers:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    invoke-virtual {v0, p3}, Lcom/duoku/platform/download/DownloadUtil$b;->a(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemListener;)V

    .line 1193
    sget-object v3, Lcom/duoku/platform/download/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1168
    :goto_47
    monitor-exit v2

    .line 1205
    return-void

    .line 1202
    :cond_49
    invoke-virtual {v0, p3}, Lcom/duoku/platform/download/DownloadUtil$b;->a(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemListener;)V

    goto :goto_47

    .line 1168
    :catchall_4d
    move-exception v0

    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_7 .. :try_end_4f} :catchall_4d

    throw v0
.end method

.method public static declared-synchronized checkDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 320
    const-class v3, Lcom/duoku/platform/download/DownloadUtil;

    monitor-enter v3

    .line 323
    :try_start_5
    invoke-static {p0, p1, p3, p4}, Lcom/duoku/platform/download/DownloadUtil;->composeDestination(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_5f
    .catchall {:try_start_5 .. :try_end_8} :catchall_61

    move-result-object v0

    .line 329
    :try_start_9
    sget-boolean v4, Lcom/duoku/platform/download/DownloadUtil;->checkPackage:Z

    if-nez v4, :cond_e

    .line 331
    const/4 p5, 0x0

    .line 333
    :cond_e
    invoke-static {p0, p1, p5}, Lcom/duoku/platform/download/DownloadUtil;->getDownloadInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    move-result-object v4

    .line 335
    if-nez v4, :cond_25

    .line 337
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    .line 338
    if-eqz v4, :cond_20

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_61

    move-result v0

    if-nez v0, :cond_22

    :cond_20
    if-nez v4, :cond_23

    :cond_22
    move v1, v2

    .line 375
    :cond_23
    :goto_23
    monitor-exit v3

    return v1

    .line 352
    :cond_25
    :try_start_25
    invoke-virtual {v4}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getDest()Ljava/lang/String;

    move-result-object v0

    .line 354
    if-nez v0, :cond_48

    move v0, v2

    .line 366
    :goto_2c
    if-eqz v0, :cond_23

    .line 368
    invoke-virtual {v4}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getDownloadId()J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-lez v0, :cond_46

    .line 370
    const/4 v0, 0x1

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getDownloadId()J

    move-result-wide v6

    aput-wide v6, v1, v5

    invoke-static {p0, v0, v1}, Lcom/duoku/platform/download/DownloadUtil;->removeDownload(Landroid/content/Context;Z[J)I

    :cond_46
    move v1, v2

    .line 372
    goto :goto_23

    .line 361
    :cond_48
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 362
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    :try_end_58
    .catchall {:try_start_25 .. :try_end_58} :catchall_61

    move-result v0

    if-eqz v0, :cond_5d

    move v0, v1

    goto :goto_2c

    :cond_5d
    move v0, v2

    goto :goto_2c

    .line 325
    :catch_5f
    move-exception v0

    goto :goto_23

    .line 320
    :catchall_61
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static composeDestination(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 6

    .prologue
    .line 96
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 98
    invoke-static {p0}, Lcom/duoku/platform/download/DownloadConfiguration;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/DownloadConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadConfiguration;->getDefaultDestinationFolder()Ljava/lang/String;

    move-result-object p2

    .line 100
    :cond_e
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 102
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 106
    :cond_20
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 109
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 115
    :cond_2e
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static declared-synchronized download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 14

    .prologue
    .line 449
    const-class v6, Lcom/duoku/platform/download/DownloadUtil;

    monitor-enter v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    :try_start_9
    invoke-static/range {v0 .. v5}, Lcom/duoku/platform/download/DownloadUtil;->checkDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 451
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Target already in database!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_17

    .line 449
    :catchall_17
    move-exception v0

    monitor-exit v6

    throw v0

    .line 453
    :cond_1a
    :try_start_1a
    invoke-static/range {p0 .. p6}, Lcom/duoku/platform/download/DownloadUtil;->formContentValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 455
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/download/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 456
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2f
    .catchall {:try_start_1a .. :try_end_2f} :catchall_17

    move-result-wide v0

    .line 457
    monitor-exit v6

    return-wide v0
.end method

.method public static declared-synchronized download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J
    .registers 15

    .prologue
    .line 462
    const-class v6, Lcom/duoku/platform/download/DownloadUtil;

    monitor-enter v6

    if-eqz p7, :cond_1c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    :try_start_b
    invoke-static/range {v0 .. v5}, Lcom/duoku/platform/download/DownloadUtil;->checkDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 464
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Target already in database!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_19

    .line 462
    :catchall_19
    move-exception v0

    monitor-exit v6

    throw v0

    .line 466
    :cond_1c
    :try_start_1c
    invoke-static/range {p0 .. p6}, Lcom/duoku/platform/download/DownloadUtil;->formContentValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 468
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/download/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 470
    const-wide/16 v0, 0x0

    .line 471
    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 472
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3b
    .catchall {:try_start_1c .. :try_end_3b} :catchall_19

    move-result-wide v0

    .line 474
    :cond_3c
    monitor-exit v6

    return-wide v0
.end method

.method public static varargs declared-synchronized download(Landroid/content/Context;[Lcom/duoku/platform/download/DownloadConfiguration$DownloadInputItem;)V
    .registers 14

    .prologue
    const/4 v0, 0x0

    .line 479
    const-class v9, Lcom/duoku/platform/download/DownloadUtil;

    monitor-enter v9

    :try_start_4
    array-length v1, p1
    :try_end_5
    .catchall {:try_start_4 .. :try_end_5} :catchall_1b

    if-nez v1, :cond_9

    .line 494
    :goto_7
    monitor-exit v9

    return-void

    .line 481
    :cond_9
    :try_start_9
    array-length v1, p1

    new-array v10, v1, [Landroid/content/ContentValues;

    .line 483
    array-length v11, p1

    move v7, v0

    move v8, v0

    :goto_f
    if-lt v7, v11, :cond_1e

    .line 493
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/download/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_1b

    goto :goto_7

    .line 479
    :catchall_1b
    move-exception v0

    monitor-exit v9

    throw v0

    .line 483
    :cond_1e
    :try_start_1e
    aget-object v6, p1, v7

    .line 485
    invoke-virtual {v6}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadInputItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadInputItem;->getMimetype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadInputItem;->getDestFolder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadInputItem;->getSaveName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadInputItem;->getExtra()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/duoku/platform/download/DownloadUtil;->checkDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 487
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Target alreay in database!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_43
    invoke-virtual {v6}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadInputItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadInputItem;->getMimetype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadInputItem;->getDestFolder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadInputItem;->getSaveName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadInputItem;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadInputItem;->getExtra()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/duoku/platform/download/DownloadUtil;->formContentValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    aput-object v0, v10, v8
    :try_end_62
    .catchall {:try_start_1e .. :try_end_62} :catchall_1b

    .line 490
    add-int/lit8 v1, v8, 0x1

    .line 483
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move v8, v1

    goto :goto_f
.end method

.method public static encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 58
    return-object p0
.end method

.method private static extractData(Landroid/database/Cursor;)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;
    .registers 21

    .prologue
    .line 837
    :try_start_0
    const-string v2, "uri"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 838
    const-string v3, "local_uri"

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 839
    const-string v4, "_id"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 840
    const-string v5, "title"

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 841
    const-string v6, "status"

    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 842
    const-string v7, "reason"

    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 843
    const-string v8, "total_size"

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 844
    const-string v9, "bytes_so_far"

    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 845
    const-string v10, "media_type"

    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 846
    const-string v11, "last_modified_timestamp"

    move-object/from16 v0, p0

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 848
    const-string v12, "original_status"

    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 850
    const-string v13, "extra"

    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 852
    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 853
    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 854
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 855
    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 856
    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 857
    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 858
    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 859
    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 860
    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 861
    move-object/from16 v0, p0

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 862
    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 863
    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 868
    new-instance v2, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    invoke-direct {v2}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;-><init>()V

    .line 869
    invoke-virtual {v2, v14}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->setUrl(Ljava/lang/String;)V

    .line 870
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->setDest(Ljava/lang/String;)V

    .line 871
    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->setDownloadId(J)V

    .line 872
    invoke-virtual {v2, v4}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->setTitle(Ljava/lang/String;)V

    .line 873
    invoke-virtual {v2, v6}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->setMimeType(Ljava/lang/String;)V

    .line 874
    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->setTotalBytes(J)V

    .line 875
    invoke-virtual {v2, v8, v9}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->setCurrentBytes(J)V

    .line 877
    invoke-static {v5}, Lcom/duoku/platform/download/DownloadUtil;->getFinalStatus(I)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    move-result-object v3

    .line 881
    invoke-virtual {v2, v3}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->setStatus(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;)V

    .line 882
    sget-object v4, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_FAILED:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    invoke-virtual {v4}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->getStatusCode()I

    move-result v4

    if-eq v5, v4, :cond_e5

    sget-object v4, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_PAUSED:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    invoke-virtual {v4}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->getStatusCode()I

    move-result v4

    if-ne v5, v4, :cond_ec

    .line 884
    :cond_e5
    invoke-static {v3, v7, v12}, Lcom/duoku/platform/download/DownloadUtil;->getFinalReason(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;II)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->setReason(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;)V

    .line 886
    :cond_ec
    invoke-virtual {v2, v10, v11}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->setDate(J)V

    .line 887
    invoke-virtual {v2, v12}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->setOriginalStatusCode(I)V

    .line 889
    invoke-virtual {v2, v13}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->setAppData(Ljava/lang/String;)V
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f5} :catch_f6

    .line 896
    :goto_f5
    return-object v2

    .line 893
    :catch_f6
    move-exception v2

    .line 896
    const/4 v2, 0x0

    goto :goto_f5
.end method

.method private static formContentValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 11

    .prologue
    .line 143
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 144
    const-string v0, "uri"

    invoke-static {p1}, Lcom/duoku/platform/download/DownloadUtil;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v0, "notificationpackage"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, "notificationclass"

    const-class v2, Lcom/duoku/platform/download/OpenDownloadReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v0, "visibility"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-static {p1}, Lcom/duoku/platform/download/DownloadUtil;->getMimetype(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 153
    :cond_36
    const-string v0, "mimetype"

    invoke-virtual {v1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v0, "destination"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    invoke-static {p0, p1, p3, p4}, Lcom/duoku/platform/download/DownloadUtil;->composeDestination(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 156
    const-string v0, "hint"

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v3, "description"

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_62
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v0, "notificationextras"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v0, "title"

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p5

    :cond_7a
    invoke-virtual {v1, v0, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "allowed_network_types"

    invoke-static {p0}, Lcom/duoku/platform/download/DownloadUtil;->getAllowedNetworkType(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    const-string v0, "allow_roaming"

    invoke-static {p0}, Lcom/duoku/platform/download/DownloadUtil;->isRoamingAllowede(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 169
    const-string v0, "is_visible_in_downloads_ui"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 170
    const-string v0, "entity"

    invoke-virtual {v1, v0, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-object v1

    :cond_a7
    move-object v0, p5

    .line 158
    goto :goto_62
.end method

.method public static getAllDownloads(Landroid/content/Context;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 389
    invoke-static {p0}, Lcom/duoku/platform/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/DownloadManager;

    move-result-object v0

    .line 390
    new-instance v2, Lcom/duoku/platform/download/DownloadManager$Query;

    invoke-direct {v2}, Lcom/duoku/platform/download/DownloadManager$Query;-><init>()V

    invoke-virtual {v0, v2}, Lcom/duoku/platform/download/DownloadManager;->query(Lcom/duoku/platform/download/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v3

    .line 393
    if-eqz v3, :cond_16

    :try_start_10
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_3e
    .catchall {:try_start_10 .. :try_end_13} :catchall_4e

    move-result v0

    if-nez v0, :cond_1d

    .line 421
    :cond_16
    if-eqz v3, :cond_1b

    .line 422
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1b
    move-object v0, v1

    .line 425
    :cond_1c
    :goto_1c
    return-object v0

    .line 397
    :cond_1d
    :try_start_1d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 398
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_25
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_28} :catch_3e
    .catchall {:try_start_1d .. :try_end_28} :catchall_4e

    move-result v2

    if-eqz v2, :cond_31

    .line 421
    if-eqz v3, :cond_1c

    .line 422
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1c

    .line 402
    :cond_31
    :try_start_31
    invoke-static {v3}, Lcom/duoku/platform/download/DownloadUtil;->extractData(Landroid/database/Cursor;)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    move-result-object v2

    .line 403
    if-eqz v2, :cond_3a

    .line 405
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3a} :catch_49
    .catchall {:try_start_31 .. :try_end_3a} :catchall_4e

    .line 398
    :cond_3a
    :goto_3a
    :try_start_3a
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_3e
    .catchall {:try_start_3a .. :try_end_3d} :catchall_4e

    goto :goto_25

    .line 415
    :catch_3e
    move-exception v0

    .line 417
    :try_start_3f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4e

    .line 421
    if-eqz v3, :cond_47

    .line 422
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_47
    move-object v0, v1

    .line 425
    goto :goto_1c

    .line 408
    :catch_49
    move-exception v2

    .line 410
    :try_start_4a
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_3e
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_3a

    .line 420
    :catchall_4e
    move-exception v0

    .line 421
    if-eqz v3, :cond_54

    .line 422
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 423
    :cond_54
    throw v0
.end method

.method private static getAllowedNetworkType(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 120
    invoke-static {p0}, Lcom/duoku/platform/download/DownloadConfiguration;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/DownloadConfiguration;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadConfiguration;->isMobileNetworkAllowed()Z

    move-result v0

    .line 123
    if-eqz v0, :cond_c

    .line 125
    const/4 v0, 0x3

    .line 131
    :goto_b
    return v0

    .line 129
    :cond_c
    const/4 v0, 0x2

    goto :goto_b
.end method

.method public static getDownloadInfo(Landroid/content/Context;J)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;
    .registers 8

    .prologue
    .line 259
    invoke-static {p0}, Lcom/duoku/platform/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/DownloadManager;

    move-result-object v0

    .line 260
    new-instance v1, Lcom/duoku/platform/download/DownloadManager$Query;

    invoke-direct {v1}, Lcom/duoku/platform/download/DownloadManager$Query;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/duoku/platform/download/DownloadManager$Query;->setFilterById([J)Lcom/duoku/platform/download/DownloadManager$Query;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/DownloadManager;->query(Lcom/duoku/platform/download/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    .line 264
    :try_start_17
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_2d

    move-result v0

    if-nez v0, :cond_22

    .line 276
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 266
    const/4 v0, 0x0

    .line 272
    :goto_21
    return-object v0

    .line 270
    :cond_22
    :try_start_22
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 271
    invoke-static {v1}, Lcom/duoku/platform/download/DownloadUtil;->extractData(Landroid/database/Cursor;)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_2d

    move-result-object v0

    .line 276
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_21

    .line 275
    :catchall_2d
    move-exception v0

    .line 276
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 277
    throw v0
.end method

.method public static getDownloadInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;
    .registers 3

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/duoku/platform/download/DownloadUtil;->getDownloadInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 189
    invoke-static {p0}, Lcom/duoku/platform/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/DownloadManager;

    move-result-object v1

    .line 190
    new-instance v2, Lcom/duoku/platform/download/DownloadManager$Query;

    invoke-direct {v2}, Lcom/duoku/platform/download/DownloadManager$Query;-><init>()V

    invoke-virtual {v1, v2}, Lcom/duoku/platform/download/DownloadManager;->query(Lcom/duoku/platform/download/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2

    .line 193
    if-nez v2, :cond_16

    .line 239
    :cond_10
    if-eqz v2, :cond_15

    .line 240
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 235
    :cond_15
    :goto_15
    return-object v0

    .line 197
    :cond_16
    :try_start_16
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_10

    .line 202
    if-nez v0, :cond_6a

    .line 204
    new-instance v1, Lcom/duoku/platform/download/DownloadConfiguration$DefaultDownloadComprator;

    invoke-direct {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DefaultDownloadComprator;-><init>()V

    .line 208
    :goto_23
    const-string v3, "uri"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 209
    const-string v4, "extra"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 210
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_32
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_35
    .catchall {:try_start_16 .. :try_end_35} :catchall_54

    move-result v5

    if-eqz v5, :cond_3e

    .line 239
    if-eqz v2, :cond_15

    .line 240
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_15

    .line 213
    :cond_3e
    :try_start_3e
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 214
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 218
    invoke-virtual {v1, v5, p1}, Lcom/duoku/platform/download/DownloadConfiguration$DefaultDownloadComprator;->isTheSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 225
    invoke-static {v2}, Lcom/duoku/platform/download/DownloadUtil;->extractData(Landroid/database/Cursor;)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    move-result-object v0

    .line 210
    :cond_50
    :goto_50
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_53
    .catchall {:try_start_3e .. :try_end_53} :catchall_54

    goto :goto_32

    .line 238
    :catchall_54
    move-exception v0

    .line 239
    if-eqz v2, :cond_5a

    .line 240
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 241
    :cond_5a
    throw v0

    .line 227
    :cond_5b
    if-eqz v6, :cond_50

    if-eqz p2, :cond_50

    :try_start_5f
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 229
    invoke-static {v2}, Lcom/duoku/platform/download/DownloadUtil;->extractData(Landroid/database/Cursor;)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;
    :try_end_68
    .catchall {:try_start_5f .. :try_end_68} :catchall_54

    move-result-object v0

    goto :goto_50

    :cond_6a
    move-object v1, v0

    goto :goto_23
.end method

.method private static getFinalReason(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;II)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;
    .registers 5

    .prologue
    .line 1369
    sget-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_FAILED:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    if-ne p0, v0, :cond_3a

    .line 1371
    invoke-virtual {p0}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->getStatusCode()I

    move-result v0

    .line 1372
    const/16 v1, 0x194

    if-ne p2, v1, :cond_f

    .line 1374
    sget-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ERROR_HTTP_CANNOT_RUSUME:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    .line 1414
    :goto_e
    return-object v0

    .line 1376
    :cond_f
    const/16 v1, 0x190

    if-gt v1, v0, :cond_17

    const/16 v1, 0x1e8

    if-lt v0, v1, :cond_1f

    .line 1378
    :cond_17
    const/16 v1, 0x1f4

    if-gt v1, v0, :cond_22

    const/16 v1, 0x258

    if-ge v0, v1, :cond_22

    .line 1381
    :cond_1f
    sget-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ERROR_HTTP_UNKNOWN:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    goto :goto_e

    .line 1384
    :cond_22
    packed-switch p1, :pswitch_data_46

    .line 1407
    :pswitch_25
    sget-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ERROR_UNKNOWN:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    goto :goto_e

    .line 1387
    :pswitch_28
    sget-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ERROR_FILE_ERROR:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    goto :goto_e

    .line 1390
    :pswitch_2b
    sget-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ERROR_HTTP_CANNOT_RUSUME:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    goto :goto_e

    .line 1395
    :pswitch_2e
    sget-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ERROR_HTTP_ERROR:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    goto :goto_e

    .line 1398
    :pswitch_31
    sget-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ERROR_INSUFFICIENT_SPACE:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    goto :goto_e

    .line 1401
    :pswitch_34
    sget-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ERROR_DEVICE_NOT_FOUND:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    goto :goto_e

    .line 1404
    :pswitch_37
    sget-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ERROR_FILE_ALREADY_EXISTS:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    goto :goto_e

    .line 1410
    :cond_3a
    sget-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_PAUSED:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    if-ne p0, v0, :cond_43

    .line 1412
    invoke-static {p1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->getReason(I)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    move-result-object v0

    goto :goto_e

    .line 1414
    :cond_43
    const/4 v0, 0x0

    goto :goto_e

    .line 1384
    nop

    :pswitch_data_46
    .packed-switch 0x3e9
        :pswitch_28
        :pswitch_2e
        :pswitch_25
        :pswitch_2e
        :pswitch_2e
        :pswitch_31
        :pswitch_34
        :pswitch_2b
        :pswitch_37
    .end packed-switch
.end method

.method private static getFinalStatus(I)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;
    .registers 2

    .prologue
    .line 1353
    invoke-static {p0}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->getStatus(I)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    move-result-object v0

    return-object v0
.end method

.method private static getMimetype(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 80
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    .line 81
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    return-object v0
.end method

.method private static isRoamingAllowede(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 136
    invoke-static {p0}, Lcom/duoku/platform/download/DownloadConfiguration;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/DownloadConfiguration;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadConfiguration;->isRoamingAllowed()Z

    move-result v0

    return v0
.end method

.method public static varargs pauseDownload(Landroid/content/Context;[J)V
    .registers 3

    .prologue
    .line 508
    invoke-static {p0}, Lcom/duoku/platform/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/DownloadManager;

    move-result-object v0

    .line 509
    invoke-virtual {v0, p0, p1}, Lcom/duoku/platform/download/DownloadManager;->pauseDownload(Landroid/content/Context;[J)V

    .line 510
    return-void
.end method

.method public static removeAllDownloadItemListener(Landroid/content/Context;J)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1329
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1330
    const-class v2, Lcom/duoku/platform/download/DownloadUtil;

    monitor-enter v2

    .line 1332
    :try_start_7
    sget-object v0, Lcom/duoku/platform/download/DownloadUtil;->itemObservers:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/DownloadUtil$b;

    .line 1333
    if-eqz v0, :cond_27

    .line 1335
    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadUtil$b;->b()V

    .line 1336
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1337
    sget-object v1, Lcom/duoku/platform/download/DownloadUtil;->itemObservers:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1338
    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadUtil$b;->a()V

    .line 1330
    :cond_27
    monitor-exit v2

    .line 1343
    return-void

    .line 1330
    :catchall_29
    move-exception v0

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public static removeAllDownloadsListener(Landroid/content/Context;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1248
    sget-object v1, Lcom/duoku/platform/download/DownloadUtil;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1250
    :try_start_3
    sget-object v0, Lcom/duoku/platform/download/DownloadUtil;->allDownloadObserver:Lcom/duoku/platform/download/DownloadUtil$a;

    if-eqz v0, :cond_1d

    .line 1252
    sget-object v0, Lcom/duoku/platform/download/DownloadUtil;->allDownloadObserver:Lcom/duoku/platform/download/DownloadUtil$a;

    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadUtil$a;->b()V

    .line 1253
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/duoku/platform/download/DownloadUtil;->allDownloadObserver:Lcom/duoku/platform/download/DownloadUtil$a;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1254
    sget-object v0, Lcom/duoku/platform/download/DownloadUtil;->allDownloadObserver:Lcom/duoku/platform/download/DownloadUtil$a;

    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadUtil$a;->c()V

    .line 1255
    const/4 v0, 0x0

    sput-object v0, Lcom/duoku/platform/download/DownloadUtil;->allDownloadObserver:Lcom/duoku/platform/download/DownloadUtil$a;

    .line 1248
    :cond_1d
    monitor-exit v1

    .line 1258
    return-void

    .line 1248
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public static varargs removeDownload(Landroid/content/Context;Z[J)I
    .registers 4

    .prologue
    .line 540
    invoke-static {p0}, Lcom/duoku/platform/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/DownloadManager;

    move-result-object v0

    .line 544
    if-eqz p1, :cond_b

    .line 546
    invoke-virtual {v0, p2}, Lcom/duoku/platform/download/DownloadManager;->markRowDeleted([J)I

    move-result v0

    .line 550
    :goto_a
    return v0

    :cond_b
    invoke-virtual {v0, p2}, Lcom/duoku/platform/download/DownloadManager;->remove([J)I

    move-result v0

    goto :goto_a
.end method

.method public static removeDownload(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4

    .prologue
    .line 563
    invoke-static {p0}, Lcom/duoku/platform/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/DownloadManager;

    move-result-object v0

    .line 564
    if-eqz p2, :cond_a

    .line 566
    invoke-virtual {v0, p1}, Lcom/duoku/platform/download/DownloadManager;->markRowDeleted(Ljava/lang/String;)I

    .line 575
    :goto_9
    return-void

    .line 570
    :cond_a
    invoke-virtual {v0, p1}, Lcom/duoku/platform/download/DownloadManager;->remove(Ljava/lang/String;)I

    goto :goto_9
.end method

.method public static removeDownloadItemListener(Landroid/content/Context;JLcom/duoku/platform/download/DownloadConfiguration$DownloadItemListener;)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1299
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1300
    const-class v2, Lcom/duoku/platform/download/DownloadUtil;

    monitor-enter v2

    .line 1302
    :try_start_7
    sget-object v0, Lcom/duoku/platform/download/DownloadUtil;->itemObservers:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/DownloadUtil$b;

    .line 1303
    if-eqz v0, :cond_2d

    .line 1305
    invoke-virtual {v0, p3}, Lcom/duoku/platform/download/DownloadUtil$b;->b(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemListener;)V

    .line 1306
    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadUtil$b;->c()I

    move-result v3

    .line 1307
    if-nez v3, :cond_2d

    .line 1309
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1310
    sget-object v1, Lcom/duoku/platform/download/DownloadUtil;->itemObservers:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadUtil$b;->a()V

    .line 1300
    :cond_2d
    monitor-exit v2

    .line 1316
    return-void

    .line 1300
    :catchall_2f
    move-exception v0

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public static varargs removeDownloadRecord(Landroid/content/Context;[J)V
    .registers 3

    .prologue
    .line 585
    invoke-static {p0}, Lcom/duoku/platform/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/DownloadManager;

    move-result-object v0

    .line 586
    invoke-virtual {v0, p1}, Lcom/duoku/platform/download/DownloadManager;->remove([J)I

    .line 588
    return-void
.end method

.method public static removeDownloadsListener(Landroid/content/Context;Lcom/duoku/platform/download/DownloadConfiguration$DownloadListener;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1269
    sget-object v1, Lcom/duoku/platform/download/DownloadUtil;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1271
    :try_start_3
    sget-object v0, Lcom/duoku/platform/download/DownloadUtil;->allDownloadObserver:Lcom/duoku/platform/download/DownloadUtil$a;

    if-eqz v0, :cond_25

    .line 1273
    sget-object v0, Lcom/duoku/platform/download/DownloadUtil;->allDownloadObserver:Lcom/duoku/platform/download/DownloadUtil$a;

    invoke-virtual {v0, p1}, Lcom/duoku/platform/download/DownloadUtil$a;->b(Lcom/duoku/platform/download/DownloadConfiguration$DownloadListener;)V

    .line 1274
    sget-object v0, Lcom/duoku/platform/download/DownloadUtil;->allDownloadObserver:Lcom/duoku/platform/download/DownloadUtil$a;

    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadUtil$a;->a()I

    move-result v0

    .line 1275
    if-gtz v0, :cond_25

    .line 1277
    sget-object v0, Lcom/duoku/platform/download/DownloadUtil;->allDownloadObserver:Lcom/duoku/platform/download/DownloadUtil$a;

    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadUtil$a;->c()V

    .line 1278
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/duoku/platform/download/DownloadUtil;->allDownloadObserver:Lcom/duoku/platform/download/DownloadUtil$a;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1279
    const/4 v0, 0x0

    sput-object v0, Lcom/duoku/platform/download/DownloadUtil;->allDownloadObserver:Lcom/duoku/platform/download/DownloadUtil$a;

    .line 1269
    :cond_25
    monitor-exit v1

    .line 1284
    return-void

    .line 1269
    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public static resetAllowedNetworkType(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 525
    invoke-static {p0}, Lcom/duoku/platform/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/DownloadManager;

    move-result-object v0

    .line 526
    invoke-static {p0}, Lcom/duoku/platform/download/DownloadUtil;->getAllowedNetworkType(Landroid/content/Context;)I

    move-result v1

    .line 527
    invoke-virtual {v0, p0, v1}, Lcom/duoku/platform/download/DownloadManager;->resetAllowedNetworkType(Landroid/content/Context;I)V

    .line 529
    return-void
.end method

.method public static varargs restartDownload(Landroid/content/Context;[J)V
    .registers 2

    .prologue
    .line 608
    invoke-static {p0, p1}, Lcom/duoku/platform/download/DownloadUtil;->resumeDownload(Landroid/content/Context;[J)V

    .line 609
    return-void
.end method

.method public static varargs restartDownload2(Landroid/content/Context;[J)V
    .registers 3

    .prologue
    .line 602
    invoke-static {p0}, Lcom/duoku/platform/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/DownloadManager;

    move-result-object v0

    .line 603
    invoke-virtual {v0, p0, p1}, Lcom/duoku/platform/download/DownloadManager;->restartDownload(Landroid/content/Context;[J)V

    .line 604
    return-void
.end method

.method public static varargs resumeDownload(Landroid/content/Context;[J)V
    .registers 4

    .prologue
    .line 637
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/duoku/platform/download/DownloadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 638
    invoke-static {p0}, Lcom/duoku/platform/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/DownloadManager;

    move-result-object v0

    .line 639
    invoke-virtual {v0, p1}, Lcom/duoku/platform/download/DownloadManager;->resumeDownload([J)V

    .line 640
    return-void
.end method

.method public static resumeLastPausedDownload(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 644
    invoke-static {p0}, Lcom/duoku/platform/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/DownloadManager;

    move-result-object v0

    .line 645
    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadManager;->resumeLastPausedDownload()V

    .line 646
    return-void
.end method

.method public static updateDownload(Landroid/content/Context;JLjava/lang/String;)I
    .registers 5

    .prologue
    .line 514
    invoke-static {p0}, Lcom/duoku/platform/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/DownloadManager;

    move-result-object v0

    .line 515
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/duoku/platform/download/DownloadManager;->updateDownload(Landroid/content/Context;JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static updateDownload(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 13

    .prologue
    .line 620
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/duoku/platform/download/DownloadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 621
    invoke-static {p0}, Lcom/duoku/platform/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/DownloadManager;

    move-result-object v1

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 622
    invoke-virtual/range {v1 .. v6}, Lcom/duoku/platform/download/DownloadManager;->updateDownload(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static updateDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .prologue
    .line 613
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/duoku/platform/download/DownloadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 614
    invoke-static {p0}, Lcom/duoku/platform/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/DownloadManager;

    move-result-object v0

    .line 615
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/duoku/platform/download/DownloadManager;->updateDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
