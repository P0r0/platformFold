.class public final Lcom/squareup/okhttp/ws/WebSocketCall;
.super Ljava/lang/Object;
.source "WebSocketCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/ws/WebSocketCall$ConnectionWebSocket;
    }
.end annotation


# instance fields
.field private final call:Lcom/squareup/okhttp/Call;

.field private final key:Ljava/lang/String;

.field private final random:Ljava/util/Random;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;)V
    .registers 4
    .param p1, "client"    # Lcom/squareup/okhttp/OkHttpClient;
    .param p2, "request"    # Lcom/squareup/okhttp/Request;

    .prologue
    .line 55
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/squareup/okhttp/ws/WebSocketCall;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;Ljava/util/Random;)V

    .line 56
    return-void
.end method

.method constructor <init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;Ljava/util/Random;)V
    .registers 8
    .param p1, "client"    # Lcom/squareup/okhttp/OkHttpClient;
    .param p2, "request"    # Lcom/squareup/okhttp/Request;
    .param p3, "random"    # Ljava/util/Random;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v1, "GET"

    invoke-virtual {p2}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 60
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request must be GET: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_2c
    iput-object p3, p0, Lcom/squareup/okhttp/ws/WebSocketCall;->random:Ljava/util/Random;

    .line 64
    const/16 v1, 0x10

    new-array v0, v1, [B

    .line 65
    .local v0, "nonce":[B
    invoke-virtual {p3, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 66
    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/ws/WebSocketCall;->key:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Lcom/squareup/okhttp/OkHttpClient;->clone()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object p1

    .line 72
    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/OkHttpClient;->setProtocols(Ljava/util/List;)Lcom/squareup/okhttp/OkHttpClient;

    .line 74
    invoke-virtual {p2}, Lcom/squareup/okhttp/Request;->newBuilder()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v1

    const-string v2, "Upgrade"

    const-string v3, "websocket"

    .line 75
    invoke-virtual {v1, v2, v3}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v1

    const-string v2, "Connection"

    const-string v3, "Upgrade"

    .line 76
    invoke-virtual {v1, v2, v3}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v1

    const-string v2, "Sec-WebSocket-Key"

    iget-object v3, p0, Lcom/squareup/okhttp/ws/WebSocketCall;->key:Ljava/lang/String;

    .line 77
    invoke-virtual {v1, v2, v3}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v1

    const-string v2, "Sec-WebSocket-Version"

    const-string v3, "13"

    .line 78
    invoke-virtual {v1, v2, v3}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object p2

    .line 81
    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/ws/WebSocketCall;->call:Lcom/squareup/okhttp/Call;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/squareup/okhttp/ws/WebSocketCall;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/ws/WebSocketListener;)V
    .registers 3
    .param p0, "x0"    # Lcom/squareup/okhttp/ws/WebSocketCall;
    .param p1, "x1"    # Lcom/squareup/okhttp/Response;
    .param p2, "x2"    # Lcom/squareup/okhttp/ws/WebSocketListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/ws/WebSocketCall;->createWebSocket(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/ws/WebSocketListener;)V

    return-void
.end method

.method public static create(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/ws/WebSocketCall;
    .registers 3
    .param p0, "client"    # Lcom/squareup/okhttp/OkHttpClient;
    .param p1, "request"    # Lcom/squareup/okhttp/Request;

    .prologue
    .line 47
    new-instance v0, Lcom/squareup/okhttp/ws/WebSocketCall;

    invoke-direct {v0, p0, p1}, Lcom/squareup/okhttp/ws/WebSocketCall;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;)V

    return-object v0
.end method

.method private createWebSocket(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/ws/WebSocketListener;)V
    .registers 14
    .param p1, "response"    # Lcom/squareup/okhttp/Response;
    .param p2, "listener"    # Lcom/squareup/okhttp/ws/WebSocketListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v0

    const/16 v4, 0x65

    if-eq v0, v4, :cond_40

    .line 123
    sget-object v0, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v4, p0, Lcom/squareup/okhttp/ws/WebSocketCall;->call:Lcom/squareup/okhttp/Call;

    invoke-virtual {v0, v4}, Lcom/squareup/okhttp/internal/Internal;->callEngineReleaseConnection(Lcom/squareup/okhttp/Call;)V

    .line 124
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected HTTP 101 response but was \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 125
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 127
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->message()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_40
    const-string v0, "Connection"

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 132
    .local v8, "headerConnection":Ljava/lang/String;
    const-string v0, "Upgrade"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 133
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected \'Connection\' header value \'Upgrade\' but was \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_6d
    const-string v0, "Upgrade"

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 137
    .local v9, "headerUpgrade":Ljava/lang/String;
    const-string v0, "websocket"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 138
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected \'Upgrade\' header value \'websocket\' but was \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_9a
    const-string v0, "Sec-WebSocket-Accept"

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 142
    .local v7, "headerAccept":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/squareup/okhttp/ws/WebSocketCall;->key:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->shaBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 143
    .local v6, "acceptExpected":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e8

    .line 144
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected \'Sec-WebSocket-Accept\' header value \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' but was \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_e8
    sget-object v0, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v4, p0, Lcom/squareup/okhttp/ws/WebSocketCall;->call:Lcom/squareup/okhttp/Call;

    invoke-virtual {v0, v4}, Lcom/squareup/okhttp/internal/Internal;->callEngineGetConnection(Lcom/squareup/okhttp/Call;)Lcom/squareup/okhttp/Connection;

    move-result-object v1

    .line 154
    .local v1, "connection":Lcom/squareup/okhttp/Connection;
    sget-object v0, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/Internal;->clearOwner(Lcom/squareup/okhttp/Connection;)Z

    move-result v0

    if-nez v0, :cond_100

    .line 155
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "Unable to take ownership of connection."

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_100
    sget-object v0, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/Internal;->connectionRawSource(Lcom/squareup/okhttp/Connection;)Lokio/BufferedSource;

    move-result-object v2

    .line 159
    .local v2, "source":Lokio/BufferedSource;
    sget-object v0, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/Internal;->connectionRawSink(Lcom/squareup/okhttp/Connection;)Lokio/BufferedSink;

    move-result-object v3

    .line 161
    .local v3, "sink":Lokio/BufferedSink;
    iget-object v4, p0, Lcom/squareup/okhttp/ws/WebSocketCall;->random:Ljava/util/Random;

    move-object v0, p1

    move-object v5, p2

    .line 162
    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/ws/WebSocketCall$ConnectionWebSocket;->create(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Connection;Lokio/BufferedSource;Lokio/BufferedSink;Ljava/util/Random;Lcom/squareup/okhttp/ws/WebSocketListener;)Lcom/squareup/okhttp/internal/ws/RealWebSocket;

    move-result-object v10

    .line 165
    .local v10, "webSocket":Lcom/squareup/okhttp/internal/ws/RealWebSocket;
    sget-object v0, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    invoke-virtual {v0, v1, v10}, Lcom/squareup/okhttp/internal/Internal;->connectionSetOwner(Lcom/squareup/okhttp/Connection;Ljava/lang/Object;)V

    .line 167
    invoke-interface {p2, v10, p1}, Lcom/squareup/okhttp/ws/WebSocketListener;->onOpen(Lcom/squareup/okhttp/ws/WebSocket;Lcom/squareup/okhttp/Response;)V

    .line 169
    :cond_11c
    invoke-virtual {v10}, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->readMessage()Z

    move-result v0

    if-nez v0, :cond_11c

    .line 171
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/squareup/okhttp/ws/WebSocketCall;->call:Lcom/squareup/okhttp/Call;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->cancel()V

    .line 117
    return-void
.end method

.method public enqueue(Lcom/squareup/okhttp/ws/WebSocketListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/squareup/okhttp/ws/WebSocketListener;

    .prologue
    .line 97
    new-instance v0, Lcom/squareup/okhttp/ws/WebSocketCall$1;

    invoke-direct {v0, p0, p1}, Lcom/squareup/okhttp/ws/WebSocketCall$1;-><init>(Lcom/squareup/okhttp/ws/WebSocketCall;Lcom/squareup/okhttp/ws/WebSocketListener;)V

    .line 111
    .local v0, "responseCallback":Lcom/squareup/okhttp/Callback;
    sget-object v1, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v2, p0, Lcom/squareup/okhttp/ws/WebSocketCall;->call:Lcom/squareup/okhttp/Call;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/squareup/okhttp/internal/Internal;->callEnqueue(Lcom/squareup/okhttp/Call;Lcom/squareup/okhttp/Callback;Z)V

    .line 112
    return-void
.end method
