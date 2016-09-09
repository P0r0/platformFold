.class Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;
.super Ljava/lang/Object;
.source "RealWebSocket.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/ws/RealWebSocket;-><init>(ZLokio/BufferedSource;Lokio/BufferedSink;Ljava/util/Random;Ljava/util/concurrent/Executor;Lcom/squareup/okhttp/ws/WebSocketListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/ws/RealWebSocket;

.field final synthetic val$listener:Lcom/squareup/okhttp/ws/WebSocketListener;

.field final synthetic val$replyExecutor:Ljava/util/concurrent/Executor;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/ws/RealWebSocket;Lcom/squareup/okhttp/ws/WebSocketListener;Ljava/util/concurrent/Executor;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/squareup/okhttp/internal/ws/RealWebSocket;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->this$0:Lcom/squareup/okhttp/internal/ws/RealWebSocket;

    iput-object p2, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->val$listener:Lcom/squareup/okhttp/ws/WebSocketListener;

    iput-object p3, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->val$replyExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(ILjava/lang/String;)V
    .registers 11
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 79
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->this$0:Lcom/squareup/okhttp/internal/ws/RealWebSocket;

    # getter for: Lcom/squareup/okhttp/internal/ws/RealWebSocket;->closeLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->access$100(Lcom/squareup/okhttp/internal/ws/RealWebSocket;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 80
    :try_start_9
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->this$0:Lcom/squareup/okhttp/internal/ws/RealWebSocket;

    const/4 v3, 0x1

    # setter for: Lcom/squareup/okhttp/internal/ws/RealWebSocket;->readerSentClose:Z
    invoke-static {v0, v3}, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->access$202(Lcom/squareup/okhttp/internal/ws/RealWebSocket;Z)Z

    .line 83
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->this$0:Lcom/squareup/okhttp/internal/ws/RealWebSocket;

    # getter for: Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writerSentClose:Z
    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->access$300(Lcom/squareup/okhttp/internal/ws/RealWebSocket;)Z

    move-result v0

    if-nez v0, :cond_2f

    move v6, v1

    .line 84
    .local v6, "writeCloseResponse":Z
    :goto_18
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_31

    .line 86
    iget-object v7, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->val$replyExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1$2;

    const-string v2, "OkHttp %s WebSocket Close Reply"

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->val$url:Ljava/lang/String;

    aput-object v1, v3, v4

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1$2;-><init>(Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/String;Z)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 91
    return-void

    .end local v6    # "writeCloseResponse":Z
    :cond_2f
    move v6, v4

    .line 83
    goto :goto_18

    .line 84
    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0
.end method

.method public onMessage(Lcom/squareup/okhttp/ResponseBody;)V
    .registers 3
    .param p1, "message"    # Lcom/squareup/okhttp/ResponseBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->val$listener:Lcom/squareup/okhttp/ws/WebSocketListener;

    invoke-interface {v0, p1}, Lcom/squareup/okhttp/ws/WebSocketListener;->onMessage(Lcom/squareup/okhttp/ResponseBody;)V

    .line 60
    return-void
.end method

.method public onPing(Lokio/Buffer;)V
    .registers 8
    .param p1, "buffer"    # Lokio/Buffer;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->val$replyExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1$1;

    const-string v2, "OkHttp %s WebSocket Pong Reply"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->val$url:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1$1;-><init>(Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;Ljava/lang/String;[Ljava/lang/Object;Lokio/Buffer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method public onPong(Lokio/Buffer;)V
    .registers 3
    .param p1, "buffer"    # Lokio/Buffer;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;->val$listener:Lcom/squareup/okhttp/ws/WebSocketListener;

    invoke-interface {v0, p1}, Lcom/squareup/okhttp/ws/WebSocketListener;->onPong(Lokio/Buffer;)V

    .line 75
    return-void
.end method
