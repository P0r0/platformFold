.class Lcom/squareup/okhttp/ws/WebSocketCall$ConnectionWebSocket;
.super Lcom/squareup/okhttp/internal/ws/RealWebSocket;
.source "WebSocketCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/ws/WebSocketCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionWebSocket"
.end annotation


# instance fields
.field private final connection:Lcom/squareup/okhttp/Connection;

.field private final replyExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/Connection;Lokio/BufferedSource;Lokio/BufferedSink;Ljava/util/Random;Ljava/util/concurrent/ExecutorService;Lcom/squareup/okhttp/ws/WebSocketListener;Ljava/lang/String;)V
    .registers 16
    .param p1, "connection"    # Lcom/squareup/okhttp/Connection;
    .param p2, "source"    # Lokio/BufferedSource;
    .param p3, "sink"    # Lokio/BufferedSink;
    .param p4, "random"    # Ljava/util/Random;
    .param p5, "replyExecutor"    # Ljava/util/concurrent/ExecutorService;
    .param p6, "listener"    # Lcom/squareup/okhttp/ws/WebSocketListener;
    .param p7, "url"    # Ljava/lang/String;

    .prologue
    .line 192
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/squareup/okhttp/internal/ws/RealWebSocket;-><init>(ZLokio/BufferedSource;Lokio/BufferedSink;Ljava/util/Random;Ljava/util/concurrent/Executor;Lcom/squareup/okhttp/ws/WebSocketListener;Ljava/lang/String;)V

    .line 193
    iput-object p1, p0, Lcom/squareup/okhttp/ws/WebSocketCall$ConnectionWebSocket;->connection:Lcom/squareup/okhttp/Connection;

    .line 194
    iput-object p5, p0, Lcom/squareup/okhttp/ws/WebSocketCall$ConnectionWebSocket;->replyExecutor:Ljava/util/concurrent/ExecutorService;

    .line 195
    return-void
.end method

.method static create(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Connection;Lokio/BufferedSource;Lokio/BufferedSink;Ljava/util/Random;Lcom/squareup/okhttp/ws/WebSocketListener;)Lcom/squareup/okhttp/internal/ws/RealWebSocket;
    .registers 16
    .param p0, "response"    # Lcom/squareup/okhttp/Response;
    .param p1, "connection"    # Lcom/squareup/okhttp/Connection;
    .param p2, "source"    # Lokio/BufferedSource;
    .param p3, "sink"    # Lokio/BufferedSink;
    .param p4, "random"    # Ljava/util/Random;
    .param p5, "listener"    # Lcom/squareup/okhttp/ws/WebSocketListener;

    .prologue
    const/4 v2, 0x1

    .line 177
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->request()Lcom/squareup/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v9

    .line 178
    .local v9, "url":Ljava/lang/String;
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const-string v0, "OkHttp %s WebSocket"

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v9, v3, v8

    .line 180
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 181
    .local v1, "replyExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 183
    new-instance v2, Lcom/squareup/okhttp/ws/WebSocketCall$ConnectionWebSocket;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v1

    move-object v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/squareup/okhttp/ws/WebSocketCall$ConnectionWebSocket;-><init>(Lcom/squareup/okhttp/Connection;Lokio/BufferedSource;Lokio/BufferedSink;Ljava/util/Random;Ljava/util/concurrent/ExecutorService;Lcom/squareup/okhttp/ws/WebSocketListener;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method protected close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcom/squareup/okhttp/ws/WebSocketCall$ConnectionWebSocket;->replyExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 200
    sget-object v0, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v1, p0, Lcom/squareup/okhttp/ws/WebSocketCall$ConnectionWebSocket;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v0, v1, p0}, Lcom/squareup/okhttp/internal/Internal;->closeIfOwnedBy(Lcom/squareup/okhttp/Connection;Ljava/lang/Object;)V

    .line 201
    return-void
.end method
