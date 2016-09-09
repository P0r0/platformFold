.class public Lmobisocial/omlib/client/LongdanMessageConsumer;
.super Ljava/lang/Object;
.source "LongdanMessageConsumer.java"

# interfaces
.implements Lmobisocial/longdan/net/WsRpcConnectionHandler$SessionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;
    }
.end annotation


# static fields
.field private static final MAX_CHUNK_SIZE:I = 0xfa

.field public static final MAX_MULTIPLIER:I = 0x1e

.field private static final OLDER_DESIRED_CHUNK_SIZE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "LongdanMessageConsumer"


# instance fields
.field final CORE_POOL_SIZE:I

.field final MAX_POOL_SIZE:I

.field final THREAD_KEEPALIVE_SEC:J

.field private mBackoff:I

.field private final mClient:Lmobisocial/omlib/client/LongdanClient;

.field private mDBAccess:Lmobisocial/omlib/db/OMSQLiteHelper;

.field private mDisposed:Z

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mFeedsToSyncPendingCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mQueuePollerPool:Ljava/util/concurrent/ExecutorService;

.field private final mQueuedFeeds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSyncListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lmobisocial/omlib/interfaces/SyncStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncState:Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;

.field private final mSyncStateLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lmobisocial/omlib/client/LongdanClient;)V
    .registers 10
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;

    .prologue
    const-wide/16 v4, 0xa

    const/4 v2, 0x4

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mSyncStateLock:Ljava/lang/Object;

    .line 101
    iput v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->CORE_POOL_SIZE:I

    .line 103
    iput v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->MAX_POOL_SIZE:I

    .line 105
    iput-wide v4, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->THREAD_KEEPALIVE_SEC:J

    .line 108
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;

    .line 109
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mSyncListeners:Ljava/util/Set;

    .line 110
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mFeedsToSyncPendingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 111
    sget-object v3, Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;->Finished:Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;

    iput-object v3, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mSyncState:Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;

    .line 112
    new-instance v3, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v3}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v3, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 113
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mQueuedFeeds:Ljava/util/Set;

    .line 114
    iget-object v3, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v3}, Lmobisocial/omlib/client/LongdanClient;->getDbHelper()Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v3

    iput-object v3, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mDBAccess:Lmobisocial/omlib/db/OMSQLiteHelper;

    .line 115
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 116
    .local v1, "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 117
    iput-object v1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mQueuePollerPool:Ljava/util/concurrent/ExecutorService;

    .line 118
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_56
    if-ge v0, v2, :cond_65

    .line 119
    iget-object v3, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mQueuePollerPool:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lmobisocial/omlib/client/LongdanMessageConsumer$1;

    invoke-direct {v4, p0}, Lmobisocial/omlib/client/LongdanMessageConsumer$1;-><init>(Lmobisocial/omlib/client/LongdanMessageConsumer;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 131
    :cond_65
    return-void
.end method

.method static synthetic access$000(Lmobisocial/omlib/client/LongdanMessageConsumer;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlib/client/LongdanMessageConsumer;

    .prologue
    .line 67
    invoke-direct {p0}, Lmobisocial/omlib/client/LongdanMessageConsumer;->registerPushReceivers()V

    return-void
.end method

.method static synthetic access$100(Lmobisocial/omlib/client/LongdanMessageConsumer;)Lmobisocial/omlib/client/LongdanClient;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/client/LongdanMessageConsumer;

    .prologue
    .line 67
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;

    return-object v0
.end method

.method static synthetic access$1000(Lmobisocial/omlib/client/LongdanMessageConsumer;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/client/LongdanMessageConsumer;

    .prologue
    .line 67
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mQueuedFeeds:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1100(Lmobisocial/omlib/client/LongdanMessageConsumer;)Lmobisocial/omlib/db/OMSQLiteHelper;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/client/LongdanMessageConsumer;

    .prologue
    .line 67
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mDBAccess:Lmobisocial/omlib/db/OMSQLiteHelper;

    return-object v0
.end method

.method static synthetic access$1200(Lmobisocial/omlib/client/LongdanMessageConsumer;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlib/client/LongdanMessageConsumer;

    .prologue
    .line 67
    invoke-direct {p0}, Lmobisocial/omlib/client/LongdanMessageConsumer;->fetchDirtyFeeds()V

    return-void
.end method

.method static synthetic access$1300(Lmobisocial/omlib/client/LongdanMessageConsumer;Ljava/util/List;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 4
    .param p0, "x0"    # Lmobisocial/omlib/client/LongdanMessageConsumer;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "x3"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lmobisocial/omlib/client/LongdanMessageConsumer;->processMessageChunksInTransaction(Ljava/util/List;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V

    return-void
.end method

.method static synthetic access$200(Lmobisocial/omlib/client/LongdanMessageConsumer;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlib/client/LongdanMessageConsumer;

    .prologue
    .line 67
    invoke-direct {p0}, Lmobisocial/omlib/client/LongdanMessageConsumer;->triggerResync()V

    return-void
.end method

.method static synthetic access$300(Lmobisocial/omlib/client/LongdanMessageConsumer;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlib/client/LongdanMessageConsumer;

    .prologue
    .line 67
    invoke-direct {p0}, Lmobisocial/omlib/client/LongdanMessageConsumer;->notifySubscriptionFail()V

    return-void
.end method

.method static synthetic access$400(Lmobisocial/omlib/client/LongdanMessageConsumer;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/client/LongdanMessageConsumer;

    .prologue
    .line 67
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mSyncStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lmobisocial/omlib/client/LongdanMessageConsumer;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/client/LongdanMessageConsumer;

    .prologue
    .line 67
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mSyncListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$600(Lmobisocial/omlib/client/LongdanMessageConsumer;)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/client/LongdanMessageConsumer;

    .prologue
    .line 67
    invoke-direct {p0}, Lmobisocial/omlib/client/LongdanMessageConsumer;->doSubscribe()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lmobisocial/omlib/client/LongdanMessageConsumer;)I
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/client/LongdanMessageConsumer;

    .prologue
    .line 67
    iget v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mBackoff:I

    return v0
.end method

.method static synthetic access$708(Lmobisocial/omlib/client/LongdanMessageConsumer;)I
    .registers 3
    .param p0, "x0"    # Lmobisocial/omlib/client/LongdanMessageConsumer;

    .prologue
    .line 67
    iget v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mBackoff:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mBackoff:I

    return v0
.end method

.method static synthetic access$800(Lmobisocial/omlib/client/LongdanMessageConsumer;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/client/LongdanMessageConsumer;

    .prologue
    .line 67
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mFeedsToSyncPendingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$900(Lmobisocial/omlib/client/LongdanMessageConsumer;)Ljava/util/concurrent/PriorityBlockingQueue;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/client/LongdanMessageConsumer;

    .prologue
    .line 67
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    return-object v0
.end method

.method private doSubscribe()Z
    .registers 4

    .prologue
    .line 214
    :try_start_0
    iget-object v1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v1

    new-instance v2, Lmobisocial/longdan/LDProtocols$LDSubscribeForAccountInboxRequest;

    invoke-direct {v2}, Lmobisocial/longdan/LDProtocols$LDSubscribeForAccountInboxRequest;-><init>()V

    invoke-virtual {v1, v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callForSubscribe(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V
    :try_end_e
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_0 .. :try_end_e} :catch_10

    .line 215
    const/4 v1, 0x1

    .line 218
    :goto_f
    return v1

    .line 216
    :catch_10
    move-exception v0

    .line 217
    .local v0, "e":Lmobisocial/longdan/exception/LongdanException;
    const-string v1, "LongdanMessageConsumer"

    const-string v2, "error subscribing"

    invoke-static {v1, v2, v0}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private executeSafely(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 233
    :try_start_0
    iget-object v1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 237
    :goto_5
    return-void

    .line 234
    :catch_6
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LongdanMessageConsumer"

    const-string v2, "Executor not accepting job"

    invoke-static {v1, v2, v0}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method private fetchDirtyFeeds()V
    .registers 23

    .prologue
    .line 324
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mBackoff:I

    .line 325
    const/4 v15, 0x0

    .line 326
    .local v15, "caughtUp":Z
    const/16 v18, 0x0

    .line 328
    .local v18, "needsBackoff":Z
    :goto_8
    if-eqz v18, :cond_51

    .line 329
    sget v2, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_33

    .line 330
    const-string v2, "LongdanMessageConsumer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "needs backoff, sleeping for: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v9, v0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mBackoff:I

    mul-int/lit8 v9, v9, 0x2

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, " seconds"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_33
    move-object/from16 v0, p0

    iget v2, v0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mBackoff:I

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_45

    .line 332
    move-object/from16 v0, p0

    iget v2, v0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mBackoff:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mBackoff:I

    .line 335
    :cond_45
    :try_start_45
    move-object/from16 v0, p0

    iget v2, v0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mBackoff:I

    mul-int/lit16 v2, v2, 0x7d0

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4f
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_4f} :catch_179

    .line 338
    :goto_4f
    const/16 v18, 0x0

    .line 340
    :cond_51
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mDBAccess:Lmobisocial/omlib/db/OMSQLiteHelper;

    const-class v3, Lmobisocial/omlib/db/entity/OMDevice;

    const-wide/16 v20, 0x1

    move-wide/from16 v0, v20

    invoke-virtual {v2, v3, v0, v1}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v7

    check-cast v7, Lmobisocial/omlib/db/entity/OMDevice;

    .line 341
    .local v7, "device":Lmobisocial/omlib/db/entity/OMDevice;
    const/4 v2, 0x1

    new-array v5, v2, [J

    .line 342
    .local v5, "lastSyncedTime":[J
    sget v2, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_a1

    .line 343
    const-string v2, "LongdanMessageConsumer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "caughtup: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, " feedSyncStart: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v0, v7, Lmobisocial/omlib/db/entity/OMDevice;->feedSyncStart:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, " feedSyncSplit: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v0, v7, Lmobisocial/omlib/db/entity/OMDevice;->feedSyncSplit:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_a1
    if-nez v15, :cond_138

    .line 345
    const/4 v2, 0x0

    iget-wide v0, v7, Lmobisocial/omlib/db/entity/OMDevice;->feedSyncEnd:J

    move-wide/from16 v20, v0

    aput-wide v20, v5, v2

    .line 351
    :goto_aa
    new-instance v16, Lmobisocial/longdan/LDProtocols$LDGetDirtyFeedsRequest;

    invoke-direct/range {v16 .. v16}, Lmobisocial/longdan/LDProtocols$LDGetDirtyFeedsRequest;-><init>()V

    .line 352
    .local v16, "dirtyFeedsRequest":Lmobisocial/longdan/LDProtocols$LDGetDirtyFeedsRequest;
    const/4 v2, 0x0

    aget-wide v2, v5, v2

    move-object/from16 v0, v16

    iput-wide v2, v0, Lmobisocial/longdan/LDProtocols$LDGetDirtyFeedsRequest;->Since:J

    .line 353
    move v6, v15

    .line 355
    .local v6, "amCaughtUp":Z
    :try_start_b7
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 356
    .local v8, "feedsToFetch":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lmobisocial/omlib/db/entity/OMFeed;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v2}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v2

    const-class v3, Lmobisocial/longdan/LDProtocols$LDDirtyFeedsResponse;

    const/4 v9, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3, v9}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Z)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v4

    check-cast v4, Lmobisocial/longdan/LDProtocols$LDDirtyFeedsResponse;

    .line 357
    .local v4, "response":Lmobisocial/longdan/LDProtocols$LDDirtyFeedsResponse;
    sget v2, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_ec

    .line 358
    const-string v2, "LongdanMessageConsumer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "got dirty feeds resp: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_ec
    move-object/from16 v0, p0

    iget-object v9, v0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;

    new-instance v2, Lmobisocial/omlib/client/LongdanMessageConsumer$12;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lmobisocial/omlib/client/LongdanMessageConsumer$12;-><init>(Lmobisocial/omlib/client/LongdanMessageConsumer;Lmobisocial/longdan/LDProtocols$LDDirtyFeedsResponse;[JZLmobisocial/omlib/db/entity/OMDevice;Ljava/util/LinkedList;)V

    invoke-virtual {v9, v2}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThreadAndWait(Lmobisocial/omlib/db/DatabaseRunnable;)V

    .line 413
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v2}, Lmobisocial/omlib/client/LongdanMessageConsumer;->enqueueFeedsForFetch(Ljava/util/List;Z)V

    .line 414
    move v11, v15

    .line 415
    .local v11, "wasCaughtUp":Z
    const/4 v2, 0x0

    aget-wide v12, v5, v2

    .line 416
    .local v12, "deviceLastSyncTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;

    new-instance v9, Lmobisocial/omlib/client/LongdanMessageConsumer$13;

    move-object/from16 v10, p0

    move-object v14, v4

    invoke-direct/range {v9 .. v14}, Lmobisocial/omlib/client/LongdanMessageConsumer$13;-><init>(Lmobisocial/omlib/client/LongdanMessageConsumer;ZJLmobisocial/longdan/LDProtocols$LDDirtyFeedsResponse;)V

    invoke-virtual {v2, v9}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThreadAndWait(Lmobisocial/omlib/db/DatabaseRunnable;)V

    .line 438
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, v4, Lmobisocial/longdan/LDProtocols$LDDirtyFeedsResponse;->Partial:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z
    :try_end_11a
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_b7 .. :try_end_11a} :catch_14b

    move-result v2

    if-nez v2, :cond_11e

    .line 439
    const/4 v15, 0x1

    .line 452
    .end local v4    # "response":Lmobisocial/longdan/LDProtocols$LDDirtyFeedsResponse;
    .end local v8    # "feedsToFetch":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lmobisocial/omlib/db/entity/OMFeed;>;"
    .end local v11    # "wasCaughtUp":Z
    .end local v12    # "deviceLastSyncTime":J
    :cond_11e
    :goto_11e
    const-string v2, "LongdanMessageConsumer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "putting sync time: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 346
    .end local v6    # "amCaughtUp":Z
    .end local v16    # "dirtyFeedsRequest":Lmobisocial/longdan/LDProtocols$LDGetDirtyFeedsRequest;
    :cond_138
    iget-wide v2, v7, Lmobisocial/omlib/db/entity/OMDevice;->feedSyncStart:J

    iget-wide v0, v7, Lmobisocial/omlib/db/entity/OMDevice;->feedSyncSplit:J

    move-wide/from16 v20, v0

    cmp-long v2, v2, v20

    if-gez v2, :cond_167

    .line 347
    const/4 v2, 0x0

    iget-wide v0, v7, Lmobisocial/omlib/db/entity/OMDevice;->feedSyncStart:J

    move-wide/from16 v20, v0

    aput-wide v20, v5, v2

    goto/16 :goto_aa

    .line 441
    .restart local v6    # "amCaughtUp":Z
    .restart local v16    # "dirtyFeedsRequest":Lmobisocial/longdan/LDProtocols$LDGetDirtyFeedsRequest;
    :catch_14b
    move-exception v17

    .line 442
    .local v17, "e":Lmobisocial/longdan/exception/LongdanException;
    invoke-virtual/range {v17 .. v17}, Lmobisocial/longdan/exception/LongdanException;->isPermanentError()Z

    move-result v2

    if-eqz v2, :cond_16d

    .line 443
    sget-object v2, Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;->Finished:Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lmobisocial/omlib/client/LongdanMessageConsumer;->setSyncState(Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;)V

    .line 444
    const-string v2, "LongdanMessageConsumer"

    const-string v3, "catchup failed permanently"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 445
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mBackoff:I

    .line 455
    .end local v6    # "amCaughtUp":Z
    .end local v16    # "dirtyFeedsRequest":Lmobisocial/longdan/LDProtocols$LDGetDirtyFeedsRequest;
    .end local v17    # "e":Lmobisocial/longdan/exception/LongdanException;
    :cond_167
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mBackoff:I

    .line 456
    return-void

    .line 448
    .restart local v6    # "amCaughtUp":Z
    .restart local v16    # "dirtyFeedsRequest":Lmobisocial/longdan/LDProtocols$LDGetDirtyFeedsRequest;
    .restart local v17    # "e":Lmobisocial/longdan/exception/LongdanException;
    :cond_16d
    const-string v2, "LongdanMessageConsumer"

    const-string v3, "catchup failed temporarily"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 449
    const/16 v18, 0x1

    goto :goto_11e

    .line 336
    .end local v5    # "lastSyncedTime":[J
    .end local v6    # "amCaughtUp":Z
    .end local v7    # "device":Lmobisocial/omlib/db/entity/OMDevice;
    .end local v16    # "dirtyFeedsRequest":Lmobisocial/longdan/LDProtocols$LDGetDirtyFeedsRequest;
    .end local v17    # "e":Lmobisocial/longdan/exception/LongdanException;
    :catch_179
    move-exception v2

    goto/16 :goto_4f
.end method

.method private fetchFeedMembers(Lmobisocial/omlib/db/entity/OMFeed;)V
    .registers 13
    .param p1, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;

    .prologue
    .line 566
    if-nez p1, :cond_3

    .line 610
    :cond_2
    :goto_2
    return-void

    .line 569
    :cond_3
    const/4 v2, 0x0

    .line 570
    .local v2, "last":[B
    new-instance v3, Lmobisocial/longdan/LDProtocols$LDGetMessagesByTypeRequest;

    invoke-direct {v3}, Lmobisocial/longdan/LDProtocols$LDGetMessagesByTypeRequest;-><init>()V

    .line 571
    .local v3, "request":Lmobisocial/longdan/LDProtocols$LDGetMessagesByTypeRequest;
    invoke-virtual {p1}, Lmobisocial/omlib/db/entity/OMFeed;->getLdFeed()Lmobisocial/longdan/LDProtocols$LDFeed;

    move-result-object v8

    iput-object v8, v3, Lmobisocial/longdan/LDProtocols$LDGetMessagesByTypeRequest;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    .line 572
    const-string v8, "!member"

    iput-object v8, v3, Lmobisocial/longdan/LDProtocols$LDGetMessagesByTypeRequest;->Type:Ljava/lang/String;

    .line 573
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .local v6, "returnedMessages":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/LDProtocols$LDMessage;>;"
    const/4 v7, 0x0

    .line 578
    .local v7, "success":Z
    :cond_19
    :try_start_19
    iput-object v2, v3, Lmobisocial/longdan/LDProtocols$LDGetMessagesByTypeRequest;->NextResult:[B

    .line 579
    iget-object v8, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v8}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v8

    const-class v9, Lmobisocial/longdan/LDProtocols$LDGetMessagesWithContinuationResponse;

    const/4 v10, 0x1

    invoke-virtual {v8, v3, v9, v10}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Z)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v5

    check-cast v5, Lmobisocial/longdan/LDProtocols$LDGetMessagesWithContinuationResponse;

    .line 580
    .local v5, "response":Lmobisocial/longdan/LDProtocols$LDGetMessagesWithContinuationResponse;
    iget-object v8, v5, Lmobisocial/longdan/LDProtocols$LDGetMessagesWithContinuationResponse;->Messages:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 581
    iget-object v2, v5, Lmobisocial/longdan/LDProtocols$LDGetMessagesWithContinuationResponse;->ContinuationKey:[B
    :try_end_31
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_19 .. :try_end_31} :catch_43

    .line 582
    if-nez v2, :cond_19

    .line 583
    const/4 v4, 0x1

    .line 584
    .local v4, "requestComplete":Z
    const/4 v7, 0x1

    .line 589
    .end local v5    # "response":Lmobisocial/longdan/LDProtocols$LDGetMessagesWithContinuationResponse;
    :goto_35
    move v1, v7

    .line 590
    .local v1, "finalSuccess":Z
    if-eqz v4, :cond_2

    .line 591
    iget-object v8, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;

    new-instance v9, Lmobisocial/omlib/client/LongdanMessageConsumer$17;

    invoke-direct {v9, p0, v1, v6, p1}, Lmobisocial/omlib/client/LongdanMessageConsumer$17;-><init>(Lmobisocial/omlib/client/LongdanMessageConsumer;ZLjava/util/List;Lmobisocial/omlib/db/entity/OMFeed;)V

    invoke-virtual {v8, v9}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThreadAndWait(Lmobisocial/omlib/db/DatabaseRunnable;)V

    goto :goto_2

    .line 585
    .end local v1    # "finalSuccess":Z
    .end local v4    # "requestComplete":Z
    :catch_43
    move-exception v0

    .line 586
    .local v0, "e":Lmobisocial/longdan/exception/LongdanException;
    const-string v8, "LongdanMessageConsumer"

    const-string v9, "Error getting membership"

    invoke-static {v8, v9, v0}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 587
    invoke-virtual {v0}, Lmobisocial/longdan/exception/LongdanException;->isPermanentError()Z

    move-result v4

    .restart local v4    # "requestComplete":Z
    goto :goto_35
.end method

.method private fetchFeedMessagesInternal(Lmobisocial/omlib/db/entity/OMFeed;)V
    .registers 22
    .param p1, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;

    .prologue
    .line 692
    if-nez p1, :cond_3

    .line 765
    :goto_2
    return-void

    .line 695
    :cond_3
    move-object/from16 v0, p1

    iget-wide v10, v0, Lmobisocial/omlib/db/entity/OMFeed;->newestFromService:J

    .line 699
    .local v10, "last":J
    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 700
    .local v4, "chunks":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/LDProtocols$LDGetMessagesResponse;>;"
    const/16 v16, 0x0

    .line 703
    .local v16, "total":I
    :cond_e
    new-instance v14, Lmobisocial/longdan/LDProtocols$LDGetMessagesSinceRequest;

    invoke-direct {v14}, Lmobisocial/longdan/LDProtocols$LDGetMessagesSinceRequest;-><init>()V

    .line 704
    .local v14, "request":Lmobisocial/longdan/LDProtocols$LDGetMessagesSinceRequest;
    iput-wide v10, v14, Lmobisocial/longdan/LDProtocols$LDGetMessagesSinceRequest;->Timestamp:J

    .line 705
    invoke-virtual/range {p1 .. p1}, Lmobisocial/omlib/db/entity/OMFeed;->getLdFeed()Lmobisocial/longdan/LDProtocols$LDFeed;

    move-result-object v2

    iput-object v2, v14, Lmobisocial/longdan/LDProtocols$LDGetMessagesSinceRequest;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    .line 707
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v2}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v2

    const-class v3, Lmobisocial/longdan/LDProtocols$LDGetMessagesResponse;

    const/4 v5, 0x1

    invoke-virtual {v2, v14, v3, v5}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Z)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v15

    check-cast v15, Lmobisocial/longdan/LDProtocols$LDGetMessagesResponse;

    .line 708
    .local v15, "response":Lmobisocial/longdan/LDProtocols$LDGetMessagesResponse;
    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    iget-object v2, v15, Lmobisocial/longdan/LDProtocols$LDGetMessagesResponse;->Messages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int v16, v16, v2

    .line 710
    iget-object v2, v15, Lmobisocial/longdan/LDProtocols$LDGetMessagesResponse;->Messages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lmobisocial/longdan/LDProtocols$LDMessage;

    .line 711
    .local v12, "message":Lmobisocial/longdan/LDProtocols$LDMessage;
    iget-wide v0, v12, Lmobisocial/longdan/LDProtocols$LDMessage;->Timestamp:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 712
    goto :goto_3d

    .line 713
    .end local v12    # "message":Lmobisocial/longdan/LDProtocols$LDMessage;
    :cond_54
    sget v2, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_93

    .line 714
    const-string v2, "LongdanMessageConsumer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fetched "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v15, Lmobisocial/longdan/LDProtocols$LDGetMessagesResponse;->Messages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " messages newer than "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lmobisocial/omlib/db/entity/OMFeed;->identifier:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    :cond_93
    iget-boolean v13, v15, Lmobisocial/longdan/LDProtocols$LDGetMessagesResponse;->Partial:Z

    .line 716
    .local v13, "partial":Z
    iget-boolean v2, v15, Lmobisocial/longdan/LDProtocols$LDGetMessagesResponse;->Partial:Z
    :try_end_97
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_1b .. :try_end_97} :catch_b9

    if-eqz v2, :cond_9f

    const/16 v2, 0xfa

    move/from16 v0, v16

    if-lt v0, v2, :cond_e

    .line 737
    :cond_9f
    move v8, v13

    .line 738
    .local v8, "finalPartial":Z
    move-wide v6, v10

    .line 739
    .local v6, "finalLast":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;

    move-object/from16 v17, v0

    new-instance v2, Lmobisocial/omlib/client/LongdanMessageConsumer$21;

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v8}, Lmobisocial/omlib/client/LongdanMessageConsumer$21;-><init>(Lmobisocial/omlib/client/LongdanMessageConsumer;Ljava/util/List;Lmobisocial/omlib/db/entity/OMFeed;JZ)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThreadAndWait(Lmobisocial/omlib/db/DatabaseRunnable;)V

    .line 761
    if-nez v13, :cond_7

    goto/16 :goto_2

    .line 719
    .end local v6    # "finalLast":J
    .end local v8    # "finalPartial":Z
    .end local v13    # "partial":Z
    .end local v15    # "response":Lmobisocial/longdan/LDProtocols$LDGetMessagesResponse;
    :catch_b9
    move-exception v9

    .line 720
    .local v9, "e":Lmobisocial/longdan/exception/LongdanException;
    invoke-virtual {v9}, Lmobisocial/longdan/exception/LongdanException;->isPermanentError()Z

    move-result v2

    if-eqz v2, :cond_d0

    .line 721
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;

    new-instance v3, Lmobisocial/omlib/client/LongdanMessageConsumer$20;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lmobisocial/omlib/client/LongdanMessageConsumer$20;-><init>(Lmobisocial/omlib/client/LongdanMessageConsumer;Lmobisocial/omlib/db/entity/OMFeed;)V

    invoke-virtual {v2, v3}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThreadAndWait(Lmobisocial/omlib/db/DatabaseRunnable;)V

    .line 733
    :cond_d0
    const-string v2, "LongdanMessageConsumer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error syncing messages for feed: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lmobisocial/omlib/db/entity/OMFeed;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v9}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2
.end method

.method private fetchFeedState(Lmobisocial/omlib/db/entity/OMFeed;)V
    .registers 9
    .param p1, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;

    .prologue
    .line 484
    if-nez p1, :cond_3

    .line 526
    :cond_2
    :goto_2
    return-void

    .line 487
    :cond_3
    const-string v4, "LongdanMessageConsumer"

    const-string v5, "fetching feed state"

    invoke-static {v4, v5}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    new-instance v3, Lmobisocial/longdan/LDProtocols$LDGetFeedStateRequest;

    invoke-direct {v3}, Lmobisocial/longdan/LDProtocols$LDGetFeedStateRequest;-><init>()V

    .line 489
    .local v3, "request":Lmobisocial/longdan/LDProtocols$LDGetFeedStateRequest;
    invoke-virtual {p1}, Lmobisocial/omlib/db/entity/OMFeed;->getLdFeed()Lmobisocial/longdan/LDProtocols$LDFeed;

    move-result-object v4

    iput-object v4, v3, Lmobisocial/longdan/LDProtocols$LDGetFeedStateRequest;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    .line 490
    iget-object v1, p1, Lmobisocial/omlib/db/entity/OMFeed;->identifier:Ljava/lang/String;

    .line 492
    .local v1, "feedIdentifier":Ljava/lang/String;
    :try_start_17
    iget-object v4, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v4}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v4

    const-class v5, Lmobisocial/longdan/LDProtocols$LDFeedStateResponse;

    const/4 v6, 0x1

    invoke-virtual {v4, v3, v5, v6}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Z)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v2

    check-cast v2, Lmobisocial/longdan/LDProtocols$LDFeedStateResponse;

    .line 493
    .local v2, "feedstate":Lmobisocial/longdan/LDProtocols$LDFeedStateResponse;
    iget-object v4, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;

    new-instance v5, Lmobisocial/omlib/client/LongdanMessageConsumer$14;

    invoke-direct {v5, p0, v1, v2}, Lmobisocial/omlib/client/LongdanMessageConsumer$14;-><init>(Lmobisocial/omlib/client/LongdanMessageConsumer;Ljava/lang/String;Lmobisocial/longdan/LDProtocols$LDFeedStateResponse;)V

    invoke-virtual {v4, v5}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThreadAndWait(Lmobisocial/omlib/db/DatabaseRunnable;)V
    :try_end_30
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_17 .. :try_end_30} :catch_31

    goto :goto_2

    .line 508
    .end local v2    # "feedstate":Lmobisocial/longdan/LDProtocols$LDFeedStateResponse;
    :catch_31
    move-exception v0

    .line 509
    .local v0, "e":Lmobisocial/longdan/exception/LongdanException;
    const-string v4, "LongdanMessageConsumer"

    const-string v5, "Failed to get feed state "

    invoke-static {v4, v5, v0}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 510
    invoke-virtual {v0}, Lmobisocial/longdan/exception/LongdanException;->isPermanentError()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 511
    iget-object v4, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;

    new-instance v5, Lmobisocial/omlib/client/LongdanMessageConsumer$15;

    invoke-direct {v5, p0, v1}, Lmobisocial/omlib/client/LongdanMessageConsumer$15;-><init>(Lmobisocial/omlib/client/LongdanMessageConsumer;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThreadAndWait(Lmobisocial/omlib/db/DatabaseRunnable;)V

    goto :goto_2
.end method

.method private fetchOlderFeedMessagesInternal(Lmobisocial/omlib/db/entity/OMFeed;Ljava/lang/Long;)V
    .registers 23
    .param p1, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;
    .param p2, "oldest"    # Ljava/lang/Long;

    .prologue
    .line 613
    if-nez p1, :cond_3

    .line 686
    :cond_2
    :goto_2
    return-void

    .line 616
    :cond_3
    move-object/from16 v0, p1

    iget-wide v10, v0, Lmobisocial/omlib/db/entity/OMFeed;->oldestFromService:J

    .line 618
    .local v10, "last":J
    :cond_7
    sget v2, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_28

    .line 619
    const-string v2, "LongdanMessageConsumer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetching messages older for feed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lmobisocial/omlib/db/entity/OMFeed;->identifier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    :cond_28
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 621
    .local v5, "chunks":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/LDProtocols$LDGetMessagesResponse;>;"
    const/16 v16, 0x0

    .line 622
    .local v16, "total":I
    const/4 v13, 0x1

    .line 624
    .local v13, "partial":Z
    :goto_30
    new-instance v14, Lmobisocial/longdan/LDProtocols$LDGetMessagesBeforeRequest;

    invoke-direct {v14}, Lmobisocial/longdan/LDProtocols$LDGetMessagesBeforeRequest;-><init>()V

    .line 625
    .local v14, "request":Lmobisocial/longdan/LDProtocols$LDGetMessagesBeforeRequest;
    iput-wide v10, v14, Lmobisocial/longdan/LDProtocols$LDGetMessagesBeforeRequest;->Timestamp:J

    .line 626
    invoke-virtual/range {p1 .. p1}, Lmobisocial/omlib/db/entity/OMFeed;->getLdFeed()Lmobisocial/longdan/LDProtocols$LDFeed;

    move-result-object v2

    iput-object v2, v14, Lmobisocial/longdan/LDProtocols$LDGetMessagesBeforeRequest;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    .line 628
    :try_start_3d
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v2}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v2

    const-class v3, Lmobisocial/longdan/LDProtocols$LDGetMessagesResponse;

    const/4 v4, 0x1

    invoke-virtual {v2, v14, v3, v4}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Z)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v15

    check-cast v15, Lmobisocial/longdan/LDProtocols$LDGetMessagesResponse;

    .line 629
    .local v15, "response":Lmobisocial/longdan/LDProtocols$LDGetMessagesResponse;
    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    iget-object v2, v15, Lmobisocial/longdan/LDProtocols$LDGetMessagesResponse;->Messages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int v16, v16, v2

    .line 631
    iget-boolean v2, v15, Lmobisocial/longdan/LDProtocols$LDGetMessagesResponse;->Partial:Z
    :try_end_5b
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_3d .. :try_end_5b} :catch_a4

    if-nez v2, :cond_8b

    .line 632
    const/4 v13, 0x0

    .line 657
    :cond_5e
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_62
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "response":Lmobisocial/longdan/LDProtocols$LDGetMessagesResponse;
    check-cast v15, Lmobisocial/longdan/LDProtocols$LDGetMessagesResponse;

    .line 658
    .restart local v15    # "response":Lmobisocial/longdan/LDProtocols$LDGetMessagesResponse;
    iget-object v3, v15, Lmobisocial/longdan/LDProtocols$LDGetMessagesResponse;->Messages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_74
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lmobisocial/longdan/LDProtocols$LDMessage;

    .line 659
    .local v12, "message":Lmobisocial/longdan/LDProtocols$LDMessage;
    iget-wide v0, v12, Lmobisocial/longdan/LDProtocols$LDMessage;->Timestamp:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 660
    goto :goto_74

    .line 635
    .end local v12    # "message":Lmobisocial/longdan/LDProtocols$LDMessage;
    :cond_8b
    const/16 v2, 0x64

    move/from16 v0, v16

    if-ge v0, v2, :cond_5e

    .line 638
    :try_start_91
    iget-object v2, v15, Lmobisocial/longdan/LDProtocols$LDGetMessagesResponse;->Messages:Ljava/util/List;

    iget-object v3, v15, Lmobisocial/longdan/LDProtocols$LDGetMessagesResponse;->Messages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobisocial/longdan/LDProtocols$LDMessage;

    iget-wide v10, v2, Lmobisocial/longdan/LDProtocols$LDMessage;->Timestamp:J
    :try_end_a3
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_91 .. :try_end_a3} :catch_a4

    goto :goto_30

    .line 639
    .end local v15    # "response":Lmobisocial/longdan/LDProtocols$LDGetMessagesResponse;
    :catch_a4
    move-exception v9

    .line 640
    .local v9, "e":Lmobisocial/longdan/exception/LongdanException;
    invoke-virtual {v9}, Lmobisocial/longdan/exception/LongdanException;->isPermanentError()Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 641
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;

    new-instance v3, Lmobisocial/omlib/client/LongdanMessageConsumer$18;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lmobisocial/omlib/client/LongdanMessageConsumer$18;-><init>(Lmobisocial/omlib/client/LongdanMessageConsumer;Lmobisocial/omlib/db/entity/OMFeed;)V

    invoke-virtual {v2, v3}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThreadAndWait(Lmobisocial/omlib/db/DatabaseRunnable;)V

    .line 653
    :cond_bb
    const-string v2, "LongdanMessageConsumer"

    const-string v3, "Error while syncing older messages"

    invoke-static {v2, v3, v9}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 662
    .end local v9    # "e":Lmobisocial/longdan/exception/LongdanException;
    .restart local v15    # "response":Lmobisocial/longdan/LDProtocols$LDGetMessagesResponse;
    :cond_c4
    move v8, v13

    .line 663
    .local v8, "finalPartial":Z
    move-wide v6, v10

    .line 664
    .local v6, "finalLast":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;

    move-object/from16 v17, v0

    new-instance v2, Lmobisocial/omlib/client/LongdanMessageConsumer$19;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v8}, Lmobisocial/omlib/client/LongdanMessageConsumer$19;-><init>(Lmobisocial/omlib/client/LongdanMessageConsumer;Lmobisocial/omlib/db/entity/OMFeed;Ljava/util/List;JZ)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThreadAndWait(Lmobisocial/omlib/db/DatabaseRunnable;)V

    .line 685
    if-eqz p2, :cond_2

    move-object/from16 v0, p1

    iget-wide v2, v0, Lmobisocial/omlib/db/entity/OMFeed;->oldestFromService:J

    const-wide/16 v18, 0x0

    cmp-long v2, v2, v18

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget-wide v2, v0, Lmobisocial/omlib/db/entity/OMFeed;->oldestFromService:J

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v2, v2, v18

    if-gtz v2, :cond_7

    goto/16 :goto_2
