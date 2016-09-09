.class public Lmobisocial/omlib/client/LongdanMessageProcessor;
.super Ljava/lang/Object;
.source "LongdanMessageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlib/client/LongdanMessageProcessor$LRUCache;,
        Lmobisocial/omlib/client/LongdanMessageProcessor$CancelledFuture;,
        Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;,
        Lmobisocial/omlib/client/LongdanMessageProcessor$PostCommitRunner;,
        Lmobisocial/omlib/client/LongdanMessageProcessor$RealtimeMessageProcessors;,
        Lmobisocial/omlib/client/LongdanMessageProcessor$DurableMessageProcessors;
    }
.end annotation


# static fields
.field public static final PROCESSOR_THREAD_NAME:Ljava/lang/String; = "Omlib-processor"

.field public static final TAG:Ljava/lang/String; = "Omlib-processor"

.field static sActiveProcessDurableMessagesTask:Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;

.field static sJobCount:I


# instance fields
.field private final mClient:Lmobisocial/omlib/client/LongdanClient;

.field private final mDbHelper:Lmobisocial/omlib/db/OMSQLiteHelper;

.field final mDeferredMessages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/ArrayList",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDMessage;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile mDiposed:Z

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field final mPendingMessageVerions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmobisocial/omlib/client/LongdanClient;)V
    .registers 4
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 74
    new-instance v0, Lmobisocial/omlib/client/LongdanMessageProcessor$LRUCache;

    const/16 v1, 0x50

    invoke-direct {v0, p0, v1}, Lmobisocial/omlib/client/LongdanMessageProcessor$LRUCache;-><init>(Lmobisocial/omlib/client/LongdanMessageProcessor;I)V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mDeferredMessages:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mPendingMessageVerions:Ljava/util/Map;

    .line 79
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;

    .line 80
    invoke-virtual {p1}, Lmobisocial/omlib/client/LongdanClient;->getDbHelper()Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mDbHelper:Lmobisocial/omlib/db/OMSQLiteHelper;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lmobisocial/omlib/client/LongdanMessageProcessor;)Lmobisocial/omlib/db/OMSQLiteHelper;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/client/LongdanMessageProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mDbHelper:Lmobisocial/omlib/db/OMSQLiteHelper;

    return-object v0
.end method

.method static synthetic access$200(Lmobisocial/omlib/client/LongdanMessageProcessor;)Lmobisocial/omlib/client/LongdanClient;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/client/LongdanMessageProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;

    return-object v0
.end method

.method static synthetic access$400(Lmobisocial/omlib/client/LongdanMessageProcessor;)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/client/LongdanMessageProcessor;

    .prologue
    .line 56
    iget-boolean v0, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mDiposed:Z

    return v0
.end method

