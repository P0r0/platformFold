.class public Lmobisocial/omlib/client/LongdanDurableJobProcessor;
.super Ljava/lang/Object;
.source "LongdanDurableJobProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;,
        Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobState;,
        Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;,
        Lmobisocial/omlib/client/LongdanDurableJobProcessor$DurableJobHandlers;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "Omlib-jobs"


# instance fields
.field private final mClient:Lmobisocial/omlib/client/LongdanClient;

.field private final mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mInitialized:Z

.field mLoadUnfinishedJobs:Ljava/lang/Runnable;

.field final mScheduledJobQueues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/LinkedList",
            "<",
            "Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmobisocial/omlib/client/LongdanClient;)V
    .registers 3
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mScheduledJobQueues:Ljava/util/Map;

    .line 392
    new-instance v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$2;

    invoke-direct {v0, p0}, Lmobisocial/omlib/client/LongdanDurableJobProcessor$2;-><init>(Lmobisocial/omlib/client/LongdanDurableJobProcessor;)V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mLoadUnfinishedJobs:Ljava/lang/Runnable;

    .line 60
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;

    .line 61
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 62
    return-void
.end method

.method static synthetic access$100(Lmobisocial/omlib/client/LongdanDurableJobProcessor;)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    .prologue
    .line 47
    iget-boolean v0, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mInitialized:Z

    return v0
.end method

.method static synthetic access$102(Lmobisocial/omlib/client/LongdanDurableJobProcessor;Z)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/client/LongdanDurableJobProcessor;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mInitialized:Z

    return p1
.end method

.method static synthetic access$200(Lmobisocial/omlib/client/LongdanDurableJobProcessor;)Lmobisocial/omlib/client/LongdanClient;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    .prologue
    .line 47
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;

    return-object v0
.end method