.end method

.method private handleFeedSynced(Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;)V
    .registers 3
    .param p1, "entry"    # Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;

    .prologue
    .line 837
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;->isFromConsumer()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 838
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mFeedsToSyncPendingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_15

    .line 839
    sget-object v0, Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;->Finished:Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;

    invoke-direct {p0, v0}, Lmobisocial/omlib/client/LongdanMessageConsumer;->setSyncState(Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;)V

    .line 842
    :cond_15
    return-void
.end method

.method private notifySubscriptionFail()V
    .registers 1

    .prologue
    .line 206
    return-void
.end method

.method private processMessageChunksInTransaction(Ljava/util/List;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 8
    .param p2, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDGetMessagesResponse;",
            ">;",
            "Lmobisocial/omlib/db/OMSQLiteHelper;",
            "Lmobisocial/omlib/db/PostCommit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 768
    .local p1, "chunks":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/LDProtocols$LDGetMessagesResponse;>;"
    const/4 v0, 0x0

    .line 769
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/LDProtocols$LDMessage;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobisocial/longdan/LDProtocols$LDGetMessagesResponse;

    .line 770
    .local v1, "response":Lmobisocial/longdan/LDProtocols$LDGetMessagesResponse;
    if-nez v0, :cond_16

    .line 771
    iget-object v0, v1, Lmobisocial/longdan/LDProtocols$LDGetMessagesResponse;->Messages:Ljava/util/List;

    goto :goto_5

    .line 773
    :cond_16
    iget-object v3, v1, Lmobisocial/longdan/LDProtocols$LDGetMessagesResponse;->Messages:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 776
    .end local v1    # "response":Lmobisocial/longdan/LDProtocols$LDGetMessagesResponse;
    :cond_1c
    if-eqz v0, :cond_2d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 777
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v2}, Lmobisocial/omlib/client/LongdanClient;->getMessageProcessor()Lmobisocial/omlib/client/LongdanMessageProcessor;

    move-result-object v2

    invoke-virtual {v2, v0, p2, p3}, Lmobisocial/omlib/client/LongdanMessageProcessor;->processDurableMessagesInTransaction(Ljava/util/List;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V

    .line 779
    :cond_2d
    return-void
.end method

.method private registerPushReceivers()V
    .registers 4

    .prologue
    .line 147
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v0

    const-class v1, Lmobisocial/longdan/LDProtocols$LDMessageDeliveryPush;

    new-instance v2, Lmobisocial/omlib/client/LongdanMessageConsumer$3;

    invoke-direct {v2, p0}, Lmobisocial/omlib/client/LongdanMessageConsumer$3;-><init>(Lmobisocial/omlib/client/LongdanMessageConsumer;)V

    invoke-virtual {v0, v1, v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->addPushReceiver(Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener;)V

    .line 155
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v0

    const-class v1, Lmobisocial/longdan/LDProtocols$LDInboxDeliveryMessagePush;

    new-instance v2, Lmobisocial/omlib/client/LongdanMessageConsumer$4;

    invoke-direct {v2, p0}, Lmobisocial/omlib/client/LongdanMessageConsumer$4;-><init>(Lmobisocial/omlib/client/LongdanMessageConsumer;)V

    invoke-virtual {v0, v1, v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->addPushReceiver(Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener;)V

    .line 163
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v0

    const-class v1, Lmobisocial/longdan/LDProtocols$LDPublicChatMessageDeliveryPush;

    new-instance v2, Lmobisocial/omlib/client/LongdanMessageConsumer$5;

    invoke-direct {v2, p0}, Lmobisocial/omlib/client/LongdanMessageConsumer$5;-><init>(Lmobisocial/omlib/client/LongdanMessageConsumer;)V

    invoke-virtual {v0, v1, v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->addPushReceiver(Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener;)V

    .line 171
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v0

    const-class v1, Lmobisocial/longdan/LDProtocols$LDRealtimeMessageDeliveryPush;

    new-instance v2, Lmobisocial/omlib/client/LongdanMessageConsumer$6;

    invoke-direct {v2, p0}, Lmobisocial/omlib/client/LongdanMessageConsumer$6;-><init>(Lmobisocial/omlib/client/LongdanMessageConsumer;)V

    invoke-virtual {v0, v1, v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->addPushReceiver(Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener;)V

    .line 179
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v0

    const-class v1, Lmobisocial/longdan/LDProtocols$LDInboxDeliveryTerminatedPush;

    new-instance v2, Lmobisocial/omlib/client/LongdanMessageConsumer$7;

    invoke-direct {v2, p0}, Lmobisocial/omlib/client/LongdanMessageConsumer$7;-><init>(Lmobisocial/omlib/client/LongdanMessageConsumer;)V

    invoke-virtual {v0, v1, v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->addPushReceiver(Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener;)V

    .line 187
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v0

    const-class v1, Lmobisocial/longdan/LDProtocols$LDMessageTerminatedPush;

    new-instance v2, Lmobisocial/omlib/client/LongdanMessageConsumer$8;

    invoke-direct {v2, p0}, Lmobisocial/omlib/client/LongdanMessageConsumer$8;-><init>(Lmobisocial/omlib/client/LongdanMessageConsumer;)V

    invoke-virtual {v0, v1, v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->addPushReceiver(Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener;)V

    .line 195
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v0

    const-class v1, Lmobisocial/longdan/LDProtocols$LDPublicChatMessageTerminatedPush;

    new-instance v2, Lmobisocial/omlib/client/LongdanMessageConsumer$9;

    invoke-direct {v2, p0}, Lmobisocial/omlib/client/LongdanMessageConsumer$9;-><init>(Lmobisocial/omlib/client/LongdanMessageConsumer;)V

    invoke-virtual {v0, v1, v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->addPushReceiver(Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener;)V

    .line 203
    return-void
.end method

.method private setSyncState(Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;)V
    .registers 4
    .param p1, "state"    # Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;

    .prologue
    .line 277
    iget-object v1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mSyncStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 278
    :try_start_3
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mSyncState:Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;

    .line 279
    invoke-virtual {p0, p1}, Lmobisocial/omlib/client/LongdanMessageConsumer;->postSyncStateChanged(Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;)V

    .line 280
    monitor-exit v1

    .line 281
    return-void

    .line 280
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private syncMessages(Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/longdan/LDProtocols$LDTypedId;I)V
    .registers 16
    .param p1, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;
    .param p2, "id"    # Lmobisocial/longdan/LDProtocols$LDTypedId;
    .param p3, "maskToRemove"    # I

    .prologue
    .line 529
    if-nez p1, :cond_3

    .line 563
    :goto_2
    return-void

    .line 532
    :cond_3
    sget v1, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_2c

    .line 533
    const-string v1, "LongdanMessageConsumer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncing messages for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lmobisocial/omlib/db/entity/OMFeed;->identifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - mask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_2c
    new-instance v9, Lmobisocial/longdan/LDProtocols$LDGetMessageByIdRequest;

    invoke-direct {v9}, Lmobisocial/longdan/LDProtocols$LDGetMessageByIdRequest;-><init>()V

    .line 535
    .local v9, "request":Lmobisocial/longdan/LDProtocols$LDGetMessageByIdRequest;
    invoke-virtual {p1}, Lmobisocial/omlib/db/entity/OMFeed;->getLdFeed()Lmobisocial/longdan/LDProtocols$LDFeed;

    move-result-object v1

    iput-object v1, v9, Lmobisocial/longdan/LDProtocols$LDGetMessageByIdRequest;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    .line 536
    iput-object p2, v9, Lmobisocial/longdan/LDProtocols$LDGetMessageByIdRequest;->Id:Lmobisocial/longdan/LDProtocols$LDTypedId;

    .line 538
    const/4 v8, 0x0

    .line 540
    .local v8, "getMessagesResponse":Lmobisocial/longdan/LDProtocols$LDGetMessageResponse;
    :try_start_3a
    iget-object v1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v1

    const-class v2, Lmobisocial/longdan/LDProtocols$LDGetMessageResponse;

    const/4 v3, 0x1

    invoke-virtual {v1, v9, v2, v3}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Z)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lmobisocial/longdan/LDProtocols$LDGetMessageResponse;

    move-object v8, v0
    :try_end_4b
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_3a .. :try_end_4b} :catch_5c

    .line 541
    const/4 v10, 0x1

    .line 546
    .local v10, "requestComplete":Z
    :goto_4c
    move-object v6, v8

    .line 547
    .local v6, "finalGetMessagesResponse":Lmobisocial/longdan/LDProtocols$LDGetMessageResponse;
    move v4, v10

    .line 548
    .local v4, "finalRequestComplete":Z
    iget-object v11, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;

    new-instance v1, Lmobisocial/omlib/client/LongdanMessageConsumer$16;

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lmobisocial/omlib/client/LongdanMessageConsumer$16;-><init>(Lmobisocial/omlib/client/LongdanMessageConsumer;Lmobisocial/omlib/db/entity/OMFeed;ZILmobisocial/longdan/LDProtocols$LDGetMessageResponse;)V

    invoke-virtual {v11, v1}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThreadAndWait(Lmobisocial/omlib/db/DatabaseRunnable;)V

    goto :goto_2

    .line 542
    .end local v4    # "finalRequestComplete":Z
    .end local v6    # "finalGetMessagesResponse":Lmobisocial/longdan/LDProtocols$LDGetMessageResponse;
    .end local v10    # "requestComplete":Z
    :catch_5c
    move-exception v7

    .line 543
    .local v7, "e":Lmobisocial/longdan/exception/LongdanException;
    const-string v1, "LongdanMessageConsumer"

    const-string v2, "Failed to sync messages"

    invoke-static {v1, v2, v7}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 544
    invoke-virtual {v7}, Lmobisocial/longdan/exception/LongdanException;->isPermanentError()Z

    move-result v10

    .restart local v10    # "requestComplete":Z
    goto :goto_4c
.end method

.method private triggerResync()V
    .registers 1

    .prologue
    .line 209
    return-void
.end method


# virtual methods
.method public addSyncStateListener(Lmobisocial/omlib/interfaces/SyncStateListener;)V
    .registers 4
    .param p1, "listener"    # Lmobisocial/omlib/interfaces/SyncStateListener;

    .prologue
    .line 260
    iget-object v1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mSyncStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 261
    :try_start_3
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mSyncListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mSyncState:Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;

    invoke-virtual {p0, v0}, Lmobisocial/omlib/client/LongdanMessageConsumer;->postSyncStateChanged(Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;)V

    .line 263
    monitor-exit v1

    .line 264
    return-void

    .line 263
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public enqueueFeedForFetch(Lmobisocial/omlib/db/entity/OMFeed;Z)V
    .registers 10
    .param p1, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;
    .param p2, "isFromConsumer"    # Z

    .prologue
    .line 465
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mQueuedFeeds:Ljava/util/Set;

    iget-object v2, p1, Lmobisocial/omlib/db/entity/OMFeed;->identifier:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 466
    sget v0, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v2, 0x3

    if-gt v0, v2, :cond_2f

    .line 467
    const-string v0, "LongdanMessageConsumer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "feed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p1, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already in queue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_2f
    :goto_2f
    return-void

    .line 470
    :cond_30
    new-instance v1, Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;

    iget-object v3, p1, Lmobisocial/omlib/db/entity/OMFeed;->identifier:Ljava/lang/String;

    iget-wide v4, p1, Lmobisocial/omlib/db/entity/OMFeed;->approximateDirtyTime:J

    move-object v2, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;-><init>(Lmobisocial/omlib/client/LongdanMessageConsumer;Ljava/lang/String;JZ)V

    .line 471
    .local v1, "entry":Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;
    if-eqz p2, :cond_51

    .line 472
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mSyncStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 473
    :try_start_40
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mSyncState:Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;

    sget-object v3, Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;->Running:Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;

    if-eq v0, v3, :cond_4b

    .line 474
    sget-object v0, Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;->Running:Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;

    invoke-direct {p0, v0}, Lmobisocial/omlib/client/LongdanMessageConsumer;->setSyncState(Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;)V

    .line 476
    :cond_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_40 .. :try_end_4c} :catchall_5e

    .line 477
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mFeedsToSyncPendingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 479
    :cond_51
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mQueuedFeeds:Ljava/util/Set;

    iget-object v2, p1, Lmobisocial/omlib/db/entity/OMFeed;->identifier:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 480
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_2f

    .line 476
    :catchall_5e
    move-exception v0

    :try_start_5f
    monitor-exit v2
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v0
.end method

.method public enqueueFeedsForFetch(Ljava/util/List;Z)V
    .registers 5
    .param p2, "fromConsumer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmobisocial/omlib/db/entity/OMFeed;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 459
    .local p1, "feeds":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/db/entity/OMFeed;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_14

    .line 460
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobisocial/omlib/db/entity/OMFeed;

    invoke-virtual {p0, v1, p2}, Lmobisocial/omlib/client/LongdanMessageConsumer;->enqueueFeedForFetch(Lmobisocial/omlib/db/entity/OMFeed;Z)V

    .line 459
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 462
    :cond_14
    return-void
.end method

.method public feedPoller()V
    .registers 15

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 782
    :goto_2
    iget-boolean v7, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mDisposed:Z

    if-nez v7, :cond_12a

    .line 783
    const/4 v4, 0x0

    .line 784
    .local v4, "entry":Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;
    const/4 v6, 0x0

    .line 786
    .local v6, "feedIdentifier":Ljava/lang/String;
    :try_start_8
    iget-object v7, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/PriorityBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;

    move-object v4, v0

    .line 787
    # getter for: Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;->mIdentifier:Ljava/lang/String;
    invoke-static {v4}, Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;->access$1400(Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;)Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_15} :catch_11d

    move-result-object v6

    .line 790
    :try_start_16
    iget-object v7, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mDBAccess:Lmobisocial/omlib/db/OMSQLiteHelper;

    const-class v10, Lmobisocial/omlib/db/entity/OMFeed;

    # getter for: Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;->mIdentifier:Ljava/lang/String;
    invoke-static {v4}, Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;->access$1400(Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v5

    check-cast v5, Lmobisocial/omlib/db/entity/OMFeed;

    .line 791
    .local v5, "feed":Lmobisocial/omlib/db/entity/OMFeed;
    if-nez v5, :cond_7a

    .line 792
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7}, Ljava/lang/IllegalStateException;-><init>()V

    throw v7
    :try_end_2c
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_2c} :catch_2c
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_2c} :catch_11d

    .line 819
    .end local v5    # "feed":Lmobisocial/omlib/db/entity/OMFeed;
    :catch_2c
    move-exception v3

    .line 820
    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_2d
    const-string v7, "LongdanMessageConsumer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wanted to fetch for: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    # getter for: Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;->mIdentifier:Ljava/lang/String;
    invoke-static {v4}, Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;->access$1400(Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " but it isn\'t in db (probably manually deleted)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_4f} :catch_11d

    .line 825
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :cond_4f
    :goto_4f
    if-eqz v6, :cond_76

    .line 826
    iget-object v7, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mQueuedFeeds:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 827
    iget-object v7, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mDBAccess:Lmobisocial/omlib/db/OMSQLiteHelper;

    const-class v10, Lmobisocial/omlib/db/entity/OMFeed;

    invoke-virtual {v7, v10, v6}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v5

    check-cast v5, Lmobisocial/omlib/db/entity/OMFeed;

    .line 828
    .restart local v5    # "feed":Lmobisocial/omlib/db/entity/OMFeed;
    if-eqz v5, :cond_76

    iget v7, v5, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    if-eqz v7, :cond_76

    iget v7, v5, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    if-eq v7, v8, :cond_76

    .line 829
    if-eqz v4, :cond_127

    invoke-virtual {v4}, Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;->isFromConsumer()Z

    move-result v7

    if-eqz v7, :cond_127

    move v7, v8

    :goto_73
    invoke-virtual {p0, v5, v7}, Lmobisocial/omlib/client/LongdanMessageConsumer;->enqueueFeedForFetch(Lmobisocial/omlib/db/entity/OMFeed;Z)V

    .line 832
    .end local v5    # "feed":Lmobisocial/omlib/db/entity/OMFeed;
    :cond_76
    invoke-direct {p0, v4}, Lmobisocial/omlib/client/LongdanMessageConsumer;->handleFeedSynced(Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;)V

    goto :goto_2

    .line 793
    .restart local v5    # "feed":Lmobisocial/omlib/db/entity/OMFeed;
    :cond_7a
    :try_start_7a
    sget v7, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v10, 0x3

    if-gt v7, v10, :cond_b7

    .line 794
    const-string v7, "LongdanMessageConsumer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Thread: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " fetching for: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lmobisocial/omlib/db/entity/OMFeed;->identifier:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " with mask: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lmobisocial/util/OMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    :cond_b7
    iget v7, v5, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_c0

    .line 796
    invoke-direct {p0, v5}, Lmobisocial/omlib/client/LongdanMessageConsumer;->fetchFeedState(Lmobisocial/omlib/db/entity/OMFeed;)V

    .line 798
    :cond_c0
    iget v7, v5, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_d8

    .line 799
    new-instance v2, Lmobisocial/longdan/LDProtocols$LDTypedId;

    invoke-direct {v2}, Lmobisocial/longdan/LDProtocols$LDTypedId;-><init>()V

    .line 800
    .local v2, "detailsId":Lmobisocial/longdan/LDProtocols$LDTypedId;
    const-string v7, "!feed_details"

    iput-object v7, v2, Lmobisocial/longdan/LDProtocols$LDTypedId;->Type:Ljava/lang/String;

    .line 801
    const/4 v7, 0x0

    new-array v7, v7, [B

    iput-object v7, v2, Lmobisocial/longdan/LDProtocols$LDTypedId;->Id:[B

    .line 802
    const/4 v7, 0x4

    invoke-direct {p0, v5, v2, v7}, Lmobisocial/omlib/client/LongdanMessageConsumer;->syncMessages(Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/longdan/LDProtocols$LDTypedId;I)V

    .line 804
    .end local v2    # "detailsId":Lmobisocial/longdan/LDProtocols$LDTypedId;
    :cond_d8
    iget v7, v5, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_fa

    .line 805
    new-instance v2, Lmobisocial/longdan/LDProtocols$LDTypedId;

    invoke-direct {v2}, Lmobisocial/longdan/LDProtocols$LDTypedId;-><init>()V

    .line 806
    .restart local v2    # "detailsId":Lmobisocial/longdan/LDProtocols$LDTypedId;
    const-string v7, "lastRead"

    iput-object v7, v2, Lmobisocial/longdan/LDProtocols$LDTypedId;->Type:Ljava/lang/String;

    .line 807
    iget-object v7, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v7, v7, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-virtual {v7}, Lmobisocial/omlib/client/ClientAuthUtils;->getAccount()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    iput-object v7, v2, Lmobisocial/longdan/LDProtocols$LDTypedId;->Id:[B

    .line 808
    const/16 v7, 0x8

    invoke-direct {p0, v5, v2, v7}, Lmobisocial/omlib/client/LongdanMessageConsumer;->syncMessages(Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/longdan/LDProtocols$LDTypedId;I)V

    .line 810
    .end local v2    # "detailsId":Lmobisocial/longdan/LDProtocols$LDTypedId;
    :cond_fa
    iget v7, v5, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_103

    .line 811
    invoke-direct {p0, v5}, Lmobisocial/omlib/client/LongdanMessageConsumer;->fetchFeedMembers(Lmobisocial/omlib/db/entity/OMFeed;)V

    .line 813
    :cond_103
    iget v7, v5, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_10c

    .line 814
    invoke-direct {p0, v5}, Lmobisocial/omlib/client/LongdanMessageConsumer;->fetchFeedMessagesInternal(Lmobisocial/omlib/db/entity/OMFeed;)V

    .line 816
    :cond_10c
    iget v7, v5, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_4f

    .line 817
    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lmobisocial/omlib/client/LongdanMessageConsumer;->fetchOlderFeedMessagesInternal(Lmobisocial/omlib/db/entity/OMFeed;Ljava/lang/Long;)V
    :try_end_11b
    .catch Ljava/lang/IllegalStateException; {:try_start_7a .. :try_end_11b} :catch_2c
    .catch Ljava/lang/InterruptedException; {:try_start_7a .. :try_end_11b} :catch_11d

    goto/16 :goto_4f

    .line 822
    .end local v5    # "feed":Lmobisocial/omlib/db/entity/OMFeed;
    :catch_11d
    move-exception v3

    .line 823
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v7, "LongdanMessageConsumer"

    const-string v10, "consumer sync interrupted"

    invoke-static {v7, v10, v3}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4f

    .end local v3    # "e":Ljava/lang/InterruptedException;
    .restart local v5    # "feed":Lmobisocial/omlib/db/entity/OMFeed;
    :cond_127
    move v7, v9

    .line 829
    goto/16 :goto_73

    .line 834
    .end local v4    # "entry":Lmobisocial/omlib/client/LongdanMessageConsumer$FeedQueueEntry;
    .end local v5    # "feed":Lmobisocial/omlib/db/entity/OMFeed;
    .end local v6    # "feedIdentifier":Ljava/lang/String;
    :cond_12a
    return-void
.end method

.method public getSyncState()Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mSyncState:Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;

    return-object v0
.end method

.method public onSessionDisconnected(Lmobisocial/longdan/net/WsRpcConnectionHandler;)V
    .registers 2
    .param p1, "conn"    # Lmobisocial/longdan/net/WsRpcConnectionHandler;

    .prologue
    .line 846
    return-void
.end method

.method public onSessionEstablished(Lmobisocial/longdan/net/WsRpcConnectionHandler;)V
    .registers 3
    .param p1, "conn"    # Lmobisocial/longdan/net/WsRpcConnectionHandler;

    .prologue
    .line 285
    new-instance v0, Lmobisocial/omlib/client/LongdanMessageConsumer$11;

    invoke-direct {v0, p0, p1}, Lmobisocial/omlib/client/LongdanMessageConsumer$11;-><init>(Lmobisocial/omlib/client/LongdanMessageConsumer;Lmobisocial/longdan/net/WsRpcConnectionHandler;)V

    invoke-direct {p0, v0}, Lmobisocial/omlib/client/LongdanMessageConsumer;->executeSafely(Ljava/lang/Runnable;)V

    .line 320
    return-void
.end method

.method public postSyncStateChanged(Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;)V
    .registers 5
    .param p1, "state"    # Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;

    .prologue
    .line 241
    :try_start_0
    iget-object v1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lmobisocial/omlib/client/LongdanMessageConsumer$10;

    invoke-direct {v2, p0, p1}, Lmobisocial/omlib/client/LongdanMessageConsumer$10;-><init>(Lmobisocial/omlib/client/LongdanMessageConsumer;Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 257
    :goto_e
    return-void

    .line 254
    :catch_f
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LongdanMessageConsumer"

    const-string v2, "Could not post sync callback"

    invoke-static {v1, v2}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public removeSyncStateListener(Lmobisocial/omlib/interfaces/SyncStateListener;)V
    .registers 4
    .param p1, "listener"    # Lmobisocial/omlib/interfaces/SyncStateListener;

    .prologue
    .line 267
    iget-object v1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mSyncStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 268
    :try_start_3
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mSyncListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 269
    monitor-exit v1

    .line 270
    return-void

    .line 269
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public declared-synchronized start()V
    .registers 3

    .prologue
    .line 134
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 135
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    new-instance v1, Lmobisocial/omlib/client/LongdanMessageConsumer$2;

    invoke-direct {v1, p0}, Lmobisocial/omlib/client/LongdanMessageConsumer$2;-><init>(Lmobisocial/omlib/client/LongdanMessageConsumer;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/client/ClientAuthUtils;->addAccountConnectedListener(Lmobisocial/omlib/interfaces/OnAccountConnectedListener;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 144
    monitor-exit p0

    return-void

    .line 134
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 5

    .prologue
    .line 223
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mDisposed:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_14

    .line 225
    :try_start_4
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 226
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0x2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_17
    .catchall {:try_start_4 .. :try_end_12} :catchall_14

    .line 229
    :goto_12
    monitor-exit p0

    return-void

    .line 223
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0

    .line 227
    :catch_17
    move-exception v0

    goto :goto_12
.end method
