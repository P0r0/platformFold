.class public Lcom/duoku/platform/download/DownloadService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/download/DownloadService$a;,
        Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;,
        Lcom/duoku/platform/download/DownloadService$b;,
        Lcom/duoku/platform/download/DownloadService$OnScanCompletedListener;,
        Lcom/duoku/platform/download/DownloadService$c;
    }
.end annotation


# static fields
.field private static final WAIT_TIMEOUT:J = 0x2710L

.field public static volatile mCurrentThreadNum:I


# instance fields
.field private final mDownloads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/duoku/platform/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaScannerConnecting:Z

.field private mMediaScannerConnection:Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;

.field private mMediaScannerConnectionClient:Lcom/duoku/platform/download/DownloadService$b;

.field private mMediaScannerService:Ljava/lang/Object;

.field private mNotifier:Lcom/baidu/bdgame/sdk/obf/ns;

.field private mObserver:Lcom/duoku/platform/download/DownloadService$a;

.field private mPendingUpdate:Z

.field mSystemFacade:Lcom/baidu/bdgame/sdk/obf/nu;

.field mUpdateThread:Lcom/duoku/platform/download/DownloadService$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 121
    const/4 v0, 0x0

    sput v0, Lcom/duoku/platform/download/DownloadService;->mCurrentThreadNum:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadService;->mDownloads:Ljava/util/Map;

    .line 61
    return-void
.end method

.method static synthetic access$0(Lcom/duoku/platform/download/DownloadService;)V
    .registers 1

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/duoku/platform/download/DownloadService;->updateFromProvider()V

    return-void
.end method

.method static synthetic access$1(Lcom/duoku/platform/download/DownloadService;Z)V
    .registers 2

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/duoku/platform/download/DownloadService;->mMediaScannerConnecting:Z

    return-void
.end method

