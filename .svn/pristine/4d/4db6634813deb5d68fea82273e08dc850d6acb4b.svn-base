.class Lmobisocial/longdan/net/WsRpcConnection$1;
.super Ljava/lang/Object;
.source "WsRpcConnection.java"

# interfaces
.implements Lcom/squareup/okhttp/ws/WebSocketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/net/WsRpcConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/longdan/net/WsRpcConnection;


# direct methods
.method constructor <init>(Lmobisocial/longdan/net/WsRpcConnection;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/longdan/net/WsRpcConnection;

    .prologue
    .line 211
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$1;, "Lmobisocial/longdan/net/WsRpcConnection$1;"
    iput-object p1, p0, Lmobisocial/longdan/net/WsRpcConnection$1;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(ILjava/lang/String;)V
    .registers 7
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 283
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$1;, "Lmobisocial/longdan/net/WsRpcConnection$1;"
    sget v1, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_31

    .line 284
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection$1;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lmobisocial/longdan/net/WsRpcConnection;->access$200(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "socket closed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_31
    new-instance v0, Lmobisocial/longdan/exception/LongdanNetworkException;

    invoke-direct {v0, p2}, Lmobisocial/longdan/exception/LongdanNetworkException;-><init>(Ljava/lang/String;)V

    .line 286
    .local v0, "lex":Lmobisocial/longdan/exception/LongdanException;
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection$1;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # invokes: Lmobisocial/longdan/net/WsRpcConnection;->cleanupConnection(Lmobisocial/longdan/exception/LongdanException;)V
    invoke-static {v1, v0}, Lmobisocial/longdan/net/WsRpcConnection;->access$1200(Lmobisocial/longdan/net/WsRpcConnection;Lmobisocial/longdan/exception/LongdanException;)V

    .line 287
    return-void
.end method

.method public onFailure(Ljava/io/IOException;Lcom/squareup/okhttp/Response;)V
    .registers 5
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "response"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 252
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$1;, "Lmobisocial/longdan/net/WsRpcConnection$1;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$1;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lmobisocial/longdan/net/WsRpcConnection;->access$200(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Socket failure"

    invoke-static {v0, v1, p1}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 253
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$1;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    new-instance v1, Lmobisocial/longdan/exception/LongdanNetworkException;

    invoke-direct {v1, p1}, Lmobisocial/longdan/exception/LongdanNetworkException;-><init>(Ljava/lang/Exception;)V

    # invokes: Lmobisocial/longdan/net/WsRpcConnection;->cleanupConnection(Lmobisocial/longdan/exception/LongdanException;)V
    invoke-static {v0, v1}, Lmobisocial/longdan/net/WsRpcConnection;->access$1200(Lmobisocial/longdan/net/WsRpcConnection;Lmobisocial/longdan/exception/LongdanException;)V

    .line 254
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$1;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # invokes: Lmobisocial/longdan/net/WsRpcConnection;->scheduleReconnect()V
    invoke-static {v0}, Lmobisocial/longdan/net/WsRpcConnection;->access$1300(Lmobisocial/longdan/net/WsRpcConnection;)V

    .line 255
    return-void
.end method

.method public onMessage(Lcom/squareup/okhttp/ResponseBody;)V
    .registers 9
    .param p1, "body"    # Lcom/squareup/okhttp/ResponseBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$1;, "Lmobisocial/longdan/net/WsRpcConnection$1;"
    sget-object v4, Lcom/squareup/okhttp/ws/WebSocket;->TEXT:Lcom/squareup/okhttp/MediaType;

    invoke-virtual {p1}, Lcom/squareup/okhttp/ResponseBody;->contentType()Lcom/squareup/okhttp/MediaType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/squareup/okhttp/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 260
    invoke-virtual {p1}, Lcom/squareup/okhttp/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "s":Ljava/lang/String;
    sget v4, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v5, 0x2

    if-gt v4, v5, :cond_31

    .line 262
    iget-object v4, p0, Lmobisocial/longdan/net/WsRpcConnection$1;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lmobisocial/longdan/net/WsRpcConnection;->access$200(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got from server: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmobisocial/util/OMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_31
    iget-object v4, p0, Lmobisocial/longdan/net/WsRpcConnection$1;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->mContainerType:Ljava/lang/reflect/Type;
    invoke-static {v4}, Lmobisocial/longdan/net/WsRpcConnection;->access$1400(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v2, v4}, Lmobisocial/serialization/SerializationUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobisocial/longdan/net/RpcWrapper;

    .line 264
    .local v3, "wrapper":Lmobisocial/longdan/net/RpcWrapper;
    iget-object v4, v3, Lmobisocial/longdan/net/RpcWrapper;->response:Lmobisocial/longdan/LDProtocols$LDResponseContainerBase;

    if-eqz v4, :cond_49

    .line 265
    iget-object v1, v3, Lmobisocial/longdan/net/RpcWrapper;->response:Lmobisocial/longdan/LDProtocols$LDResponseContainerBase;

    .line 266
    .local v1, "responseContainer":Lmobisocial/longdan/LDProtocols$LDResponseContainerBase;
    iget-object v4, p0, Lmobisocial/longdan/net/WsRpcConnection$1;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    invoke-virtual {v4, v1}, Lmobisocial/longdan/net/WsRpcConnection;->onResponseReceived(Lmobisocial/longdan/LDProtocols$LDResponseContainerBase;)V

    .line 275
    .end local v1    # "responseContainer":Lmobisocial/longdan/LDProtocols$LDResponseContainerBase;
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "wrapper":Lmobisocial/longdan/net/RpcWrapper;
    :cond_48
    :goto_48
    return-void

    .line 267
    .restart local v2    # "s":Ljava/lang/String;
    .restart local v3    # "wrapper":Lmobisocial/longdan/net/RpcWrapper;
    :cond_49
    iget-object v4, v3, Lmobisocial/longdan/net/RpcWrapper;->request:Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;

    if-eqz v4, :cond_48

    .line 268
    iget-object v0, v3, Lmobisocial/longdan/net/RpcWrapper;->request:Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;

    .line 269
    .local v0, "requestContainer":Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;
    iget-object v4, p0, Lmobisocial/longdan/net/WsRpcConnection$1;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    invoke-virtual {v4, v0}, Lmobisocial/longdan/net/WsRpcConnection;->onServerPushReceived(Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;)V

    goto :goto_48

    .line 272
    .end local v0    # "requestContainer":Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "wrapper":Lmobisocial/longdan/net/RpcWrapper;
    :cond_55
    iget-object v4, p0, Lmobisocial/longdan/net/WsRpcConnection$1;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lmobisocial/longdan/net/WsRpcConnection;->access$200(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Received improperly framed data from the socket"

    invoke-static {v4, v5}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48
.end method

.method public onOpen(Lcom/squareup/okhttp/ws/WebSocket;Lcom/squareup/okhttp/Response;)V
    .registers 10
    .param p1, "webSocket"    # Lcom/squareup/okhttp/ws/WebSocket;
    .param p2, "response"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 215
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$1;, "Lmobisocial/longdan/net/WsRpcConnection$1;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$1;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->mDisposed:Z
    invoke-static {v0}, Lmobisocial/longdan/net/WsRpcConnection;->access$100(Lmobisocial/longdan/net/WsRpcConnection;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 216
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$1;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lmobisocial/longdan/net/WsRpcConnection;->access$200(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This connection was disposed. Stack trace:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :goto_2c
    return-void

    .line 219
    :cond_2d
    invoke-virtual {p2}, Lcom/squareup/okhttp/Response;->code()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_bb

    .line 220
    sget v0, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_56

    .line 221
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$1;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lmobisocial/longdan/net/WsRpcConnection;->access$200(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got a connected socket "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_56
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$1;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->mStateLock:Ljava/lang/Object;
    invoke-static {v0}, Lmobisocial/longdan/net/WsRpcConnection;->access$300(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 223
    :try_start_5d
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$1;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    const-wide/16 v2, 0x1

    # setter for: Lmobisocial/longdan/net/WsRpcConnection;->mCurrentRequestId:J
    invoke-static {v0, v2, v3}, Lmobisocial/longdan/net/WsRpcConnection;->access$402(Lmobisocial/longdan/net/WsRpcConnection;J)J

    .line 224
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$1;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # setter for: Lmobisocial/longdan/net/WsRpcConnection;->mSocket:Lcom/squareup/okhttp/ws/WebSocket;
    invoke-static {v0, p1}, Lmobisocial/longdan/net/WsRpcConnection;->access$502(Lmobisocial/longdan/net/WsRpcConnection;Lcom/squareup/okhttp/ws/WebSocket;)Lcom/squareup/okhttp/ws/WebSocket;

    .line 225
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$1;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    const-wide/16 v2, 0x1

    # setter for: Lmobisocial/longdan/net/WsRpcConnection;->mBackoffTime:J
    invoke-static {v0, v2, v3}, Lmobisocial/longdan/net/WsRpcConnection;->access$602(Lmobisocial/longdan/net/WsRpcConnection;J)J

    .line 226
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_5d .. :try_end_71} :catchall_b5

    .line 227
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$1;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    sget-object v1, Lmobisocial/longdan/net/WsRpcConnection$State;->UNAUTHENTICATED:Lmobisocial/longdan/net/WsRpcConnection$State;

    # invokes: Lmobisocial/longdan/net/WsRpcConnection;->setConnectionState(Lmobisocial/longdan/net/WsRpcConnection$State;)V
    invoke-static {v0, v1}, Lmobisocial/longdan/net/WsRpcConnection;->access$700(Lmobisocial/longdan/net/WsRpcConnection;Lmobisocial/longdan/net/WsRpcConnection$State;)V

    .line 228
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$1;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->mStateLock:Ljava/lang/Object;
    invoke-static {v0}, Lmobisocial/longdan/net/WsRpcConnection;->access$300(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 229
    :try_start_7f
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$1;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->mPingTask:Ljava/util/TimerTask;
    invoke-static {v0}, Lmobisocial/longdan/net/WsRpcConnection;->access$800(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/util/TimerTask;

    move-result-object v0

    if-eqz v0, :cond_90

    .line 230
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$1;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->mPingTask:Ljava/util/TimerTask;
    invoke-static {v0}, Lmobisocial/longdan/net/WsRpcConnection;->access$800(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/util/TimerTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 232
    :cond_90
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$1;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    new-instance v1, Lmobisocial/longdan/net/WsRpcConnection$1$1;

    invoke-direct {v1, p0}, Lmobisocial/longdan/net/WsRpcConnection$1$1;-><init>(Lmobisocial/longdan/net/WsRpcConnection$1;)V

    # setter for: Lmobisocial/longdan/net/WsRpcConnection;->mPingTask:Ljava/util/TimerTask;
    invoke-static {v0, v1}, Lmobisocial/longdan/net/WsRpcConnection;->access$802(Lmobisocial/longdan/net/WsRpcConnection;Ljava/util/TimerTask;)Ljava/util/TimerTask;
    :try_end_9a
    .catchall {:try_start_7f .. :try_end_9a} :catchall_b8

    .line 240
    :try_start_9a
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$1;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->mPingTaskTimer:Ljava/util/Timer;
    invoke-static {v0}, Lmobisocial/longdan/net/WsRpcConnection;->access$1000(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection$1;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->mPingTask:Ljava/util/TimerTask;
    invoke-static {v1}, Lmobisocial/longdan/net/WsRpcConnection;->access$800(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x36b0

    const-wide/16 v4, 0x6d60

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_ad} :catch_c8
    .catchall {:try_start_9a .. :try_end_ad} :catchall_b8

    .line 243
    :goto_ad
    :try_start_ad
    monitor-exit v6
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_b8

    .line 244
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$1;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # invokes: Lmobisocial/longdan/net/WsRpcConnection;->doHelloChallenge()V
    invoke-static {v0}, Lmobisocial/longdan/net/WsRpcConnection;->access$1100(Lmobisocial/longdan/net/WsRpcConnection;)V

    goto/16 :goto_2c

    .line 226
    :catchall_b5
    move-exception v0

    :try_start_b6
    monitor-exit v1
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw v0

    .line 243
    :catchall_b8
    move-exception v0

    :try_start_b9
    monitor-exit v6
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    throw v0

    .line 246
    :cond_bb
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$1;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lmobisocial/longdan/net/WsRpcConnection;->access$200(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connected in a bad state"

    invoke-static {v0, v1}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 241
    :catch_c8
    move-exception v0

    goto :goto_ad
.end method

.method public onPong(Lokio/Buffer;)V
    .registers 2
    .param p1, "payload"    # Lokio/Buffer;

    .prologue
    .line 279
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$1;, "Lmobisocial/longdan/net/WsRpcConnection$1;"
    return-void
.end method
