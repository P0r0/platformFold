.class Lmobisocial/longdan/net/WsRpcConnection$16;
.super Ljava/lang/Object;
.source "WsRpcConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/longdan/net/WsRpcConnection;->callInternal(Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/longdan/net/WsRpcConnection;

.field final synthetic val$core:Z

.field final synthetic val$request:Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;

.field final synthetic val$responseCallback:Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;


# direct methods
.method constructor <init>(Lmobisocial/longdan/net/WsRpcConnection;Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;ZLmobisocial/longdan/LDProtocols$LDRequestContainerBase;)V
    .registers 5
    .param p1, "this$0"    # Lmobisocial/longdan/net/WsRpcConnection;

    .prologue
    .line 894
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$16;, "Lmobisocial/longdan/net/WsRpcConnection$16;"
    iput-object p1, p0, Lmobisocial/longdan/net/WsRpcConnection$16;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    iput-object p2, p0, Lmobisocial/longdan/net/WsRpcConnection$16;->val$responseCallback:Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;

    iput-boolean p3, p0, Lmobisocial/longdan/net/WsRpcConnection$16;->val$core:Z

    iput-object p4, p0, Lmobisocial/longdan/net/WsRpcConnection$16;->val$request:Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 898
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$16;, "Lmobisocial/longdan/net/WsRpcConnection$16;"
    const/4 v4, 0x0

    .line 899
    .local v4, "socket":Lcom/squareup/okhttp/ws/WebSocket;
    const-wide/16 v2, -0x1

    .line 900
    .local v2, "requestId":J
    iget-object v7, p0, Lmobisocial/longdan/net/WsRpcConnection$16;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->mStateLock:Ljava/lang/Object;
    invoke-static {v7}, Lmobisocial/longdan/net/WsRpcConnection;->access$300(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 901
    :try_start_a
    iget-object v7, p0, Lmobisocial/longdan/net/WsRpcConnection$16;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->mState:Lmobisocial/longdan/net/WsRpcConnection$State;
    invoke-static {v7}, Lmobisocial/longdan/net/WsRpcConnection;->access$2000(Lmobisocial/longdan/net/WsRpcConnection;)Lmobisocial/longdan/net/WsRpcConnection$State;

    move-result-object v7

    sget-object v9, Lmobisocial/longdan/net/WsRpcConnection$State;->INVALID_KEYS:Lmobisocial/longdan/net/WsRpcConnection$State;

    if-ne v7, v9, :cond_67

    .line 902
    iget-object v7, p0, Lmobisocial/longdan/net/WsRpcConnection$16;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    iget-object v9, p0, Lmobisocial/longdan/net/WsRpcConnection$16;->val$responseCallback:Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;

    new-instance v10, Lmobisocial/longdan/exception/LongdanPermanentException;

    const-string v11, "Invalid Api key/secret"

    invoke-direct {v10, v11}, Lmobisocial/longdan/exception/LongdanPermanentException;-><init>(Ljava/lang/String;)V

    # invokes: Lmobisocial/longdan/net/WsRpcConnection;->postException(Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;Lmobisocial/longdan/exception/LongdanException;)V
    invoke-static {v7, v9, v10}, Lmobisocial/longdan/net/WsRpcConnection;->access$2100(Lmobisocial/longdan/net/WsRpcConnection;Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;Lmobisocial/longdan/exception/LongdanException;)V

    .line 913
    :goto_22
    monitor-exit v8
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_a0

    .line 914
    if-eqz v4, :cond_66

    .line 916
    :try_start_25
    new-instance v5, Lmobisocial/longdan/net/RpcWrapper;

    invoke-direct {v5}, Lmobisocial/longdan/net/RpcWrapper;-><init>()V

    .line 917
    .local v5, "wrapper":Lmobisocial/longdan/net/RpcWrapper;
    iget-object v7, p0, Lmobisocial/longdan/net/WsRpcConnection$16;->val$request:Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;

    iput-object v7, v5, Lmobisocial/longdan/net/RpcWrapper;->request:Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;

    .line 918
    iget-object v7, p0, Lmobisocial/longdan/net/WsRpcConnection$16;->val$request:Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;

    iput-wide v2, v7, Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;->SequenceNumber:J

    .line 919
    invoke-static {v5}, Lmobisocial/serialization/SerializationUtils;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 920
    .local v6, "wrapperString":Ljava/lang/String;
    sget v7, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v8, 0x2

    if-gt v7, v8, :cond_57

    .line 921
    iget-object v7, p0, Lmobisocial/longdan/net/WsRpcConnection$16;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lmobisocial/longdan/net/WsRpcConnection;->access$200(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sending request raw: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lmobisocial/util/OMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    :cond_57
    iget-object v7, p0, Lmobisocial/longdan/net/WsRpcConnection$16;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->mSocket:Lcom/squareup/okhttp/ws/WebSocket;
    invoke-static {v7}, Lmobisocial/longdan/net/WsRpcConnection;->access$500(Lmobisocial/longdan/net/WsRpcConnection;)Lcom/squareup/okhttp/ws/WebSocket;

    move-result-object v7

    sget-object v8, Lcom/squareup/okhttp/ws/WebSocket;->TEXT:Lcom/squareup/okhttp/MediaType;

    invoke-static {v8, v6}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/squareup/okhttp/ws/WebSocket;->sendMessage(Lcom/squareup/okhttp/RequestBody;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_66} :catch_d1

    .line 933
    .end local v5    # "wrapper":Lmobisocial/longdan/net/RpcWrapper;
    .end local v6    # "wrapperString":Ljava/lang/String;
    :cond_66
    :goto_66
    return-void

    .line 903
    :cond_67
    :try_start_67
    iget-object v7, p0, Lmobisocial/longdan/net/WsRpcConnection$16;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    iget-boolean v9, p0, Lmobisocial/longdan/net/WsRpcConnection$16;->val$core:Z

    # invokes: Lmobisocial/longdan/net/WsRpcConnection;->isValidSendState(Z)Z
    invoke-static {v7, v9}, Lmobisocial/longdan/net/WsRpcConnection;->access$1800(Lmobisocial/longdan/net/WsRpcConnection;Z)Z

    move-result v7

    if-eqz v7, :cond_a3

    iget-object v7, p0, Lmobisocial/longdan/net/WsRpcConnection$16;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->mSocket:Lcom/squareup/okhttp/ws/WebSocket;
    invoke-static {v7}, Lmobisocial/longdan/net/WsRpcConnection;->access$500(Lmobisocial/longdan/net/WsRpcConnection;)Lcom/squareup/okhttp/ws/WebSocket;

    move-result-object v7

    if-eqz v7, :cond_a3

    .line 904
    iget-object v7, p0, Lmobisocial/longdan/net/WsRpcConnection$16;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->mSocket:Lcom/squareup/okhttp/ws/WebSocket;
    invoke-static {v7}, Lmobisocial/longdan/net/WsRpcConnection;->access$500(Lmobisocial/longdan/net/WsRpcConnection;)Lcom/squareup/okhttp/ws/WebSocket;

    move-result-object v4

    .line 905
    iget-object v7, p0, Lmobisocial/longdan/net/WsRpcConnection$16;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # operator++ for: Lmobisocial/longdan/net/WsRpcConnection;->mCurrentRequestId:J
    invoke-static {v7}, Lmobisocial/longdan/net/WsRpcConnection;->access$408(Lmobisocial/longdan/net/WsRpcConnection;)J

    move-result-wide v2

    .line 906
    iget-object v7, p0, Lmobisocial/longdan/net/WsRpcConnection$16;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->mResponseHandlerLock:Ljava/lang/Object;
    invoke-static {v7}, Lmobisocial/longdan/net/WsRpcConnection;->access$2200(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_8c
    .catchall {:try_start_67 .. :try_end_8c} :catchall_a0

    .line 907
    :try_start_8c
    iget-object v7, p0, Lmobisocial/longdan/net/WsRpcConnection$16;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->mResponseHandlerMap:Ljava/util/Map;
    invoke-static {v7}, Lmobisocial/longdan/net/WsRpcConnection;->access$2300(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/util/Map;

    move-result-object v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-object v11, p0, Lmobisocial/longdan/net/WsRpcConnection$16;->val$responseCallback:Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    monitor-exit v9

    goto :goto_22

    :catchall_9d
    move-exception v7

    monitor-exit v9
    :try_end_9f
    .catchall {:try_start_8c .. :try_end_9f} :catchall_9d

    :try_start_9f
    throw v7

    .line 913
    :catchall_a0
    move-exception v7

    monitor-exit v8
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_a0

    throw v7

    .line 910
    :cond_a3
    :try_start_a3
    iget-object v7, p0, Lmobisocial/longdan/net/WsRpcConnection$16;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    iget-object v9, p0, Lmobisocial/longdan/net/WsRpcConnection$16;->val$responseCallback:Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;

    new-instance v10, Lmobisocial/longdan/exception/LongdanNetworkException;

    const-string v11, "Socket is closed"

    invoke-direct {v10, v11}, Lmobisocial/longdan/exception/LongdanNetworkException;-><init>(Ljava/lang/String;)V

    # invokes: Lmobisocial/longdan/net/WsRpcConnection;->postException(Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;Lmobisocial/longdan/exception/LongdanException;)V
    invoke-static {v7, v9, v10}, Lmobisocial/longdan/net/WsRpcConnection;->access$2100(Lmobisocial/longdan/net/WsRpcConnection;Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;Lmobisocial/longdan/exception/LongdanException;)V

    .line 911
    iget-object v7, p0, Lmobisocial/longdan/net/WsRpcConnection$16;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lmobisocial/longdan/net/WsRpcConnection;->access$200(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "request could not be sent because socket is not in valid state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lmobisocial/longdan/net/WsRpcConnection$16;->val$request:Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cf
    .catchall {:try_start_a3 .. :try_end_cf} :catchall_a0

    goto/16 :goto_22

    .line 923
    :catch_d1
    move-exception v1

    .line 925
    .local v1, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lmobisocial/longdan/net/WsRpcConnection$16;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->mResponseHandlerLock:Ljava/lang/Object;
    invoke-static {v7}, Lmobisocial/longdan/net/WsRpcConnection;->access$2200(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 926
    :try_start_d9
    iget-object v7, p0, Lmobisocial/longdan/net/WsRpcConnection$16;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->mResponseHandlerMap:Ljava/util/Map;
    invoke-static {v7}, Lmobisocial/longdan/net/WsRpcConnection;->access$2300(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/util/Map;

    move-result-object v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;

    .line 927
    .local v0, "c":Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;
    monitor-exit v8
    :try_end_ea
    .catchall {:try_start_d9 .. :try_end_ea} :catchall_fa

    .line 928
    if-eqz v0, :cond_66

    .line 929
    iget-object v7, p0, Lmobisocial/longdan/net/WsRpcConnection$16;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    new-instance v8, Lmobisocial/longdan/exception/LongdanNetworkException;

    const-string v9, "Invalid socket"

    invoke-direct {v8, v9, v1}, Lmobisocial/longdan/exception/LongdanNetworkException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    # invokes: Lmobisocial/longdan/net/WsRpcConnection;->postException(Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;Lmobisocial/longdan/exception/LongdanException;)V
    invoke-static {v7, v0, v8}, Lmobisocial/longdan/net/WsRpcConnection;->access$2100(Lmobisocial/longdan/net/WsRpcConnection;Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;Lmobisocial/longdan/exception/LongdanException;)V

    goto/16 :goto_66

    .line 927
    .end local v0    # "c":Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;
    :catchall_fa
    move-exception v7

    :try_start_fb
    monitor-exit v8
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fa

    throw v7
.end method
