.class Lmobisocial/omlib/client/LongdanMessageConsumer$11;
.super Ljava/lang/Object;
.source "LongdanMessageConsumer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/LongdanMessageConsumer;->onSessionEstablished(Lmobisocial/longdan/net/WsRpcConnectionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

.field final synthetic val$conn:Lmobisocial/longdan/net/WsRpcConnectionHandler;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanMessageConsumer;Lmobisocial/longdan/net/WsRpcConnectionHandler;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanMessageConsumer;

    .prologue
    .line 285
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$11;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    iput-object p2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$11;->val$conn:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 289
    const-string v2, "LongdanMessageConsumer"

    const-string v3, "Session established to message client"

    invoke-static {v2, v3}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$11;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    # invokes: Lmobisocial/omlib/client/LongdanMessageConsumer;->doSubscribe()Z
    invoke-static {v2}, Lmobisocial/omlib/client/LongdanMessageConsumer;->access$600(Lmobisocial/omlib/client/LongdanMessageConsumer;)Z

    move-result v1

    .line 291
    .local v1, "subscribeSuccess":Z
    if-nez v1, :cond_65

    .line 292
    sget v2, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v3, 0x5

    if-gt v2, v3, :cond_3a

    .line 293
    const-string v2, "LongdanMessageConsumer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subscribe failed, sleeping for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$11;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    # getter for: Lmobisocial/omlib/client/LongdanMessageConsumer;->mBackoff:I
    invoke-static {v4}, Lmobisocial/omlib/client/LongdanMessageConsumer;->access$700(Lmobisocial/omlib/client/LongdanMessageConsumer;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " seconds then trying again."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_3a
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$11;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    # getter for: Lmobisocial/omlib/client/LongdanMessageConsumer;->mBackoff:I
    invoke-static {v2}, Lmobisocial/omlib/client/LongdanMessageConsumer;->access$700(Lmobisocial/omlib/client/LongdanMessageConsumer;)I

    move-result v2

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_49

    .line 295
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$11;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    # operator++ for: Lmobisocial/omlib/client/LongdanMessageConsumer;->mBackoff:I
    invoke-static {v2}, Lmobisocial/omlib/client/LongdanMessageConsumer;->access$708(Lmobisocial/omlib/client/LongdanMessageConsumer;)I

    .line 297
    :cond_49
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$11;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    # getter for: Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v2}, Lmobisocial/omlib/client/LongdanMessageConsumer;->access$100(Lmobisocial/omlib/client/LongdanMessageConsumer;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v2

    invoke-virtual {v2}, Lmobisocial/omlib/client/LongdanClient;->getTimer()Ljava/util/Timer;

    move-result-object v2

    new-instance v3, Lmobisocial/omlib/client/LongdanMessageConsumer$11$1;

    invoke-direct {v3, p0}, Lmobisocial/omlib/client/LongdanMessageConsumer$11$1;-><init>(Lmobisocial/omlib/client/LongdanMessageConsumer$11;)V

    iget-object v4, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$11;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    .line 303
    # getter for: Lmobisocial/omlib/client/LongdanMessageConsumer;->mBackoff:I
    invoke-static {v4}, Lmobisocial/omlib/client/LongdanMessageConsumer;->access$700(Lmobisocial/omlib/client/LongdanMessageConsumer;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x7d0

    int-to-long v4, v4

    .line 297
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 318
    :goto_64
    return-void

    .line 306
    :cond_65
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$11;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    # getter for: Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v2}, Lmobisocial/omlib/client/LongdanMessageConsumer;->access$100(Lmobisocial/omlib/client/LongdanMessageConsumer;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v2

    invoke-virtual {v2}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v2

    invoke-virtual {v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->incrementInterest()V

    .line 309
    :try_start_72
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$11;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    # getter for: Lmobisocial/omlib/client/LongdanMessageConsumer;->mFeedsToSyncPendingCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lmobisocial/omlib/client/LongdanMessageConsumer;->access$800(Lmobisocial/omlib/client/LongdanMessageConsumer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 310
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$11;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    # getter for: Lmobisocial/omlib/client/LongdanMessageConsumer;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    invoke-static {v2}, Lmobisocial/omlib/client/LongdanMessageConsumer;->access$900(Lmobisocial/omlib/client/LongdanMessageConsumer;)Ljava/util/concurrent/PriorityBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V

    .line 311
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$11;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    # getter for: Lmobisocial/omlib/client/LongdanMessageConsumer;->mQueuedFeeds:Ljava/util/Set;
    invoke-static {v2}, Lmobisocial/omlib/client/LongdanMessageConsumer;->access$1000(Lmobisocial/omlib/client/LongdanMessageConsumer;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 312
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$11;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    # getter for: Lmobisocial/omlib/client/LongdanMessageConsumer;->mDBAccess:Lmobisocial/omlib/db/OMSQLiteHelper;
    invoke-static {v2}, Lmobisocial/omlib/client/LongdanMessageConsumer;->access$1100(Lmobisocial/omlib/client/LongdanMessageConsumer;)Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v2

    const-class v3, Lmobisocial/omlib/db/entity/OMFeed;

    const-string v4, "syncMask != 0"

    invoke-virtual {v2, v3, v4}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectsByQuery(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 313
    .local v0, "currentDBFeeds":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/db/entity/OMFeed;>;"
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$11;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lmobisocial/omlib/client/LongdanMessageConsumer;->enqueueFeedsForFetch(Ljava/util/List;Z)V

    .line 314
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$11;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    # invokes: Lmobisocial/omlib/client/LongdanMessageConsumer;->fetchDirtyFeeds()V
    invoke-static {v2}, Lmobisocial/omlib/client/LongdanMessageConsumer;->access$1200(Lmobisocial/omlib/client/LongdanMessageConsumer;)V
    :try_end_a7
    .catchall {:try_start_72 .. :try_end_a7} :catchall_b5

    .line 316
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$11;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    # getter for: Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v2}, Lmobisocial/omlib/client/LongdanMessageConsumer;->access$100(Lmobisocial/omlib/client/LongdanMessageConsumer;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v2

    invoke-virtual {v2}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v2

    invoke-virtual {v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->decrementInterest()V

    goto :goto_64

    .end local v0    # "currentDBFeeds":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/db/entity/OMFeed;>;"
    :catchall_b5
    move-exception v2

    iget-object v3, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$11;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    # getter for: Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v3}, Lmobisocial/omlib/client/LongdanMessageConsumer;->access$100(Lmobisocial/omlib/client/LongdanMessageConsumer;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v3

    invoke-virtual {v3}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v3

    invoke-virtual {v3}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->decrementInterest()V

    throw v2
.end method
