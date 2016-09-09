.class Lmobisocial/longdan/net/WsRpcConnection$13;
.super Ljava/lang/Object;
.source "WsRpcConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/longdan/net/WsRpcConnection;->callForSubscribe(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/longdan/net/WsRpcConnection;

.field final synthetic val$instance:Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;

.field final synthetic val$request:Lmobisocial/longdan/LDProtocols$LDJSONLoggable;


# direct methods
.method constructor <init>(Lmobisocial/longdan/net/WsRpcConnection;Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/longdan/net/WsRpcConnection;

    .prologue
    .line 743
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$13;, "Lmobisocial/longdan/net/WsRpcConnection$13;"
    iput-object p1, p0, Lmobisocial/longdan/net/WsRpcConnection$13;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    iput-object p2, p0, Lmobisocial/longdan/net/WsRpcConnection$13;->val$instance:Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;

    iput-object p3, p0, Lmobisocial/longdan/net/WsRpcConnection$13;->val$request:Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 747
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$13;, "Lmobisocial/longdan/net/WsRpcConnection$13;"
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnection$13;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->mStateLock:Ljava/lang/Object;
    invoke-static {v3}, Lmobisocial/longdan/net/WsRpcConnection;->access$300(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 748
    :try_start_7
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnection$13;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    const/4 v5, 0x0

    # invokes: Lmobisocial/longdan/net/WsRpcConnection;->isValidSendState(Z)Z
    invoke-static {v3, v5}, Lmobisocial/longdan/net/WsRpcConnection;->access$1800(Lmobisocial/longdan/net/WsRpcConnection;Z)Z

    move-result v3

    if-eqz v3, :cond_85

    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnection$13;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->mSocket:Lcom/squareup/okhttp/ws/WebSocket;
    invoke-static {v3}, Lmobisocial/longdan/net/WsRpcConnection;->access$500(Lmobisocial/longdan/net/WsRpcConnection;)Lcom/squareup/okhttp/ws/WebSocket;

    move-result-object v3

    if-eqz v3, :cond_85

    .line 749
    new-instance v1, Lmobisocial/longdan/net/RpcWrapper;

    invoke-direct {v1}, Lmobisocial/longdan/net/RpcWrapper;-><init>()V

    .line 750
    .local v1, "wrapper":Lmobisocial/longdan/net/RpcWrapper;
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnection$13;->val$instance:Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;

    iget-object v5, p0, Lmobisocial/longdan/net/WsRpcConnection$13;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # operator++ for: Lmobisocial/longdan/net/WsRpcConnection;->mCurrentRequestId:J
    invoke-static {v5}, Lmobisocial/longdan/net/WsRpcConnection;->access$408(Lmobisocial/longdan/net/WsRpcConnection;)J

    move-result-wide v6

    iput-wide v6, v3, Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;->SequenceNumber:J

    .line 751
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnection$13;->val$instance:Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;

    iput-object v3, v1, Lmobisocial/longdan/net/RpcWrapper;->request:Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;

    .line 752
    invoke-static {v1}, Lmobisocial/serialization/SerializationUtils;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 753
    .local v2, "wrapperString":Ljava/lang/String;
    sget v3, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v5, 0x2

    if-gt v3, v5, :cond_64

    .line 754
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnection$13;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lmobisocial/longdan/net/WsRpcConnection;->access$200(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sending subscribe string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmobisocial/longdan/net/WsRpcConnection$13;->val$instance:Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lmobisocial/util/OMLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_7 .. :try_end_64} :catchall_82

    .line 756
    :cond_64
    :try_start_64
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnection$13;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->mSocket:Lcom/squareup/okhttp/ws/WebSocket;
    invoke-static {v3}, Lmobisocial/longdan/net/WsRpcConnection;->access$500(Lmobisocial/longdan/net/WsRpcConnection;)Lcom/squareup/okhttp/ws/WebSocket;

    move-result-object v3

    sget-object v5, Lcom/squareup/okhttp/ws/WebSocket;->TEXT:Lcom/squareup/okhttp/MediaType;

    invoke-static {v5, v2}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/squareup/okhttp/ws/WebSocket;->sendMessage(Lcom/squareup/okhttp/RequestBody;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_73} :catch_75
    .catchall {:try_start_64 .. :try_end_73} :catchall_82

    .line 764
    .end local v1    # "wrapper":Lmobisocial/longdan/net/RpcWrapper;
    .end local v2    # "wrapperString":Ljava/lang/String;
    :goto_73
    :try_start_73
    monitor-exit v4

    .line 765
    return-void

    .line 757
    .restart local v1    # "wrapper":Lmobisocial/longdan/net/RpcWrapper;
    .restart local v2    # "wrapperString":Ljava/lang/String;
    :catch_75
    move-exception v0

    .line 758
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnection$13;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lmobisocial/longdan/net/WsRpcConnection;->access$200(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Subscribe failed, socket no longer valid."

    invoke-static {v3, v5}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_73

    .line 764
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "wrapper":Lmobisocial/longdan/net/RpcWrapper;
    .end local v2    # "wrapperString":Ljava/lang/String;
    :catchall_82
    move-exception v3

    monitor-exit v4
    :try_end_84
    .catchall {:try_start_73 .. :try_end_84} :catchall_82

    throw v3

    .line 762
    :cond_85
    :try_start_85
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnection$13;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lmobisocial/longdan/net/WsRpcConnection;->access$200(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "subscribe could not be sent because socket is not in valid state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmobisocial/longdan/net/WsRpcConnection$13;->val$request:Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a3
    .catchall {:try_start_85 .. :try_end_a3} :catchall_82

    goto :goto_73
.end method
