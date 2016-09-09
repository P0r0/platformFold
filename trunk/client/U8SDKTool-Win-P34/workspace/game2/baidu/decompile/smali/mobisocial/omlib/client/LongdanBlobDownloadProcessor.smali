.class public Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;
.super Ljava/lang/Object;
.source "LongdanBlobDownloadProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;,
        Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;,
        Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$BlobPathHolder;,
        Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$AbandonDeferredBlobTask;,
        Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$LongdanCancellationException;
    }
.end annotation


# static fields
.field static final MAX_BACKOFF_SEC:J = 0x1e0L

.field public static final TAG:Ljava/lang/String; = "Omlib-blobs"


# instance fields
.field final CORE_POOL_SIZE:I

.field final MAX_POOL_SIZE:I

.field final THREAD_KEEPALIVE_SEC:J

.field blobRootDir:Ljava/io/File;

.field private final mBackoffLock:Ljava/lang/Object;

.field final mBlobDownloadRunner:Ljava/lang/Runnable;

.field private final mClient:Lmobisocial/omlib/client/LongdanClient;

.field final mDeferredRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mDisposed:Z

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private volatile mNetworkUnavailable:Z

.field final mPendingRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/nio/ByteBuffer;",
            "Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field final mRequestQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmobisocial/omlib/client/LongdanClient;)V
    .registers 4
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mBackoffLock:Ljava/lang/Object;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mPendingRequests:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mRequestQueue:Ljava/util/LinkedList;

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mDeferredRequests:Ljava/util/Set;

    .line 94
    const/4 v0, 0x2

    iput v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->CORE_POOL_SIZE:I

    .line 96
    const/4 v0, 0x4

    iput v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->MAX_POOL_SIZE:I

    .line 98
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->THREAD_KEEPALIVE_SEC:J

    .line 322
    new-instance v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$6;

    invoke-direct {v0, p0}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$6;-><init>(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;)V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mBlobDownloadRunner:Ljava/lang/Runnable;

    .line 103
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;)Lmobisocial/omlib/client/LongdanClient;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    .prologue
    .line 62
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;

    return-object v0
.end method

.method static synthetic access$100(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;Ljava/nio/ByteBuffer;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;Ljava/io/File;)V
    .registers 4
    .param p0, "x0"    # Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;
    .param p2, "x2"    # Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;
    .param p3, "x3"    # Ljava/io/File;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->completeDownload(Ljava/nio/ByteBuffer;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$200(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    .prologue
    .line 62
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mBackoffLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    .prologue
    .line 62
    iget-boolean v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mNetworkUnavailable:Z

    return v0
.end method