.method static synthetic access$300(Lmobisocial/omlib/client/LongdanDurableJobProcessor;Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/client/LongdanDurableJobProcessor;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->executeSafely(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$400(Lmobisocial/omlib/client/LongdanDurableJobProcessor;Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;ILjava/util/concurrent/TimeUnit;)V
    .registers 4
    .param p0, "x0"    # Lmobisocial/omlib/client/LongdanDurableJobProcessor;
    .param p1, "x1"    # Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->scheduleSafely(Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;ILjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method static synthetic access$500(Lmobisocial/omlib/client/LongdanDurableJobProcessor;Ljava/util/List;)V
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/client/LongdanDurableJobProcessor;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->reconstituteSendingProgress(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lmobisocial/omlib/client/LongdanDurableJobProcessor;Lmobisocial/omlib/client/interfaces/DurableJobHandler;JZ)V
    .registers 5
    .param p0, "x0"    # Lmobisocial/omlib/client/LongdanDurableJobProcessor;
    .param p1, "x1"    # Lmobisocial/omlib/client/interfaces/DurableJobHandler;
    .param p2, "x2"    # J
    .param p4, "x3"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->executeJob(Lmobisocial/omlib/client/interfaces/DurableJobHandler;JZ)V

    return-void
.end method

.method private executeJob(Lmobisocial/omlib/client/interfaces/DurableJobHandler;JZ)V
    .registers 13
    .param p1, "job"    # Lmobisocial/omlib/client/interfaces/DurableJobHandler;
    .param p2, "jobRecordId"    # J
    .param p4, "frontOfSlice"    # Z

    .prologue
    .line 167
    const/4 v2, 0x0

    .line 168
    .local v2, "shouldExecuteJob":Z
    new-instance v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;

    invoke-direct {v0, p0, p1, p2, p3}, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;-><init>(Lmobisocial/omlib/client/LongdanDurableJobProcessor;Lmobisocial/omlib/client/interfaces/DurableJobHandler;J)V

    .line 169
    .local v0, "pendingJob":Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;
    iget-object v5, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mScheduledJobQueues:Ljava/util/Map;

    monitor-enter v5

    .line 170
    :try_start_9
    invoke-interface {p1}, Lmobisocial/omlib/client/interfaces/DurableJobHandler;->getSlice()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 171
    .local v3, "slice":Ljava/lang/Long;
    iget-object v4, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mScheduledJobQueues:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 172
    .local v1, "queue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;>;"
    if-nez v1, :cond_26

    .line 173
    const/4 v2, 0x1

    .line 174
    new-instance v1, Ljava/util/LinkedList;

    .end local v1    # "queue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;>;"
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 175
    .restart local v1    # "queue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;>;"
    iget-object v4, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mScheduledJobQueues:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_26
    if-eqz p4, :cond_3b

    .line 178
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 182
    :goto_2b
    monitor-exit v5
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_3f

    .line 183
    if-eqz v2, :cond_3a

    .line 184
    new-instance v4, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v4, p0, v6, v7}, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;-><init>(Lmobisocial/omlib/client/LongdanDurableJobProcessor;J)V

    invoke-direct {p0, v4}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->executeSafely(Ljava/lang/Runnable;)V

    .line 185
    :cond_3a
    return-void

    .line 180
    :cond_3b
    :try_start_3b
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_2b

    .line 182
    .end local v1    # "queue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;>;"
    .end local v3    # "slice":Ljava/lang/Long;
    :catchall_3f
    move-exception v4

    monitor-exit v5
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_3f

    throw v4
.end method

.method private executeSafely(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 189
    :try_start_0
    iget-object v1, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lmobisocial/omlib/helper/SafeRunnable;

    invoke-direct {v2, p1}, Lmobisocial/omlib/helper/SafeRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 193
    :goto_a
    return-void

    .line 190
    :catch_b
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Omlib-jobs"

    const-string v2, "Executor not accepting job"

    invoke-static {v1, v2, v0}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method private reconstituteSendingProgress(Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmobisocial/omlib/client/interfaces/DurableJobHandler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 436
    .local p1, "handlers":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/client/interfaces/DurableJobHandler;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 437
    .local v4, "objectAttachmentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/List<[B>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_59

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobisocial/omlib/client/interfaces/DurableJobHandler;

    .line 438
    .local v2, "h":Lmobisocial/omlib/client/interfaces/DurableJobHandler;
    instance-of v7, v2, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;

    if-eqz v7, :cond_32

    move-object v3, v2

    .line 439
    check-cast v3, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;

    .line 440
    .local v3, "o":Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;
    iget-object v7, v3, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->localObjId:Ljava/lang/Long;

    if-eqz v7, :cond_32

    .line 441
    iget-object v7, v3, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->localObjId:Ljava/lang/Long;

    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_32

    .line 442
    iget-object v7, v3, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->localObjId:Ljava/lang/Long;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    .end local v3    # "o":Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;
    :cond_32
    instance-of v7, v2, Lmobisocial/omlib/jobs/BlobUploadJobHandler;

    if-eqz v7, :cond_9

    move-object v1, v2

    .line 447
    check-cast v1, Lmobisocial/omlib/jobs/BlobUploadJobHandler;

    .line 448
    .local v1, "b":Lmobisocial/omlib/jobs/BlobUploadJobHandler;
    iget-object v7, v1, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->referenceObjId:Ljava/lang/Long;

    if-eqz v7, :cond_9

    .line 449
    iget-object v7, v1, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->referenceObjId:Ljava/lang/Long;

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 450
    .local v0, "attachments":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-nez v0, :cond_51

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "attachments":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 452
    .restart local v0    # "attachments":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v7, v1, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->referenceObjId:Ljava/lang/Long;

    invoke-interface {v4, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    :cond_51
    iget-object v7, v1, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    iget-object v7, v7, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->blobHash:[B

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 458
    .end local v0    # "attachments":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v1    # "b":Lmobisocial/omlib/jobs/BlobUploadJobHandler;
    .end local v2    # "h":Lmobisocial/omlib/client/interfaces/DurableJobHandler;
    :cond_59
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_61
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_87

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 459
    .local v5, "outbound":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/List<[B>;>;"
    iget-object v6, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v6, v6, Lmobisocial/omlib/client/LongdanClient;->Messaging:Lmobisocial/omlib/client/ClientMessagingUtils;

    iget-object v8, v6, Lmobisocial/omlib/client/ClientMessagingUtils;->notification:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {v8, v10, v11, v6}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->registerObjectForDelivery(JLjava/util/List;)V

    goto :goto_61

    .line 461
    .end local v5    # "outbound":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/List<[B>;>;"
    :cond_87
    return-void
.end method

.method private scheduleSafely(Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;ILjava/util/concurrent/TimeUnit;)V
    .registers 10
    .param p1, "jobRunner"    # Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;
    .param p2, "backoff"    # I
    .param p3, "seconds"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 197
    :try_start_0
    iget-object v1, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lmobisocial/omlib/helper/SafeRunnable;

    invoke-direct {v2, p1}, Lmobisocial/omlib/helper/SafeRunnable;-><init>(Ljava/lang/Runnable;)V

    int-to-long v4, p2

    invoke-interface {v1, v2, v4, v5, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 201
    :goto_b
    return-void

    .line 198
    :catch_c
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Omlib-jobs"

    const-string v2, "Executor not accepting job"

    invoke-static {v1, v2, v0}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method


# virtual methods
.method public cancelSendJobIfExists(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;J)V
    .registers 22
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;
    .param p3, "objectId"    # J

    .prologue
    .line 118
    move-object/from16 v0, p0

    iget-object v11, v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mScheduledJobQueues:Ljava/util/Map;

    monitor-enter v11

    .line 119
    :try_start_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mScheduledJobQueues:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_11
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_96

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/LinkedList;

    .line 120
    .local v9, "sliceJobs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;>;"
    invoke-virtual {v9}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;>;"
    :cond_21
    :goto_21
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 121
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;

    .line 122
    .local v8, "p":Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;
    iget-object v10, v8, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;->handler:Lmobisocial/omlib/client/interfaces/DurableJobHandler;

    instance-of v10, v10, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;

    if-eqz v10, :cond_72

    .line 123
    iget-object v6, v8, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;->handler:Lmobisocial/omlib/client/interfaces/DurableJobHandler;

    check-cast v6, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;

    .line 124
    .local v6, "messageOverwriteJobHandler":Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;
    iget-object v10, v6, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->localObjId:Ljava/lang/Long;

    if-eqz v10, :cond_72

    iget-object v10, v6, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->localObjId:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v10, v14, p3

    if-nez v10, :cond_72

    .line 125
    const-class v10, Lmobisocial/omlib/db/entity/OMDurableJob;

    iget-wide v14, v8, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;->recordId:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v14, v15}, Lmobisocial/omlib/db/OMSQLiteHelper;->deleteObject(Ljava/lang/Class;J)Z

    .line 126
    const-class v10, Lmobisocial/omlib/db/entity/OMObject;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v0, v10, v1, v2}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v7

    check-cast v7, Lmobisocial/omlib/db/entity/OMObject;

    .line 127
    .local v7, "obj":Lmobisocial/omlib/db/entity/OMObject;
    if-eqz v7, :cond_68

    .line 128
    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v7, Lmobisocial/omlib/db/entity/OMObject;->messageStatus:Ljava/lang/Integer;

    .line 129
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 131
    :cond_68
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 132
    const-string v10, "Omlib-jobs"

    const-string v13, "Send message job cancelled!"

    invoke-static {v10, v13}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .end local v6    # "messageOverwriteJobHandler":Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;
    .end local v7    # "obj":Lmobisocial/omlib/db/entity/OMObject;
    :cond_72
    iget-object v10, v8, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;->handler:Lmobisocial/omlib/client/interfaces/DurableJobHandler;

    instance-of v10, v10, Lmobisocial/omlib/jobs/BlobUploadJobHandler;

    if-eqz v10, :cond_21

    .line 136
    iget-object v10, v8, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;->handler:Lmobisocial/omlib/client/interfaces/DurableJobHandler;

    check-cast v10, Lmobisocial/omlib/jobs/BlobUploadJobHandler;

    iget-object v4, v10, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->referenceObjId:Ljava/lang/Long;

    .line 137
    .local v4, "blobUploadObjId":Ljava/lang/Long;
    if-eqz v4, :cond_21

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v10, v14, p3

    if-nez v10, :cond_21

    .line 138
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 139
    const-string v10, "Omlib-jobs"

    const-string v13, "blob upload job cancelled!"

    invoke-static {v10, v13}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .line 144
    .end local v4    # "blobUploadObjId":Ljava/lang/Long;
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;>;"
    .end local v8    # "p":Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;
    .end local v9    # "sliceJobs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;>;"
    :catchall_93
    move-exception v10

    monitor-exit v11
    :try_end_95
    .catchall {:try_start_5 .. :try_end_95} :catchall_93

    throw v10

    :cond_96
    :try_start_96
    monitor-exit v11
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_93

    .line 145
    return-void
.end method

.method reconstituteRequest(Lmobisocial/omlib/db/entity/OMDurableJob;)Lmobisocial/omlib/client/interfaces/DurableJobHandler;
    .registers 6
    .param p1, "job"    # Lmobisocial/omlib/db/entity/OMDurableJob;

    .prologue
    .line 464
    iget-object v1, p1, Lmobisocial/omlib/db/entity/OMDurableJob;->type:Ljava/lang/String;

    invoke-static {v1}, Lmobisocial/omlib/client/LongdanDurableJobProcessor$DurableJobHandlers;->getHandlerForType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 465
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lmobisocial/omlib/client/interfaces/DurableJobHandler;>;"
    if-eqz v0, :cond_11

    .line 466
    iget-object v1, p1, Lmobisocial/omlib/db/entity/OMDurableJob;->request:Ljava/lang/String;

    invoke-static {v1, v0}, Lmobisocial/serialization/SerializationUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobisocial/omlib/client/interfaces/DurableJobHandler;

    return-object v1

    .line 468
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Job not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lmobisocial/omlib/db/entity/OMDurableJob;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public restartJobSlice(J)V
    .registers 10
    .param p1, "slice"    # J

    .prologue
    .line 353
    const/4 v1, 0x0

    .line 354
    .local v1, "jobToRestart":Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;
    iget-object v4, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mScheduledJobQueues:Ljava/util/Map;

    monitor-enter v4

    .line 355
    :try_start_4
    iget-object v3, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mScheduledJobQueues:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .line 356
    .local v2, "pending":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;>;"
    if-eqz v2, :cond_18

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-nez v3, :cond_1a

    .line 357
    :cond_18
    monitor-exit v4

    .line 369
    :cond_19
    :goto_19
    return-void

    .line 359
    :cond_1a
    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;

    .line 360
    .local v0, "j":Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;
    iget-object v3, v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;->state:Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobState;

    sget-object v5, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobState;->Waiting:Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobState;

    if-ne v3, v5, :cond_2e

    .line 361
    sget-object v3, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobState;->Pending:Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobState;

    iput-object v3, v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;->state:Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobState;

    .line 362
    const/4 v3, 0x2

    iput v3, v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;->backoff:I

    .line 363
    move-object v1, v0

    .line 365
    :cond_2e
    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_3a

    .line 366
    if-eqz v1, :cond_19

    .line 367
    new-instance v3, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;

    invoke-direct {v3, p0, p1, p2}, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;-><init>(Lmobisocial/omlib/client/LongdanDurableJobProcessor;J)V

    invoke-direct {p0, v3}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->executeSafely(Ljava/lang/Runnable;)V

    goto :goto_19

    .line 365
    .end local v0    # "j":Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;
    .end local v2    # "pending":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;>;"
    :catchall_3a
    move-exception v3

    :try_start_3b
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v3
.end method

.method public restartWaitingJobs()V
    .registers 11

    .prologue
    .line 372
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 373
    .local v1, "jobsToRestart":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v6, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mScheduledJobQueues:Ljava/util/Map;

    monitor-enter v6

    .line 374
    :try_start_8
    iget-object v3, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mScheduledJobQueues:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_12
    :goto_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 375
    .local v4, "slice":J
    iget-object v3, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mScheduledJobQueues:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .line 376
    .local v2, "pending":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;>;"
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-eqz v3, :cond_12

    .line 379
    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;

    .line 380
    .local v0, "j":Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;
    iget-object v3, v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;->state:Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobState;

    sget-object v8, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobState;->Waiting:Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobState;

    if-ne v3, v8, :cond_12

    .line 381
    sget-object v3, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobState;->Pending:Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobState;

    iput-object v3, v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;->state:Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobState;

    .line 382
    const/4 v3, 0x2

    iput v3, v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;->backoff:I

    .line 383
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 386
    .end local v0    # "j":Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;
    .end local v2    # "pending":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;>;"
    .end local v4    # "slice":J
    :catchall_51
    move-exception v3

    monitor-exit v6
    :try_end_53
    .catchall {:try_start_8 .. :try_end_53} :catchall_51

    throw v3

    :cond_54
    :try_start_54
    monitor-exit v6
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_51

    .line 387
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_59
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_72

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 388
    .local v0, "j":Ljava/lang/Long;
    new-instance v6, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v6, p0, v8, v9}, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;-><init>(Lmobisocial/omlib/client/LongdanDurableJobProcessor;J)V

    invoke-direct {p0, v6}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->executeSafely(Ljava/lang/Runnable;)V

    goto :goto_59

    .line 390
    .end local v0    # "j":Ljava/lang/Long;
    :cond_72
    return-void
.end method

.method public scheduleFromDbThread(Lmobisocial/omlib/client/interfaces/DurableJobHandler;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 5
    .param p1, "job"    # Lmobisocial/omlib/client/interfaces/DurableJobHandler;
    .param p2, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->scheduleFromDbThread(Lmobisocial/omlib/client/interfaces/DurableJobHandler;ZLmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V

    .line 149
    return-void
.end method

.method public scheduleFromDbThread(Lmobisocial/omlib/client/interfaces/DurableJobHandler;ZLmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 9
    .param p1, "job"    # Lmobisocial/omlib/client/interfaces/DurableJobHandler;
    .param p2, "frontOfSlice"    # Z
    .param p3, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p4, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 153
    :try_start_0
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-interface {p1, v2, p3, p4}, Lmobisocial/omlib/client/interfaces/DurableJobHandler;->requestAboutToBeScheduled(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_23

    .line 158
    new-instance v0, Lmobisocial/omlib/db/entity/OMDurableJob;

    invoke-direct {v0}, Lmobisocial/omlib/db/entity/OMDurableJob;-><init>()V

    .line 159
    .local v0, "durableJob":Lmobisocial/omlib/db/entity/OMDurableJob;
    invoke-interface {p1}, Lmobisocial/omlib/client/interfaces/DurableJobHandler;->getJobType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmobisocial/omlib/db/entity/OMDurableJob;->type:Ljava/lang/String;

    .line 160
    invoke-static {p1}, Lmobisocial/serialization/SerializationUtils;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmobisocial/omlib/db/entity/OMDurableJob;->request:Ljava/lang/String;

    .line 161
    invoke-virtual {p3, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->insertObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 162
    iget-object v2, v0, Lmobisocial/omlib/db/entity/OMDurableJob;->id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3, p2}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->executeJob(Lmobisocial/omlib/client/interfaces/DurableJobHandler;JZ)V

    .line 163
    .end local v0    # "durableJob":Lmobisocial/omlib/db/entity/OMDurableJob;
    :goto_22
    return-void

    .line 154
    :catch_23
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Omlib-jobs"

    const-string v3, "Failed to schedule job"

    invoke-static {v2, v3, v1}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_22
.end method

.method public scheduleJob(Lmobisocial/omlib/client/interfaces/DurableJobHandler;)V
    .registers 3
    .param p1, "job"    # Lmobisocial/omlib/client/interfaces/DurableJobHandler;

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->scheduleJob(Lmobisocial/omlib/client/interfaces/DurableJobHandler;Z)V

    .line 105
    return-void
.end method

.method public scheduleJob(Lmobisocial/omlib/client/interfaces/DurableJobHandler;Z)V
    .registers 5
    .param p1, "job"    # Lmobisocial/omlib/client/interfaces/DurableJobHandler;
    .param p2, "frontOfSlice"    # Z

    .prologue
    .line 108
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;

    new-instance v1, Lmobisocial/omlib/client/LongdanDurableJobProcessor$1;

    invoke-direct {v1, p0, p1, p2}, Lmobisocial/omlib/client/LongdanDurableJobProcessor$1;-><init>(Lmobisocial/omlib/client/LongdanDurableJobProcessor;Lmobisocial/omlib/client/interfaces/DurableJobHandler;Z)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThread(Lmobisocial/omlib/db/DatabaseRunnable;)V

    .line 115
    return-void
.end method

.method public declared-synchronized start()V
    .registers 3

    .prologue
    .line 65
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mLoadUnfinishedJobs:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 66
    monitor-exit p0

    return-void

    .line 65
    :catchall_a
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
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 71
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
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
