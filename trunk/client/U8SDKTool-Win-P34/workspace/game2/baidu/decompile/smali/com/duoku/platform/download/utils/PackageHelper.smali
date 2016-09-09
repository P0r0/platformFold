.class public Lcom/duoku/platform/download/utils/PackageHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/download/utils/PackageHelper$a;,
        Lcom/duoku/platform/download/utils/PackageHelper$PackageCallback;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$duoku$platform$download$DownloadConfiguration$DownloadItemOutput$DownloadReason:[I = null

.field private static synthetic $SWITCH_TABLE$com$duoku$platform$download$DownloadConfiguration$DownloadItemOutput$DownloadStatus:[I = null

.field public static DEBUG:Z = false

.field public static DEBUG_TAG:Ljava/lang/String; = null

.field private static DEFAUL_TDOWNLOAD_DEST:Ljava/lang/String; = null

.field static final FILE_DELETED:I = 0xa

.field static final PARSE_FILE_ERROR:I = 0xb

.field static final REMOVE_OLD:I = 0xc

.field private static callback:Lcom/duoku/platform/download/DownloadHelper$DownloadProgressCallback;

.field static handler:Landroid/os/Handler;

.field private static final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/duoku/platform/download/utils/PackageHelper$PackageCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static mergingSet:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/duoku/platform/download/PackageMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$duoku$platform$download$DownloadConfiguration$DownloadItemOutput$DownloadReason()[I
    .registers 3

    .prologue
    .line 64
    sget-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->$SWITCH_TABLE$com$duoku$platform$download$DownloadConfiguration$DownloadItemOutput$DownloadReason:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->values()[Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->CANCEL_UPDATE:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_16} :catch_b1

    :goto_16
    :try_start_16
    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ERROR_DEVICE_NOT_FOUND:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_1f} :catch_ae

    :goto_1f
    :try_start_1f
    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ERROR_FILE_ALREADY_EXISTS:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_28} :catch_ab

    :goto_28
    :try_start_28
    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ERROR_FILE_ERROR:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_31} :catch_a9

    :goto_31
    :try_start_31
    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ERROR_HTTP_CANNOT_RUSUME:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_3a} :catch_a7

    :goto_3a
    :try_start_3a
    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ERROR_HTTP_ERROR:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_43} :catch_a5

    :goto_43
    :try_start_43
    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ERROR_HTTP_UNKNOWN:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_4c} :catch_a3

    :goto_4c
    :try_start_4c
    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ERROR_INSUFFICIENT_SPACE:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_55} :catch_a1

    :goto_55
    :try_start_55
    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ERROR_UNKNOWN:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_5f} :catch_9f

    :goto_5f
    :try_start_5f
    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->PAUSED_BY_APP:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_69} :catch_9d

    :goto_69
    :try_start_69
    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->PAUSED_QUEUED_FOR_WIFI:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_73} :catch_9b

    :goto_73
    :try_start_73
    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->PAUSED_UNKNOWN:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_7d} :catch_99

    :goto_7d
    :try_start_7d
    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->PAUSED_WAITING_FOR_NETWORK:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_87
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7d .. :try_end_87} :catch_97

    :goto_87
    :try_start_87
    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->PAUSED_WAITING_TO_RETRY:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_91
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87 .. :try_end_91} :catch_95

    :goto_91
    sput-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->$SWITCH_TABLE$com$duoku$platform$download$DownloadConfiguration$DownloadItemOutput$DownloadReason:[I

    goto/16 :goto_4

    :catch_95
    move-exception v1

    goto :goto_91

    :catch_97
    move-exception v1

    goto :goto_87

    :catch_99
    move-exception v1

    goto :goto_7d

    :catch_9b
    move-exception v1

    goto :goto_73

    :catch_9d
    move-exception v1

    goto :goto_69

    :catch_9f
    move-exception v1

    goto :goto_5f

    :catch_a1
    move-exception v1

    goto :goto_55

    :catch_a3
    move-exception v1

    goto :goto_4c

    :catch_a5
    move-exception v1

    goto :goto_43

    :catch_a7
    move-exception v1

    goto :goto_3a

    :catch_a9
    move-exception v1

    goto :goto_31

    :catch_ab
    move-exception v1

    goto/16 :goto_28

    :catch_ae
    move-exception v1

    goto/16 :goto_1f

    :catch_b1
    move-exception v1

    goto/16 :goto_16
.end method

.method static synthetic $SWITCH_TABLE$com$duoku$platform$download$DownloadConfiguration$DownloadItemOutput$DownloadStatus()[I
    .registers 3

    .prologue
    .line 64
    sget-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->$SWITCH_TABLE$com$duoku$platform$download$DownloadConfiguration$DownloadItemOutput$DownloadStatus:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->values()[Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_FAILED:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_44

    :goto_15
    :try_start_15
    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_PAUSED:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_42

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_PENDING:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_40

    :goto_27
    :try_start_27
    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_RUNNING:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_3e

    :goto_30
    :try_start_30
    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_SUCCESSFUL:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_3c

    :goto_39
    sput-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->$SWITCH_TABLE$com$duoku$platform$download$DownloadConfiguration$DownloadItemOutput$DownloadStatus:[I

    goto :goto_4

    :catch_3c
    move-exception v1

    goto :goto_39

    :catch_3e
    move-exception v1

    goto :goto_30

    :catch_40
    move-exception v1

    goto :goto_27

    :catch_42
    move-exception v1

    goto :goto_1e

    :catch_44
    move-exception v1

    goto :goto_15
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG:Z

    .line 68
    const-class v0, Lcom/duoku/platform/download/utils/PackageHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->DEFAUL_TDOWNLOAD_DEST:Ljava/lang/String;

    .line 260
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->mergingSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 912
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2988
    new-instance v0, Lcom/duoku/platform/download/utils/PackageHelper$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/duoku/platform/download/utils/PackageHelper$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->handler:Landroid/os/Handler;

    .line 3006
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/util/concurrent/CopyOnWriteArraySet;
    .registers 1

    .prologue
    .line 260
    sget-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->mergingSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method static synthetic access$1(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V
    .registers 1

    .prologue
    .line 658
    invoke-static {p0}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyForRemoveDownload(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V

    return-void
.end method

.method static synthetic access$3(JLcom/duoku/platform/download/mode/DownloadItemInput;)I
    .registers 5

    .prologue
    .line 1124
    invoke-static {p0, p1, p2}, Lcom/duoku/platform/download/utils/PackageHelper;->updateDownloadForRestart(JLcom/duoku/platform/download/mode/DownloadItemInput;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4()Ljava/lang/String;
    .registers 1

    .prologue
    .line 69
    sget-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->DEFAUL_TDOWNLOAD_DEST:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/duoku/platform/download/mode/DownloadItemInput;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 1967
    invoke-static {p0}, Lcom/duoku/platform/download/utils/PackageHelper;->formSaveName(Lcom/duoku/platform/download/mode/DownloadItemInput;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(J)I
    .registers 4

    .prologue
    .line 1448
    invoke-static {p0, p1}, Lcom/duoku/platform/download/utils/PackageHelper;->checkDownload(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$7(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1498
    invoke-static {p0}, Lcom/duoku/platform/download/utils/PackageHelper;->doPause(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lcom/duoku/platform/download/mode/DownloadItemInput;Lcom/duoku/platform/download/listener/DownloadCallback;IZ)J
    .registers 6

    .prologue
    .line 1800
    invoke-static {p0, p1, p2, p3}, Lcom/duoku/platform/download/utils/PackageHelper;->doDownload(Lcom/duoku/platform/download/mode/DownloadItemInput;Lcom/duoku/platform/download/listener/DownloadCallback;IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static declared-synchronized addDownloadProgressListener()V
    .registers 2

    .prologue
    .line 749
    const-class v1, Lcom/duoku/platform/download/utils/PackageHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->callback:Lcom/duoku/platform/download/DownloadHelper$DownloadProgressCallback;

    if-nez v0, :cond_15

    .line 751
    new-instance v0, Lcom/duoku/platform/download/utils/PackageHelper$a;

    invoke-direct {v0}, Lcom/duoku/platform/download/utils/PackageHelper$a;-><init>()V

    sput-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->callback:Lcom/duoku/platform/download/DownloadHelper$DownloadProgressCallback;

    .line 752
    sget-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->callback:Lcom/duoku/platform/download/DownloadHelper$DownloadProgressCallback;

    invoke-static {v0}, Lcom/duoku/platform/download/DownloadHelper;->addDownloadListener(Lcom/duoku/platform/download/DownloadHelper$DownloadProgressCallback;)V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_1b

    .line 758
    :goto_13
    monitor-exit v1

    return-void

    .line 756
    :cond_15
    :try_start_15
    sget-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->callback:Lcom/duoku/platform/download/DownloadHelper$DownloadProgressCallback;

    invoke-static {v0}, Lcom/duoku/platform/download/DownloadHelper;->addDownloadListener(Lcom/duoku/platform/download/DownloadHelper$DownloadProgressCallback;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1b

    goto :goto_13

    .line 749
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static checkAndNotifyForDownloadedGame(ZLcom/duoku/platform/download/PackageMode;Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V
    .registers 6

    .prologue
    .line 426
    invoke-static {}, Lcom/duoku/platform/download/utils/BackAppListener;->getInstance()Lcom/duoku/platform/download/utils/BackAppListener;

    move-result-object v0

    .line 427
    if-nez p0, :cond_13

    .line 429
    invoke-static {p1}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V

    .line 430
    iget v1, p1, Lcom/duoku/platform/download/PackageMode;->status:I

    const/16 v2, 0x40

    if-ne v1, v2, :cond_12

    .line 432
    invoke-virtual {v0, p2, p1}, Lcom/duoku/platform/download/utils/BackAppListener;->notifyAndSubmitForNormal(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;Lcom/duoku/platform/download/PackageMode;)V

    .line 445
    :cond_12
    :goto_12
    return-void

    .line 437
    :cond_13
    invoke-static {p1}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V

    .line 438
    iget v0, p1, Lcom/duoku/platform/download/PackageMode;->status:I

    const/16 v1, 0x200

    if-ne v0, v1, :cond_12

    .line 440
    invoke-static {}, Lcom/duoku/platform/download/utils/BackAppListener;->getInstance()Lcom/duoku/platform/download/utils/BackAppListener;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/duoku/platform/download/utils/BackAppListener;->notifyAndSubmitForDiffUpdate(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;Lcom/duoku/platform/download/PackageMode;)V

    goto :goto_12
.end method

.method private static checkCheckingStatus2(Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/DownloadAppInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/QueryInput;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/duoku/platform/download/mode/QueryInput;",
            "Lcom/duoku/platform/download/PackageMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2314
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/AppManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/AppManager;

    move-result-object v0

    .line 2315
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/AppManager;->getCheckStatus()Ljava/util/Map;

    move-result-object v3

    .line 2316
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 2317
    const/4 v0, 0x0

    move v2, v0

    :goto_12
    if-lt v2, v4, :cond_15

    .line 2337
    return-void

    .line 2319
    :cond_15
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/QueryInput;

    .line 2320
    invoke-static {p0, v0}, Lcom/duoku/platform/download/utils/PackageHelper;->findDownloadGame(Ljava/util/List;Lcom/duoku/platform/download/mode/QueryInput;)Lcom/duoku/platform/download/mode/DownloadAppInfo;

    move-result-object v1

    .line 2321
    if-eqz v1, :cond_4f

    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getStatus()Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    move-result-object v1

    sget-object v5, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_SUCCESSFUL:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    if-ne v1, v5, :cond_4f

    .line 2323
    iget-object v1, v0, Lcom/duoku/platform/download/mode/QueryInput;->gameId:Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2324
    if-eqz v1, :cond_4f

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/high16 v6, 0x40000

    if-eq v5, v6, :cond_43

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/high16 v6, 0x80000

    if-ne v5, v6, :cond_4f

    .line 2326
    :cond_43
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/PackageMode;

    .line 2327
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 2317
    :cond_4f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_12
.end method

.method private static checkDiffUpdatableStatus(Lcom/duoku/platform/download/mode/QueryInput;Ljava/util/List;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/duoku/platform/download/mode/QueryInput;",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/UpdatableAppInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/duoku/platform/download/mode/QueryInput;",
            "Lcom/duoku/platform/download/PackageMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v3, 0x2000

    .line 2778
    if-nez p1, :cond_5

    .line 2805
    :cond_4
    return-void

    .line 2782
    :cond_5
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/PackageMode;

    .line 2783
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/download/mode/UpdatableAppInfo;

    .line 2785
    iget-object v2, p0, Lcom/duoku/platform/download/mode/QueryInput;->gameId:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/duoku/platform/download/mode/QueryInput;->gameId:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2787
    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->isDiffUpdate()Z

    move-result v5

    .line 2788
    iget v2, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    if-eq v2, v3, :cond_3d

    iget v2, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    if-eqz v2, :cond_3d

    iget v2, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    const/16 v6, 0x1000

    if-ne v2, v6, :cond_43

    .line 2790
    :cond_3d
    if-eqz v5, :cond_70

    const/16 v2, 0x4000

    :goto_41
    iput v2, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 2792
    :cond_43
    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/duoku/platform/download/PackageMode;->localVersion:Ljava/lang/String;

    .line 2793
    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getVersionInt()I

    move-result v2

    iput v2, v0, Lcom/duoku/platform/download/PackageMode;->localVersionCode:I

    .line 2795
    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getNewVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/duoku/platform/download/PackageMode;->version:Ljava/lang/String;

    .line 2796
    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getNewVersionInt()I

    move-result v2

    iput v2, v0, Lcom/duoku/platform/download/PackageMode;->versionCode:I

    .line 2798
    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getNewSize()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/duoku/platform/download/PackageMode;->totalApkSize:J

    .line 2799
    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getPatchSize()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/duoku/platform/download/PackageMode;->pacthSize:J

    .line 2800
    if-eqz v5, :cond_72

    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getPatchUrl()Ljava/lang/String;

    move-result-object v1

    :goto_6d
    iput-object v1, v0, Lcom/duoku/platform/download/PackageMode;->downloadUrl:Ljava/lang/String;

    goto :goto_f

    :cond_70
    move v2, v3

    .line 2790
    goto :goto_41

    .line 2800
    :cond_72
    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_6d
.end method

.method private static checkDiffUpdatableStatus(Lcom/duoku/platform/download/mode/QueryInput;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/duoku/platform/download/mode/QueryInput;",
            "Ljava/util/Map",
            "<",
            "Lcom/duoku/platform/download/mode/QueryInput;",
            "Lcom/duoku/platform/download/PackageMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v1, 0x2000

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 2671
    iget-object v0, p0, Lcom/duoku/platform/download/mode/QueryInput;->packageName:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 2701
    :cond_8
    :goto_8
    return-void

    .line 2675
    :cond_9
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    iget-object v2, p0, Lcom/duoku/platform/download/mode/QueryInput;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/duoku/platform/d/a;->c(Ljava/lang/String;)Lcom/duoku/platform/download/mode/UpdatableAppInfo;

    move-result-object v2

    .line 2676
    if-nez v2, :cond_27

    .line 2678
    sget-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    const-string v1, "checkDiffUpdatableStatus updatableGame is null for %s "

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/duoku/platform/download/mode/QueryInput;->packageName:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 2681
    :cond_27
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/PackageMode;

    .line 2682
    sget-object v3, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    const-string v4, "checkDiffUpdatableStatus for %s "

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    iget-object v3, p0, Lcom/duoku/platform/download/mode/QueryInput;->gameId:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/duoku/platform/download/mode/QueryInput;->gameId:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2685
    invoke-virtual {v2}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->isDiffUpdate()Z

    move-result v3

    .line 2686
    iget v4, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    if-eq v4, v1, :cond_62

    iget v4, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    if-eqz v4, :cond_62

    iget v4, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_68

    .line 2688
    :cond_62
    if-eqz v3, :cond_66

    const/16 v1, 0x4000

    :cond_66
    iput v1, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 2690
    :cond_68
    invoke-virtual {v2}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duoku/platform/download/PackageMode;->localVersion:Ljava/lang/String;

    .line 2691
    invoke-virtual {v2}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getVersionInt()I

    move-result v1

    iput v1, v0, Lcom/duoku/platform/download/PackageMode;->localVersionCode:I

    .line 2693
    invoke-virtual {v2}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getNewVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duoku/platform/download/PackageMode;->version:Ljava/lang/String;

    .line 2694
    invoke-virtual {v2}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getNewVersionInt()I

    move-result v1

    iput v1, v0, Lcom/duoku/platform/download/PackageMode;->versionCode:I

    .line 2696
    invoke-virtual {v2}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getNewSize()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/duoku/platform/download/PackageMode;->totalApkSize:J

    .line 2697
    invoke-virtual {v2}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getPatchSize()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/duoku/platform/download/PackageMode;->pacthSize:J

    .line 2698
    iput-boolean v3, v0, Lcom/duoku/platform/download/PackageMode;->isDiffDownload:Z

    .line 2699
    if-eqz v3, :cond_98

    invoke-virtual {v2}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getPatchUrl()Ljava/lang/String;

    move-result-object v1

    :goto_94
    iput-object v1, v0, Lcom/duoku/platform/download/PackageMode;->downloadUrl:Ljava/lang/String;

    goto/16 :goto_8

    :cond_98
    invoke-virtual {v2}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_94
.end method

.method private static checkDiffUpdatableStatus(Ljava/util/List;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/QueryInput;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/duoku/platform/download/mode/QueryInput;",
            "Lcom/duoku/platform/download/PackageMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2764
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/duoku/platform/d/a;->f()Ljava/util/List;

    move-result-object v1

    .line 2765
    if-nez v1, :cond_b

    .line 2774
    :cond_a
    return-void

    .line 2769
    :cond_b
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/QueryInput;

    .line 2771
    invoke-static {v0, v1, p1}, Lcom/duoku/platform/download/utils/PackageHelper;->checkDiffUpdatableStatus(Lcom/duoku/platform/download/mode/QueryInput;Ljava/util/List;Ljava/util/Map;)V

    goto :goto_f
.end method

.method private static checkDownload(J)I
    .registers 6

    .prologue
    .line 1451
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1452
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1455
    const/16 v0, 0x3eb

    .line 1476
    :goto_e
    return v0

    .line 1459
    :cond_f
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1460
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/duoku/sdk/download"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1461
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 1463
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1465
    :cond_3e
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->DEFAUL_TDOWNLOAD_DEST:Ljava/lang/String;

    .line 1467
    invoke-static {}, Lcom/duoku/platform/download/utils/DeviceUtil;->getUsableSpace()J

    move-result-wide v0

    .line 1468
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-lez v2, :cond_58

    cmp-long v0, v0, p0

    if-gtz v0, :cond_58

    .line 1471
    invoke-static {}, Lcom/duoku/platform/download/utils/PackageHelper;->showToastOfLackOfSpace()V

    .line 1472
    const/16 v0, 0x3ea

    goto :goto_e

    .line 1476
    :cond_58
    const/4 v0, -0x1

    goto :goto_e
.end method

.method private static checkDownload(Lcom/duoku/platform/download/mode/DownloadItemInput;)I
    .registers 7

    .prologue
    .line 2000
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 2001
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2004
    const/16 v0, 0x3eb

    .line 2046
    :goto_e
    return v0

    .line 2008
    :cond_f
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 2009
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/duoku/sdk/download"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2010
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 2012
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 2014
    :cond_3e
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->DEFAUL_TDOWNLOAD_DEST:Ljava/lang/String;

    .line 2018
    invoke-static {}, Lcom/duoku/platform/download/utils/DeviceUtil;->getUsableSpace()J

    move-result-wide v0

    .line 2019
    invoke-virtual {p0}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getSize()J

    move-result-wide v2

    .line 2020
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_5c

    cmp-long v0, v0, v2

    if-gtz v0, :cond_5c

    .line 2023
    invoke-static {}, Lcom/duoku/platform/download/utils/PackageHelper;->showToastOfLackOfSpace()V

    .line 2025
    const/16 v0, 0x3ea

    goto :goto_e

    .line 2030
    :cond_5c
    invoke-virtual {p0}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 2032
    const/16 v0, 0x7d0

    goto :goto_e

    .line 2034
    :cond_69
    invoke-virtual {p0}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 2036
    const/16 v0, 0x7d2

    goto :goto_e

    .line 2038
    :cond_76
    invoke-virtual {p0}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 2040
    const/16 v0, 0x7d1

    goto :goto_e

    .line 2046
    :cond_83
    const/4 v0, -0x1

    goto :goto_e
.end method

.method private static checkDownloadStatus(Ljava/util/List;Lcom/duoku/platform/download/mode/QueryInput;Lcom/duoku/platform/download/PackageMode;)Lcom/duoku/platform/download/mode/DownloadAppInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/DownloadAppInfo;",
            ">;",
            "Lcom/duoku/platform/download/mode/QueryInput;",
            "Lcom/duoku/platform/download/PackageMode;",
            ")",
            "Lcom/duoku/platform/download/mode/DownloadAppInfo;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2449
    .line 2450
    invoke-static {p1}, Lcom/duoku/platform/download/utils/PackageHelper;->determineCheckThrougthGameId(Lcom/duoku/platform/download/mode/QueryInput;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2452
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_29

    :cond_11
    move-object v2, v1

    .line 2461
    :goto_12
    if-nez v2, :cond_24

    invoke-static {p1}, Lcom/duoku/platform/download/utils/PackageHelper;->determineCheckThrougthDownloadUrl(Lcom/duoku/platform/download/mode/QueryInput;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2463
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_41

    :cond_24
    move-object v0, v2

    .line 2472
    :goto_25
    if-nez v0, :cond_58

    move-object v0, v1

    .line 2634
    :cond_28
    :goto_28
    return-object v0

    .line 2452
    :cond_29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 2454
    iget-object v3, p1, Lcom/duoku/platform/download/mode/QueryInput;->gameId:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p1, Lcom/duoku/platform/download/mode/QueryInput;->gameId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object v2, v0

    .line 2457
    goto :goto_12

    .line 2463
    :cond_41
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 2465
    iget-object v4, p1, Lcom/duoku/platform/download/mode/QueryInput;->downloadUrl:Ljava/lang/String;

    if-eqz v4, :cond_1e

    iget-object v4, p1, Lcom/duoku/platform/download/mode/QueryInput;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    goto :goto_25

    .line 2477
    :cond_58
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getStatus()Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    move-result-object v1

    .line 2479
    if-eqz v1, :cond_28

    .line 2483
    invoke-static {}, Lcom/duoku/platform/download/utils/PackageHelper;->$SWITCH_TABLE$com$duoku$platform$download$DownloadConfiguration$DownloadItemOutput$DownloadStatus()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_21a

    goto :goto_28

    .line 2486
    :pswitch_6c
    const/4 v1, 0x4

    iput v1, p2, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 2487
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getCurrtentSize()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/duoku/platform/download/PackageMode;->currentSize:J

    .line 2488
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getTotalSize()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/duoku/platform/download/PackageMode;->totalSize:J

    .line 2490
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->isDiffUpdate()Z

    move-result v1

    iput-boolean v1, p2, Lcom/duoku/platform/download/PackageMode;->isDiffDownload:Z

    .line 2491
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/duoku/platform/download/PackageMode;->downloadId:J

    .line 2492
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getSaveDest()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a9

    .line 2494
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getSaveDest()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 2496
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getSaveDest()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2497
    if-eqz v1, :cond_a9

    .line 2498
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/duoku/platform/download/PackageMode;->downloadDest:Ljava/lang/String;

    .line 2505
    :cond_a9
    :goto_a9
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/duoku/platform/download/PackageMode;->title:Ljava/lang/String;

    goto/16 :goto_28

    .line 2502
    :cond_b1
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getSaveDest()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/duoku/platform/download/PackageMode;->downloadDest:Ljava/lang/String;

    goto :goto_a9

    .line 2508
    :pswitch_b8
    const/16 v1, 0x8

    iput v1, p2, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 2509
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getCurrtentSize()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/duoku/platform/download/PackageMode;->currentSize:J

    .line 2510
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getTotalSize()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/duoku/platform/download/PackageMode;->totalSize:J

    .line 2511
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->isDiffUpdate()Z

    move-result v1

    iput-boolean v1, p2, Lcom/duoku/platform/download/PackageMode;->isDiffDownload:Z

    .line 2512
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/duoku/platform/download/PackageMode;->downloadId:J

    .line 2513
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getSaveDest()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f6

    .line 2515
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getSaveDest()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fe

    .line 2517
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getSaveDest()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2518
    if-eqz v1, :cond_f6

    .line 2519
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/duoku/platform/download/PackageMode;->downloadDest:Ljava/lang/String;

    .line 2526
    :cond_f6
    :goto_f6
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/duoku/platform/download/PackageMode;->title:Ljava/lang/String;

    goto/16 :goto_28

    .line 2523
    :cond_fe
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getSaveDest()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/duoku/platform/download/PackageMode;->downloadDest:Ljava/lang/String;

    goto :goto_f6

    .line 2529
    :pswitch_105
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getReason()Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    move-result-object v1

    .line 2530
    invoke-static {v1}, Lcom/duoku/platform/download/utils/PackageHelper;->getFinalPauseReason(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;)I

    move-result v1

    .line 2531
    const/16 v2, 0x10

    iput v2, p2, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 2532
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p2, Lcom/duoku/platform/download/PackageMode;->reason:Ljava/lang/Integer;

    .line 2533
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getCurrtentSize()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/duoku/platform/download/PackageMode;->currentSize:J

    .line 2534
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getTotalSize()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/duoku/platform/download/PackageMode;->totalSize:J

    .line 2535
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->isDiffUpdate()Z

    move-result v1

    iput-boolean v1, p2, Lcom/duoku/platform/download/PackageMode;->isDiffDownload:Z

    .line 2536
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/duoku/platform/download/PackageMode;->downloadId:J

    .line 2537
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getSaveDest()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_151

    .line 2539
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getSaveDest()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_159

    .line 2541
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getSaveDest()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2542
    if-eqz v1, :cond_151

    .line 2543
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/duoku/platform/download/PackageMode;->downloadDest:Ljava/lang/String;

    .line 2550
    :cond_151
    :goto_151
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/duoku/platform/download/PackageMode;->title:Ljava/lang/String;

    goto/16 :goto_28

    .line 2547
    :cond_159
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getSaveDest()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/duoku/platform/download/PackageMode;->downloadDest:Ljava/lang/String;

    goto :goto_151

    .line 2553
    :pswitch_160
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getReason()Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    move-result-object v1

    .line 2554
    invoke-static {v1}, Lcom/duoku/platform/download/utils/PackageHelper;->getFinalPauseReason(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;)I

    move-result v1

    .line 2555
    const/16 v2, 0x20

    iput v2, p2, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 2556
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p2, Lcom/duoku/platform/download/PackageMode;->reason:Ljava/lang/Integer;

    .line 2557
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getCurrtentSize()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/duoku/platform/download/PackageMode;->currentSize:J

    .line 2558
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getTotalSize()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/duoku/platform/download/PackageMode;->totalSize:J

    .line 2559
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->isDiffUpdate()Z

    move-result v1

    iput-boolean v1, p2, Lcom/duoku/platform/download/PackageMode;->isDiffDownload:Z

    .line 2560
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/duoku/platform/download/PackageMode;->downloadId:J

    .line 2561
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getSaveDest()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1ac

    .line 2563
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getSaveDest()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b4

    .line 2565
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getSaveDest()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2566
    if-eqz v1, :cond_1ac

    .line 2567
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/duoku/platform/download/PackageMode;->downloadDest:Ljava/lang/String;

    .line 2574
    :cond_1ac
    :goto_1ac
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/duoku/platform/download/PackageMode;->title:Ljava/lang/String;

    goto/16 :goto_28

    .line 2571
    :cond_1b4
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getSaveDest()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/duoku/platform/download/PackageMode;->downloadDest:Ljava/lang/String;

    goto :goto_1ac

    .line 2588
    :pswitch_1bb
    iget-object v1, v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->installeStatus:Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    sget-object v2, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->UNINSTALLED:Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    if-ne v1, v2, :cond_207

    .line 2590
    const/16 v1, 0x40

    iput v1, p2, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 2597
    :cond_1c5
    :goto_1c5
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->isDiffUpdate()Z

    move-result v1

    iput-boolean v1, p2, Lcom/duoku/platform/download/PackageMode;->isDiffDownload:Z

    .line 2598
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getCurrtentSize()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/duoku/platform/download/PackageMode;->currentSize:J

    .line 2599
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getTotalSize()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/duoku/platform/download/PackageMode;->totalSize:J

    .line 2601
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getSaveDest()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f9

    .line 2603
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getSaveDest()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_212

    .line 2605
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getSaveDest()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2606
    if-eqz v1, :cond_1f9

    .line 2607
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/duoku/platform/download/PackageMode;->downloadDest:Ljava/lang/String;

    .line 2626
    :cond_1f9
    :goto_1f9
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/duoku/platform/download/PackageMode;->downloadId:J

    .line 2627
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/duoku/platform/download/PackageMode;->title:Ljava/lang/String;

    goto/16 :goto_28

    .line 2592
    :cond_207
    iget-object v1, v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->installeStatus:Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    sget-object v2, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->INSTALLED:Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    if-ne v1, v2, :cond_1c5

    .line 2594
    const/16 v1, 0x1000

    iput v1, p2, Lcom/duoku/platform/download/PackageMode;->status:I

    goto :goto_1c5

    .line 2611
    :cond_212
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getSaveDest()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/duoku/platform/download/PackageMode;->downloadDest:Ljava/lang/String;

    goto :goto_1f9

    .line 2483
    nop

    :pswitch_data_21a
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_b8
        :pswitch_105
        :pswitch_1bb
        :pswitch_160
    .end packed-switch
.end method

.method private static checkDownloadStatus(Lcom/duoku/platform/download/mode/QueryInput;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/duoku/platform/download/mode/QueryInput;",
            "Ljava/util/Map",
            "<",
            "Lcom/duoku/platform/download/mode/QueryInput;",
            "Lcom/duoku/platform/download/PackageMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2221
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/AppManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/AppManager;

    move-result-object v1

    .line 2222
    const/4 v0, 0x0

    .line 2223
    iget-object v2, p0, Lcom/duoku/platform/download/mode/QueryInput;->gameId:Ljava/lang/String;

    if-eqz v2, :cond_19

    .line 2225
    iget-object v0, p0, Lcom/duoku/platform/download/mode/QueryInput;->gameId:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/duoku/platform/download/utils/AppManager;->getDownloadGameForId(Ljava/lang/String;Z)Lcom/duoku/platform/download/mode/DownloadAppInfo;

    move-result-object v0

    move-object v1, v0

    .line 2237
    :goto_16
    if-nez v1, :cond_25

    .line 2254
    :goto_18
    return-void

    .line 2227
    :cond_19
    iget-object v2, p0, Lcom/duoku/platform/download/mode/QueryInput;->downloadUrl:Ljava/lang/String;

    if-eqz v2, :cond_42

    .line 2229
    iget-object v0, p0, Lcom/duoku/platform/download/mode/QueryInput;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/duoku/platform/download/utils/AppManager;->getDownloadGameForUrl(Ljava/lang/String;Z)Lcom/duoku/platform/download/mode/DownloadAppInfo;

    move-result-object v0

    move-object v1, v0

    goto :goto_16

    .line 2241
    :cond_25
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/PackageMode;

    .line 2247
    new-array v2, v4, [Lcom/duoku/platform/download/mode/DownloadAppInfo;

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2248
    invoke-static {v1, p0, v0}, Lcom/duoku/platform/download/utils/PackageHelper;->checkDownloadStatus(Ljava/util/List;Lcom/duoku/platform/download/mode/QueryInput;Lcom/duoku/platform/download/PackageMode;)Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 2253
    new-array v0, v4, [Lcom/duoku/platform/download/mode/QueryInput;

    aput-object p0, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/duoku/platform/download/utils/PackageHelper;->checkCheckingStatus2(Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    goto :goto_18

    :cond_42
    move-object v1, v0

    goto :goto_16
.end method

.method private static checkDownloadStatus(Ljava/util/List;Ljava/util/HashMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/QueryInput;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/duoku/platform/download/mode/QueryInput;",
            "Lcom/duoku/platform/download/PackageMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2265
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/download/utils/AppManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/AppManager;

    move-result-object v2

    .line 2266
    invoke-virtual {v2}, Lcom/duoku/platform/download/utils/AppManager;->getAndCheckDownloadGames()Ljava/util/List;

    move-result-object v2

    .line 2267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2268
    sget-boolean v3, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v3, :cond_2e

    .line 2270
    sget-object v3, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[checkDownloadStatus#getAndCheckDownloadGames] consume"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v0, v4, v0

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    :cond_2e
    if-nez v2, :cond_31

    .line 2279
    :goto_30
    return-void

    .line 2277
    :cond_31
    invoke-static {v2, p0, p1}, Lcom/duoku/platform/download/utils/PackageHelper;->checkDownloadStatus(Ljava/util/List;Ljava/util/List;Ljava/util/HashMap;)V

    goto :goto_30
.end method

.method private static checkDownloadStatus(Ljava/util/List;Ljava/util/List;Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/DownloadAppInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/QueryInput;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/duoku/platform/download/mode/QueryInput;",
            "Lcom/duoku/platform/download/PackageMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2291
    if-nez p0, :cond_3

    .line 2310
    :cond_2
    return-void

    .line 2295
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/QueryInput;

    .line 2297
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/download/PackageMode;

    .line 2302
    invoke-static {p0, v0, v1}, Lcom/duoku/platform/download/utils/PackageHelper;->checkDownloadStatus(Ljava/util/List;Lcom/duoku/platform/download/mode/QueryInput;Lcom/duoku/platform/download/PackageMode;)Lcom/duoku/platform/download/mode/DownloadAppInfo;

    goto :goto_7
.end method

.method private static checkInstallStatus(Ljava/util/List;Lcom/duoku/platform/download/mode/QueryInput;)Lcom/duoku/platform/download/mode/InstalledAppInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/InstalledAppInfo;",
            ">;",
            "Lcom/duoku/platform/download/mode/QueryInput;",
            ")",
            "Lcom/duoku/platform/download/mode/InstalledAppInfo;"
        }
    .end annotation

    .prologue
    .line 2809
    invoke-static {p1}, Lcom/duoku/platform/download/utils/PackageHelper;->determineCheckThrougthPackage(Lcom/duoku/platform/download/mode/QueryInput;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2811
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2820
    :cond_10
    const/4 v0, 0x0

    :goto_11
    return-object v0

    .line 2811
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/InstalledAppInfo;

    .line 2814
    iget-object v2, p1, Lcom/duoku/platform/download/mode/QueryInput;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p1, Lcom/duoku/platform/download/mode/QueryInput;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_11
.end method

.method private static checkInstallStatus(Lcom/duoku/platform/download/mode/QueryInput;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/duoku/platform/download/mode/QueryInput;",
            "Ljava/util/Map",
            "<",
            "Lcom/duoku/platform/download/mode/QueryInput;",
            "Lcom/duoku/platform/download/PackageMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v5, 0x1000

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2640
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    .line 2641
    iget-object v3, p0, Lcom/duoku/platform/download/mode/QueryInput;->packageName:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/duoku/platform/d/a;->h(Ljava/lang/String;)Lcom/duoku/platform/download/mode/InstalledAppInfo;

    move-result-object v0

    .line 2644
    if-nez v0, :cond_11

    .line 2667
    :goto_10
    return-void

    .line 2648
    :cond_11
    new-array v3, v1, [Lcom/duoku/platform/download/mode/InstalledAppInfo;

    aput-object v0, v3, v2

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 2651
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/PackageMode;

    .line 2654
    iget v4, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    if-nez v4, :cond_37

    .line 2656
    invoke-static {v3, p0}, Lcom/duoku/platform/download/utils/PackageHelper;->checkInstallStatus(Ljava/util/List;Lcom/duoku/platform/download/mode/QueryInput;)Lcom/duoku/platform/download/mode/InstalledAppInfo;

    move-result-object v3

    .line 2657
    if-eqz v3, :cond_3b

    .line 2658
    :goto_29
    if-eqz v1, :cond_37

    iget v1, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    if-eq v1, v5, :cond_37

    .line 2660
    iput v5, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 2661
    invoke-virtual {v3}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duoku/platform/download/PackageMode;->title:Ljava/lang/String;

    .line 2665
    :cond_37
    invoke-static {p0, p1}, Lcom/duoku/platform/download/utils/PackageHelper;->checkDiffUpdatableStatus(Lcom/duoku/platform/download/mode/QueryInput;Ljava/util/Map;)V

    goto :goto_10

    :cond_3b
    move v1, v2

    .line 2657
    goto :goto_29
.end method

.method private static checkInstallStatus(Ljava/util/List;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/QueryInput;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/duoku/platform/download/mode/QueryInput;",
            "Lcom/duoku/platform/download/PackageMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v6, 0x1000

    const/4 v3, 0x1

    .line 2711
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    .line 2712
    invoke-interface {v0}, Lcom/duoku/platform/d/a;->e()Ljava/util/List;

    move-result-object v0

    .line 2714
    if-nez v0, :cond_a3

    .line 2716
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2719
    :try_start_12
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2720
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 2721
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_26} :catch_75

    move-result v0

    if-nez v0, :cond_5a

    move-object v2, v1

    .line 2735
    :goto_2a
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2e
    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 2751
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2754
    invoke-static {p0, p1}, Lcom/duoku/platform/download/utils/PackageHelper;->checkDiffUpdatableStatus(Ljava/util/List;Ljava/util/Map;)V

    .line 2755
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2756
    sget-boolean v4, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v4, :cond_59

    .line 2758
    sget-object v4, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[checkDiffUpdatableStatus] consume"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v0, v2, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    :cond_59
    return-void

    .line 2721
    :cond_5a
    :try_start_5a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 2723
    new-instance v4, Lcom/duoku/platform/download/mode/InstalledAppInfo;

    invoke-direct {v4}, Lcom/duoku/platform/download/mode/InstalledAppInfo;-><init>()V

    .line 2724
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setPackageName(Ljava/lang/String;)V

    .line 2725
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setName(Ljava/lang/String;)V

    .line 2726
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_74} :catch_75

    goto :goto_23

    .line 2729
    :catch_75
    move-exception v0

    .line 2731
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v1

    goto :goto_2a

    .line 2735
    :cond_7b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/QueryInput;

    .line 2737
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/download/PackageMode;

    .line 2739
    iget v5, v1, Lcom/duoku/platform/download/PackageMode;->status:I

    if-nez v5, :cond_2e

    .line 2743
    invoke-static {v2, v0}, Lcom/duoku/platform/download/utils/PackageHelper;->checkInstallStatus(Ljava/util/List;Lcom/duoku/platform/download/mode/QueryInput;)Lcom/duoku/platform/download/mode/InstalledAppInfo;

    move-result-object v5

    .line 2744
    if-eqz v5, :cond_a1

    move v0, v3

    .line 2745
    :goto_92
    if-eqz v0, :cond_2e

    iget v0, v1, Lcom/duoku/platform/download/PackageMode;->status:I

    if-eq v0, v6, :cond_2e

    .line 2747
    iput v6, v1, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 2748
    invoke-virtual {v5}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/duoku/platform/download/PackageMode;->title:Ljava/lang/String;

    goto :goto_2e

    .line 2744
    :cond_a1
    const/4 v0, 0x0

    goto :goto_92

    :cond_a3
    move-object v2, v0

    goto :goto_2a
.end method

.method private static checkInstallingStatus(Ljava/util/List;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/QueryInput;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/duoku/platform/download/mode/QueryInput;",
            "Lcom/duoku/platform/download/PackageMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2838
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2842
    return-void

    .line 2838
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/QueryInput;

    .line 2840
    invoke-static {p1, v0}, Lcom/duoku/platform/download/utils/PackageHelper;->checkInstallingStatus(Ljava/util/Map;Lcom/duoku/platform/download/mode/QueryInput;)V

    goto :goto_4
.end method

.method private static checkInstallingStatus(Ljava/util/Map;Lcom/duoku/platform/download/mode/QueryInput;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/duoku/platform/download/mode/QueryInput;",
            "Lcom/duoku/platform/download/PackageMode;",
            ">;",
            "Lcom/duoku/platform/download/mode/QueryInput;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2850
    invoke-static {}, Lcom/duoku/platform/download/utils/AppSilentInstaller;->getInstnce()Lcom/duoku/platform/download/utils/AppSilentInstaller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/AppSilentInstaller;->getInstallDataSet()Ljava/util/Set;

    move-result-object v3

    .line 2851
    if-nez v3, :cond_b

    .line 2945
    :cond_a
    :goto_a
    return-void

    .line 2856
    :cond_b
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/PackageMode;

    .line 2857
    if-eqz v0, :cond_a

    iget v1, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    if-nez v1, :cond_a

    .line 2862
    const/4 v2, 0x0

    .line 2863
    invoke-static {p1}, Lcom/duoku/platform/download/utils/PackageHelper;->determineCheckThrougthGameId(Lcom/duoku/platform/download/mode/QueryInput;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 2865
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_56

    .line 2874
    :cond_28
    :goto_28
    if-nez v2, :cond_38

    iget-object v1, p1, Lcom/duoku/platform/download/mode/QueryInput;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_38

    .line 2876
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6e

    :cond_38
    move-object v1, v2

    .line 2886
    :goto_39
    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    .line 2889
    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/InstallPacket;->getStatus()Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    move-result-object v2

    .line 2890
    sget-object v3, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->INSTALLING:Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    if-ne v2, v3, :cond_85

    .line 2892
    const/16 v2, 0x400

    iput v2, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 2893
    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/InstallPacket;->getFilepath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/duoku/platform/download/PackageMode;->downloadDest:Ljava/lang/String;

    .line 2894
    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/InstallPacket;->getDownloadId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/duoku/platform/download/PackageMode;->downloadId:J

    goto :goto_a

    .line 2865
    :cond_56
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/download/mode/InstallPacket;

    .line 2867
    iget-object v5, p1, Lcom/duoku/platform/download/mode/QueryInput;->gameId:Ljava/lang/String;

    if-eqz v5, :cond_22

    iget-object v5, p1, Lcom/duoku/platform/download/mode/QueryInput;->gameId:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/InstallPacket;->getGameId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    move-object v2, v1

    .line 2870
    goto :goto_28

    .line 2876
    :cond_6e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/download/mode/InstallPacket;

    .line 2878
    iget-object v4, p1, Lcom/duoku/platform/download/mode/QueryInput;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_32

    iget-object v4, p1, Lcom/duoku/platform/download/mode/QueryInput;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/InstallPacket;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    goto :goto_39

    .line 2907
    :cond_85
    sget-object v3, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->INSTALL_ERROR:Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    if-ne v2, v3, :cond_a9

    .line 2909
    const/16 v2, 0x800

    iput v2, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 2910
    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/InstallPacket;->getErrorReason()I

    move-result v2

    invoke-static {v2}, Lcom/duoku/platform/download/utils/PackageHelper;->getFinalInstallErrorReason(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/duoku/platform/download/PackageMode;->reason:Ljava/lang/Integer;

    .line 2912
    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/InstallPacket;->getFilepath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/duoku/platform/download/PackageMode;->downloadDest:Ljava/lang/String;

    .line 2913
    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/InstallPacket;->getDownloadId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/duoku/platform/download/PackageMode;->downloadId:J

    goto/16 :goto_a

    .line 2927
    :cond_a9
    sget-object v3, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->INSTALLED:Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    if-ne v2, v3, :cond_a

    .line 2929
    const/16 v2, 0x1000

    iput v2, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 2930
    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/InstallPacket;->getFilepath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/duoku/platform/download/PackageMode;->downloadDest:Ljava/lang/String;

    .line 2931
    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/InstallPacket;->getDownloadId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/duoku/platform/download/PackageMode;->downloadId:J

    goto/16 :goto_a
.end method

.method private static checkMergeStatus(Ljava/util/List;Lcom/duoku/platform/download/mode/QueryInput;Ljava/util/HashMap;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/MergeMode;",
            ">;",
            "Lcom/duoku/platform/download/mode/QueryInput;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/duoku/platform/download/mode/QueryInput;",
            "Lcom/duoku/platform/download/PackageMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v7, 0x200

    const/16 v6, 0x80

    const/16 v5, 0x100

    .line 191
    const/4 v1, 0x0

    .line 192
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_34

    .line 205
    :goto_11
    if-eqz v1, :cond_33

    .line 207
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/PackageMode;

    .line 208
    iget v2, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 209
    iget v3, v1, Lcom/duoku/platform/download/mode/MergeMode;->status:I

    if-ne v3, v6, :cond_5d

    .line 212
    invoke-static {p1}, Lcom/duoku/platform/download/utils/PackageHelper;->queryFromSet(Lcom/duoku/platform/download/mode/QueryInput;)Lcom/duoku/platform/download/PackageMode;

    move-result-object v2

    .line 213
    if-nez v2, :cond_5a

    .line 215
    iput v5, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 216
    iget v2, v1, Lcom/duoku/platform/download/mode/MergeMode;->failedReason:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/duoku/platform/download/PackageMode;->reason:Ljava/lang/Integer;

    .line 217
    iget v1, v1, Lcom/duoku/platform/download/mode/MergeMode;->failedCount:I

    iput v1, v0, Lcom/duoku/platform/download/PackageMode;->mergeFailedCount:I

    .line 242
    :cond_33
    :goto_33
    return-void

    .line 192
    :cond_34
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/MergeMode;

    .line 194
    iget-object v3, p1, Lcom/duoku/platform/download/mode/QueryInput;->gameId:Ljava/lang/String;

    if-eqz v3, :cond_4a

    iget-object v3, p1, Lcom/duoku/platform/download/mode/QueryInput;->gameId:Ljava/lang/String;

    iget-object v4, v0, Lcom/duoku/platform/download/mode/MergeMode;->gameId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    move-object v1, v0

    .line 197
    goto :goto_11

    .line 199
    :cond_4a
    iget-object v3, p1, Lcom/duoku/platform/download/mode/QueryInput;->downloadUrl:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p1, Lcom/duoku/platform/download/mode/QueryInput;->downloadUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/duoku/platform/download/mode/MergeMode;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object v1, v0

    .line 202
    goto :goto_11

    .line 221
    :cond_5a
    iput v6, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    goto :goto_33

    .line 225
    :cond_5d
    iget v3, v1, Lcom/duoku/platform/download/mode/MergeMode;->status:I

    if-ne v3, v5, :cond_70

    .line 227
    iput v5, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 228
    iget v2, v1, Lcom/duoku/platform/download/mode/MergeMode;->failedReason:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/duoku/platform/download/PackageMode;->reason:Ljava/lang/Integer;

    .line 229
    iget v1, v1, Lcom/duoku/platform/download/mode/MergeMode;->failedCount:I

    iput v1, v0, Lcom/duoku/platform/download/PackageMode;->mergeFailedCount:I

    goto :goto_33

    .line 231
    :cond_70
    iget v1, v1, Lcom/duoku/platform/download/mode/MergeMode;->status:I

    if-ne v1, v7, :cond_33

    .line 233
    const/16 v1, 0x1000

    if-eq v2, v1, :cond_86

    const/16 v1, 0x2000

    if-eq v2, v1, :cond_86

    const/16 v1, 0x4000

    if-eq v2, v1, :cond_86

    if-eqz v2, :cond_86

    .line 234
    const/16 v1, 0x40

    if-ne v2, v1, :cond_33

    .line 236
    :cond_86
    iput v7, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    goto :goto_33
.end method

.method private static checkMergeStatus(Ljava/util/List;Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/QueryInput;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/duoku/platform/download/mode/QueryInput;",
            "Lcom/duoku/platform/download/PackageMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/duoku/platform/d/a;->j()Ljava/util/List;

    move-result-object v1

    .line 176
    if-nez v1, :cond_b

    .line 186
    :cond_a
    return-void

    .line 181
    :cond_b
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/QueryInput;

    .line 183
    invoke-static {v1, v0, p1}, Lcom/duoku/platform/download/utils/PackageHelper;->checkMergeStatus(Ljava/util/List;Lcom/duoku/platform/download/mode/QueryInput;Ljava/util/HashMap;)V

    goto :goto_f
.end method

.method private static copyDiffApk(Lcom/duoku/platform/download/mode/DownloadItemInput;JLjava/lang/String;)V
    .registers 21

    .prologue
    .line 1028
    new-instance v0, Lcom/duoku/platform/download/PackageMode;

    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getVersionInt()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    .line 1029
    const/4 v10, 0x0

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-wide/16 v12, 0x0

    const-wide/16 v14, -0x1

    const/16 v16, 0x1

    move-wide/from16 v6, p1

    move-object/from16 v8, p3

    .line 1028
    invoke-direct/range {v0 .. v16}, Lcom/duoku/platform/download/PackageMode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;JJZ)V

    .line 1034
    return-void
.end method

.method private static determineCheckThrougthDownloadUrl(Lcom/duoku/platform/download/mode/QueryInput;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2372
    iget-object v2, p0, Lcom/duoku/platform/download/mode/QueryInput;->downloadUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 2380
    :goto_a
    return v0

    .line 2376
    :cond_b
    sget-boolean v2, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG:Z

    if-eqz v2, :cond_2e

    .line 2378
    sget-object v2, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    const-string v3, "QueryInput\'s download url info is not complete:package:%s,version:%s,versionCode:%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/duoku/platform/download/mode/QueryInput;->packageName:Ljava/lang/String;

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/duoku/platform/download/mode/QueryInput;->version:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x2

    iget v5, p0, Lcom/duoku/platform/download/mode/QueryInput;->versionCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    move v0, v1

    .line 2380
    goto :goto_a
.end method

.method private static determineCheckThrougthGameId(Lcom/duoku/platform/download/mode/QueryInput;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2949
    iget-object v2, p0, Lcom/duoku/platform/download/mode/QueryInput;->gameId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 2957
    :goto_a
    return v0

    .line 2953
    :cond_b
    sget-boolean v2, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG:Z

    if-eqz v2, :cond_2e

    .line 2955
    sget-object v2, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    const-string v3, "QueryInput\'s game id info is not complete:package:%s,version:%s,versionCode:%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/duoku/platform/download/mode/QueryInput;->packageName:Ljava/lang/String;

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/duoku/platform/download/mode/QueryInput;->version:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x2

    iget v5, p0, Lcom/duoku/platform/download/mode/QueryInput;->versionCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    move v0, v1

    .line 2957
    goto :goto_a
.end method

.method private static determineCheckThrougthPackage(Lcom/duoku/platform/download/mode/QueryInput;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2825
    iget-object v2, p0, Lcom/duoku/platform/download/mode/QueryInput;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/duoku/platform/download/mode/QueryInput;->version:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    iget v2, p0, Lcom/duoku/platform/download/mode/QueryInput;->versionCode:I

    if-lez v2, :cond_18

    :cond_16
    move v0, v1

    .line 2833
    :cond_17
    :goto_17
    return v0

    .line 2829
    :cond_18
    sget-boolean v2, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG:Z

    if-eqz v2, :cond_17

    .line 2831
    sget-object v2, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    const-string v3, "QueryInput\'s package info is not complete:package:%s,version:%s,versionCode:%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/duoku/platform/download/mode/QueryInput;->packageName:Ljava/lang/String;

    aput-object v5, v4, v0

    iget-object v5, p0, Lcom/duoku/platform/download/mode/QueryInput;->version:Ljava/lang/String;

    aput-object v5, v4, v1

    const/4 v1, 0x2

    iget v5, p0, Lcom/duoku/platform/download/mode/QueryInput;->versionCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method private static doDownload(Lcom/duoku/platform/download/mode/DownloadItemInput;Lcom/duoku/platform/download/listener/DownloadCallback;IZ)J
    .registers 27

    .prologue
    .line 1802
    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getDownloadUrl()Ljava/lang/String;

    move-result-object v5

    .line 1803
    invoke-static/range {p0 .. p0}, Lcom/duoku/platform/download/utils/PackageHelper;->formSaveName(Lcom/duoku/platform/download/mode/DownloadItemInput;)Ljava/lang/String;

    move-result-object v8

    .line 1804
    invoke-static/range {p0 .. p0}, Lcom/duoku/platform/download/utils/PackageHelper;->formDownloadAppData(Lcom/duoku/platform/download/mode/DownloadItemInput;)Ljava/lang/String;

    move-result-object v9

    .line 1806
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1807
    invoke-static/range {p0 .. p0}, Lcom/duoku/platform/download/utils/PackageHelper;->checkDownload(Lcom/duoku/platform/download/mode/DownloadItemInput;)I

    move-result v20

    .line 1808
    const/4 v6, -0x1

    move/from16 v0, v20

    if-ne v0, v6, :cond_fa

    const/4 v10, 0x1

    .line 1809
    :goto_1a
    const-wide/16 v18, -0x1

    .line 1811
    if-eqz v10, :cond_146

    .line 1814
    sget-object v6, Lcom/duoku/platform/util/Constants;->APK_MIME_TYPE:Ljava/lang/String;

    sget-object v7, Lcom/duoku/platform/download/utils/PackageHelper;->DEFAUL_TDOWNLOAD_DEST:Ljava/lang/String;

    invoke-static/range {v4 .. v9}, Lcom/duoku/platform/download/DownloadUtil;->checkDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 1816
    if-nez v6, :cond_2a

    if-eqz p3, :cond_111

    .line 1818
    :cond_2a
    invoke-static/range {p0 .. p0}, Lcom/duoku/platform/download/utils/PackageHelper;->formDownloadAppInfo(Lcom/duoku/platform/download/mode/DownloadItemInput;)Lcom/duoku/platform/download/mode/DownloadAppInfo;

    move-result-object v21

    .line 1819
    invoke-static {v4}, Lcom/duoku/platform/download/utils/AppManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/AppManager;

    move-result-object v22

    .line 1821
    invoke-static {v5}, Lcom/duoku/platform/download/utils/PackageHelper;->removeOldNotificationForDownload(Ljava/lang/String;)V

    .line 1822
    sget-boolean v6, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v6, :cond_40

    .line 1824
    const-string v6, "MyTest"

    const-string v7, "notifyBeforeDownload"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    :cond_40
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-static {v4, v0, v1, v2}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyBeforeDownload(Landroid/content/Context;Lcom/duoku/platform/download/mode/DownloadItemInput;J)V

    .line 1831
    :try_start_47
    sget-object v12, Lcom/duoku/platform/util/Constants;->APK_MIME_TYPE:Ljava/lang/String;

    sget-object v13, Lcom/duoku/platform/download/utils/PackageHelper;->DEFAUL_TDOWNLOAD_DEST:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getDisplayName()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    move-object v10, v4

    move-object v11, v5

    move-object v14, v8

    move-object/from16 v16, v9

    invoke-static/range {v10 .. v17}, Lcom/duoku/platform/download/DownloadUtil;->download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_59} :catch_fd

    move-result-wide v10

    move/from16 v7, v20

    .line 1838
    :goto_5c
    const-wide/16 v12, 0x0

    cmp-long v6, v10, v12

    if-lez v6, :cond_10b

    const/4 v9, 0x1

    .line 1839
    :goto_63
    if-eqz v9, :cond_7d

    .line 1842
    invoke-static {}, Lcom/duoku/platform/download/utils/Notifier;->updateNotificationForFailedDownload()V

    .line 1844
    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v11}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setDownloadId(J)V

    .line 1845
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/utils/AppManager;->addDownloadRecord(Lcom/duoku/platform/download/mode/DownloadAppInfo;)J

    move-result-wide v12

    .line 1847
    const-wide/16 v14, 0x0

    cmp-long v6, v12, v14

    if-lez v6, :cond_10e

    const/4 v6, 0x1

    :goto_7c
    move v9, v6

    .line 1849
    :cond_7d
    if-nez v9, :cond_153

    .line 1851
    const/16 v6, 0x7d5

    .line 1852
    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-lez v7, :cond_91

    .line 1854
    const/4 v7, 0x1

    const/4 v12, 0x1

    new-array v12, v12, [J

    const/4 v13, 0x0

    aput-wide v10, v12, v13

    invoke-static {v4, v7, v12}, Lcom/duoku/platform/download/DownloadUtil;->removeDownload(Landroid/content/Context;Z[J)I

    .line 1856
    :cond_91
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v7

    const/4 v12, 0x1

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getGameId()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-interface {v7, v12, v13}, Lcom/duoku/platform/d/a;->a(Z[Ljava/lang/String;)V

    .line 1857
    move-object/from16 v0, p0

    invoke-static {v4, v0, v10, v11}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyInsertDownloadFailed(Landroid/content/Context;Lcom/duoku/platform/download/mode/DownloadItemInput;J)V

    .line 1859
    :goto_a8
    sget-boolean v7, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v7, :cond_14e

    .line 1860
    sget-object v7, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "[download]checkDownload valid true:downloadId"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    move/from16 v20, v9

    .line 1877
    :goto_c3
    const/4 v6, 0x0

    .line 1879
    if-eqz v20, :cond_df

    .line 1881
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget-object v9, Lcom/duoku/platform/download/utils/PackageHelper;->DEFAUL_TDOWNLOAD_DEST:Ljava/lang/String;

    invoke-static {v6, v5, v9, v8}, Lcom/duoku/platform/download/DownloadUtil;->composeDestination(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 1882
    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/download/mode/DownloadItemInput;->isDiffDownload()Z

    move-result v8

    if-eqz v8, :cond_df

    .line 1883
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-static {v0, v10, v11, v8}, Lcom/duoku/platform/download/utils/PackageHelper;->copyDiffApk(Lcom/duoku/platform/download/mode/DownloadItemInput;JLjava/lang/String;)V

    .line 1886
    :cond_df
    if-eqz p1, :cond_f2

    .line 1888
    if-eqz v20, :cond_136

    .line 1890
    const/4 v9, 0x1

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v7, p1

    move-object v8, v5

    invoke-interface/range {v7 .. v13}, Lcom/duoku/platform/download/listener/DownloadCallback;->onDownloadResult(Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/Integer;)V

    .line 1899
    :cond_f2
    :goto_f2
    if-eqz v20, :cond_f9

    .line 1901
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyForDownload(Lcom/duoku/platform/download/mode/DownloadItemInput;Landroid/content/Context;)V

    .line 1903
    :cond_f9
    return-wide v10

    .line 1808
    :cond_fa
    const/4 v10, 0x0

    goto/16 :goto_1a

    .line 1833
    :catch_fd
    move-exception v6

    .line 1835
    sget-object v7, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    const-string v9, "Download Error:"

    invoke-static {v7, v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1836
    const/16 v7, 0x7d5

    move-wide/from16 v10, v18

    goto/16 :goto_5c

    .line 1838
    :cond_10b
    const/4 v9, 0x0

    goto/16 :goto_63

    .line 1847
    :cond_10e
    const/4 v6, 0x0

    goto/16 :goto_7c

    .line 1864
    :cond_111
    sget-boolean v6, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v6, :cond_12b

    .line 1865
    sget-object v6, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "[download]checkDownload valid false"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    :cond_12b
    if-nez p3, :cond_146

    .line 1872
    const/4 v7, 0x0

    .line 1873
    const/16 v6, 0x7d5

    move-wide/from16 v10, v18

    move/from16 v20, v7

    move v7, v6

    goto :goto_c3

    .line 1895
    :cond_136
    const/4 v15, 0x0

    const-wide/16 v16, -0x1

    const/16 v18, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v13, p1

    move-object v14, v5

    invoke-interface/range {v13 .. v19}, Lcom/duoku/platform/download/listener/DownloadCallback;->onDownloadResult(Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/Integer;)V

    goto :goto_f2

    :cond_146
    move/from16 v7, v20

    move/from16 v20, v10

    move-wide/from16 v10, v18

    goto/16 :goto_c3

    :cond_14e
    move v7, v6

    move/from16 v20, v9

    goto/16 :goto_c3

    :cond_153
    move v6, v7

    goto/16 :goto_a8
.end method

.method private static doPause(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 1500
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 1502
    invoke-static {v0, p0}, Lcom/duoku/platform/download/DownloadUtil;->getDownloadInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    move-result-object v1

    .line 1504
    if-eqz v1, :cond_54

    .line 1508
    const/4 v2, 0x1

    :try_start_d
    new-array v2, v2, [J

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getDownloadId()J

    move-result-wide v4

    aput-wide v4, v2, v3

    invoke-static {v0, v2}, Lcom/duoku/platform/download/DownloadUtil;->pauseDownload(Landroid/content/Context;[J)V

    .line 1510
    invoke-static {v1}, Lcom/duoku/platform/download/utils/PackageHelper;->formPackageMode(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)Lcom/duoku/platform/download/PackageMode;

    move-result-object v0

    .line 1511
    if-nez v0, :cond_20

    .line 1537
    :cond_1f
    :goto_1f
    return-void

    .line 1515
    :cond_20
    const/16 v1, 0x10

    iput v1, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 1516
    const/16 v1, 0x323

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/duoku/platform/download/PackageMode;->reason:Ljava/lang/Integer;

    .line 1517
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V

    .line 1518
    invoke-static {}, Lcom/duoku/platform/download/utils/Notifier;->updateNotificationForDownload()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_32} :catch_4b

    .line 1524
    :goto_32
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 1526
    sget-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pauseDownloadGames success for:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 1520
    :catch_4b
    move-exception v0

    .line 1522
    sget-object v1, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    const-string v2, "pauseDownloadGames error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32

    .line 1532
    :cond_54
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 1534
    sget-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "removeDownloadGames faile,cannot find app for:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method public static doResume(Ljava/lang/String;Lcom/duoku/platform/download/listener/DownloadCallback;)V
    .registers 8

    .prologue
    .line 1264
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 1265
    invoke-static {v0, p0}, Lcom/duoku/platform/download/DownloadUtil;->getDownloadInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    move-result-object v1

    .line 1266
    if-eqz v1, :cond_60

    .line 1270
    :try_start_c
    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getTotalBytes()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/duoku/platform/download/utils/PackageHelper;->checkDownload(J)I

    move-result v2

    .line 1271
    const/4 v3, -0x1

    if-eq v2, v3, :cond_22

    .line 1273
    if-eqz p1, :cond_21

    .line 1275
    const/4 v0, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, p0, v0, v1}, Lcom/duoku/platform/download/listener/DownloadCallback;->onResumeDownloadResult(Ljava/lang/String;ZLjava/lang/Integer;)V

    .line 1308
    :cond_21
    :goto_21
    return-void

    .line 1280
    :cond_22
    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getDownloadId()J

    move-result-wide v4

    aput-wide v4, v2, v3

    invoke-static {v0, v2}, Lcom/duoku/platform/download/DownloadUtil;->resumeDownload(Landroid/content/Context;[J)V

    .line 1282
    invoke-static {v1}, Lcom/duoku/platform/download/utils/PackageHelper;->formPackageMode(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)Lcom/duoku/platform/download/PackageMode;

    move-result-object v0

    .line 1283
    if-eqz v0, :cond_21

    .line 1287
    const/4 v1, 0x4

    iput v1, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 1288
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/duoku/platform/download/PackageMode;->reason:Ljava/lang/Integer;

    .line 1289
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V

    .line 1290
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_21

    .line 1292
    sget-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resumeDownload success  for:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_56} :catch_57

    goto :goto_21

    .line 1295
    :catch_57
    move-exception v0

    .line 1297
    sget-object v1, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    const-string v2, "pauseDownloadGames error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 1303
    :cond_60
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_21

    .line 1305
    sget-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resumeDownload failed cannot find game for:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public static download(Lcom/duoku/platform/download/mode/DownloadItemInput;Lcom/duoku/platform/download/listener/DownloadCallback;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1047
    invoke-static {p0, p1, v0, v0}, Lcom/duoku/platform/download/utils/PackageHelper;->download(Lcom/duoku/platform/download/mode/DownloadItemInput;Lcom/duoku/platform/download/listener/DownloadCallback;IZ)V

    .line 1048
    return-void
.end method

.method private static download(Lcom/duoku/platform/download/mode/DownloadItemInput;Lcom/duoku/platform/download/listener/DownloadCallback;IZ)V
    .registers 10

    .prologue
    .line 1786
    if-eqz p0, :cond_8

    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1798
    :cond_8
    :goto_8
    return-void

    .line 1790
    :cond_9
    new-instance v0, Lcom/duoku/platform/download/utils/PackageHelper$15;

    const-string v1, "DownloadThread"

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/duoku/platform/download/utils/PackageHelper$15;-><init>(Ljava/lang/String;Lcom/duoku/platform/download/mode/DownloadItemInput;Lcom/duoku/platform/download/listener/DownloadCallback;IZ)V

    .line 1797
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/PackageHelper$15;->start()V

    goto :goto_8
.end method

.method private static findDownloadGame(Ljava/util/List;Lcom/duoku/platform/download/mode/QueryInput;)Lcom/duoku/platform/download/mode/DownloadAppInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/DownloadAppInfo;",
            ">;",
            "Lcom/duoku/platform/download/mode/QueryInput;",
            ")",
            "Lcom/duoku/platform/download/mode/DownloadAppInfo;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2341
    invoke-static {p1}, Lcom/duoku/platform/download/utils/PackageHelper;->determineCheckThrougthGameId(Lcom/duoku/platform/download/mode/QueryInput;)Z

    move-result v0

    .line 2343
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 2344
    if-eqz v0, :cond_e

    move v2, v1

    .line 2346
    :goto_c
    if-lt v2, v3, :cond_18

    .line 2355
    :cond_e
    invoke-static {p1}, Lcom/duoku/platform/download/utils/PackageHelper;->determineCheckThrougthDownloadUrl(Lcom/duoku/platform/download/mode/QueryInput;)Z

    move-result v0

    .line 2356
    if-eqz v0, :cond_16

    .line 2358
    :goto_14
    if-lt v1, v3, :cond_2e

    .line 2367
    :cond_16
    const/4 v0, 0x0

    :cond_17
    return-object v0

    .line 2348
    :cond_18
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 2349
    iget-object v4, p1, Lcom/duoku/platform/download/mode/QueryInput;->gameId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 2346
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    .line 2360
    :cond_2e
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 2361
    iget-object v2, p1, Lcom/duoku/platform/download/mode/QueryInput;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 2358
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14
.end method

.method private static formDefaultPackageModeFromQueryInput(Lcom/duoku/platform/download/mode/QueryInput;)Lcom/duoku/platform/download/PackageMode;
    .registers 20

    .prologue
    .line 2968
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 2969
    const/4 v10, 0x0

    .line 2970
    const/4 v11, 0x0

    .line 2971
    const/4 v12, 0x0

    .line 2972
    const/4 v13, 0x0

    .line 2973
    const-wide/16 v14, 0x0

    .line 2974
    const-wide/16 v16, -0x1

    .line 2978
    const/16 v18, 0x0

    .line 2980
    new-instance v2, Lcom/duoku/platform/download/PackageMode;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/duoku/platform/download/mode/QueryInput;->gameId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/duoku/platform/download/mode/QueryInput;->downloadUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/duoku/platform/download/mode/QueryInput;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/duoku/platform/download/mode/QueryInput;->version:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/duoku/platform/download/mode/QueryInput;->versionCode:I

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct/range {v2 .. v18}, Lcom/duoku/platform/download/PackageMode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;JJZ)V

    .line 2982
    return-object v2
.end method

.method public static formDownloadAppData(Lcom/duoku/platform/download/mode/DownloadItemInput;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 1975
    invoke-virtual {p0}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getVersionInt()I

    move-result v2

    invoke-virtual {p0}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getGameId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/duoku/platform/download/mode/DownloadItemInput;->isDiffDownload()Z

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/duoku/platform/download/utils/PackageHelper;->formDownloadAppData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formDownloadAppData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .registers 8

    .prologue
    .line 1981
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1982
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1983
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1984
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1985
    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1986
    if-eqz p4, :cond_34

    const/4 v0, 0x1

    :goto_2c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1987
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1986
    :cond_34
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method private static formDownloadAppInfo(Lcom/duoku/platform/download/mode/DownloadItemInput;)Lcom/duoku/platform/download/mode/DownloadAppInfo;
    .registers 24

    .prologue
    .line 1018
    const-wide/16 v14, -0x1

    .line 1019
    new-instance v1, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getVersionInt()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getPublishDate()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 1020
    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/download/mode/DownloadItemInput;->isNeedLogin()Z

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/PinyinUtil;->getPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getSign()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getSize()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getDownloadUrl()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getIconUrl()Ljava/lang/String;

    move-result-object v17

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getGameId()Ljava/lang/String;

    move-result-object v20

    .line 1021
    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/download/mode/DownloadItemInput;->isDiffDownload()Z

    move-result v21

    const/16 v22, 0x0

    .line 1019
    invoke-direct/range {v1 .. v22}, Lcom/duoku/platform/download/mode/DownloadAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;)V

    .line 1022
    return-object v1
.end method

.method public static formDownloadOut(Lcom/duoku/platform/download/PackageMode;)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;
    .registers 7

    .prologue
    .line 119
    new-instance v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    invoke-direct {v0}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;-><init>()V

    .line 120
    iget-wide v2, p0, Lcom/duoku/platform/download/PackageMode;->currentSize:J

    invoke-virtual {v0, v2, v3}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->setCurrentBytes(J)V

    .line 121
    iget-object v1, p0, Lcom/duoku/platform/download/PackageMode;->downloadDest:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->setDest(Ljava/lang/String;)V

    .line 122
    iget-wide v2, p0, Lcom/duoku/platform/download/PackageMode;->downloadId:J

    invoke-virtual {v0, v2, v3}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->setDownloadId(J)V

    .line 123
    iget-object v1, p0, Lcom/duoku/platform/download/PackageMode;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/download/PackageMode;->version:Ljava/lang/String;

    iget v3, p0, Lcom/duoku/platform/download/PackageMode;->versionCode:I

    iget-object v4, p0, Lcom/duoku/platform/download/PackageMode;->gameId:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/duoku/platform/download/PackageMode;->isDiffDownload:Z

    invoke-static {v1, v2, v3, v4, v5}, Lcom/duoku/platform/download/utils/PackageHelper;->formDownloadAppData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->setAppData(Ljava/lang/String;)V

    .line 126
    sget-object v1, Lcom/duoku/platform/util/Constants;->APK_MIME_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->setMimeType(Ljava/lang/String;)V

    .line 127
    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_SUCCESSFUL:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->setStatus(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;)V

    .line 128
    iget-object v1, p0, Lcom/duoku/platform/download/PackageMode;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->setTitle(Ljava/lang/String;)V

    .line 129
    iget-wide v2, p0, Lcom/duoku/platform/download/PackageMode;->totalSize:J

    invoke-virtual {v0, v2, v3}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->setTotalBytes(J)V

    .line 130
    iget-object v1, p0, Lcom/duoku/platform/download/PackageMode;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->setUrl(Ljava/lang/String;)V

    .line 131
    return-object v0
.end method

.method public static formPackageMode(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)Lcom/duoku/platform/download/PackageMode;
    .registers 20

    .prologue
    .line 2387
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getAppData()Ljava/lang/String;

    move-result-object v2

    .line 2388
    invoke-static {v2}, Lcom/duoku/platform/download/utils/PackageHelper;->getAppData(Ljava/lang/String;)Lcom/duoku/platform/download/PackageMark;

    move-result-object v2

    .line 2390
    iget-object v5, v2, Lcom/duoku/platform/download/PackageMark;->packageName:Ljava/lang/String;

    .line 2391
    iget-object v3, v2, Lcom/duoku/platform/download/PackageMark;->gameId:Ljava/lang/String;

    .line 2392
    iget-object v6, v2, Lcom/duoku/platform/download/PackageMark;->version:Ljava/lang/String;

    .line 2393
    iget v7, v2, Lcom/duoku/platform/download/PackageMark;->versionCode:I

    .line 2394
    iget-boolean v0, v2, Lcom/duoku/platform/download/PackageMark;->isDiffUpdate:Z

    move/from16 v18, v0

    .line 2396
    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 2397
    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getDest()Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_52

    move-result-object v10

    .line 2400
    :try_start_1c
    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getDest()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_27} :catch_4d

    move-result-object v10

    .line 2407
    :goto_28
    :try_start_28
    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getTitle()Ljava/lang/String;

    move-result-object v11

    .line 2409
    const/4 v12, 0x0

    .line 2410
    const/4 v13, 0x0

    .line 2412
    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getReason()Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    move-result-object v2

    sget-object v8, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->CANCEL_UPDATE:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    if-ne v2, v8, :cond_3b

    .line 2414
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 2417
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getDownloadId()J

    move-result-wide v8

    .line 2418
    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getCurrentBytes()J

    move-result-wide v14

    .line 2419
    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getTotalBytes()J

    move-result-wide v16

    .line 2424
    new-instance v2, Lcom/duoku/platform/download/PackageMode;

    invoke-direct/range {v2 .. v18}, Lcom/duoku/platform/download/PackageMode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;JJZ)V

    .line 2435
    :goto_4c
    return-object v2

    .line 2402
    :catch_4d
    move-exception v2

    .line 2404
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_51} :catch_52

    goto :goto_28

    .line 2432
    :catch_52
    move-exception v2

    .line 2434
    sget-object v3, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    const-string v4, "formPackageMode error"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2435
    const/4 v2, 0x0

    goto :goto_4c
.end method

.method private static formSaveName(Lcom/duoku/platform/download/mode/DownloadItemInput;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 1969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppData(Ljava/lang/String;)Lcom/duoku/platform/download/PackageMark;
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 706
    :try_start_2
    invoke-static {p0}, Lcom/duoku/platform/download/utils/PackageHelper;->splitDownloadAppData(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 707
    new-instance v0, Lcom/duoku/platform/download/PackageMark;

    invoke-direct {v0}, Lcom/duoku/platform/download/PackageMark;-><init>()V

    .line 708
    const/4 v4, 0x0

    aget-object v4, v3, v4

    iput-object v4, v0, Lcom/duoku/platform/download/PackageMark;->packageName:Ljava/lang/String;

    .line 709
    const/4 v4, 0x1

    aget-object v4, v3, v4

    iput-object v4, v0, Lcom/duoku/platform/download/PackageMark;->version:Ljava/lang/String;

    .line 710
    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/duoku/platform/download/PackageMark;->versionCode:I

    .line 711
    const/4 v4, 0x3

    aget-object v4, v3, v4

    iput-object v4, v0, Lcom/duoku/platform/download/PackageMark;->gameId:Ljava/lang/String;

    .line 712
    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_2f

    :goto_2c
    iput-boolean v1, v0, Lcom/duoku/platform/download/PackageMark;->isDiffUpdate:Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2e} :catch_31

    .line 718
    :goto_2e
    return-object v0

    :cond_2f
    move v1, v2

    .line 712
    goto :goto_2c

    .line 715
    :catch_31
    move-exception v0

    .line 717
    sget-object v1, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    const-string v2, "Parse Mark data Error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 718
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method public static getAppVersionName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 732
    :try_start_0
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 733
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 734
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 735
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 741
    :goto_13
    return-object v0

    .line 737
    :catch_14
    move-exception v0

    .line 741
    const-string v0, ""

    goto :goto_13
.end method

.method public static getFinalFailReason(I)I
    .registers 4

    .prologue
    const/16 v1, 0x3e9

    const/16 v0, 0x3e8

    .line 862
    const/16 v2, 0x190

    if-gt v2, p0, :cond_c

    const/16 v2, 0x1e8

    if-lt p0, v2, :cond_14

    .line 864
    :cond_c
    const/16 v2, 0x1f4

    if-gt v2, p0, :cond_15

    const/16 v2, 0x258

    if-ge p0, v2, :cond_15

    .line 896
    :cond_14
    :goto_14
    :pswitch_14
    return v0

    .line 868
    :cond_15
    packed-switch p0, :pswitch_data_28

    .line 896
    :pswitch_18
    const/16 v0, 0x3ec

    goto :goto_14

    :pswitch_1b
    move v0, v1

    .line 871
    goto :goto_14

    :pswitch_1d
    move v0, v1

    .line 875
    goto :goto_14

    .line 884
    :pswitch_1f
    const/16 v0, 0x3ea

    goto :goto_14

    .line 887
    :pswitch_22
    const/16 v0, 0x3eb

    goto :goto_14

    :pswitch_25
    move v0, v1

    .line 893
    goto :goto_14

    .line 868
    nop

    :pswitch_data_28
    .packed-switch 0x1e8
        :pswitch_25
        :pswitch_14
        :pswitch_18
        :pswitch_18
        :pswitch_1b
        :pswitch_1d
        :pswitch_1d
        :pswitch_14
        :pswitch_18
        :pswitch_14
        :pswitch_1f
        :pswitch_22
    .end packed-switch
.end method

.method public static getFinalFailReason(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;)I
    .registers 4

    .prologue
    const/16 v0, 0x3ec

    .line 835
    if-nez p0, :cond_5

    .line 856
    :goto_4
    :pswitch_4
    return v0

    .line 840
    :cond_5
    invoke-static {}, Lcom/duoku/platform/download/utils/PackageHelper;->$SWITCH_TABLE$com$duoku$platform$download$DownloadConfiguration$DownloadItemOutput$DownloadReason()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_20

    goto :goto_4

    .line 845
    :pswitch_13
    const/16 v0, 0x3e8

    goto :goto_4

    .line 848
    :pswitch_16
    const/16 v0, 0x3e9

    goto :goto_4

    .line 850
    :pswitch_19
    const/16 v0, 0x3ea

    goto :goto_4

    .line 852
    :pswitch_1c
    const/16 v0, 0x3eb

    goto :goto_4

    .line 840
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_16
        :pswitch_4
    .end packed-switch
.end method

.method public static getFinalInstallErrorReason(I)I
    .registers 1

    .prologue
    .line 773
    sparse-switch p0, :sswitch_data_6

    .line 783
    const/16 p0, -0x3e7

    :sswitch_5
    return p0

    .line 773
    :sswitch_data_6
    .sparse-switch
        -0x64 -> :sswitch_5
        -0x11 -> :sswitch_5
        -0xc -> :sswitch_5
        -0x5 -> :sswitch_5
        -0x4 -> :sswitch_5
        -0x1 -> :sswitch_5
    .end sparse-switch
.end method

.method public static getFinalPauseReason(I)I
    .registers 2

    .prologue
    const/16 v0, 0x324

    .line 789
    if-nez p0, :cond_5

    .line 806
    :goto_4
    return v0

    .line 794
    :cond_5
    packed-switch p0, :pswitch_data_16

    goto :goto_4

    .line 803
    :pswitch_9
    const/16 v0, 0x323

    goto :goto_4

    .line 797
    :pswitch_c
    const/16 v0, 0x320

    goto :goto_4

    .line 799
    :pswitch_f
    const/16 v0, 0x321

    goto :goto_4

    .line 801
    :pswitch_12
    const/16 v0, 0x322

    goto :goto_4

    .line 794
    nop

    :pswitch_data_16
    .packed-switch 0xc1
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method public static getFinalPauseReason(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;)I
    .registers 4

    .prologue
    const/16 v0, 0x324

    .line 812
    if-nez p0, :cond_5

    .line 829
    :goto_4
    return v0

    .line 818
    :cond_5
    invoke-static {}, Lcom/duoku/platform/download/utils/PackageHelper;->$SWITCH_TABLE$com$duoku$platform$download$DownloadConfiguration$DownloadItemOutput$DownloadReason()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_20

    goto :goto_4

    .line 827
    :pswitch_13
    const/16 v0, 0x320

    goto :goto_4

    .line 821
    :pswitch_16
    const/16 v0, 0x323

    goto :goto_4

    .line 823
    :pswitch_19
    const/16 v0, 0x322

    goto :goto_4

    .line 825
    :pswitch_1c
    const/16 v0, 0x321

    goto :goto_4

    .line 818
    nop

    :pswitch_data_20
    .packed-switch 0xa
        :pswitch_13
        :pswitch_1c
        :pswitch_19
        :pswitch_16
    .end packed-switch
.end method

.method public static getPackageListners()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/duoku/platform/download/utils/PackageHelper$PackageCallback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 925
    sget-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v0, :cond_10

    .line 927
    sget-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_13

    .line 940
    :cond_10
    sget-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0

    .line 927
    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/utils/PackageHelper$PackageCallback;

    goto :goto_a
.end method

.method public static installApp(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1589
    new-instance v0, Lcom/duoku/platform/download/utils/PackageHelper$10;

    const-string v1, "installThread"

    invoke-direct {v0, v1, p3}, Lcom/duoku/platform/download/utils/PackageHelper$10;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/PackageHelper$10;->start()V

    .line 1617
    return-void
.end method

.method public static installApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1550
    new-instance v0, Lcom/duoku/platform/download/utils/PackageHelper$9;

    const-string v1, "installThread"

    invoke-direct {v0, v1, p1, p2}, Lcom/duoku/platform/download/utils/PackageHelper$9;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/PackageHelper$9;->start()V

    .line 1576
    return-void
.end method

.method public static installDirectly(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 3010
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 3014
    :try_start_6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 3015
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "r"

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_1c} :catch_32
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1c} :catch_3b

    .line 3027
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3028
    sget-object v3, Lcom/duoku/platform/util/Constants;->APK_MIME_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3029
    const v1, 0x10000001

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3035
    :try_start_2e
    invoke-virtual {v0, v2}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V
    :try_end_31
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2e .. :try_end_31} :catch_44

    .line 3040
    :goto_31
    return-void

    .line 3017
    :catch_32
    move-exception v0

    .line 3019
    sget-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->handler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_31

    .line 3022
    :catch_3b
    move-exception v0

    .line 3024
    sget-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->handler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_31

    .line 3037
    :catch_44
    move-exception v0

    goto :goto_31
.end method

.method public static loadDownloadTasks()Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2077
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2084
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2086
    invoke-static {v0}, Lcom/duoku/platform/download/utils/AppManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/AppManager;

    move-result-object v0

    .line 2087
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/AppManager;->getAndCheckDownloadGames()Ljava/util/List;

    move-result-object v8

    .line 2088
    if-eqz v8, :cond_bb

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_bb

    .line 2091
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    move v6, v1

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    .line 2092
    :goto_23
    if-lt v6, v9, :cond_53

    .line 2126
    :goto_25
    sget-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_PENDING:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2127
    sget-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_RUNNING:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2128
    sget-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_FAILED:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2129
    sget-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_SUCCESSFUL:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2130
    sget-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_PAUSED:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2131
    return-object v7

    .line 2094
    :cond_53
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 2095
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getStatus()Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    move-result-object v10

    .line 2096
    sget-object v11, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_RUNNING:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    if-ne v10, v11, :cond_72

    .line 2098
    add-int/lit8 v0, v5, 0x1

    move v12, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v0

    move v0, v12

    .line 2092
    :goto_69
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_23

    .line 2100
    :cond_72
    sget-object v11, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_PENDING:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    if-ne v10, v11, :cond_7f

    .line 2102
    add-int/lit8 v0, v4, 0x1

    move v4, v5

    move v12, v2

    move v2, v3

    move v3, v0

    move v0, v1

    move v1, v12

    .line 2103
    goto :goto_69

    .line 2104
    :cond_7f
    sget-object v11, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_PAUSED:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    if-ne v10, v11, :cond_9b

    .line 2106
    sget-object v10, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->PAUSED_BY_APP:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getReason()Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    move-result-object v0

    if-eq v10, v0, :cond_94

    .line 2108
    add-int/lit8 v0, v4, 0x1

    move v4, v5

    move v12, v2

    move v2, v3

    move v3, v0

    move v0, v1

    move v1, v12

    .line 2109
    goto :goto_69

    .line 2112
    :cond_94
    add-int/lit8 v0, v1, 0x1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    .line 2114
    goto :goto_69

    .line 2115
    :cond_9b
    sget-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_FAILED:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    if-ne v10, v0, :cond_a8

    .line 2117
    add-int/lit8 v0, v3, 0x1

    move v3, v4

    move v4, v5

    move v12, v0

    move v0, v1

    move v1, v2

    move v2, v12

    .line 2118
    goto :goto_69

    .line 2119
    :cond_a8
    sget-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_SUCCESSFUL:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    if-ne v10, v0, :cond_b5

    .line 2121
    add-int/lit8 v0, v2, 0x1

    move v2, v3

    move v3, v4

    move v4, v5

    move v12, v0

    move v0, v1

    move v1, v12

    goto :goto_69

    :cond_b5
    move v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    goto :goto_69

    :cond_bb
    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    goto/16 :goto_25
.end method

.method private static logStatus(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/duoku/platform/download/mode/QueryInput;",
            "Lcom/duoku/platform/download/PackageMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2207
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2208
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2217
    :goto_e
    return-void

    .line 2208
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/QueryInput;

    .line 2210
    const-string v3, "getGamesStatus"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "status:"

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/download/PackageMode;

    iget v1, v1, Lcom/duoku/platform/download/PackageMode;->status:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/duoku/platform/download/mode/QueryInput;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_3e

    goto :goto_8

    .line 2213
    :catch_3e
    move-exception v0

    .line 2215
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method private static notifyBeforeDownload(Landroid/content/Context;Lcom/duoku/platform/download/mode/DownloadItemInput;J)V
    .registers 18

    .prologue
    .line 1909
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/download/utils/PackageHelper;->DEFAUL_TDOWNLOAD_DEST:Ljava/lang/String;

    invoke-static {p1}, Lcom/duoku/platform/download/utils/PackageHelper;->formSaveName(Lcom/duoku/platform/download/mode/DownloadItemInput;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/duoku/platform/download/DownloadUtil;->composeDestination(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1910
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1912
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getSaveName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getVersionInt()I

    move-result v7

    .line 1913
    const/4 v10, 0x4

    const/4 v11, 0x0

    .line 1914
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 1915
    const-wide/16 v8, -0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-wide/from16 v8, p2

    .line 1912
    invoke-static/range {v1 .. v13}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1921
    return-void
.end method

.method private static notifyForDownload(Lcom/duoku/platform/download/mode/DownloadItemInput;Landroid/content/Context;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 2137
    invoke-static {p1}, Lcom/duoku/platform/download/utils/BroadcaseSender;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/BroadcaseSender;

    move-result-object v0

    .line 2138
    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v4, v1}, Lcom/duoku/platform/download/utils/BroadcaseSender;->notifyDownloadChanged(Z[Ljava/lang/String;)V

    .line 2139
    return-void
.end method

.method private static notifyForRemoveDownload(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 660
    invoke-static {p0}, Lcom/duoku/platform/download/utils/PackageHelper;->formPackageMode(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)Lcom/duoku/platform/download/PackageMode;

    move-result-object v6

    .line 661
    if-nez v6, :cond_9

    .line 700
    :goto_8
    return-void

    .line 665
    :cond_9
    iput v7, v6, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 668
    new-instance v0, Lcom/duoku/platform/download/mode/QueryInput;

    iget-object v1, v6, Lcom/duoku/platform/download/PackageMode;->packageName:Ljava/lang/String;

    iget-object v2, v6, Lcom/duoku/platform/download/PackageMode;->version:Ljava/lang/String;

    iget v3, v6, Lcom/duoku/platform/download/PackageMode;->versionCode:I

    iget-object v4, v6, Lcom/duoku/platform/download/PackageMode;->downloadUrl:Ljava/lang/String;

    iget-object v5, v6, Lcom/duoku/platform/download/PackageMode;->gameId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/duoku/platform/download/mode/QueryInput;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 670
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->queryPackageStatus(Lcom/duoku/platform/download/mode/QueryInput;)Ljava/util/Map;

    move-result-object v1

    .line 672
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/PackageMode;

    .line 673
    iget v1, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    if-eqz v1, :cond_46

    .line 675
    iget v0, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    iput v0, v6, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 676
    sget-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    const-string v1, "After removeDownloadGames game %S ,status is packageMode.status %s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v6, Lcom/duoku/platform/download/PackageMode;->title:Ljava/lang/String;

    aput-object v3, v2, v7

    iget v3, v6, Lcom/duoku/platform/download/PackageMode;->status:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_46
    invoke-static {v6}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V

    .line 681
    invoke-virtual {p0}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getStatus()Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    move-result-object v0

    .line 682
    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_SUCCESSFUL:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    if-ne v1, v0, :cond_69

    .line 685
    invoke-static {}, Lcom/duoku/platform/download/utils/Notifier;->updateDownloadFinishedNotification()V

    .line 693
    :cond_54
    :goto_54
    invoke-static {}, Lcom/duoku/platform/download/utils/Notifier;->updateNotificationForDownload()V

    .line 695
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/BroadcaseSender;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/BroadcaseSender;

    move-result-object v0

    .line 697
    new-array v1, v8, [Ljava/lang/String;

    iget-object v2, v6, Lcom/duoku/platform/download/PackageMode;->packageName:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-virtual {v0, v7, v1}, Lcom/duoku/platform/download/utils/BroadcaseSender;->notifyDownloadChanged(Z[Ljava/lang/String;)V

    goto :goto_8

    .line 687
    :cond_69
    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_FAILED:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    if-ne v1, v0, :cond_54

    .line 690
    invoke-static {}, Lcom/duoku/platform/download/utils/Notifier;->updateNotificationForFailedDownload()V

    goto :goto_54
.end method

.method private static notifyInsertDownloadFailed(Landroid/content/Context;Lcom/duoku/platform/download/mode/DownloadItemInput;J)V
    .registers 18

    .prologue
    .line 3045
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/download/utils/PackageHelper;->DEFAUL_TDOWNLOAD_DEST:Ljava/lang/String;

    invoke-static {p1}, Lcom/duoku/platform/download/utils/PackageHelper;->formSaveName(Lcom/duoku/platform/download/mode/DownloadItemInput;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/duoku/platform/download/DownloadUtil;->composeDestination(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3046
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3048
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getSaveName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getVersionInt()I

    move-result v7

    .line 3049
    const/16 v10, 0x20

    const/4 v11, 0x0

    .line 3050
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 3051
    const-wide/16 v8, -0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-wide/from16 v8, p2

    .line 3048
    invoke-static/range {v1 .. v13}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 3056
    return-void
.end method

.method public static notifyMergeResult(Lcom/duoku/platform/download/PackageMode;ZI)V
    .registers 10

    .prologue
    const/16 v6, 0x200

    .line 312
    if-eqz p0, :cond_6a

    .line 314
    new-instance v0, Lcom/duoku/platform/download/mode/QueryInput;

    iget-object v1, p0, Lcom/duoku/platform/download/PackageMode;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/download/PackageMode;->version:Ljava/lang/String;

    iget v3, p0, Lcom/duoku/platform/download/PackageMode;->versionCode:I

    iget-object v4, p0, Lcom/duoku/platform/download/PackageMode;->downloadUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/duoku/platform/download/PackageMode;->gameId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/duoku/platform/download/mode/QueryInput;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 316
    sget-boolean v1, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG:Z

    if-eqz v1, :cond_3f

    .line 318
    sget-object v1, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "notifyMergeResult packageMode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " successful:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "packageMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_3f
    if-eqz p1, :cond_6b

    .line 322
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->queryPackageStatus(Lcom/duoku/platform/download/mode/QueryInput;)Ljava/util/Map;

    move-result-object v1

    .line 323
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/PackageMode;

    .line 324
    sget-boolean v1, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG:Z

    if-eqz v1, :cond_63

    .line 326
    sget-object v1, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "notifyMergeResult successful"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_63
    iput v6, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 329
    iput v6, p0, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 331
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyMergeStatusChanged(Lcom/duoku/platform/download/PackageMode;)V

    .line 347
    :cond_6a
    :goto_6a
    return-void

    .line 335
    :cond_6b
    sget-boolean v1, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG:Z

    if-eqz v1, :cond_76

    .line 337
    sget-object v1, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    const-string v2, "notifyMergeResult fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_76
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->queryPackageStatus(Lcom/duoku/platform/download/mode/QueryInput;)Ljava/util/Map;

    move-result-object v1

    .line 341
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/PackageMode;

    .line 342
    const/16 v0, 0x100

    iput v0, p0, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 343
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/download/PackageMode;->reason:Ljava/lang/Integer;

    .line 344
    invoke-static {p0}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyMergeStatusChanged(Lcom/duoku/platform/download/PackageMode;)V

    goto :goto_6a
.end method

.method private static notifyMergeStatusChanged(Lcom/duoku/platform/download/PackageMode;)V
    .registers 14

    .prologue
    const/16 v12, 0x200

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 356
    iget v0, p0, Lcom/duoku/platform/download/PackageMode;->status:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_38

    .line 358
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/PackageMode;->gameId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/duoku/platform/d/a;->i(Ljava/lang/String;)Lcom/duoku/platform/download/mode/MergeMode;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_37

    .line 361
    iget v1, v0, Lcom/duoku/platform/download/mode/MergeMode;->failedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/duoku/platform/download/mode/MergeMode;->failedCount:I

    .line 362
    iget-object v1, p0, Lcom/duoku/platform/download/PackageMode;->reason:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/duoku/platform/download/mode/MergeMode;->failedReason:I

    .line 363
    iget v1, v0, Lcom/duoku/platform/download/mode/MergeMode;->failedCount:I

    iput v1, p0, Lcom/duoku/platform/download/PackageMode;->mergeFailedCount:I

    .line 365
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/duoku/platform/d/a;->a(Lcom/duoku/platform/download/mode/MergeMode;)I

    .line 366
    invoke-static {p0}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V

    .line 367
    sget-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->mergingSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 414
    :cond_37
    :goto_37
    return-void

    .line 402
    :cond_38
    iget v0, p0, Lcom/duoku/platform/download/PackageMode;->status:I

    if-ne v0, v12, :cond_37

    .line 405
    new-instance v1, Lcom/duoku/platform/download/mode/MergeMode;

    iget-wide v2, p0, Lcom/duoku/platform/download/PackageMode;->downloadId:J

    iget-object v4, p0, Lcom/duoku/platform/download/PackageMode;->downloadUrl:Ljava/lang/String;

    iget-object v8, p0, Lcom/duoku/platform/download/PackageMode;->gameId:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v7, v5

    move-object v9, v5

    move v11, v6

    invoke-direct/range {v1 .. v12}, Lcom/duoku/platform/download/mode/MergeMode;-><init>(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 406
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/duoku/platform/d/a;->c(Lcom/duoku/platform/download/mode/MergeMode;)I

    .line 408
    sget-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->mergingSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 410
    invoke-static {p0}, Lcom/duoku/platform/download/utils/PackageHelper;->formDownloadOut(Lcom/duoku/platform/download/PackageMode;)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    move-result-object v0

    .line 411
    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Lcom/duoku/platform/download/utils/PackageHelper;->checkAndNotifyForDownloadedGame(ZLcom/duoku/platform/download/PackageMode;Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V

    goto :goto_37
.end method

.method public static notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V
    .registers 2

    .prologue
    .line 598
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/BroadcaseSender;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/BroadcaseSender;

    move-result-object v0

    .line 599
    invoke-virtual {v0, p0}, Lcom/duoku/platform/download/utils/BroadcaseSender;->notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V

    .line 600
    return-void
.end method

.method public static notifyPackageStatusChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;)V
    .registers 18

    .prologue
    .line 1947
    new-instance v0, Lcom/duoku/platform/download/PackageMode;

    invoke-direct {v0}, Lcom/duoku/platform/download/PackageMode;-><init>()V

    .line 1948
    iput-wide p7, v0, Lcom/duoku/platform/download/PackageMode;->downloadId:J

    .line 1949
    iput-object p1, v0, Lcom/duoku/platform/download/PackageMode;->downloadUrl:Ljava/lang/String;

    .line 1950
    iput-object p2, v0, Lcom/duoku/platform/download/PackageMode;->downloadDest:Ljava/lang/String;

    .line 1951
    iput-object p0, v0, Lcom/duoku/platform/download/PackageMode;->gameId:Ljava/lang/String;

    .line 1952
    iput-object p3, v0, Lcom/duoku/platform/download/PackageMode;->packageName:Ljava/lang/String;

    .line 1953
    iput-object p10, v0, Lcom/duoku/platform/download/PackageMode;->reason:Ljava/lang/Integer;

    .line 1954
    iput p9, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 1955
    iput-object p4, v0, Lcom/duoku/platform/download/PackageMode;->title:Ljava/lang/String;

    .line 1956
    iput-object p5, v0, Lcom/duoku/platform/download/PackageMode;->version:Ljava/lang/String;

    .line 1957
    iput p6, v0, Lcom/duoku/platform/download/PackageMode;->versionCode:I

    .line 1958
    invoke-virtual/range {p11 .. p11}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/duoku/platform/download/PackageMode;->currentSize:J

    .line 1959
    invoke-virtual/range {p12 .. p12}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/duoku/platform/download/PackageMode;->totalSize:J

    .line 1963
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/download/utils/BroadcaseSender;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/BroadcaseSender;

    move-result-object v1

    .line 1964
    invoke-virtual {v1, v0}, Lcom/duoku/platform/download/utils/BroadcaseSender;->notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V

    .line 1965
    return-void
.end method

.method public static pauseDownloadGames(J)V
    .registers 4

    .prologue
    .line 1736
    new-instance v0, Lcom/duoku/platform/download/utils/PackageHelper$14;

    invoke-direct {v0, p0, p1}, Lcom/duoku/platform/download/utils/PackageHelper$14;-><init>(J)V

    .line 1771
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/PackageHelper$14;->start()V

    .line 1773
    return-void
.end method

.method public static pauseDownloadGames(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1487
    new-instance v0, Lcom/duoku/platform/download/utils/PackageHelper$8;

    invoke-direct {v0, p0}, Lcom/duoku/platform/download/utils/PackageHelper$8;-><init>(Ljava/lang/String;)V

    .line 1494
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/PackageHelper$8;->start()V

    .line 1496
    return-void
.end method

.method public static varargs pauseDownloadGames([J)V
    .registers 2

    .prologue
    .line 1679
    if-nez p0, :cond_3

    .line 1727
    :goto_2
    return-void

    .line 1683
    :cond_3
    new-instance v0, Lcom/duoku/platform/download/utils/PackageHelper$13;

    invoke-direct {v0, p0}, Lcom/duoku/platform/download/utils/PackageHelper$13;-><init>([J)V

    .line 1725
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/PackageHelper$13;->start()V

    goto :goto_2
.end method

.method public static varargs pauseDownloadGames([Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1626
    if-nez p0, :cond_3

    .line 1670
    :goto_2
    return-void

    .line 1630
    :cond_3
    new-instance v0, Lcom/duoku/platform/download/utils/PackageHelper$11;

    invoke-direct {v0, p0}, Lcom/duoku/platform/download/utils/PackageHelper$11;-><init>([Ljava/lang/String;)V

    .line 1668
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/PackageHelper$11;->start()V

    goto :goto_2
.end method

.method private static queryFromSet(Lcom/duoku/platform/download/mode/QueryInput;)Lcom/duoku/platform/download/PackageMode;
    .registers 5

    .prologue
    .line 246
    sget-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->mergingSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    .line 257
    const/4 v0, 0x0

    :cond_d
    :goto_d
    return-object v0

    .line 246
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/PackageMode;

    .line 248
    iget-object v2, p0, Lcom/duoku/platform/download/mode/QueryInput;->gameId:Ljava/lang/String;

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/duoku/platform/download/mode/QueryInput;->gameId:Ljava/lang/String;

    iget-object v3, v0, Lcom/duoku/platform/download/PackageMode;->gameId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 252
    :cond_22
    iget-object v2, p0, Lcom/duoku/platform/download/mode/QueryInput;->downloadUrl:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/duoku/platform/download/mode/QueryInput;->downloadUrl:Ljava/lang/String;

    iget-object v3, v0, Lcom/duoku/platform/download/PackageMode;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_d
.end method

.method public static queryPackageStatus(Lcom/duoku/platform/download/mode/QueryInput;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/duoku/platform/download/mode/QueryInput;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/duoku/platform/download/mode/QueryInput;",
            "Lcom/duoku/platform/download/PackageMode;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2175
    .line 2176
    if-nez p0, :cond_5

    .line 2178
    const/4 v0, 0x0

    .line 2200
    :cond_4
    :goto_4
    return-object v0

    .line 2181
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 2182
    invoke-static {p0}, Lcom/duoku/platform/download/utils/PackageHelper;->formDefaultPackageModeFromQueryInput(Lcom/duoku/platform/download/mode/QueryInput;)Lcom/duoku/platform/download/PackageMode;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2187
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/duoku/platform/download/mode/QueryInput;

    aput-object p0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 2191
    invoke-static {p0, v0}, Lcom/duoku/platform/download/utils/PackageHelper;->checkDownloadStatus(Lcom/duoku/platform/download/mode/QueryInput;Ljava/util/Map;)V

    .line 2195
    sget-boolean v1, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 2197
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->logStatus(Ljava/util/Map;)V

    goto :goto_4
.end method

.method public static queryPackageStatusForDownloads(Ljava/util/List;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/DownloadAppInfo;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/duoku/platform/download/PackageMode;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 143
    .line 144
    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 170
    :cond_9
    :goto_9
    return-object v1

    .line 148
    :cond_a
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 151
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 153
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_36

    .line 162
    invoke-static {p0, v7, v8}, Lcom/duoku/platform/download/utils/PackageHelper;->checkDownloadStatus(Ljava/util/List;Ljava/util/List;Ljava/util/HashMap;)V

    .line 165
    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_54

    move-object v1, v6

    .line 170
    goto :goto_9

    .line 153
    :cond_36
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 155
    new-instance v0, Lcom/duoku/platform/download/mode/QueryInput;

    const/4 v3, -0x1

    invoke-virtual {v2}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v5

    move-object v2, v1

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/duoku/platform/download/mode/QueryInput;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->formDefaultPackageModeFromQueryInput(Lcom/duoku/platform/download/mode/QueryInput;)Lcom/duoku/platform/download/PackageMode;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 166
    :cond_54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/QueryInput;

    .line 168
    iget-object v2, v0, Lcom/duoku/platform/download/mode/QueryInput;->gameId:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/PackageMode;

    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e
.end method

.method public static declared-synchronized registerPackageStatusChangeObserver(Lcom/duoku/platform/download/utils/PackageHelper$PackageCallback;)V
    .registers 5

    .prologue
    .line 965
    const-class v1, Lcom/duoku/platform/download/utils/PackageHelper;

    monitor-enter v1

    if-eqz p0, :cond_a

    .line 967
    :try_start_5
    sget-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_1c
    .catchall {:try_start_5 .. :try_end_a} :catchall_2c

    .line 976
    :cond_a
    :goto_a
    :try_start_a
    sget-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v0, :cond_1a

    .line 979
    sget-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_2c

    move-result v0

    if-nez v0, :cond_2f

    .line 990
    :cond_1a
    monitor-exit v1

    return-void

    .line 970
    :catch_1c
    move-exception v0

    .line 972
    :try_start_1d
    sget-object v2, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    const-string v3, "[registerPackageStatusChangeObserver] Error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 973
    const-string v2, "fuck"

    const-string v3, "[registerPackageStatusChangeObserver] Error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_2c

    goto :goto_a

    .line 965
    :catchall_2c
    move-exception v0

    monitor-exit v1

    throw v0

    .line 979
    :cond_2f
    :try_start_2f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/utils/PackageHelper$PackageCallback;
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_2c

    goto :goto_14
.end method

.method public static removeDownloadGames(J)V
    .registers 4

    .prologue
    .line 541
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/duoku/platform/download/utils/PackageHelper;->removeDownloadGames(JZ)V

    .line 542
    return-void
.end method

.method private static removeDownloadGames(JZ)V
    .registers 5

    .prologue
    .line 546
    new-instance v0, Lcom/duoku/platform/download/utils/PackageHelper$18;

    invoke-direct {v0, p0, p1, p2}, Lcom/duoku/platform/download/utils/PackageHelper$18;-><init>(JZ)V

    .line 585
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/PackageHelper$18;->start()V

    .line 586
    return-void
.end method

.method public static varargs removeDownloadGames([Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 604
    if-nez p0, :cond_3

    .line 651
    :goto_2
    return-void

    .line 608
    :cond_3
    new-instance v0, Lcom/duoku/platform/download/utils/PackageHelper$19;

    invoke-direct {v0, p0}, Lcom/duoku/platform/download/utils/PackageHelper$19;-><init>([Ljava/lang/String;)V

    .line 649
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/PackageHelper$19;->start()V

    goto :goto_2
.end method

.method public static declared-synchronized removeDownloadProgressListener()V
    .registers 2

    .prologue
    .line 762
    const-class v1, Lcom/duoku/platform/download/utils/PackageHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->callback:Lcom/duoku/platform/download/DownloadHelper$DownloadProgressCallback;

    if-eqz v0, :cond_a

    .line 764
    const/4 v0, 0x0

    sput-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->callback:Lcom/duoku/platform/download/DownloadHelper$DownloadProgressCallback;

    .line 766
    :cond_a
    invoke-static {}, Lcom/duoku/platform/download/DownloadHelper;->removeAllDownloadListener()V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 767
    monitor-exit v1

    return-void

    .line 762
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static removeMergeGame(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    .prologue
    .line 2150
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/duoku/platform/d/a;->a(Ljava/lang/String;Ljava/lang/String;J)I

    .line 2151
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/AppManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/AppManager;

    move-result-object v0

    .line 2152
    invoke-virtual {v0, p0}, Lcom/duoku/platform/download/utils/AppManager;->removeCheckStatus(Ljava/lang/String;)V

    .line 2154
    return-void
.end method

.method private static removeOldNotificationForDownload(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 2065
    invoke-static {p0}, Lcom/duoku/platform/download/utils/Notifier;->removeNotificationForDelete(Ljava/lang/String;)V

    .line 2066
    return-void
.end method

.method public static restartDownload(JLcom/duoku/platform/download/listener/DownloadCallback;)V
    .registers 5

    .prologue
    .line 1186
    invoke-static {p0, p1, p2}, Lcom/duoku/platform/download/utils/PackageHelper;->resumeDownload(JLcom/duoku/platform/download/listener/DownloadCallback;)V

    .line 1187
    new-instance v0, Lcom/duoku/platform/download/utils/PackageHelper$3;

    invoke-direct {v0}, Lcom/duoku/platform/download/utils/PackageHelper$3;-><init>()V

    .line 1193
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/PackageHelper$3;->start()V

    .line 1194
    return-void
.end method

.method public static varargs restartDownload(Lcom/duoku/platform/download/listener/DownloadCallback;[J)V
    .registers 3

    .prologue
    .line 1174
    invoke-static {p0, p1}, Lcom/duoku/platform/download/utils/PackageHelper;->resumeDownload(Lcom/duoku/platform/download/listener/DownloadCallback;[J)V

    .line 1175
    new-instance v0, Lcom/duoku/platform/download/utils/PackageHelper$2;

    invoke-direct {v0}, Lcom/duoku/platform/download/utils/PackageHelper$2;-><init>()V

    .line 1181
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/PackageHelper$2;->start()V

    .line 1182
    return-void
.end method

.method public static varargs restartDownload(Lcom/duoku/platform/download/listener/DownloadCallback;[Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1150
    invoke-static {p0, p1}, Lcom/duoku/platform/download/utils/PackageHelper;->resumeDownload(Lcom/duoku/platform/download/listener/DownloadCallback;[Ljava/lang/String;)V

    .line 1151
    new-instance v0, Lcom/duoku/platform/download/utils/PackageHelper$21;

    invoke-direct {v0}, Lcom/duoku/platform/download/utils/PackageHelper$21;-><init>()V

    .line 1157
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/PackageHelper$21;->start()V

    .line 1158
    return-void
.end method

.method public static restartDownload(Ljava/lang/String;Lcom/duoku/platform/download/listener/DownloadCallback;)V
    .registers 3

    .prologue
    .line 1162
    invoke-static {p0, p1}, Lcom/duoku/platform/download/utils/PackageHelper;->resumeDownload(Ljava/lang/String;Lcom/duoku/platform/download/listener/DownloadCallback;)V

    .line 1163
    new-instance v0, Lcom/duoku/platform/download/utils/PackageHelper$22;

    invoke-direct {v0}, Lcom/duoku/platform/download/utils/PackageHelper$22;-><init>()V

    .line 1169
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/PackageHelper$22;->start()V

    .line 1170
    return-void
.end method

.method public static declared-synchronized restartDownloadNormally(JLcom/duoku/platform/download/mode/DownloadItemInput;Lcom/duoku/platform/download/listener/DownloadCallback;)V
    .registers 6

    .prologue
    .line 1061
    const-class v1, Lcom/duoku/platform/download/utils/PackageHelper;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lcom/duoku/platform/download/utils/PackageHelper$20;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/duoku/platform/download/utils/PackageHelper$20;-><init>(JLcom/duoku/platform/download/mode/DownloadItemInput;Lcom/duoku/platform/download/listener/DownloadCallback;)V

    .line 1084
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/PackageHelper$20;->start()V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 1085
    monitor-exit v1

    return-void

    .line 1061
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static resumeDownload(JLcom/duoku/platform/download/listener/DownloadCallback;)V
    .registers 5

    .prologue
    .line 1405
    new-instance v0, Lcom/duoku/platform/download/utils/PackageHelper$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/duoku/platform/download/utils/PackageHelper$7;-><init>(JLcom/duoku/platform/download/listener/DownloadCallback;)V

    .line 1444
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/PackageHelper$7;->start()V

    .line 1446
    return-void
.end method

.method public static varargs resumeDownload(Lcom/duoku/platform/download/listener/DownloadCallback;[J)V
    .registers 3

    .prologue
    .line 1336
    if-nez p1, :cond_3

    .line 1394
    :goto_2
    return-void

    .line 1340
    :cond_3
    new-instance v0, Lcom/duoku/platform/download/utils/PackageHelper$6;

    invoke-direct {v0, p1, p0}, Lcom/duoku/platform/download/utils/PackageHelper$6;-><init>([JLcom/duoku/platform/download/listener/DownloadCallback;)V

    .line 1392
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/PackageHelper$6;->start()V

    goto :goto_2
.end method

.method public static varargs resumeDownload(Lcom/duoku/platform/download/listener/DownloadCallback;[Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1203
    if-nez p1, :cond_3

    .line 1259
    :goto_2
    return-void

    .line 1207
    :cond_3
    new-instance v0, Lcom/duoku/platform/download/utils/PackageHelper$4;

    invoke-direct {v0, p1, p0}, Lcom/duoku/platform/download/utils/PackageHelper$4;-><init>([Ljava/lang/String;Lcom/duoku/platform/download/listener/DownloadCallback;)V

    .line 1257
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/PackageHelper$4;->start()V

    goto :goto_2
.end method

.method public static resumeDownload(Ljava/lang/String;Lcom/duoku/platform/download/listener/DownloadCallback;)V
    .registers 3

    .prologue
    .line 1317
    new-instance v0, Lcom/duoku/platform/download/utils/PackageHelper$5;

    invoke-direct {v0, p0, p1}, Lcom/duoku/platform/download/utils/PackageHelper$5;-><init>(Ljava/lang/String;Lcom/duoku/platform/download/listener/DownloadCallback;)V

    .line 1325
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/PackageHelper$5;->start()V

    .line 1327
    return-void
.end method

.method public static sendMergeRequest(Lcom/duoku/platform/download/PackageMode;Z)V
    .registers 3

    .prologue
    .line 271
    new-instance v0, Lcom/duoku/platform/download/utils/PackageHelper$12;

    invoke-direct {v0, p0}, Lcom/duoku/platform/download/utils/PackageHelper$12;-><init>(Lcom/duoku/platform/download/PackageMode;)V

    .line 299
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/PackageHelper$12;->start()V

    .line 301
    return-void
.end method

.method private static sendMergeRequestFromBg(J)V
    .registers 4

    .prologue
    .line 497
    new-instance v0, Lcom/duoku/platform/download/utils/PackageHelper$17;

    invoke-direct {v0, p0, p1}, Lcom/duoku/platform/download/utils/PackageHelper$17;-><init>(J)V

    .line 531
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/PackageHelper$17;->start()V

    .line 532
    return-void
.end method

.method public static sendMergeRequestFromUI(J)V
    .registers 4

    .prologue
    .line 454
    new-instance v0, Lcom/duoku/platform/download/utils/PackageHelper$16;

    invoke-direct {v0, p0, p1}, Lcom/duoku/platform/download/utils/PackageHelper$16;-><init>(J)V

    .line 487
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/PackageHelper$16;->start()V

    .line 488
    return-void
.end method

.method private static showToastOfLackOfSpace()V
    .registers 2

    .prologue
    .line 2051
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2052
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v0

    const-string v1, "dk_sdcard_lack_space"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/AppUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/CustomToast;->showToast(Ljava/lang/String;)V

    .line 2053
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2054
    return-void
.end method

.method public static splitDownloadAppData(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .prologue
    .line 724
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 725
    return-object v0
.end method

.method public static splitGameIdFromAppData(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 3075
    invoke-static {p0}, Lcom/duoku/platform/download/utils/PackageHelper;->splitDownloadAppData(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static splitIsDiffUpdateFromAppData(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 3080
    invoke-static {p0}, Lcom/duoku/platform/download/utils/PackageHelper;->splitDownloadAppData(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static splitPackageFromAppData(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 3060
    invoke-static {p0}, Lcom/duoku/platform/download/utils/PackageHelper;->splitDownloadAppData(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static splitVerionFromAppData(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 3065
    invoke-static {p0}, Lcom/duoku/platform/download/utils/PackageHelper;->splitDownloadAppData(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static splitVersionCodeFromAppData(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 3070
    invoke-static {p0}, Lcom/duoku/platform/download/utils/PackageHelper;->splitDownloadAppData(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static declared-synchronized unregisterPackageStatusChangeObserver(Lcom/duoku/platform/download/utils/PackageHelper$PackageCallback;)V
    .registers 3

    .prologue
    .line 996
    const-class v1, Lcom/duoku/platform/download/utils/PackageHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v0, :cond_c

    .line 998
    sget-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_11
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 1007
    :cond_c
    :goto_c
    monitor-exit v1

    return-void

    .line 996
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1001
    :catch_11
    move-exception v0

    goto :goto_c
.end method

.method private static updateDownloadForRestart(JLcom/duoku/platform/download/mode/DownloadItemInput;)I
    .registers 13

    .prologue
    const/4 v8, -0x1

    .line 1130
    invoke-static {p2}, Lcom/duoku/platform/download/utils/PackageHelper;->checkDownload(Lcom/duoku/platform/download/mode/DownloadItemInput;)I

    move-result v0

    .line 1132
    if-eq v0, v8, :cond_8

    .line 1145
    :goto_7
    return v0

    .line 1136
    :cond_8
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    .line 1137
    invoke-virtual {p2}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/duoku/platform/download/utils/PackageHelper;->DEFAUL_TDOWNLOAD_DEST:Ljava/lang/String;

    invoke-static {p2}, Lcom/duoku/platform/download/utils/PackageHelper;->formSaveName(Lcom/duoku/platform/download/mode/DownloadItemInput;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/duoku/platform/download/DownloadUtil;->composeDestination(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1139
    invoke-static {p2}, Lcom/duoku/platform/download/utils/PackageHelper;->formDownloadAppData(Lcom/duoku/platform/download/mode/DownloadItemInput;)Ljava/lang/String;

    move-result-object v6

    .line 1141
    invoke-virtual {p2}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-wide v2, p0

    invoke-static/range {v1 .. v6}, Lcom/duoku/platform/download/DownloadUtil;->updateDownload(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    invoke-static {v1}, Lcom/duoku/platform/download/utils/AppManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/AppManager;

    move-result-object v1

    invoke-virtual {p2}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getSize()J

    move-result-wide v6

    move-wide v2, p0

    invoke-virtual/range {v1 .. v7}, Lcom/duoku/platform/download/utils/AppManager;->updateDownloadRecord(JLjava/lang/String;ZJ)I

    move v0, v8

    .line 1145
    goto :goto_7
.end method

.method private static updateDownloadForRestart(Ljava/lang/String;Lcom/duoku/platform/download/mode/DownloadItemInput;)I
    .registers 9

    .prologue
    const/4 v6, -0x1

    .line 1100
    invoke-static {p1}, Lcom/duoku/platform/download/utils/PackageHelper;->checkDownload(Lcom/duoku/platform/download/mode/DownloadItemInput;)I

    move-result v0

    .line 1102
    if-eq v0, v6, :cond_8

    .line 1114
    :goto_7
    return v0

    .line 1106
    :cond_8
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 1107
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/download/utils/PackageHelper;->DEFAUL_TDOWNLOAD_DEST:Ljava/lang/String;

    invoke-static {p1}, Lcom/duoku/platform/download/utils/PackageHelper;->formSaveName(Lcom/duoku/platform/download/mode/DownloadItemInput;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/duoku/platform/download/DownloadUtil;->composeDestination(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1109
    invoke-static {p1}, Lcom/duoku/platform/download/utils/PackageHelper;->formDownloadAppData(Lcom/duoku/platform/download/mode/DownloadItemInput;)Ljava/lang/String;

    move-result-object v2

    .line 1110
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v3, v1, v2}, Lcom/duoku/platform/download/DownloadUtil;->updateDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    invoke-static {v0}, Lcom/duoku/platform/download/utils/AppManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/AppManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getSize()J

    move-result-wide v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/duoku/platform/download/utils/AppManager;->updateDownloadRecord(Ljava/lang/String;Ljava/lang/String;ZJ)I

    move v0, v6

    .line 1114
    goto :goto_7
.end method