.method private executeSafely(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 158
    :try_start_0
    iget-object v1, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lmobisocial/omlib/helper/SafeRunnable;

    invoke-direct {v2, p1}, Lmobisocial/omlib/helper/SafeRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 162
    :goto_a
    return-void

    .line 159
    :catch_b
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Omlib-processor"

    const-string v2, "Executor not accepting job"

    invoke-static {v1, v2, v0}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method private processAction(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 179
    iget-boolean v1, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mDiposed:Z

    if-eqz v1, :cond_c

    .line 180
    const-string v1, "Omlib-processor"

    const-string v2, "Message processor has been stopped, ignoring request."

    invoke-static {v1, v2}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :goto_b
    return-void

    .line 183
    :cond_c
    invoke-virtual {p0}, Lmobisocial/omlib/client/LongdanMessageProcessor;->isProcessorThread()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 185
    :try_start_12
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_b

    .line 186
    :catch_16
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Omlib-processor"

    const-string v2, "Error processing database action"

    invoke-static {v1, v2, v0}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 190
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1f
    invoke-direct {p0, p1}, Lmobisocial/omlib/client/LongdanMessageProcessor;->executeSafely(Ljava/lang/Runnable;)V

    goto :goto_b
.end method

.method private processActionAsync(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)",
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    iget-boolean v0, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mDiposed:Z

    if-eqz v0, :cond_12

    .line 196
    const-string v0, "Omlib-processor"

    const-string v1, "Message processor has been stopped, ignoring request."

    invoke-static {v0, v1}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v0, Lmobisocial/omlib/client/LongdanMessageProcessor$CancelledFuture;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmobisocial/omlib/client/LongdanMessageProcessor$CancelledFuture;-><init>(Lmobisocial/omlib/client/LongdanMessageProcessor;Lmobisocial/omlib/client/LongdanMessageProcessor$1;)V

    .line 199
    :goto_11
    return-object v0

    :cond_12
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_11
.end method


# virtual methods
.method public addPendingMessage(JJ)V
    .registers 10
    .param p1, "msgId"    # J
    .param p3, "msgVersionHash"    # J

    .prologue
    .line 351
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mPendingMessageVerions:Ljava/util/Map;

    monitor-enter v2

    .line 352
    :try_start_3
    iget-object v1, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mPendingMessageVerions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 353
    .local v0, "pending":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v0, :cond_1f

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "pending":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .restart local v0    # "pending":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v1, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mPendingMessageVerions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    :cond_1f
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 358
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_30
    monitor-exit v2

    .line 361
    return-void

    .line 360
    .end local v0    # "pending":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catchall_32
    move-exception v1

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public deferMessageForDependency(Lmobisocial/longdan/LDProtocols$LDMessage;[B)V
    .registers 6
    .param p1, "message"    # Lmobisocial/longdan/LDProtocols$LDMessage;
    .param p2, "dependencyFeedIdTypedId"    # [B

    .prologue
    .line 399
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 400
    .local v1, "key":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mDeferredMessages:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 401
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mDeferredMessages:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 406
    .local v0, "deferred":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmobisocial/longdan/LDProtocols$LDMessage;>;"
    :goto_14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    return-void

    .line 403
    .end local v0    # "deferred":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmobisocial/longdan/LDProtocols$LDMessage;>;"
    :cond_18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .restart local v0    # "deferred":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmobisocial/longdan/LDProtocols$LDMessage;>;"
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mDeferredMessages:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14
.end method

.method public getMessagesRequiringDependency([B)Ljava/util/ArrayList;
    .registers 4
    .param p1, "dependencyFeedIdTypedId"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mDeferredMessages:Ljava/util/Map;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public isMessagePending(JJ)Z
    .registers 10
    .param p1, "msgId"    # J
    .param p3, "hashToSend"    # J

    .prologue
    .line 364
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mPendingMessageVerions:Ljava/util/Map;

    monitor-enter v2

    .line 365
    :try_start_3
    iget-object v1, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mPendingMessageVerions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 366
    .local v0, "pending":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v0, :cond_14

    .line 367
    const/4 v1, 0x0

    monitor-exit v2

    .line 369
    :goto_13
    return v1

    :cond_14
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v2

    goto :goto_13

    .line 371
    .end local v0    # "pending":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public isProcessorThread()Z
    .registers 3

    .prologue
    .line 285
    const-string v0, "Omlib-processor"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public processDatabaseAction(Lmobisocial/omlib/db/DatabaseRunnable;)V
    .registers 4
    .param p1, "action"    # Lmobisocial/omlib/db/DatabaseRunnable;

    .prologue
    .line 227
    iget-boolean v0, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mDiposed:Z

    if-eqz v0, :cond_c

    .line 228
    const-string v0, "Omlib-processor"

    const-string v1, "Message processor has been stopped, ignoring request."

    invoke-static {v0, v1}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :goto_b
    return-void

    .line 232
    :cond_c
    new-instance v0, Lmobisocial/omlib/client/LongdanMessageProcessor$2;

    invoke-direct {v0, p0, p1}, Lmobisocial/omlib/client/LongdanMessageProcessor$2;-><init>(Lmobisocial/omlib/client/LongdanMessageProcessor;Lmobisocial/omlib/db/DatabaseRunnable;)V

    invoke-direct {p0, v0}, Lmobisocial/omlib/client/LongdanMessageProcessor;->processAction(Ljava/lang/Runnable;)V

    goto :goto_b
.end method

.method public processDatabaseActionAsync(Lmobisocial/omlib/db/DatabaseCallable;)Ljava/util/concurrent/Future;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lmobisocial/omlib/db/DatabaseCallable",
            "<TV;>;)",
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "action":Lmobisocial/omlib/db/DatabaseCallable;, "Lmobisocial/omlib/db/DatabaseCallable<TV;>;"
    iget-boolean v0, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mDiposed:Z

    if-eqz v0, :cond_12

    .line 264
    const-string v0, "Omlib-processor"

    const-string v1, "Message processor has been stopped, ignoring request."

    invoke-static {v0, v1}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    new-instance v0, Lmobisocial/omlib/client/LongdanMessageProcessor$CancelledFuture;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmobisocial/omlib/client/LongdanMessageProcessor$CancelledFuture;-><init>(Lmobisocial/omlib/client/LongdanMessageProcessor;Lmobisocial/omlib/client/LongdanMessageProcessor$1;)V

    .line 267
    :goto_11
    return-object v0

    :cond_12
    new-instance v0, Lmobisocial/omlib/client/LongdanMessageProcessor$3;

    invoke-direct {v0, p0, p1}, Lmobisocial/omlib/client/LongdanMessageProcessor$3;-><init>(Lmobisocial/omlib/client/LongdanMessageProcessor;Lmobisocial/omlib/db/DatabaseCallable;)V

    invoke-direct {p0, v0}, Lmobisocial/omlib/client/LongdanMessageProcessor;->processActionAsync(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_11
.end method

.method public processDurableMessageForSending(Lmobisocial/longdan/LDProtocols$LDMessage;Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 5
    .param p1, "msg"    # Lmobisocial/longdan/LDProtocols$LDMessage;
    .param p2, "receipt"    # Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;
    .param p3, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p4, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 293
    invoke-virtual {p0, p1, p2, p3, p4}, Lmobisocial/omlib/client/LongdanMessageProcessor;->processDurableMessageInTransaction(Lmobisocial/longdan/LDProtocols$LDMessage;Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V

    .line 294
    return-void
.end method

.method public processDurableMessageFromPush(Lmobisocial/longdan/LDProtocols$LDMessage;)V
    .registers 3
    .param p1, "msg"    # Lmobisocial/longdan/LDProtocols$LDMessage;

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmobisocial/omlib/client/LongdanMessageProcessor;->processDurableMessageFromPush(Lmobisocial/longdan/LDProtocols$LDMessage;Ljava/lang/Runnable;)V

    .line 298
    return-void
.end method

.method public processDurableMessageFromPush(Lmobisocial/longdan/LDProtocols$LDMessage;Ljava/lang/Runnable;)V
    .registers 7
    .param p1, "msg"    # Lmobisocial/longdan/LDProtocols$LDMessage;
    .param p2, "completionRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 301
    iget-boolean v1, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mDiposed:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v1, v1, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-virtual {v1}, Lmobisocial/omlib/client/ClientAuthUtils;->getAccount()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_16

    .line 302
    :cond_e
    const-string v1, "Omlib-processor"

    const-string v2, "Message processor has been stopped, ignoring request."

    invoke-static {v1, v2}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :goto_15
    return-void

    .line 305
    :cond_16
    new-instance v0, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;

    invoke-direct {v0}, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;-><init>()V

    .line 306
    .local v0, "receipt":Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;->pushed:Z

    .line 307
    new-instance v1, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, p2}, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;-><init>(Lmobisocial/omlib/client/LongdanMessageProcessor;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lmobisocial/omlib/client/LongdanMessageProcessor;->processDatabaseAction(Lmobisocial/omlib/db/DatabaseRunnable;)V

    goto :goto_15
.end method

.method public processDurableMessageInTransaction(Lmobisocial/longdan/LDProtocols$LDMessage;Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 8
    .param p1, "msg"    # Lmobisocial/longdan/LDProtocols$LDMessage;
    .param p2, "receipt"    # Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;
    .param p3, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p4, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 320
    iget-boolean v1, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mDiposed:Z

    if-eqz v1, :cond_c

    .line 321
    const-string v1, "Omlib-processor"

    const-string v2, "Message processor has been stopped, ignoring request."

    invoke-static {v1, v2}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :goto_b
    return-void

    .line 324
    :cond_c
    new-instance v0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;-><init>(Lmobisocial/omlib/client/LongdanMessageProcessor;Ljava/util/List;Ljava/util/List;)V

    .line 325
    .local v0, "task":Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;
    invoke-virtual {v0, p3, p4}, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V

    goto :goto_b
.end method

.method public processDurableMessageInTransaction(Lmobisocial/longdan/LDProtocols$LDMessage;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 7
    .param p1, "msg"    # Lmobisocial/longdan/LDProtocols$LDMessage;
    .param p2, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 311
    iget-boolean v1, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mDiposed:Z

    if-eqz v1, :cond_c

    .line 312
    const-string v1, "Omlib-processor"

    const-string v2, "Message processor has been stopped, ignoring request."

    invoke-static {v1, v2}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :goto_b
    return-void

    .line 315
    :cond_c
    new-instance v0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;-><init>(Lmobisocial/omlib/client/LongdanMessageProcessor;Ljava/util/List;)V

    .line 316
    .local v0, "task":Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;
    invoke-virtual {v0, p2, p3}, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V

    goto :goto_b
.end method

.method public processDurableMessagesInTransaction(Ljava/util/List;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 7
    .param p2, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDMessage;",
            ">;",
            "Lmobisocial/omlib/db/OMSQLiteHelper;",
            "Lmobisocial/omlib/db/PostCommit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 329
    .local p1, "msgs":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/LDProtocols$LDMessage;>;"
    iget-boolean v1, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mDiposed:Z

    if-eqz v1, :cond_c

    .line 330
    const-string v1, "Omlib-processor"

    const-string v2, "Message processor has been stopped, ignoring request."

    invoke-static {v1, v2}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :goto_b
    return-void

    .line 333
    :cond_c
    new-instance v0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;

    invoke-direct {v0, p0, p1}, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;-><init>(Lmobisocial/omlib/client/LongdanMessageProcessor;Ljava/util/List;)V

    .line 334
    .local v0, "task":Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;
    invoke-virtual {v0, p2, p3}, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V

    goto :goto_b
.end method

.method public processRealtimeMessage(Lmobisocial/longdan/LDProtocols$LDRealtimeMessage;)V
    .registers 6
    .param p1, "msg"    # Lmobisocial/longdan/LDProtocols$LDRealtimeMessage;

    .prologue
    .line 338
    iget-boolean v1, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mDiposed:Z

    if-eqz v1, :cond_c

    .line 339
    const-string v1, "Omlib-processor"

    const-string v2, "Message processor has been stopped, ignoring request."

    invoke-static {v1, v2}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :goto_b
    return-void

    .line 342
    :cond_c
    iget-object v1, p1, Lmobisocial/longdan/LDProtocols$LDRealtimeMessage;->Type:Ljava/lang/String;

    invoke-static {v1}, Lmobisocial/omlib/client/LongdanMessageProcessor$RealtimeMessageProcessors;->getProcessorForType(Ljava/lang/String;)Lmobisocial/omlib/client/interfaces/RealtimeMessageProcessor;

    move-result-object v0

    .line 343
    .local v0, "proc":Lmobisocial/omlib/client/interfaces/RealtimeMessageProcessor;
    if-nez v0, :cond_2f

    .line 344
    const-string v1, "Omlib-processor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring realtime msg of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lmobisocial/longdan/LDProtocols$LDRealtimeMessage;->Type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 346
    :cond_2f
    iget-object v1, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-interface {v0, v1, p1}, Lmobisocial/omlib/client/interfaces/RealtimeMessageProcessor;->processMessage(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/longdan/LDProtocols$LDRealtimeMessage;)V

    goto :goto_b
.end method

.method public declared-synchronized removePendingMessage(JJ)Z
    .registers 10
    .param p1, "msgId"    # J
    .param p3, "hashToSend"    # J

    .prologue
    const/4 v1, 0x1

    .line 376
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mPendingMessageVerions:Ljava/util/Map;

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_31

    .line 377
    :try_start_5
    iget-object v3, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mPendingMessageVerions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 378
    .local v0, "pending":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v0, :cond_16

    .line 379
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_2e

    .line 386
    :goto_14
    monitor-exit p0

    return v1

    .line 381
    :cond_16
    :try_start_16
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 382
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 383
    iget-object v3, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mPendingMessageVerions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    monitor-exit v2

    goto :goto_14

    .line 389
    .end local v0    # "pending":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catchall_2e
    move-exception v1

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_16 .. :try_end_30} :catchall_2e

    :try_start_30
    throw v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    .line 376
    :catchall_31
    move-exception v1

    monitor-exit p0

    throw v1

    .line 386
    .restart local v0    # "pending":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_34
    const/4 v1, 0x0

    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_2e

    goto :goto_14
.end method

.method public declared-synchronized start()V
    .registers 3

    .prologue
    .line 146
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lmobisocial/omlib/client/LongdanMessageProcessor$1;

    invoke-direct {v1, p0}, Lmobisocial/omlib/client/LongdanMessageProcessor$1;-><init>(Lmobisocial/omlib/client/LongdanMessageProcessor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 154
    monitor-exit p0

    return-void

    .line 146
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 5

    .prologue
    .line 169
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mDiposed:Z

    .line 170
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mDbHelper:Lmobisocial/omlib/db/OMSQLiteHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobisocial/omlib/db/OMSQLiteHelper;->setRequiredDbWriteThread(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_1a

    .line 172
    :try_start_a
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 173
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0x2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_1d
    .catchall {:try_start_a .. :try_end_18} :catchall_1a

    .line 176
    :goto_18
    monitor-exit p0

    return-void

    .line 169
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 174
    :catch_1d
    move-exception v0

    goto :goto_18
.end method
