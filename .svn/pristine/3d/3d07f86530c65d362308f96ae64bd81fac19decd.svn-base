.class Lmobisocial/longdan/net/WsRpcConnectionHandler$6;
.super Ljava/lang/Object;
.source "WsRpcConnectionHandler.java"

# interfaces
.implements Lmobisocial/longdan/net/WsRpcConnection$OnConnectivityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/net/WsRpcConnectionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;


# direct methods
.method constructor <init>(Lmobisocial/longdan/net/WsRpcConnectionHandler;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/longdan/net/WsRpcConnectionHandler;

    .prologue
    .line 316
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler$6;, "Lmobisocial/longdan/net/WsRpcConnectionHandler$6;"
    iput-object p1, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$6;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSocketConnected()V
    .registers 8

    .prologue
    .line 320
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler$6;, "Lmobisocial/longdan/net/WsRpcConnectionHandler$6;"
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$6;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$000(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 321
    :try_start_7
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$6;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSocketFailed:Z
    invoke-static {v3}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$500(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 322
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$6;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    const/4 v5, 0x0

    # setter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSocketFailed:Z
    invoke-static {v3, v5}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$502(Lmobisocial/longdan/net/WsRpcConnectionHandler;Z)Z

    .line 323
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$6;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mWsRpcConnection:Lmobisocial/longdan/net/WsRpcConnection;
    invoke-static {v3}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$600(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Lmobisocial/longdan/net/WsRpcConnection;

    move-result-object v3

    invoke-virtual {v3}, Lmobisocial/longdan/net/WsRpcConnection;->decrementInterest()V

    .line 325
    :cond_1e
    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_86

    .line 328
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$6;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$000(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 329
    :try_start_26
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$6;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    const/4 v5, 0x1

    # setter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSocketConnected:Z
    invoke-static {v3, v5}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$102(Lmobisocial/longdan/net/WsRpcConnectionHandler;Z)Z

    .line 330
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$6;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # operator++ for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSocketConnectionCount:J
    invoke-static {v3}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$208(Lmobisocial/longdan/net/WsRpcConnectionHandler;)J

    .line 331
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$6;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mHoldingInterestForRequests:Z
    invoke-static {v3}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$700(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Z

    move-result v0

    .line 332
    .local v0, "heldInterest":Z
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$6;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    const/4 v5, 0x0

    # setter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mHoldingInterestForRequests:Z
    invoke-static {v3, v5}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$702(Lmobisocial/longdan/net/WsRpcConnectionHandler;Z)Z

    .line 333
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$6;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mPendingRequests:Ljava/util/Queue;
    invoke-static {v3}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$800(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Ljava/util/Queue;

    move-result-object v2

    .line 334
    .local v2, "requests":Ljava/util/Queue;, "Ljava/util/Queue<Lmobisocial/longdan/net/WsRpcConnectionHandler<TTRequestContainer;TTResponseContainer;>.PendingRpcRequest<TTRequestContainer;TTResponseContainer;>;>;"
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$6;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    # setter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mPendingRequests:Ljava/util/Queue;
    invoke-static {v3, v5}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$802(Lmobisocial/longdan/net/WsRpcConnectionHandler;Ljava/util/Queue;)Ljava/util/Queue;

    .line 335
    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->sHandlerCallbackExecutor:Ljava/util/concurrent/Executor;
    invoke-static {}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$1000()Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v5, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$6;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSessionEstablishedRunner:Ljava/lang/Runnable;
    invoke-static {v5}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$900(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 336
    monitor-exit v4
    :try_end_5b
    .catchall {:try_start_26 .. :try_end_5b} :catchall_89

    .line 337
    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_97

    .line 340
    :goto_61
    :try_start_61
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobisocial/longdan/net/WsRpcConnectionHandler$PendingRpcRequest;

    .local v1, "req":Lmobisocial/longdan/net/WsRpcConnectionHandler$PendingRpcRequest;
    if-eqz v1, :cond_8c

    .line 341
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$6;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mWsRpcConnection:Lmobisocial/longdan/net/WsRpcConnection;
    invoke-static {v3}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$600(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Lmobisocial/longdan/net/WsRpcConnection;

    move-result-object v3

    iget-object v4, v1, Lmobisocial/longdan/net/WsRpcConnectionHandler$PendingRpcRequest;->request:Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    iget-object v5, v1, Lmobisocial/longdan/net/WsRpcConnectionHandler$PendingRpcRequest;->responseType:Ljava/lang/Class;

    iget-object v6, v1, Lmobisocial/longdan/net/WsRpcConnectionHandler$PendingRpcRequest;->responseCallback:Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;

    invoke-virtual {v3, v4, v5, v6}, Lmobisocial/longdan/net/WsRpcConnection;->call(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;)V
    :try_end_78
    .catchall {:try_start_61 .. :try_end_78} :catchall_79

    goto :goto_61

    .line 345
    .end local v1    # "req":Lmobisocial/longdan/net/WsRpcConnectionHandler$PendingRpcRequest;
    :catchall_79
    move-exception v3

    if-eqz v0, :cond_85

    .line 346
    iget-object v4, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$6;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mWsRpcConnection:Lmobisocial/longdan/net/WsRpcConnection;
    invoke-static {v4}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$600(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Lmobisocial/longdan/net/WsRpcConnection;

    move-result-object v4

    invoke-virtual {v4}, Lmobisocial/longdan/net/WsRpcConnection;->decrementInterest()V

    :cond_85
    throw v3

    .line 325
    .end local v0    # "heldInterest":Z
    .end local v2    # "requests":Ljava/util/Queue;, "Ljava/util/Queue<Lmobisocial/longdan/net/WsRpcConnectionHandler<TTRequestContainer;TTResponseContainer;>.PendingRpcRequest<TTRequestContainer;TTResponseContainer;>;>;"
    :catchall_86
    move-exception v3

    :try_start_87
    monitor-exit v4
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw v3

    .line 336
    :catchall_89
    move-exception v3

    :try_start_8a
    monitor-exit v4
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    throw v3

    .line 345
    .restart local v0    # "heldInterest":Z
    .restart local v1    # "req":Lmobisocial/longdan/net/WsRpcConnectionHandler$PendingRpcRequest;
    .restart local v2    # "requests":Ljava/util/Queue;, "Ljava/util/Queue<Lmobisocial/longdan/net/WsRpcConnectionHandler<TTRequestContainer;TTResponseContainer;>.PendingRpcRequest<TTRequestContainer;TTResponseContainer;>;>;"
    :cond_8c
    if-eqz v0, :cond_97

    .line 346
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$6;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mWsRpcConnection:Lmobisocial/longdan/net/WsRpcConnection;
    invoke-static {v3}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$600(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Lmobisocial/longdan/net/WsRpcConnection;

    move-result-object v3

    invoke-virtual {v3}, Lmobisocial/longdan/net/WsRpcConnection;->decrementInterest()V

    .line 349
    .end local v1    # "req":Lmobisocial/longdan/net/WsRpcConnectionHandler$PendingRpcRequest;
    :cond_97
    return-void
.end method

.method public onSocketConnectionAttemptFailed()V
    .registers 6

    .prologue
    .line 361
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler$6;, "Lmobisocial/longdan/net/WsRpcConnectionHandler$6;"
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$6;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$000(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 362
    :try_start_7
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$6;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSocketFailed:Z
    invoke-static {v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$500(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 363
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$6;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    const/4 v4, 0x1

    # setter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSocketFailed:Z
    invoke-static {v2, v4}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$502(Lmobisocial/longdan/net/WsRpcConnectionHandler;Z)Z

    .line 365
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$6;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mWsRpcConnection:Lmobisocial/longdan/net/WsRpcConnection;
    invoke-static {v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$600(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Lmobisocial/longdan/net/WsRpcConnection;

    move-result-object v2

    invoke-virtual {v2}, Lmobisocial/longdan/net/WsRpcConnection;->incrementInterest()V

    .line 367
    :cond_1e
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_76

    .line 369
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$6;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$000(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 370
    :try_start_26
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$6;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mPendingRequests:Ljava/util/Queue;
    invoke-static {v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$800(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Ljava/util/Queue;

    move-result-object v1

    .line 371
    .local v1, "requests":Ljava/util/Queue;, "Ljava/util/Queue<Lmobisocial/longdan/net/WsRpcConnectionHandler<TTRequestContainer;TTResponseContainer;>.PendingRpcRequest<TTRequestContainer;TTResponseContainer;>;>;"
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$6;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    # setter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mPendingRequests:Ljava/util/Queue;
    invoke-static {v2, v4}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$802(Lmobisocial/longdan/net/WsRpcConnectionHandler;Ljava/util/Queue;)Ljava/util/Queue;

    .line 372
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_79

    .line 373
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_49

    .line 374
    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->sHandlerCallbackExecutor:Ljava/util/concurrent/Executor;
    invoke-static {}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$1000()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lmobisocial/longdan/net/WsRpcConnectionHandler$6$1;

    invoke-direct {v3, p0, v1}, Lmobisocial/longdan/net/WsRpcConnectionHandler$6$1;-><init>(Lmobisocial/longdan/net/WsRpcConnectionHandler$6;Ljava/util/Queue;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 387
    :cond_49
    const/4 v0, 0x0

    .line 388
    .local v0, "heldInterest":Z
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$6;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$000(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 389
    :try_start_51
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$6;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mPendingRequests:Ljava/util/Queue;
    invoke-static {v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$800(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 390
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$6;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mHoldingInterestForRequests:Z
    invoke-static {v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$700(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Z

    move-result v0

    .line 391
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$6;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    const/4 v4, 0x0

    # setter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mHoldingInterestForRequests:Z
    invoke-static {v2, v4}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$702(Lmobisocial/longdan/net/WsRpcConnectionHandler;Z)Z

    .line 393
    :cond_69
    monitor-exit v3
    :try_end_6a
    .catchall {:try_start_51 .. :try_end_6a} :catchall_7c

    .line 394
    if-eqz v0, :cond_75

    .line 395
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$6;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mWsRpcConnection:Lmobisocial/longdan/net/WsRpcConnection;
    invoke-static {v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$600(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Lmobisocial/longdan/net/WsRpcConnection;

    move-result-object v2

    invoke-virtual {v2}, Lmobisocial/longdan/net/WsRpcConnection;->decrementInterest()V

    .line 397
    :cond_75
    return-void

    .line 367
    .end local v0    # "heldInterest":Z
    .end local v1    # "requests":Ljava/util/Queue;, "Ljava/util/Queue<Lmobisocial/longdan/net/WsRpcConnectionHandler<TTRequestContainer;TTResponseContainer;>.PendingRpcRequest<TTRequestContainer;TTResponseContainer;>;>;"
    :catchall_76
    move-exception v2

    :try_start_77
    monitor-exit v3
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw v2

    .line 372
    :catchall_79
    move-exception v2

    :try_start_7a
    monitor-exit v3
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw v2

    .line 393
    .restart local v0    # "heldInterest":Z
    .restart local v1    # "requests":Ljava/util/Queue;, "Ljava/util/Queue<Lmobisocial/longdan/net/WsRpcConnectionHandler<TTRequestContainer;TTResponseContainer;>.PendingRpcRequest<TTRequestContainer;TTResponseContainer;>;>;"
    :catchall_7c
    move-exception v2

    :try_start_7d
    monitor-exit v3
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw v2
.end method

.method public onSocketDisconnected()V
    .registers 4

    .prologue
    .line 353
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler$6;, "Lmobisocial/longdan/net/WsRpcConnectionHandler$6;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$6;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$000(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 354
    :try_start_7
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$6;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    const/4 v2, 0x0

    # setter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSocketConnected:Z
    invoke-static {v0, v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$102(Lmobisocial/longdan/net/WsRpcConnectionHandler;Z)Z

    .line 355
    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->sHandlerCallbackExecutor:Ljava/util/concurrent/Executor;
    invoke-static {}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$1000()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$6;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSessionDisconnectedRunner:Ljava/lang/Runnable;
    invoke-static {v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$1100(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 356
    monitor-exit v1

    .line 357
    return-void

    .line 356
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v0
.end method
