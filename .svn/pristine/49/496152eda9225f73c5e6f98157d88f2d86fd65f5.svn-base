.class public Lcom/duoku/platform/download/DownloadManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Assert"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/download/DownloadManager$a;,
        Lcom/duoku/platform/download/DownloadManager$Query;,
        Lcom/duoku/platform/download/DownloadManager$Request;
    }
.end annotation


# static fields
.field public static ACTION_DOWNLOAD_CANCLE:Ljava/lang/String; = null

.field public static ACTION_DOWNLOAD_COMPLETE:Ljava/lang/String; = null

.field public static ACTION_DOWNLOAD_PAUSE:Ljava/lang/String; = null

.field public static ACTION_DOWNLOAD_PAUSE_BY_USER:Ljava/lang/String; = null

.field public static ACTION_DOWNLOAD_RUNNING:Ljava/lang/String; = null

.field public static ACTION_DOWNLOAD_START:Ljava/lang/String; = null

.field public static ACTION_NOTIFICATION_CLICKED:Ljava/lang/String; = null

.field public static ACTION_VIEW_DOWNLOADS:Ljava/lang/String; = null

.field private static final COLUMNS:[Ljava/lang/String;

.field public static final COLUMN_BYTES_DOWNLOADED_SO_FAR:Ljava/lang/String; = "bytes_so_far"

.field public static final COLUMN_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final COLUMN_EXTRA:Ljava/lang/String; = "extra"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_LAST_MODIFIED_TIMESTAMP:Ljava/lang/String; = "last_modified_timestamp"

.field public static final COLUMN_LOCAL_URI:Ljava/lang/String; = "local_uri"

.field public static final COLUMN_MEDIAPROVIDER_URI:Ljava/lang/String; = "mediaprovider_uri"

.field public static final COLUMN_MEDIA_TYPE:Ljava/lang/String; = "media_type"

.field public static final COLUMN_ORIGINAL_STATUS:Ljava/lang/String; = "original_status"

.field public static final COLUMN_REASON:Ljava/lang/String; = "reason"

.field public static final COLUMN_STATUS:Ljava/lang/String; = "status"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final COLUMN_TOTAL_SIZE_BYTES:Ljava/lang/String; = "total_size"

.field public static final COLUMN_URI:Ljava/lang/String; = "uri"

.field public static final ERROR_CANNOT_RESUME:I = 0x3f0

.field public static final ERROR_DEVICE_NOT_FOUND:I = 0x3ef

.field public static final ERROR_FILE_ALREADY_EXISTS:I = 0x3f1

.field public static final ERROR_FILE_ERROR:I = 0x3e9

.field public static final ERROR_HTTP_DATA_ERROR:I = 0x3ec

.field public static final ERROR_INSUFFICIENT_SPACE:I = 0x3ee

.field public static final ERROR_TOO_MANY_REDIRECTS:I = 0x3ed

.field public static final ERROR_UNHANDLED_HTTP_CODE:I = 0x3ea

.field public static final ERROR_UNKNOWN:I = 0x3e8

.field public static final EXTRA_DOWNLOAD_ID:Ljava/lang/String; = "extra_download_id"

.field static INSTANCE:Lcom/duoku/platform/download/DownloadManager; = null

.field private static final LONG_COLUMNS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAUSED_BY_APP:I = 0x4

.field public static final PAUSED_QUEUED_FOR_WIFI:I = 0x3

.field public static final PAUSED_UNKNOWN:I = 0x5

.field public static final PAUSED_WAITING_FOR_NETWORK:I = 0x2

.field public static final PAUSED_WAITING_TO_RETRY:I = 0x1

.field public static final STATUS_FAILED:I = 0x10

.field public static final STATUS_PAUSED:I = 0x4

.field public static final STATUS_PENDING:I = 0x1

.field public static final STATUS_RUNNING:I = 0x2

.field public static final STATUS_SUCCESSFUL:I = 0x8

.field private static final TAG:Ljava/lang/String; = "DownloadManager"

.field private static final UNDERLYING_COLUMNS:[Ljava/lang/String;


# instance fields
.field private mBaseUri:Landroid/net/Uri;

.field private mPackageName:Ljava/lang/String;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".intent.action.DOWNLOAD_START"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/DownloadManager;->ACTION_DOWNLOAD_START:Ljava/lang/String;

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/DownloadManager;->ACTION_DOWNLOAD_COMPLETE:Ljava/lang/String;

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".intent.action.DOWNLOAD_CANCLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/DownloadManager;->ACTION_DOWNLOAD_CANCLE:Ljava/lang/String;

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".intent.action.DOWNLOAD_PAUSE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/DownloadManager;->ACTION_DOWNLOAD_PAUSE:Ljava/lang/String;

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".intent.action.DOWNLOAD_PAUSE_BY_USER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/DownloadManager;->ACTION_DOWNLOAD_PAUSE_BY_USER:Ljava/lang/String;

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".intent.action.DOWNLOAD_RUNNING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/DownloadManager;->ACTION_DOWNLOAD_RUNNING:Ljava/lang/String;

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/DownloadManager;->ACTION_NOTIFICATION_CLICKED:Ljava/lang/String;

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".intent.action.VIEW_DOWNLOADS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/DownloadManager;->ACTION_VIEW_DOWNLOADS:Ljava/lang/String;

    .line 311
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    .line 312
    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "mediaprovider_uri"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v5

    const-string v1, "description"

    aput-object v1, v0, v6

    const-string v1, "uri"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "media_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "total_size"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "local_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "reason"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 313
    const-string v2, "bytes_so_far"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "last_modified_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 315
    const-string v2, "original_status"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "extra"

    aput-object v2, v0, v1

    .line 310
    sput-object v0, Lcom/duoku/platform/download/DownloadManager;->COLUMNS:[Ljava/lang/String;

    .line 320
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    .line 321
    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "mediaprovider_uri"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v5

    const-string v1, "description"

    aput-object v1, v0, v6

    const-string v1, "uri"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 322
    const-string v2, "total_bytes"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "current_bytes"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lastmod"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "destination"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "entity"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 323
    const-string v2, "hint"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "_data"

    aput-object v2, v0, v1

    .line 319
    sput-object v0, Lcom/duoku/platform/download/DownloadManager;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    .line 326
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v3

    const-string v2, "total_size"

    aput-object v2, v1, v4

    const-string v2, "status"

    aput-object v2, v1, v5

    const-string v2, "reason"

    aput-object v2, v1, v6

    const-string v2, "bytes_so_far"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    .line 327
    const-string v3, "last_modified_timestamp"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "original_status"

    aput-object v3, v1, v2

    .line 326
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/duoku/platform/download/DownloadManager;->LONG_COLUMNS:Ljava/util/Set;

    .line 963
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 946
    sget-object v0, Lcom/duoku/platform/download/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 959
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    .line 960
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadManager;->mPackageName:Ljava/lang/String;

    .line 961
    return-void
.end method

.method static synthetic access$0()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 310
    sget-object v0, Lcom/duoku/platform/download/DownloadManager;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1()Ljava/util/Set;
    .registers 1

    .prologue
    .line 326
    sget-object v0, Lcom/duoku/platform/download/DownloadManager;->LONG_COLUMNS:Ljava/util/Set;

    return-object v0
.end method

.method private checkIsNetworkTypeAllowed(I)I
    .registers 3

    .prologue
    .line 1461
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadManager;->translateNetworkTypeToApiFlag(I)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/DownloadManager;
    .registers 3

    .prologue
    .line 967
    const-class v1, Lcom/duoku/platform/download/DownloadManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/duoku/platform/download/DownloadManager;->INSTANCE:Lcom/duoku/platform/download/DownloadManager;

    if-nez v0, :cond_e

    .line 969
    new-instance v0, Lcom/duoku/platform/download/DownloadManager;

    invoke-direct {v0, p0}, Lcom/duoku/platform/download/DownloadManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duoku/platform/download/DownloadManager;->INSTANCE:Lcom/duoku/platform/download/DownloadManager;

    .line 971
    :cond_e
    sget-object v0, Lcom/duoku/platform/download/DownloadManager;->INSTANCE:Lcom/duoku/platform/download/DownloadManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 967
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static getWhereArgsForIds([J)[Ljava/lang/String;
    .registers 5

    .prologue
    .line 1597
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/String;

    .line 1598
    const/4 v0, 0x0

    :goto_4
    array-length v2, p0

    if-lt v0, v2, :cond_8

    .line 1602
    return-object v1

    .line 1600
    :cond_8
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1598
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method static getWhereClauseForIds([J)Ljava/lang/String;
    .registers 4

    .prologue
    .line 1572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1573
    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    const/4 v0, 0x0

    :goto_b
    array-length v2, p0

    if-lt v0, v2, :cond_18

    .line 1583
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1584
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1576
    :cond_18
    if-lez v0, :cond_1f

    .line 1578
    const-string v2, "OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1580
    :cond_1f
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1581
    const-string v2, " = ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method private logStatus(I)V
    .registers 4

    .prologue
    .line 1325
    sparse-switch p1, :sswitch_data_34

    .line 1343
    const-string v0, "DownloadManager"

    const-string v1, "Unknown status!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    :goto_a
    return-void

    .line 1328
    :sswitch_b
    const-string v0, "DownloadManager"

    const-string v1, "STATUS_PENDING"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1331
    :sswitch_13
    const-string v0, "DownloadManager"

    const-string v1, "STATUS_RUNNING"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1334
    :sswitch_1b
    const-string v0, "DownloadManager"

    const-string v1, "STATUS_PAUSED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1337
    :sswitch_23
    const-string v0, "DownloadManager"

    const-string v1, "STATUS_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1340
    :sswitch_2b
    const-string v0, "DownloadManager"

    const-string v1, "STATUS_SUCCESSFUL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1325
    nop

    :sswitch_data_34
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_13
        0x4 -> :sswitch_1b
        0x8 -> :sswitch_2b
        0x10 -> :sswitch_23
    .end sparse-switch
.end method

.method private translateNetworkTypeToApiFlag(I)I
    .registers 3

    .prologue
    .line 1446
    packed-switch p1, :pswitch_data_a

    .line 1455
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 1449
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 1452
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 1446
    nop

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public checkCanUseNetwork(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 3

    .prologue
    .line 1466
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/nt;

    invoke-direct {v0, p1}, Lcom/baidu/bdgame/sdk/obf/nt;-><init>(Landroid/content/Context;)V

    .line 1468
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/nt;->b()Ljava/lang/Integer;

    move-result-object v0

    .line 1469
    if-nez v0, :cond_d

    .line 1471
    const/4 v0, 0x0

    .line 1473
    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/duoku/platform/download/DownloadManager;->checkIsNetworkTypeAllowed(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_c
.end method

.method public enqueue(Lcom/duoku/platform/download/DownloadManager$Request;)J
    .registers 5

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/duoku/platform/download/DownloadManager$Request;->toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1006
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/duoku/platform/download/Downloads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1007
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1008
    return-wide v0
.end method

.method getDownloadUri(J)Landroid/net/Uri;
    .registers 4

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public isAppItemPaused(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1534
    new-instance v2, Lcom/duoku/platform/download/DownloadManager$Query;

    invoke-direct {v2}, Lcom/duoku/platform/download/DownloadManager$Query;-><init>()V

    new-array v3, v0, [J

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    aput-wide v4, v3, v1

    invoke-virtual {v2, v3}, Lcom/duoku/platform/download/DownloadManager$Query;->setFilterById([J)Lcom/duoku/platform/download/DownloadManager$Query;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/duoku/platform/download/DownloadManager;->query(Lcom/duoku/platform/download/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2

    .line 1535
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1537
    const-string v3, "control"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_2b

    :goto_2a
    return v0

    :cond_2b
    move v0, v1

    goto :goto_2a
.end method

.method public markRowDeleted(Ljava/lang/String;)I
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 1044
    .line 1046
    const-string v0, "entity=?"

    .line 1048
    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 1049
    aput-object p1, v1, v2

    .line 1051
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1052
    const-string v3, "deleted"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1053
    iget-object v3, p0, Lcom/duoku/platform/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/duoku/platform/download/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public varargs markRowDeleted([J)I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 1024
    .line 1026
    if-eqz p1, :cond_26

    array-length v1, p1

    if-eqz v1, :cond_26

    .line 1034
    invoke-static {p1}, Lcom/duoku/platform/download/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v1

    .line 1035
    invoke-static {p1}, Lcom/duoku/platform/download/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v0

    .line 1037
    :goto_e
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1038
    const-string v3, "deleted"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1039
    iget-object v3, p0, Lcom/duoku/platform/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/duoku/platform/download/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v1, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_26
    move-object v1, v0

    goto :goto_e
.end method

.method public openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, p1, p2}, Lcom/duoku/platform/download/DownloadManager;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public varargs pauseDownload(Landroid/content/Context;[J)V
    .registers 13

    .prologue
    const/4 v9, 0x2

    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 1381
    .line 1384
    if-eqz p2, :cond_b8

    array-length v0, p2

    if-lez v0, :cond_b8

    .line 1386
    new-instance v3, Ljava/util/ArrayList;

    array-length v0, p2

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1387
    new-instance v0, Lcom/duoku/platform/download/DownloadManager$Query;

    invoke-direct {v0}, Lcom/duoku/platform/download/DownloadManager$Query;-><init>()V

    invoke-virtual {v0, p2}, Lcom/duoku/platform/download/DownloadManager$Query;->setFilterById([J)Lcom/duoku/platform/download/DownloadManager$Query;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/download/DownloadManager;->query(Lcom/duoku/platform/download/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    .line 1390
    :try_start_1b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1e
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_68

    move-result v0

    if-eqz v0, :cond_35

    .line 1410
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1412
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_75

    .line 1414
    const-string v0, "DownloadManager"

    const-string v1, "No valid downloadID,cannot pause any download."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    :goto_34
    return-void

    .line 1392
    :cond_35
    :try_start_35
    const-string v0, "status"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1393
    invoke-direct {p0, v0}, Lcom/duoku/platform/download/DownloadManager;->logStatus(I)V

    .line 1394
    const-string v4, "_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1395
    if-eq v0, v9, :cond_6d

    if-eq v0, v8, :cond_6d

    .line 1397
    const-string v0, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Can only pause a running/penging download:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    :goto_64
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_67
    .catchall {:try_start_35 .. :try_end_67} :catchall_68

    goto :goto_1e

    .line 1409
    :catchall_68
    move-exception v0

    .line 1410
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1411
    throw v0

    .line 1404
    :cond_6d
    :try_start_6d
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_74
    .catchall {:try_start_6d .. :try_end_74} :catchall_68

    goto :goto_64

    .line 1417
    :cond_75
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [J

    .line 1418
    array-length v5, v4

    move v1, v2

    .line 1419
    :goto_7d
    if-lt v1, v5, :cond_a8

    .line 1423
    invoke-static {v4}, Lcom/duoku/platform/download/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v1

    .line 1424
    invoke-static {v4}, Lcom/duoku/platform/download/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v0

    .line 1437
    :goto_87
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1438
    const-string v3, "status"

    const/16 v4, 0xc1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1439
    const-string v3, "control"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1441
    iget-object v3, p0, Lcom/duoku/platform/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/duoku/platform/download/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v1, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_34

    .line 1421
    :cond_a8
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v4, v1

    .line 1419
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7d

    .line 1429
    :cond_b8
    const-string v1, "status IN (?,?,?,? )"

    .line 1431
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 1432
    const/16 v3, 0xbe

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0xc0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    const/16 v2, 0xc3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v9

    const/4 v2, 0x3

    .line 1433
    const/16 v3, 0xc4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_87
.end method

.method public query(Lcom/duoku/platform/download/DownloadManager$Query;)Landroid/database/Cursor;
    .registers 5

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/duoku/platform/download/DownloadManager;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/download/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, v2}, Lcom/duoku/platform/download/DownloadManager$Query;->runQuery(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v1

    .line 1108
    if-nez v1, :cond_e

    .line 1110
    const/4 v0, 0x0

    .line 1112
    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Lcom/duoku/platform/download/DownloadManager$a;

    iget-object v2, p0, Lcom/duoku/platform/download/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/download/DownloadManager$a;-><init>(Landroid/database/Cursor;Landroid/net/Uri;)V

    goto :goto_d
.end method

.method public remove(Ljava/lang/String;)I
    .registers 6

    .prologue
    .line 1087
    .line 1089
    const-string v0, "entity=?"

    .line 1091
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 1092
    aput-object p1, v1, v2

    .line 1094
    iget-object v2, p0, Lcom/duoku/platform/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/duoku/platform/download/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public varargs remove([J)I
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1068
    .line 1070
    if-eqz p1, :cond_6

    array-length v1, p1

    if-nez v1, :cond_17

    .line 1075
    :cond_6
    const-string v1, "DownloadManager"

    const-string v2, "ids is empty,so remove all the download!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 1082
    :goto_e
    iget-object v2, p0, Lcom/duoku/platform/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/duoku/platform/download/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1079
    :cond_17
    invoke-static {p1}, Lcom/duoku/platform/download/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v1

    .line 1080
    invoke-static {p1}, Lcom/duoku/platform/download/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public resetAllowedNetworkType(Landroid/content/Context;I)V
    .registers 11

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xc8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1478
    .line 1480
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1481
    const-string v0, "allowed_network_types"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1482
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/DownloadManager;->checkCanUseNetwork(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    .line 1483
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/duoku/platform/download/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v1, v3, v2, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1484
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_50

    .line 1488
    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_3e

    .line 1490
    const-string v0, "status"

    const/16 v1, 0xc1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1491
    const-string v0, "control"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1493
    :cond_3e
    const-string v1, "status != ?"

    .line 1495
    new-array v0, v4, [Ljava/lang/String;

    .line 1496
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    .line 1510
    :goto_48
    iget-object v3, p0, Lcom/duoku/platform/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/duoku/platform/download/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v1, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1511
    return-void

    .line 1504
    :cond_50
    const-string v1, "status != ?"

    .line 1506
    new-array v0, v4, [Ljava/lang/String;

    .line 1507
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    goto :goto_48
.end method

.method public resetAllowedNetworkType2(Landroid/content/Context;I)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 1515
    .line 1517
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1518
    const-string v1, "allowed_network_types"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1519
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/duoku/platform/download/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1521
    return-void
.end method

.method public restartAllPausedDownload(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 1548
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/duoku/platform/download/DownloadManager;->restartDownload(Landroid/content/Context;[J)V

    .line 1549
    return-void
.end method

.method public varargs restartDownload(Landroid/content/Context;[J)V
    .registers 12

    .prologue
    const/16 v8, 0xbe

    const/4 v7, 0x0

    .line 1261
    .line 1263
    if-eqz p2, :cond_c6

    array-length v0, p2

    if-lez v0, :cond_c6

    .line 1265
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1266
    new-instance v1, Lcom/duoku/platform/download/DownloadManager$Query;

    invoke-direct {v1}, Lcom/duoku/platform/download/DownloadManager$Query;-><init>()V

    invoke-virtual {v1, p2}, Lcom/duoku/platform/download/DownloadManager$Query;->setFilterById([J)Lcom/duoku/platform/download/DownloadManager$Query;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/duoku/platform/download/DownloadManager;->query(Lcom/duoku/platform/download/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    .line 1269
    :try_start_1b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1e
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_6f

    move-result v2

    if-eqz v2, :cond_35

    .line 1289
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1291
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7c

    .line 1293
    const-string v0, "DownloadManager"

    const-string v1, "No valid downloadID,cannot resume any download."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    :goto_34
    return-void

    .line 1271
    :cond_35
    :try_start_35
    const-string v2, "status"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1272
    invoke-direct {p0, v2}, Lcom/duoku/platform/download/DownloadManager;->logStatus(I)V

    .line 1273
    const-string v3, "_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1274
    const/16 v3, 0x8

    if-eq v2, v3, :cond_74

    const/16 v3, 0x10

    if-eq v2, v3, :cond_74

    const/4 v3, 0x4

    if-eq v2, v3, :cond_74

    .line 1279
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Cannot restart incomplete download::"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    :goto_6b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6e
    .catchall {:try_start_35 .. :try_end_6e} :catchall_6f

    goto :goto_1e

    .line 1288
    :catchall_6f
    move-exception v0

    .line 1289
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1290
    throw v0

    .line 1283
    :cond_74
    :try_start_74
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_6f

    goto :goto_6b

    .line 1296
    :cond_7c
    invoke-static {p2}, Lcom/duoku/platform/download/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v1

    .line 1297
    invoke-static {p2}, Lcom/duoku/platform/download/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v0

    .line 1308
    :goto_84
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1309
    const-string v3, "current_bytes"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1310
    const-string v3, "total_bytes"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1311
    const-string v3, "_data"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1314
    const-string v3, "status"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1315
    const-string v3, "control"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1317
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/duoku/platform/download/DownloadService;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1319
    iget-object v3, p0, Lcom/duoku/platform/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/duoku/platform/download/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v1, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_34

    .line 1301
    :cond_c6
    const-string v1, "status !=? OR status !=?"

    .line 1303
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 1304
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    const/4 v2, 0x1

    const/16 v3, 0xc0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_84
.end method

.method public varargs resumeDownload([J)V
    .registers 13

    .prologue
    const/16 v10, 0xbe

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1139
    .line 1141
    if-eqz p1, :cond_9e

    array-length v0, p1

    if-lez v0, :cond_9e

    .line 1143
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1144
    new-instance v1, Lcom/duoku/platform/download/DownloadManager$Query;

    invoke-direct {v1}, Lcom/duoku/platform/download/DownloadManager$Query;-><init>()V

    invoke-virtual {v1, p1}, Lcom/duoku/platform/download/DownloadManager$Query;->setFilterById([J)Lcom/duoku/platform/download/DownloadManager$Query;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/duoku/platform/download/DownloadManager;->query(Lcom/duoku/platform/download/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    .line 1147
    :try_start_1d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_20
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_5d

    move-result v2

    if-eqz v2, :cond_37

    .line 1168
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1170
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_77

    .line 1172
    const-string v0, "DownloadManager"

    const-string v1, "No valid downloadID,cannot resume any download."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    :goto_36
    return-void

    .line 1149
    :cond_37
    :try_start_37
    const-string v2, "status"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1150
    invoke-direct {p0, v2}, Lcom/duoku/platform/download/DownloadManager;->logStatus(I)V

    .line 1151
    const-string v3, "_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1152
    if-eq v2, v8, :cond_62

    if-eq v2, v9, :cond_62

    .line 1154
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1147
    :goto_59
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5c
    .catchall {:try_start_37 .. :try_end_5c} :catchall_5d

    goto :goto_20

    .line 1167
    :catchall_5d
    move-exception v0

    .line 1168
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1169
    throw v0

    .line 1162
    :cond_62
    :try_start_62
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Cannot only resume a download:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catchall {:try_start_62 .. :try_end_76} :catchall_5d

    goto :goto_59

    .line 1175
    :cond_77
    invoke-static {p1}, Lcom/duoku/platform/download/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v1

    .line 1176
    invoke-static {p1}, Lcom/duoku/platform/download/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v0

    .line 1187
    :goto_7f
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1189
    const-string v3, "status"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1190
    const-string v3, "control"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1191
    iget-object v3, p0, Lcom/duoku/platform/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/duoku/platform/download/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v1, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_36

    .line 1181
    :cond_9e
    const-string v1, "status !=? AND status !=? AND status !=?"

    .line 1183
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 1184
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    const/16 v2, 0xc0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v9

    goto :goto_7f
.end method

.method public resumeLastPausedDownload()V
    .registers 1

    .prologue
    .line 1246
    return-void
.end method

.method public setAccessAllDownloads(Z)V
    .registers 3

    .prologue
    .line 984
    if-eqz p1, :cond_7

    .line 986
    sget-object v0, Lcom/duoku/platform/download/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 992
    :goto_6
    return-void

    .line 990
    :cond_7
    sget-object v0, Lcom/duoku/platform/download/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadManager;->mBaseUri:Landroid/net/Uri;

    goto :goto_6
.end method

.method public updateDownload(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 13

    .prologue
    const/4 v5, 0x0

    .line 1196
    const-string v0, "_id=? AND uri!=?"

    .line 1198
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 1199
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    aput-object p3, v1, v2

    .line 1202
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1203
    const-string v3, "status"

    const/16 v4, 0xbe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1204
    const-string v3, "control"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1205
    const-string v3, "uri"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    const-string v3, "hint"

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    const-string v3, "entity"

    invoke-virtual {v2, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    iget-object v3, p0, Lcom/duoku/platform/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/duoku/platform/download/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public updateDownload(Landroid/content/Context;JLjava/lang/String;)I
    .registers 11

    .prologue
    .line 1358
    .line 1361
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 1362
    aput-wide p2, v0, v1

    .line 1364
    invoke-static {v0}, Lcom/duoku/platform/download/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v1

    .line 1365
    invoke-static {v0}, Lcom/duoku/platform/download/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v0

    .line 1367
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1368
    const-string v3, "entity"

    invoke-virtual {v2, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    iget-object v3, p0, Lcom/duoku/platform/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/duoku/platform/download/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v1, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public updateDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 11

    .prologue
    const/4 v5, 0x0

    .line 1213
    const-string v0, "uri=?"

    .line 1215
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 1216
    aput-object p1, v1, v5

    .line 1218
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1219
    const-string v3, "status"

    const/16 v4, 0xbe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1220
    const-string v3, "control"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1221
    const-string v3, "uri"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    const-string v3, "hint"

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    const-string v3, "entity"

    invoke-virtual {v2, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    iget-object v3, p0, Lcom/duoku/platform/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/duoku/platform/download/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