.method static synthetic access$400(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;Ljava/nio/ByteBuffer;)V
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->blobSourceNotAvailable(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$500(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;Ljava/util/Collection;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;)Ljava/io/File;
    .registers 5
    .param p0, "x0"    # Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;
    .param p1, "x1"    # Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;
    .param p2, "x2"    # Ljava/util/Collection;
    .param p3, "x3"    # Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->downloadBlobFromSources(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;Ljava/util/Collection;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;Ljava/nio/ByteBuffer;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;)V
    .registers 3
    .param p0, "x0"    # Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;
    .param p2, "x2"    # Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->rescheduleFailedDownload(Ljava/nio/ByteBuffer;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;)V

    return-void
.end method

.method static synthetic access$700(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;Ljava/nio/ByteBuffer;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;Lmobisocial/longdan/exception/LongdanException;)V
    .registers 4
    .param p0, "x0"    # Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;
    .param p2, "x2"    # Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;
    .param p3, "x3"    # Lmobisocial/longdan/exception/LongdanException;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->blobDownloadFailed(Ljava/nio/ByteBuffer;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;Lmobisocial/longdan/exception/LongdanException;)V

    return-void
.end method

.method private blobDownloadFailed(Ljava/nio/ByteBuffer;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;Lmobisocial/longdan/exception/LongdanException;)V
    .registers 8
    .param p1, "blobHashWrapped"    # Ljava/nio/ByteBuffer;
    .param p2, "pbr"    # Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;
    .param p3, "e"    # Lmobisocial/longdan/exception/LongdanException;

    .prologue
    .line 646
    iget-object v3, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mRequestQueue:Ljava/util/LinkedList;

    monitor-enter v3

    .line 647
    :try_start_3
    iget-object v1, p2, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->listeners:Ljava/util/List;

    .line 648
    .local v1, "listeners":Ljava/util/Collection;, "Ljava/util/Collection<Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;>;"
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mPendingRequests:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_21

    .line 650
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;

    .line 651
    .local v0, "l":Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;
    iget-object v3, p2, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->blobHash:[B

    invoke-direct {p0, v0, v3, p3}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->postBlobFailed(Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;[BLmobisocial/longdan/exception/LongdanException;)V

    goto :goto_f

    .line 649
    .end local v0    # "l":Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;
    .end local v1    # "listeners":Ljava/util/Collection;, "Ljava/util/Collection<Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;>;"
    :catchall_21
    move-exception v2

    :try_start_22
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v2

    .line 653
    .restart local v1    # "listeners":Ljava/util/Collection;, "Ljava/util/Collection<Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;>;"
    :cond_24
    return-void
.end method

.method private blobSourceNotAvailable(Ljava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "blobHash"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 687
    iget-object v1, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mRequestQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 688
    :try_start_3
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mDeferredRequests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 689
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1a

    .line 690
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanClient;->getTimer()Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$AbandonDeferredBlobTask;

    invoke-direct {v1, p0, p1}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$AbandonDeferredBlobTask;-><init>(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;Ljava/nio/ByteBuffer;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 691
    return-void

    .line 689
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private completeDownload(Ljava/nio/ByteBuffer;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;Ljava/io/File;)V
    .registers 8
    .param p1, "blobHashWrapped"    # Ljava/nio/ByteBuffer;
    .param p2, "pbr"    # Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;
    .param p3, "file"    # Ljava/io/File;

    .prologue
    .line 657
    iget-object v3, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mRequestQueue:Ljava/util/LinkedList;

    monitor-enter v3

    .line 658
    :try_start_3
    iget-object v1, p2, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->listeners:Ljava/util/List;

    .line 659
    .local v1, "listeners":Ljava/util/Collection;, "Ljava/util/Collection<Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;>;"
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mPendingRequests:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_21

    .line 661
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;

    .line 662
    .local v0, "l":Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;
    iget-object v3, p2, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->blobHash:[B

    invoke-direct {p0, v0, v3, p3}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->postBlobDownloaded(Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;[BLjava/io/File;)V

    goto :goto_f

    .line 660
    .end local v0    # "l":Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;
    .end local v1    # "listeners":Ljava/util/Collection;, "Ljava/util/Collection<Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;>;"
    :catchall_21
    move-exception v2

    :try_start_22
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v2

    .line 664
    .restart local v1    # "listeners":Ljava/util/Collection;, "Ljava/util/Collection<Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;>;"
    :cond_24
    return-void
.end method

.method private downloadBlobFromSources(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;Ljava/util/Collection;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;)Ljava/io/File;
    .registers 23
    .param p1, "pbr"    # Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;
    .param p3, "cancellationSignal"    # Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;",
            "Ljava/util/Collection",
            "<",
            "Lmobisocial/omlib/db/entity/OMBlobSource;",
            ">;",
            "Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 429
    .local p2, "sources":Ljava/util/Collection;, "Ljava/util/Collection<Lmobisocial/omlib/db/entity/OMBlobSource;>;"
    invoke-static/range {p3 .. p3}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->throwIfCancelled(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;)V

    .line 431
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_7
    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_37

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmobisocial/omlib/db/entity/OMBlobSource;

    .line 432
    .local v13, "src":Lmobisocial/omlib/db/entity/OMBlobSource;
    iget-object v0, v13, Lmobisocial/omlib/db/entity/OMBlobSource;->source:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "file://"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 434
    new-instance v7, Ljava/io/File;

    iget-object v0, v13, Lmobisocial/omlib/db/entity/OMBlobSource;->source:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 435
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v17

    if-eqz v17, :cond_31

    .line 485
    .end local v7    # "file":Ljava/io/File;
    :goto_30
    return-object v7

    .line 438
    .restart local v7    # "file":Ljava/io/File;
    :cond_31
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->removeBlobSource(Lmobisocial/omlib/db/entity/OMBlobSource;)V

    goto :goto_7

    .line 442
    .end local v7    # "file":Ljava/io/File;
    .end local v13    # "src":Lmobisocial/omlib/db/entity/OMBlobSource;
    :cond_37
    const/4 v6, 0x0

    .line 443
    .local v6, "err":Lmobisocial/longdan/exception/LongdanException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->blobHash:[B

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lmobisocial/omlib/client/ClientBlobUtils;->getStoragePathForBlobWithHash([B)Ljava/io/File;

    move-result-object v8

    .line 444
    .local v8, "finalPath":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->blobHash:[B

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lmobisocial/omlib/client/ClientBlobUtils;->getTempStoragePathForBlobWithHash([B)Ljava/io/File;

    move-result-object v15

    .line 445
    .local v15, "tmpPath":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    .line 446
    .local v11, "parent":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v16

    if-nez v16, :cond_7c

    .line 447
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    move-result v16

    if-nez v16, :cond_7c

    .line 448
    new-instance v16, Lmobisocial/longdan/exception/LongdanClientException;

    const-string v17, "Failed to create download path"

    invoke-direct/range {v16 .. v17}, Lmobisocial/longdan/exception/LongdanClientException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 449
    :cond_7c
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_80
    :goto_80
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmobisocial/omlib/db/entity/OMBlobSource;

    .line 450
    .restart local v13    # "src":Lmobisocial/omlib/db/entity/OMBlobSource;
    iget-object v0, v13, Lmobisocial/omlib/db/entity/OMBlobSource;->source:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "http://"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a4

    iget-object v0, v13, Lmobisocial/omlib/db/entity/OMBlobSource;->source:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "https://"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_80

    .line 452
    :cond_a4
    :try_start_a4
    iget-object v0, v13, Lmobisocial/omlib/db/entity/OMBlobSource;->source:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-static {v0, v15, v1}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->downloadFileFromURL(Ljava/lang/String;Ljava/io/File;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;)[B

    move-result-object v4

    .line 453
    .local v4, "dlHash":[B
    move-object/from16 v0, p1

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->blobHash:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v17

    if-nez v17, :cond_cf

    .line 454
    new-instance v17, Lmobisocial/longdan/exception/LongdanClientException;

    const-string v18, "Hash mismatch."

    invoke-direct/range {v17 .. v18}, Lmobisocial/longdan/exception/LongdanClientException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_c6} :catch_c6

    .line 457
    .end local v4    # "dlHash":[B
    :catch_c6
    move-exception v5

    .line 458
    .local v5, "e":Ljava/io/IOException;
    if-nez v6, :cond_80

    .line 459
    new-instance v6, Lmobisocial/longdan/exception/LongdanNetworkException;

    .end local v6    # "err":Lmobisocial/longdan/exception/LongdanException;
    invoke-direct {v6, v5}, Lmobisocial/longdan/exception/LongdanNetworkException;-><init>(Ljava/lang/Exception;)V

    .restart local v6    # "err":Lmobisocial/longdan/exception/LongdanException;
    goto :goto_80

    .line 456
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v4    # "dlHash":[B
    :cond_cf
    :try_start_cf
    invoke-static {v15, v8}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->moveFile(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_c6

    move-result-object v7

    goto/16 :goto_30

    .line 463
    .end local v4    # "dlHash":[B
    .end local v13    # "src":Lmobisocial/omlib/db/entity/OMBlobSource;
    :cond_d5
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_d9
    :goto_d9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1d0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmobisocial/omlib/db/entity/OMBlobSource;

    .line 464
    .restart local v13    # "src":Lmobisocial/omlib/db/entity/OMBlobSource;
    iget-object v0, v13, Lmobisocial/omlib/db/entity/OMBlobSource;->source:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "longdan://"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_fd

    iget-object v0, v13, Lmobisocial/omlib/db/entity/OMBlobSource;->source:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "hosted://"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d9

    .line 466
    :cond_fd
    const/4 v3, 0x0

    .line 467
    .local v3, "cipher":Ljavax/crypto/Cipher;
    :try_start_fe
    iget-object v0, v13, Lmobisocial/omlib/db/entity/OMBlobSource;->encrypted:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_105
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_105} :catch_18a
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_fe .. :try_end_105} :catch_1a1

    move-result v17

    if-eqz v17, :cond_133

    .line 469
    :try_start_108
    const-string v17, "AES/CBC/PKCS7Padding"

    invoke-static/range {v17 .. v17}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 470
    new-instance v10, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v0, p1

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->blobHash:[B

    move-object/from16 v17, v0

    const-string v18, "AES"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v10, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 471
    .local v10, "key":Ljava/security/Key;
    new-instance v9, Ljavax/crypto/spec/IvParameterSpec;

    move-object/from16 v0, p1

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->blobHash:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 472
    .local v9, "iv":Ljavax/crypto/spec/IvParameterSpec;
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v3, v0, v10, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_133} :catch_194
    .catch Ljava/io/IOException; {:try_start_108 .. :try_end_133} :catch_18a
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_108 .. :try_end_133} :catch_1a1

    .line 477
    .end local v9    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v10    # "key":Ljava/security/Key;
    :cond_133
    :try_start_133
    new-instance v14, Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketRequest;

    invoke-direct {v14}, Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketRequest;-><init>()V

    .line 478
    .local v14, "ticketRequest":Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketRequest;
    iget-object v0, v13, Lmobisocial/omlib/db/entity/OMBlobSource;->source:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v14, Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketRequest;->BlobLinkString:Ljava/lang/String;

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v17

    const-class v18, Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketResponse;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v12

    check-cast v12, Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketResponse;

    .line 481
    .local v12, "resp":Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketResponse;
    iget-object v0, v12, Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketResponse;->BlobDownloadTicket:Lmobisocial/longdan/LDProtocols$LDBlobDownloadTicket;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDBlobDownloadTicket;->Url:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v12, Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketResponse;->BlobDownloadTicket:Lmobisocial/longdan/LDProtocols$LDBlobDownloadTicket;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDBlobDownloadTicket;->Headers:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p3

    invoke-static {v0, v1, v15, v3, v2}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->downloadFileFromURL(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Ljavax/crypto/Cipher;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;)[B

    move-result-object v4

    .line 482
    .restart local v4    # "dlHash":[B
    move-object/from16 v0, p1

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->blobHash:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v17

    if-nez v17, :cond_1ca

    .line 483
    new-instance v17, Lmobisocial/longdan/exception/LongdanClientException;

    const-string v18, "Hash mismatch."

    invoke-direct/range {v17 .. v18}, Lmobisocial/longdan/exception/LongdanClientException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_18a
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_18a} :catch_18a
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_133 .. :try_end_18a} :catch_1a1

    .line 486
    .end local v4    # "dlHash":[B
    .end local v12    # "resp":Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketResponse;
    .end local v14    # "ticketRequest":Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketRequest;
    :catch_18a
    move-exception v5

    .line 487
    .restart local v5    # "e":Ljava/io/IOException;
    if-nez v6, :cond_d9

    .line 488
    new-instance v6, Lmobisocial/longdan/exception/LongdanNetworkException;

    .end local v6    # "err":Lmobisocial/longdan/exception/LongdanException;
    invoke-direct {v6, v5}, Lmobisocial/longdan/exception/LongdanNetworkException;-><init>(Ljava/lang/Exception;)V

    .restart local v6    # "err":Lmobisocial/longdan/exception/LongdanException;
    goto/16 :goto_d9

    .line 473
    .end local v5    # "e":Ljava/io/IOException;
    :catch_194
    move-exception v5

    .line 474
    .local v5, "e":Ljava/lang/Exception;
    :try_start_195
    new-instance v17, Lmobisocial/longdan/exception/LongdanClientException;

    const-string v18, "Decryption not available"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v5}, Lmobisocial/longdan/exception/LongdanClientException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v17
    :try_end_1a1
    .catch Ljava/io/IOException; {:try_start_195 .. :try_end_1a1} :catch_18a
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_195 .. :try_end_1a1} :catch_1a1

    .line 489
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1a1
    move-exception v5

    .line 490
    .local v5, "e":Lmobisocial/longdan/exception/LongdanException;
    invoke-virtual {v5}, Lmobisocial/longdan/exception/LongdanException;->isPermanentError()Z

    move-result v17

    if-eqz v17, :cond_1c5

    .line 491
    const-string v17, "Omlib-blobs"

    const-string v18, "got error for link from blobsource so deleting"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;

    move-object/from16 v17, v0

    new-instance v18, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$7;-><init>(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;Lmobisocial/omlib/db/entity/OMBlobSource;)V

    invoke-virtual/range {v17 .. v18}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThreadAndWait(Lmobisocial/omlib/db/DatabaseRunnable;)V

    .line 500
    :cond_1c5
    if-nez v6, :cond_d9

    .line 501
    move-object v6, v5

    goto/16 :goto_d9

    .line 485
    .end local v5    # "e":Lmobisocial/longdan/exception/LongdanException;
    .restart local v4    # "dlHash":[B
    .restart local v12    # "resp":Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketResponse;
    .restart local v14    # "ticketRequest":Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketRequest;
    :cond_1ca
    :try_start_1ca
    invoke-static {v15, v8}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->moveFile(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    :try_end_1cd
    .catch Ljava/io/IOException; {:try_start_1ca .. :try_end_1cd} :catch_18a
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_1ca .. :try_end_1cd} :catch_1a1

    move-result-object v7

    goto/16 :goto_30

    .line 506
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "dlHash":[B
    .end local v12    # "resp":Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketResponse;
    .end local v13    # "src":Lmobisocial/omlib/db/entity/OMBlobSource;
    .end local v14    # "ticketRequest":Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketRequest;
    :cond_1d0
    if-eqz v6, :cond_1d3

    .line 507
    throw v6

    .line 508
    :cond_1d3
    new-instance v16, Lmobisocial/longdan/exception/LongdanClientException;

    const-string v17, "Failed to download from any source"

    invoke-direct/range {v16 .. v17}, Lmobisocial/longdan/exception/LongdanClientException;-><init>(Ljava/lang/String;)V

    throw v16
.end method

.method private static downloadFileFromURL(Ljava/lang/String;Ljava/io/File;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;)[B
    .registers 4
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "destination"    # Ljava/io/File;
    .param p2, "cancellationSignal"    # Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 633
    invoke-static {p0, v0, p1, v0, p2}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->downloadFileFromURL(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Ljavax/crypto/Cipher;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;)[B

    move-result-object v0

    return-object v0
.end method

.method private static downloadFileFromURL(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Ljavax/crypto/Cipher;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;)[B
    .registers 21
    .param p0, "urlString"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/io/File;
    .param p3, "decryptionCipher"    # Ljavax/crypto/Cipher;
    .param p4, "cancellationSignal"    # Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Ljavax/crypto/Cipher;",
            "Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 539
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v12, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 540
    .local v12, "url":Ljava/net/URL;
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 541
    .local v3, "conn":Ljava/net/HttpURLConnection;
    const-string v13, "GET"

    invoke-virtual {v3, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 542
    if-eqz p1, :cond_46

    .line 543
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1c
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_46

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 544
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v3, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_37} :catch_38

    goto :goto_1c

    .line 589
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "url":Ljava/net/URL;
    :catch_38
    move-exception v4

    .line 590
    .local v4, "e":Ljava/io/IOException;
    const-string v13, "Omlib-blobs"

    const-string v14, "IOException while reading blob"

    invoke-static {v13, v14, v4}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 591
    new-instance v13, Lmobisocial/longdan/exception/LongdanNetworkException;

    invoke-direct {v13, v4}, Lmobisocial/longdan/exception/LongdanNetworkException;-><init>(Ljava/lang/Exception;)V

    throw v13

    .line 549
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v12    # "url":Ljava/net/URL;
    :cond_46
    :try_start_46
    const-string v13, "MD5"

    invoke-static {v13}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_4b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_46 .. :try_end_4b} :catch_95
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4b} :catch_38

    move-result-object v9

    .line 553
    .local v9, "md5":Ljava/security/MessageDigest;
    :try_start_4c
    invoke-static/range {p4 .. p4}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->throwIfCancelled(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;)V

    .line 554
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 555
    invoke-static/range {p4 .. p4}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->throwIfCancelled(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;)V

    .line 556
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    .line 557
    .local v11, "responseCode":I
    sparse-switch v11, :sswitch_data_150

    .line 585
    const-string v13, "Omlib-blobs"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v15

    invoke-static {v15}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->slurp(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    new-instance v13, Lmobisocial/longdan/exception/LongdanNetworkException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Bad status code "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lmobisocial/longdan/exception/LongdanNetworkException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 550
    .end local v9    # "md5":Ljava/security/MessageDigest;
    .end local v11    # "responseCode":I
    :catch_95
    move-exception v4

    .line 551
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v13, Lmobisocial/longdan/exception/LongdanPermanentException;

    invoke-direct {v13, v4}, Lmobisocial/longdan/exception/LongdanPermanentException;-><init>(Ljava/lang/Exception;)V

    throw v13

    .line 559
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v9    # "md5":Ljava/security/MessageDigest;
    .restart local v11    # "responseCode":I
    :sswitch_9c
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 560
    .local v7, "ins":Ljava/io/InputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 561
    .local v6, "fos":Ljava/io/OutputStream;
    if-eqz p3, :cond_b1

    .line 562
    new-instance v8, Ljavax/crypto/CipherInputStream;

    move-object/from16 v0, p3

    invoke-direct {v8, v7, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .end local v7    # "ins":Ljava/io/InputStream;
    .local v8, "ins":Ljava/io/InputStream;
    move-object v7, v8

    .line 564
    .end local v8    # "ins":Ljava/io/InputStream;
    .restart local v7    # "ins":Ljava/io/InputStream;
    :cond_b1
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 565
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    const/16 v13, 0x1000

    new-array v2, v13, [B

    .line 567
    .local v2, "buf":[B
    :goto_ba
    invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I

    move-result v10

    .local v10, "read":I
    if-lez v10, :cond_cc

    .line 568
    invoke-static/range {p4 .. p4}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->throwIfCancelled(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;)V

    .line 569
    const/4 v13, 0x0

    invoke-virtual {v9, v2, v13, v10}, Ljava/security/MessageDigest;->update([BII)V

    .line 570
    const/4 v13, 0x0

    invoke-virtual {v1, v2, v13, v10}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_ba

    .line 572
    :cond_cc
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 573
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 588
    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v13

    return-object v13

    .line 576
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "buf":[B
    .end local v6    # "fos":Ljava/io/OutputStream;
    .end local v7    # "ins":Ljava/io/InputStream;
    .end local v10    # "read":I
    :sswitch_d7
    const-string v13, "Omlib-blobs"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v15

    invoke-static {v15}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->slurp(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    new-instance v13, Lmobisocial/longdan/exception/LongdanNetworkException;

    const-string v14, "Http Gateway Timeout"

    invoke-direct {v13, v14}, Lmobisocial/longdan/exception/LongdanNetworkException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 579
    :sswitch_ff
    const-string v13, "Omlib-blobs"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v15

    invoke-static {v15}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->slurp(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    new-instance v13, Lmobisocial/longdan/exception/LongdanNetworkException;

    const-string v14, "Http Unavailable"

    invoke-direct {v13, v14}, Lmobisocial/longdan/exception/LongdanNetworkException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 582
    :sswitch_127
    const-string v13, "Omlib-blobs"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v15

    invoke-static {v15}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->slurp(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    new-instance v13, Lmobisocial/longdan/exception/LongdanPermanentException;

    const-string v14, "Forbidden"

    invoke-direct {v13, v14}, Lmobisocial/longdan/exception/LongdanPermanentException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_14f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_14f} :catch_38

    .line 557
    nop

    :sswitch_data_150
    .sparse-switch
        0xc8 -> :sswitch_9c
        0x193 -> :sswitch_127
        0x1f7 -> :sswitch_ff
        0x1f8 -> :sswitch_d7
    .end sparse-switch
.end method

.method private executeSafely(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 132
    :try_start_0
    iget-object v1, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_d

    .line 133
    iget-object v1, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 138
    :cond_d
    :goto_d
    return-void

    .line 135
    :catch_e
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Omlib-blobs"

    const-string v2, "Executor not accepting job"

    invoke-static {v1, v2, v0}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method private static moveFile(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .registers 5
    .param p0, "tmpPath"    # Ljava/io/File;
    .param p1, "finalPath"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 637
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 638
    return-object p1

    .line 640
    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error saving file to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private postBlobDownloaded(Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;[BLjava/io/File;)V
    .registers 6
    .param p1, "listener"    # Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;
    .param p2, "blobHash"    # [B
    .param p3, "path"    # Ljava/io/File;

    .prologue
    .line 199
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanClient;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$1;-><init>(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;[BLjava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 208
    return-void
.end method

.method private postBlobFailed(Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;[BLmobisocial/longdan/exception/LongdanException;)V
    .registers 6
    .param p1, "listener"    # Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;
    .param p2, "blobHash"    # [B
    .param p3, "e"    # Lmobisocial/longdan/exception/LongdanException;

    .prologue
    .line 211
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanClient;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$2;-><init>(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;[BLmobisocial/longdan/exception/LongdanException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 220
    return-void
.end method

.method private removeBlobSource(Lmobisocial/omlib/db/entity/OMBlobSource;)V
    .registers 4
    .param p1, "source"    # Lmobisocial/omlib/db/entity/OMBlobSource;

    .prologue
    .line 667
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;

    new-instance v1, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$8;

    invoke-direct {v1, p0, p1}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$8;-><init>(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;Lmobisocial/omlib/db/entity/OMBlobSource;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThread(Lmobisocial/omlib/db/DatabaseRunnable;)V

    .line 674
    return-void
.end method

.method private rescheduleFailedDownload(Ljava/nio/ByteBuffer;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;)V
    .registers 11
    .param p1, "blobHashKey"    # Ljava/nio/ByteBuffer;
    .param p2, "pbr"    # Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;

    .prologue
    .line 677
    iget v2, p2, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->failCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p2, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->failCount:I

    .line 678
    const-wide/16 v2, 0x1e0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget v6, p2, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->failCount:I

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 679
    .local v0, "backoffSec":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p2, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->eligibleTime:J

    .line 680
    iget-object v3, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mRequestQueue:Ljava/util/LinkedList;

    monitor-enter v3

    .line 681
    :try_start_23
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 682
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mBlobDownloadRunner:Ljava/lang/Runnable;

    invoke-direct {p0, v2}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->executeSafely(Ljava/lang/Runnable;)V

    .line 683
    monitor-exit v3

    .line 684
    return-void

    .line 683
    :catchall_2f
    move-exception v2

    monitor-exit v3
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_2f

    throw v2
.end method

.method private resetBackoff()V
    .registers 9

    .prologue
    .line 307
    iget-object v4, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mRequestQueue:Ljava/util/LinkedList;

    monitor-enter v4

    .line 308
    :try_start_3
    iget-object v3, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 309
    .local v1, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/nio/ByteBuffer;>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 310
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 311
    .local v0, "blobHashWrapped":Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mPendingRequests:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;

    .line 312
    .local v2, "pbr":Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;
    if-nez v2, :cond_26

    .line 313
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_9

    .line 319
    .end local v0    # "blobHashWrapped":Ljava/nio/ByteBuffer;
    .end local v1    # "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/nio/ByteBuffer;>;"
    .end local v2    # "pbr":Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;
    :catchall_23
    move-exception v3

    monitor-exit v4
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v3

    .line 315
    .restart local v0    # "blobHashWrapped":Ljava/nio/ByteBuffer;
    .restart local v1    # "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/nio/ByteBuffer;>;"
    .restart local v2    # "pbr":Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;
    :cond_26
    const-wide/16 v6, 0x0

    :try_start_28
    iput-wide v6, v2, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->eligibleTime:J

    .line 316
    const/4 v3, 0x0

    iput v3, v2, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->failCount:I

    goto :goto_9

    .line 319
    .end local v0    # "blobHashWrapped":Ljava/nio/ByteBuffer;
    .end local v2    # "pbr":Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;
    :cond_2e
    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_23

    .line 320
    return-void
.end method

.method static slurp(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 8
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 512
    const/16 v1, 0x400

    .line 513
    .local v1, "bufferSize":I
    new-array v0, v1, [C

    .line 514
    .local v0, "buffer":[C
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 516
    .local v3, "out":Ljava/lang/StringBuilder;
    :try_start_9
    new-instance v2, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v2, p0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 518
    .local v2, "in":Ljava/io/Reader;
    :goto_10
    const/4 v5, 0x0

    array-length v6, v0

    invoke-virtual {v2, v0, v5, v6}, Ljava/io/Reader;->read([CII)I
    :try_end_15
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_15} :catch_22
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_15} :catch_24

    move-result v4

    .line 519
    .local v4, "rsz":I
    if-gez v4, :cond_1d

    .line 526
    .end local v2    # "in":Ljava/io/Reader;
    .end local v4    # "rsz":I
    :goto_18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 521
    .restart local v2    # "in":Ljava/io/Reader;
    .restart local v4    # "rsz":I
    :cond_1d
    const/4 v5, 0x0

    :try_start_1e
    invoke-virtual {v3, v0, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_21
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1e .. :try_end_21} :catch_22
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_24

    goto :goto_10

    .line 523
    .end local v2    # "in":Ljava/io/Reader;
    .end local v4    # "rsz":I
    :catch_22
    move-exception v5

    goto :goto_18

    .line 524
    :catch_24
    move-exception v5

    goto :goto_18
.end method

.method private throwIfCancelled(Landroid/os/CancellationSignal;)V
    .registers 5
    .param p1, "c"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 596
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 597
    new-instance v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$LongdanCancellationException;

    invoke-direct {v0}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$LongdanCancellationException;-><init>()V

    throw v0

    .line 599
    :cond_e
    iget-boolean v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mDisposed:Z

    if-eqz v0, :cond_1b

    .line 600
    new-instance v0, Lmobisocial/longdan/exception/LongdanClientException;

    const-string v1, "Downloader not available"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmobisocial/longdan/exception/LongdanClientException;-><init>(Ljava/lang/String;Z)V

    throw v0

    .line 602
    :cond_1b
    return-void
.end method

.method private static throwIfCancelled(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;)V
    .registers 2
    .param p0, "c"    # Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 605
    invoke-virtual {p0}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;->allCancelled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 606
    new-instance v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$LongdanCancellationException;

    invoke-direct {v0}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$LongdanCancellationException;-><init>()V

    throw v0

    .line 608
    :cond_c
    return-void
.end method


# virtual methods
.method deleteDir(Ljava/io/File;Z)V
    .registers 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "deleteSelf"    # Z

    .prologue
    .line 145
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 146
    .local v0, "contents":[Ljava/io/File;
    if-eqz v0, :cond_13

    .line 147
    array-length v3, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v3, :cond_13

    aget-object v1, v0, v2

    .line 148
    .local v1, "f":Ljava/io/File;
    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->deleteDir(Ljava/io/File;Z)V

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 151
    .end local v1    # "f":Ljava/io/File;
    :cond_13
    if-eqz p2, :cond_18

    .line 152
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 153
    :cond_18
    return-void
.end method

.method getBlobForHash([BZLmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;Landroid/os/CancellationSignal;)V
    .registers 11
    .param p1, "blobHash"    # [B
    .param p2, "frontOfQueue"    # Z
    .param p3, "listener"    # Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    const/4 v5, 0x0

    .line 156
    iget-object v3, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v3, :cond_17

    .line 157
    const-string v3, "Omlib-blobs"

    const-string v4, "executor is null so ignoring getblob"

    invoke-static {v3, v4}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    new-instance v3, Lmobisocial/longdan/exception/LongdanClientException;

    const-string v4, "Downloader not available"

    invoke-direct {v3, v4, v5}, Lmobisocial/longdan/exception/LongdanClientException;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, p3, p1, v3}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->postBlobFailed(Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;[BLmobisocial/longdan/exception/LongdanException;)V

    .line 196
    :goto_16
    return-void

    .line 161
    :cond_17
    iget-boolean v3, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mDisposed:Z

    if-eqz v3, :cond_2d

    .line 162
    const-string v3, "Omlib-blobs"

    const-string v4, "Blob download processor not running."

    invoke-static {v3, v4}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v3, Lmobisocial/longdan/exception/LongdanClientException;

    const-string v4, "Downloader not available"

    invoke-direct {v3, v4, v5}, Lmobisocial/longdan/exception/LongdanClientException;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, p3, p1, v3}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->postBlobFailed(Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;[BLmobisocial/longdan/exception/LongdanException;)V

    goto :goto_16

    .line 166
    :cond_2d
    if-eqz p4, :cond_3d

    invoke-virtual {p4}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 167
    new-instance v3, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$LongdanCancellationException;

    invoke-direct {v3}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$LongdanCancellationException;-><init>()V

    invoke-direct {p0, p3, p1, v3}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->postBlobFailed(Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;[BLmobisocial/longdan/exception/LongdanException;)V

    .line 169
    :cond_3d
    iget-object v3, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v3, v3, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    invoke-virtual {v3, p1}, Lmobisocial/omlib/client/ClientBlobUtils;->getStoragePathForBlobWithHash([B)Ljava/io/File;

    move-result-object v0

    .line 170
    .local v0, "path":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 171
    invoke-direct {p0, p3, p1, v0}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->postBlobDownloaded(Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;[BLjava/io/File;)V

    goto :goto_16

    .line 174
    :cond_4f
    iget-object v4, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mRequestQueue:Ljava/util/LinkedList;

    monitor-enter v4

    .line 175
    :try_start_52
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 176
    .local v2, "wrapped":Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mPendingRequests:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;

    .line 177
    .local v1, "pbr":Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;
    if-nez v1, :cond_84

    .line 178
    new-instance v1, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;

    .end local v1    # "pbr":Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;
    invoke-direct {v1, p1, p2}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;-><init>([BZ)V

    .line 179
    .restart local v1    # "pbr":Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;
    iget-object v3, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mPendingRequests:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    if-eqz p2, :cond_7e

    .line 181
    iget-object v3, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 185
    :goto_71
    iget-object v3, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mBlobDownloadRunner:Ljava/lang/Runnable;

    invoke-direct {p0, v3}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->executeSafely(Ljava/lang/Runnable;)V

    .line 194
    :cond_76
    :goto_76
    invoke-virtual {v1, p3, p4}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->addListener(Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;Landroid/os/CancellationSignal;)V

    .line 195
    monitor-exit v4

    goto :goto_16

    .end local v1    # "pbr":Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;
    .end local v2    # "wrapped":Ljava/nio/ByteBuffer;
    :catchall_7b
    move-exception v3

    monitor-exit v4
    :try_end_7d
    .catchall {:try_start_52 .. :try_end_7d} :catchall_7b

    throw v3

    .line 183
    .restart local v1    # "pbr":Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;
    .restart local v2    # "wrapped":Ljava/nio/ByteBuffer;
    :cond_7e
    :try_start_7e
    iget-object v3, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_71

    .line 187
    :cond_84
    iget-boolean v3, v1, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->highPriority:Z

    or-int/2addr v3, p2

    iput-boolean v3, v1, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->highPriority:Z

    .line 188
    if-eqz p2, :cond_76

    .line 189
    iget-object v3, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 190
    iget-object v3, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_98
    .catchall {:try_start_7e .. :try_end_98} :catchall_7b

    goto :goto_76
.end method

.method getBlobForHashAndWait([BZILandroid/os/CancellationSignal;)Ljava/io/File;
    .registers 16
    .param p1, "blobHash"    # [B
    .param p2, "frontOfQueue"    # Z
    .param p3, "timeout"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 223
    if-eqz p4, :cond_17

    move-object v0, p4

    .line 224
    .local v0, "cancellation":Landroid/os/CancellationSignal;
    :goto_5
    invoke-direct {p0, v0}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->throwIfCancelled(Landroid/os/CancellationSignal;)V

    .line 225
    iget-object v7, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v7, v7, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    invoke-virtual {v7, p1}, Lmobisocial/omlib/client/ClientBlobUtils;->getStoragePathForBlobWithHash([B)Ljava/io/File;

    move-result-object v6

    .line 226
    .local v6, "path":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 293
    .end local v6    # "path":Ljava/io/File;
    :goto_16
    return-object v6

    .line 223
    .end local v0    # "cancellation":Landroid/os/CancellationSignal;
    :cond_17
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    goto :goto_5

    .line 229
    .restart local v0    # "cancellation":Landroid/os/CancellationSignal;
    .restart local v6    # "path":Ljava/io/File;
    :cond_1d
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 230
    .local v5, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v3, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$BlobPathHolder;

    invoke-direct {v3, p0}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$BlobPathHolder;-><init>(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;)V

    .line 231
    .local v3, "holder":Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$BlobPathHolder;
    new-array v2, v8, [Lmobisocial/longdan/exception/LongdanException;

    .line 232
    .local v2, "failure":[Lmobisocial/longdan/exception/LongdanException;
    const/4 v4, 0x0

    .line 233
    .local v4, "interrupted":Z
    new-instance v7, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$3;

    invoke-direct {v7, p0, v3, v5, v2}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$3;-><init>(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$BlobPathHolder;Ljava/util/concurrent/CountDownLatch;[Lmobisocial/longdan/exception/LongdanException;)V

    invoke-virtual {p0, p1, p2, v7, v0}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->getBlobForHash([BZLmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;Landroid/os/CancellationSignal;)V

    .line 248
    if-lez p3, :cond_41

    .line 249
    int-to-long v8, p3

    :try_start_35
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v8, v9, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_3a} :catch_45

    .line 257
    :goto_3a
    aget-object v7, v2, v10

    if-eqz v7, :cond_4b

    .line 258
    aget-object v7, v2, v10

    throw v7

    .line 251
    :cond_41
    :try_start_41
    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_3a

    .line 253
    :catch_45
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 255
    const/4 v4, 0x1

    goto :goto_3a

    .line 259
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_4b
    iget-object v7, v3, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$BlobPathHolder;->blobFile:Ljava/io/File;

    if-nez v7, :cond_61

    .line 260
    if-eqz v4, :cond_59

    .line 261
    new-instance v7, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$4;

    const-string v8, "Download cancelled/interrupted"

    invoke-direct {v7, p0, v8}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$4;-><init>(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;Ljava/lang/String;)V

    throw v7

    .line 279
    :cond_59
    new-instance v7, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$5;

    const-string v8, "Request Timed Out"

    invoke-direct {v7, p0, v8}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$5;-><init>(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;Ljava/lang/String;)V

    throw v7

    .line 293
    :cond_61
    iget-object v6, v3, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$BlobPathHolder;->blobFile:Ljava/io/File;

    goto :goto_16
.end method

.method onNetworkConnectivityChanged(Z)V
    .registers 4
    .param p1, "connected"    # Z

    .prologue
    .line 297
    iget-object v1, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mBackoffLock:Ljava/lang/Object;

    monitor-enter v1

    .line 298
    if-nez p1, :cond_14

    const/4 v0, 0x1

    :goto_6
    :try_start_6
    iput-boolean v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mNetworkUnavailable:Z

    .line 299
    if-eqz p1, :cond_d

    .line 300
    invoke-direct {p0}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->resetBackoff()V

    .line 302
    :cond_d
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mBackoffLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 303
    monitor-exit v1

    .line 304
    return-void

    .line 298
    :cond_14
    const/4 v0, 0x0

    goto :goto_6

    .line 303
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public purgeBlobs()V
    .registers 3

    .prologue
    .line 141
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    invoke-virtual {v0}, Lmobisocial/omlib/client/ClientBlobUtils;->getBlobRootDir()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->deleteDir(Ljava/io/File;Z)V

    .line 142
    return-void
.end method

.method public sourcesBecameAvailable(Ljava/util/Collection;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 732
    .local p1, "hashesWithSource":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    iget-object v4, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mRequestQueue:Ljava/util/LinkedList;

    monitor-enter v4

    .line 733
    :try_start_3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 734
    .local v0, "blobHash":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 735
    .local v2, "wrapped":Ljava/nio/ByteBuffer;
    iget-object v5, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mDeferredRequests:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 736
    iget-object v5, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mPendingRequests:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;

    .line 737
    .local v1, "pbr":Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;
    if-eqz v1, :cond_7

    .line 738
    iget-boolean v5, v1, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->highPriority:Z

    if-eqz v5, :cond_3b

    .line 739
    iget-object v5, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 743
    :goto_32
    iget-object v5, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mBlobDownloadRunner:Ljava/lang/Runnable;

    invoke-direct {p0, v5}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->executeSafely(Ljava/lang/Runnable;)V

    goto :goto_7

    .line 747
    .end local v0    # "blobHash":[B
    .end local v1    # "pbr":Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;
    .end local v2    # "wrapped":Ljava/nio/ByteBuffer;
    :catchall_38
    move-exception v3

    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v3

    .line 741
    .restart local v0    # "blobHash":[B
    .restart local v1    # "pbr":Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;
    .restart local v2    # "wrapped":Ljava/nio/ByteBuffer;
    :cond_3b
    :try_start_3b
    iget-object v5, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_32

    .line 747
    .end local v0    # "blobHash":[B
    .end local v1    # "pbr":Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;
    .end local v2    # "wrapped":Ljava/nio/ByteBuffer;
    :cond_41
    monitor-exit v4
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_38

    .line 748
    return-void
.end method

.method public declared-synchronized start()V
    .registers 9

    .prologue
    .line 107
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x2

    const/4 v3, 0x4

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 108
    .local v1, "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 109
    iput-object v1, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 110
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    invoke-virtual {v0}, Lmobisocial/omlib/client/ClientBlobUtils;->getBlobRootDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->blobRootDir:Ljava/io/File;

    .line 111
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->blobRootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_49

    .line 112
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->blobRootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 113
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->blobRootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 114
    :cond_36
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->blobRootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_49

    .line 115
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Blob directory not available"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_46

    .line 107
    .end local v1    # "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0

    .line 118
    .restart local v1    # "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    :cond_49
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized stop()V
    .registers 5

    .prologue
    .line 121
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mDisposed:Z

    .line 122
    const-string v0, "Omlib-blobs"

    const-string v1, "stop called on blob processor"

    invoke-static {v0, v1}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_1b

    .line 124
    :try_start_b
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 125
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0x2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_19} :catch_1e
    .catchall {:try_start_b .. :try_end_19} :catchall_1b

    .line 128
    :goto_19
    monitor-exit p0

    return-void

    .line 121
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 126
    :catch_1e
    move-exception v0

    goto :goto_19
.end method
