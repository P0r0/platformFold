.class public Lmobisocial/omlib/client/LongdanBlobUploadProcessor;
.super Ljava/lang/Object;
.source "LongdanBlobUploadProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;,
        Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;,
        Lmobisocial/omlib/client/LongdanBlobUploadProcessor$ResultContainer;
    }
.end annotation


# static fields
.field static final ENCRYPT_UPLOADS:Z

.field static TAG:Ljava/lang/String;


# instance fields
.field final CORE_POOL_SIZE:I

.field final MAX_POOL_SIZE:I

.field final THREAD_KEEPALIVE_SEC:J

.field private final mClient:Lmobisocial/omlib/client/LongdanClient;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-string v0, "Omlib-Upload"

    sput-object v0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmobisocial/omlib/client/LongdanClient;)V
    .registers 4
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x2

    iput v0, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor;->CORE_POOL_SIZE:I

    .line 54
    const/4 v0, 0x3

    iput v0, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor;->MAX_POOL_SIZE:I

    .line 56
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor;->THREAD_KEEPALIVE_SEC:J

    .line 59
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lmobisocial/omlib/client/LongdanBlobUploadProcessor;)Lmobisocial/omlib/client/LongdanClient;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/client/LongdanBlobUploadProcessor;

    .prologue
    .line 42
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;

    return-object v0
.end method

.method private executeSafely(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 78
    :try_start_0
    iget-object v1, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 82
    :goto_5
    return-void

    .line 79
    :catch_6
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmobisocial/omlib/client/LongdanBlobUploadProcessor;->TAG:Ljava/lang/String;

    const-string v2, "Executor not accepting job"

    invoke-static {v1, v2, v0}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method


# virtual methods
.method public performUpload(Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;Lmobisocial/omlib/client/interfaces/LongdanBlobUploadListener;)V
    .registers 4
    .param p1, "request"    # Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;
    .param p2, "listener"    # Lmobisocial/omlib/client/interfaces/LongdanBlobUploadListener;

    .prologue
    .line 120
    new-instance v0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;

    invoke-direct {v0, p0, p1, p2}, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;-><init>(Lmobisocial/omlib/client/LongdanBlobUploadProcessor;Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;Lmobisocial/omlib/client/interfaces/LongdanBlobUploadListener;)V

    invoke-direct {p0, v0}, Lmobisocial/omlib/client/LongdanBlobUploadProcessor;->executeSafely(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method public performUploadAndWait(Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;)Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    .registers 7
    .param p1, "request"    # Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$ResultContainer;

    invoke-direct {v0, p0}, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$ResultContainer;-><init>(Lmobisocial/omlib/client/LongdanBlobUploadProcessor;)V

    .line 86
    .local v0, "container":Lmobisocial/omlib/client/LongdanBlobUploadProcessor$ResultContainer;
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 87
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v3, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$1;

    invoke-direct {v3, p0, v0, v2}, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$1;-><init>(Lmobisocial/omlib/client/LongdanBlobUploadProcessor;Lmobisocial/omlib/client/LongdanBlobUploadProcessor$ResultContainer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, v3}, Lmobisocial/omlib/client/LongdanBlobUploadProcessor;->performUpload(Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;Lmobisocial/omlib/client/interfaces/LongdanBlobUploadListener;)V

    .line 102
    :try_start_13
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_16} :catch_1d

    .line 106
    :goto_16
    iget-object v3, v0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$ResultContainer;->exception:Lmobisocial/longdan/exception/LongdanException;

    if-eqz v3, :cond_27

    .line 107
    iget-object v3, v0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$ResultContainer;->exception:Lmobisocial/longdan/exception/LongdanException;

    throw v3

    .line 103
    :catch_1d
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v3, Lmobisocial/longdan/exception/LongdanClientException;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lmobisocial/longdan/exception/LongdanClientException;-><init>(Ljava/lang/Exception;Z)V

    iput-object v3, v0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$ResultContainer;->exception:Lmobisocial/longdan/exception/LongdanException;

    goto :goto_16

    .line 109
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_27
    iget-object v3, v0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$ResultContainer;->result:Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;

    return-object v3
.end method

.method public declared-synchronized start()V
    .registers 9

    .prologue
    .line 63
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x2

    const/4 v3, 0x3

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 64
    .local v1, "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 65
    iput-object v1, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor;->mExecutor:Ljava/util/concurrent/ExecutorService;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 66
    monitor-exit p0

    return-void

    .line 63
    .end local v1    # "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 5

    .prologue
    .line 70
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 71
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0x2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_14
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 74
    :goto_f
    monitor-exit p0

    return-void

    .line 70
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    .line 72
    :catch_14
    move-exception v0

    goto :goto_f
.end method