.method static synthetic access$10(Lcom/duoku/platform/download/DownloadService;Lcom/duoku/platform/download/DownloadInfo$Reader;J)Lcom/duoku/platform/download/DownloadInfo;
    .registers 6

    .prologue
    .line 715
    invoke-direct {p0, p1, p2, p3}, Lcom/duoku/platform/download/DownloadService;->insertDownload(Lcom/duoku/platform/download/DownloadInfo$Reader;J)Lcom/duoku/platform/download/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11(Lcom/duoku/platform/download/DownloadService;Lcom/duoku/platform/download/DownloadInfo;ZZ)Z
    .registers 5

    .prologue
    .line 800
    invoke-direct {p0, p1, p2, p3}, Lcom/duoku/platform/download/DownloadService;->scanFile(Lcom/duoku/platform/download/DownloadInfo;ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$12(Lcom/duoku/platform/download/DownloadService;J)V
    .registers 4

    .prologue
    .line 765
    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/download/DownloadService;->deleteDownload(J)V

    return-void
.end method

.method static synthetic access$13(Lcom/duoku/platform/download/DownloadService;)Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadService;->mMediaScannerConnection:Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;

    return-object v0
.end method

.method static synthetic access$14(Lcom/duoku/platform/download/DownloadService;)Z
    .registers 2

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/duoku/platform/download/DownloadService;->mMediaScannerConnecting:Z

    return v0
.end method

.method static synthetic access$15(Lcom/duoku/platform/download/DownloadService;)Lcom/duoku/platform/download/DownloadService$b;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadService;->mMediaScannerConnectionClient:Lcom/duoku/platform/download/DownloadService$b;

    return-object v0
.end method

.method static synthetic access$2(Lcom/duoku/platform/download/DownloadService;Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 115
    iput-object p1, p0, Lcom/duoku/platform/download/DownloadService;->mMediaScannerService:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$3(Lcom/duoku/platform/download/DownloadService;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadService;->mMediaScannerService:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4(Lcom/duoku/platform/download/DownloadService;)V
    .registers 1

    .prologue
    .line 674
    invoke-direct {p0}, Lcom/duoku/platform/download/DownloadService;->trimDatabase()V

    return-void
.end method

.method static synthetic access$5(Lcom/duoku/platform/download/DownloadService;)V
    .registers 1

    .prologue
    .line 615
    invoke-direct {p0}, Lcom/duoku/platform/download/DownloadService;->removeSpuriousFiles()V

    return-void
.end method

.method static synthetic access$6(Lcom/duoku/platform/download/DownloadService;)Z
    .registers 2

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/duoku/platform/download/DownloadService;->mPendingUpdate:Z

    return v0
.end method

.method static synthetic access$7(Lcom/duoku/platform/download/DownloadService;Z)V
    .registers 2

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/duoku/platform/download/DownloadService;->mPendingUpdate:Z

    return-void
.end method

.method static synthetic access$8(Lcom/duoku/platform/download/DownloadService;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadService;->mDownloads:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$9(Lcom/duoku/platform/download/DownloadService;Lcom/duoku/platform/download/DownloadInfo$Reader;Lcom/duoku/platform/download/DownloadInfo;J)V
    .registers 6

    .prologue
    .line 740
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/duoku/platform/download/DownloadService;->updateDownload(Lcom/duoku/platform/download/DownloadInfo$Reader;Lcom/duoku/platform/download/DownloadInfo;J)V

    return-void
.end method

.method private deleteDownload(J)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 767
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadService;->mDownloads:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/DownloadInfo;

    .line 768
    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadInfo;->shouldScanFile()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 770
    invoke-direct {p0, v0, v2, v2}, Lcom/duoku/platform/download/DownloadService;->scanFile(Lcom/duoku/platform/download/DownloadInfo;ZZ)Z

    .line 772
    :cond_16
    iget v1, v0, Lcom/duoku/platform/download/DownloadInfo;->mStatus:I

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_20

    .line 774
    const/16 v1, 0x1ea

    iput v1, v0, Lcom/duoku/platform/download/DownloadInfo;->mStatus:I

    .line 776
    :cond_20
    iget v1, v0, Lcom/duoku/platform/download/DownloadInfo;->mDestination:I

    if-eqz v1, :cond_26

    iget-object v1, v0, Lcom/duoku/platform/download/DownloadInfo;->mFileName:Ljava/lang/String;

    .line 785
    :cond_26
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadService;->mSystemFacade:Lcom/baidu/bdgame/sdk/obf/nu;

    iget-wide v2, v0, Lcom/duoku/platform/download/DownloadInfo;->mId:J

    invoke-interface {v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/nu;->a(J)V

    .line 786
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadService;->mDownloads:Ljava/util/Map;

    iget-wide v2, v0, Lcom/duoku/platform/download/DownloadInfo;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    return-void
.end method

.method private insertDownload(Lcom/duoku/platform/download/DownloadInfo$Reader;J)Lcom/duoku/platform/download/DownloadInfo;
    .registers 8

    .prologue
    .line 717
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadService;->mSystemFacade:Lcom/baidu/bdgame/sdk/obf/nu;

    invoke-virtual {p1, p0, v0}, Lcom/duoku/platform/download/DownloadInfo$Reader;->newDownloadInfo(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/nu;)Lcom/duoku/platform/download/DownloadInfo;

    move-result-object v0

    .line 718
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadService;->mDownloads:Ljava/util/Map;

    iget-wide v2, v0, Lcom/duoku/platform/download/DownloadInfo;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    sget-boolean v1, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v1, :cond_18

    .line 722
    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadInfo;->logVerboseInfo()V

    .line 725
    :cond_18
    invoke-virtual {v0, p2, p3}, Lcom/duoku/platform/download/DownloadInfo;->startIfReady(J)V

    .line 726
    return-object v0
.end method

.method private removeSpuriousFiles()V
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 617
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 618
    if-nez v1, :cond_d

    .line 669
    :cond_c
    return-void

    .line 624
    :cond_d
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    move v0, v6

    .line 625
    :goto_13
    array-length v2, v1

    if-lt v0, v2, :cond_64

    .line 638
    invoke-virtual {p0}, Lcom/duoku/platform/download/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/download/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    .line 639
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 640
    const-string v4, "_data"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    .line 638
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 642
    if-eqz v0, :cond_41

    .line 644
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 648
    :cond_31
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 650
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_31

    .line 652
    :cond_3e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 654
    :cond_41
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 655
    :cond_45
    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 657
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 662
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 663
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 664
    if-nez v0, :cond_45

    .line 666
    const-string v0, "DownloadManager"

    const-string v2, "removeSpuriousFiles delete file failed"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 627
    :cond_64
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "lost+found"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 625
    :cond_72
    :goto_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 631
    :cond_75
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "recovery"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_72

    .line 635
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_72
.end method

.method private scanFile(Lcom/duoku/platform/download/DownloadInfo;ZZ)Z
    .registers 15

    .prologue
    const/4 v0, 0x0

    .line 803
    monitor-enter p0

    .line 806
    :try_start_2
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadService;->mMediaScannerService:Ljava/lang/Object;

    if-nez v1, :cond_a

    .line 811
    :goto_6
    iget-boolean v1, p0, Lcom/duoku/platform/download/DownloadService;->mMediaScannerConnecting:Z

    if-nez v1, :cond_10

    .line 825
    :cond_a
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadService;->mMediaScannerService:Ljava/lang/Object;

    if-nez v1, :cond_29

    .line 829
    monitor-exit p0

    .line 927
    :goto_f
    return v0

    .line 813
    :cond_10
    const-string v1, "DownloadManager"

    const-string v2, "waiting for mMediaScannerService service: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_26

    .line 816
    const-wide/16 v2, 0x2710

    :try_start_19
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1c} :catch_1d
    .catchall {:try_start_19 .. :try_end_1c} :catchall_26

    goto :goto_6

    .line 818
    :catch_1d
    move-exception v0

    .line 820
    :try_start_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "wait interrupted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 803
    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_26

    throw v0

    .line 838
    :cond_29
    :try_start_29
    invoke-virtual {p1}, Lcom/duoku/platform/download/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v5

    .line 839
    iget-object v10, p1, Lcom/duoku/platform/download/DownloadInfo;->mMimeType:Ljava/lang/String;

    .line 840
    invoke-virtual {p0}, Lcom/duoku/platform/download/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 841
    iget-wide v8, p1, Lcom/duoku/platform/download/DownloadInfo;->mId:J

    .line 842
    iget-boolean v4, p1, Lcom/duoku/platform/download/DownloadInfo;->mMediaScanned:Z

    .line 844
    new-instance v1, Lcom/duoku/platform/download/DownloadService$1;

    move-object v2, p0

    move v3, p2

    move v6, p3

    invoke-direct/range {v1 .. v10}, Lcom/duoku/platform/download/DownloadService$1;-><init>(Lcom/duoku/platform/download/DownloadService;ZZLandroid/net/Uri;ZLandroid/content/ContentResolver;JLjava/lang/String;)V

    .line 896
    iget-object v2, p0, Lcom/duoku/platform/download/DownloadService;->mMediaScannerConnectionClient:Lcom/duoku/platform/download/DownloadService$b;

    iput-object v1, v2, Lcom/duoku/platform/download/DownloadService$b;->a:Lcom/duoku/platform/download/DownloadService$OnScanCompletedListener;

    .line 897
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadService;->mMediaScannerConnection:Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;

    iget-object v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mFileName:Ljava/lang/String;

    iget-object v3, p1, Lcom/duoku/platform/download/DownloadInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_4c} :catch_4f
    .catchall {:try_start_29 .. :try_end_4c} :catchall_26

    .line 922
    :try_start_4c
    monitor-exit p0

    const/4 v0, 0x1

    goto :goto_f

    .line 924
    :catch_4f
    move-exception v1

    .line 926
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to scan file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/duoku/platform/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_4c .. :try_end_67} :catchall_26

    goto :goto_f
.end method

.method private trimDatabase()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 676
    invoke-virtual {p0}, Lcom/duoku/platform/download/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/download/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    .line 677
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 678
    const-string v5, "_id"

    aput-object v5, v2, v3

    .line 679
    const-string v3, "status >= \'200\'"

    const-string v5, "lastmod"

    .line 676
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 680
    if-nez v1, :cond_21

    .line 684
    const-string v0, "DownloadManager"

    const-string v1, "null cursor in trimDatabase"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :goto_20
    return-void

    .line 687
    :cond_21
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 689
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/lit16 v0, v0, -0x3e8

    .line 690
    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 691
    :goto_33
    if-gtz v0, :cond_39

    .line 702
    :cond_35
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_20

    .line 693
    :cond_39
    sget-object v3, Lcom/duoku/platform/download/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 694
    invoke-virtual {p0}, Lcom/duoku/platform/download/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 695
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 699
    add-int/lit8 v0, v0, -0x1

    goto :goto_33
.end method

.method private updateDownload(Lcom/duoku/platform/download/DownloadInfo$Reader;Lcom/duoku/platform/download/DownloadInfo;J)V
    .registers 8

    .prologue
    const/4 v2, 0x1

    .line 742
    iget v0, p2, Lcom/duoku/platform/download/DownloadInfo;->mVisibility:I

    .line 743
    iget v1, p2, Lcom/duoku/platform/download/DownloadInfo;->mStatus:I

    .line 745
    invoke-virtual {p1, p2}, Lcom/duoku/platform/download/DownloadInfo$Reader;->updateFromDatabase(Lcom/duoku/platform/download/DownloadInfo;)V

    .line 747
    if-ne v0, v2, :cond_16

    iget v0, p2, Lcom/duoku/platform/download/DownloadInfo;->mVisibility:I

    if-eq v0, v2, :cond_16

    .line 748
    iget v0, p2, Lcom/duoku/platform/download/DownloadInfo;->mStatus:I

    invoke-static {v0}, Lcom/duoku/platform/download/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 749
    :cond_16
    invoke-static {v1}, Lcom/duoku/platform/download/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v0

    if-nez v0, :cond_24

    iget v0, p2, Lcom/duoku/platform/download/DownloadInfo;->mStatus:I

    invoke-static {v0}, Lcom/duoku/platform/download/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 756
    :cond_24
    invoke-virtual {p2, p3, p4}, Lcom/duoku/platform/download/DownloadInfo;->startIfReady(J)V

    .line 757
    return-void
.end method

.method private updateFromProvider()V
    .registers 3

    .prologue
    .line 374
    monitor-enter p0

    .line 376
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/duoku/platform/download/DownloadService;->mPendingUpdate:Z

    .line 377
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadService;->mUpdateThread:Lcom/duoku/platform/download/DownloadService$c;

    if-nez v0, :cond_16

    .line 379
    new-instance v0, Lcom/duoku/platform/download/DownloadService$c;

    invoke-direct {v0, p0}, Lcom/duoku/platform/download/DownloadService$c;-><init>(Lcom/duoku/platform/download/DownloadService;)V

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadService;->mUpdateThread:Lcom/duoku/platform/download/DownloadService$c;

    .line 380
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadService;->mSystemFacade:Lcom/baidu/bdgame/sdk/obf/nu;

    iget-object v1, p0, Lcom/duoku/platform/download/DownloadService;->mUpdateThread:Lcom/duoku/platform/download/DownloadService$c;

    invoke-interface {v0, v1}, Lcom/baidu/bdgame/sdk/obf/nu;->a(Ljava/lang/Thread;)V

    .line 374
    :cond_16
    monitor-exit p0

    .line 383
    return-void

    .line 374
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_18

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    .prologue
    .line 294
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot bind to Download Manager Service"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 303
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 305
    invoke-virtual {p0}, Lcom/duoku/platform/download/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/duoku/platform/download/listener/DownloadServiceCallback;

    if-eqz v0, :cond_14

    .line 307
    invoke-virtual {p0}, Lcom/duoku/platform/download/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/listener/DownloadServiceCallback;

    invoke-interface {v0}, Lcom/duoku/platform/download/listener/DownloadServiceCallback;->onDownloadServiceCreate()V

    .line 309
    :cond_14
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadService;->mSystemFacade:Lcom/baidu/bdgame/sdk/obf/nu;

    if-nez v0, :cond_1f

    .line 311
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/nt;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/nt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadService;->mSystemFacade:Lcom/baidu/bdgame/sdk/obf/nu;

    .line 314
    :cond_1f
    new-instance v0, Lcom/duoku/platform/download/DownloadService$a;

    invoke-direct {v0, p0}, Lcom/duoku/platform/download/DownloadService$a;-><init>(Lcom/duoku/platform/download/DownloadService;)V

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadService;->mObserver:Lcom/duoku/platform/download/DownloadService$a;

    .line 315
    invoke-virtual {p0}, Lcom/duoku/platform/download/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/download/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/duoku/platform/download/DownloadService;->mObserver:Lcom/duoku/platform/download/DownloadService$a;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 317
    monitor-enter p0

    .line 319
    const/4 v0, 0x0

    :try_start_34
    iput-object v0, p0, Lcom/duoku/platform/download/DownloadService;->mMediaScannerService:Ljava/lang/Object;

    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/download/DownloadService;->mMediaScannerConnecting:Z

    .line 317
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_4e

    .line 323
    new-instance v0, Lcom/duoku/platform/download/DownloadService$b;

    invoke-direct {v0}, Lcom/duoku/platform/download/DownloadService$b;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadService;->mMediaScannerConnectionClient:Lcom/duoku/platform/download/DownloadService$b;

    .line 324
    new-instance v0, Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;

    iget-object v1, p0, Lcom/duoku/platform/download/DownloadService;->mMediaScannerConnectionClient:Lcom/duoku/platform/download/DownloadService$b;

    invoke-direct {v0, p0, p0, v1}, Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;-><init>(Lcom/duoku/platform/download/DownloadService;Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadService;->mMediaScannerConnection:Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;

    .line 330
    invoke-direct {p0}, Lcom/duoku/platform/download/DownloadService;->updateFromProvider()V

    .line 332
    return-void

    .line 317
    :catchall_4e
    move-exception v0

    :try_start_4f
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/duoku/platform/download/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/DownloadService;->mObserver:Lcom/duoku/platform/download/DownloadService$a;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 360
    :try_start_9
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadService;->mMediaScannerConnection:Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;

    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;->disconnectMediaScanner()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_12

    .line 366
    :goto_e
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 367
    return-void

    .line 362
    :catch_12
    move-exception v0

    goto :goto_e
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 3

    .prologue
    .line 347
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 348
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    .prologue
    .line 337
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 338
    invoke-direct {p0}, Lcom/duoku/platform/download/DownloadService;->updateFromProvider()V

    .line 339
    return v0
.end method
