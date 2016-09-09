.class public abstract Lcom/squareup/okhttp/internal/ws/RealWebSocket;
.super Ljava/lang/Object;
.source "RealWebSocket.java"

# interfaces
.implements Lcom/squareup/okhttp/ws/WebSocket;


# static fields
.field private static final CLOSE_PROTOCOL_EXCEPTION:I = 0x3ea


# instance fields
.field private final closeLock:Ljava/lang/Object;

.field private final listener:Lcom/squareup/okhttp/ws/WebSocketListener;

.field private final reader:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

.field private volatile readerSentClose:Z

.field private final writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

.field private volatile writerSentClose:Z


# direct methods
.method public constructor <init>(ZLokio/BufferedSource;Lokio/BufferedSink;Ljava/util/Random;Ljava/util/concurrent/Executor;Lcom/squareup/okhttp/ws/WebSocketListener;Ljava/lang/String;)V
    .registers 10
    .param p1, "isClient"    # Z
    .param p2, "source"    # Lokio/BufferedSource;
    .param p3, "sink"    # Lokio/BufferedSink;
    .param p4, "random"    # Ljava/util/Random;
    .param p5, "replyExecutor"    # Ljava/util/concurrent/Executor;
    .param p6, "listener"    # Lcom/squareup/okhttp/ws/WebSocketListener;
    .param p7, "url"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->closeLock:Ljava/lang/Object;

    .line 54
    iput-object p6, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->listener:Lcom/squareup/okhttp/ws/WebSocketListener;

    .line 56
    new-instance v0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-direct {v0, p1, p3, p4}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;-><init>(ZLokio/BufferedSink;Ljava/util/Random;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    .line 57
    new-instance v0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    new-instance v1, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;

    invoke-direct {v1, p0, p6, p5, p7}, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;-><init>(Lcom/squareup/okhttp/internal/ws/RealWebSocket;Lcom/squareup/okhttp/ws/WebSocketListener;Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;-><init>(ZLokio/BufferedSource;Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->reader:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/squareup/okhttp/internal/ws/RealWebSocket;)Lcom/squareup/okhttp/internal/ws/WebSocketWriter;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/ws/RealWebSocket;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/squareup/okhttp/internal/ws/RealWebSocket;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/ws/RealWebSocket;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->closeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lcom/squareup/okhttp/internal/ws/RealWebSocket;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/ws/RealWebSocket;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->readerSentClose:Z

    return p1
.end method

.method static synthetic access$300(Lcom/squareup/okhttp/internal/ws/RealWebSocket;)Z
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/ws/RealWebSocket;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writerSentClose:Z

    return v0
.end method

.method static synthetic access$400(Lcom/squareup/okhttp/internal/ws/RealWebSocket;ILjava/lang/String;Z)V
    .registers 4
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/ws/RealWebSocket;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->peerClose(ILjava/lang/String;Z)V

    return-void
.end method

.method private peerClose(ILjava/lang/String;Z)V
    .registers 5
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "writeCloseResponse"    # Z

    .prologue
    .line 167
    if-eqz p3, :cond_7

    .line 169
    :try_start_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writeClose(ILjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_12

    .line 175
    :cond_7
    :goto_7
    :try_start_7
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_10

    .line 179
    :goto_a
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->listener:Lcom/squareup/okhttp/ws/WebSocketListener;

    invoke-interface {v0, p1, p2}, Lcom/squareup/okhttp/ws/WebSocketListener;->onClose(ILjava/lang/String;)V

    .line 180
    return-void

    .line 176
    :catch_10
    move-exception v0

    goto :goto_a

    .line 170
    :catch_12
    move-exception v0

    goto :goto_7
.end method

.method private readerErrorClose(Ljava/io/IOException;)V
    .registers 7
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 185
    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->closeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 186
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->readerSentClose:Z

    .line 189
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writerSentClose:Z

    if-nez v1, :cond_24

    .line 190
    .local v0, "canSendClose":Z
    :goto_c
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_26

    .line 193
    if-eqz v0, :cond_1b

    instance-of v1, p1, Ljava/net/ProtocolException;

    if-eqz v1, :cond_1b

    .line 195
    :try_start_13
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    const/16 v2, 0x3ea

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writeClose(ILjava/lang/String;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1b} :catch_2b

    .line 201
    :cond_1b
    :goto_1b
    :try_start_1b
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_29

    .line 205
    :goto_1e
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->listener:Lcom/squareup/okhttp/ws/WebSocketListener;

    invoke-interface {v1, p1, v4}, Lcom/squareup/okhttp/ws/WebSocketListener;->onFailure(Ljava/io/IOException;Lcom/squareup/okhttp/Response;)V

    .line 206
    return-void

    .line 189
    .end local v0    # "canSendClose":Z
    :cond_24
    const/4 v0, 0x0

    goto :goto_c

    .line 190
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1

    .line 202
    .restart local v0    # "canSendClose":Z
    :catch_29
    move-exception v1

    goto :goto_1e

    .line 196
    :catch_2b
    move-exception v1

    goto :goto_1b
.end method


# virtual methods
.method protected abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public close(ILjava/lang/String;)V
    .registers 6
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writerSentClose:Z

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_c
    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->closeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 152
    const/4 v1, 0x1

    :try_start_10
    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writerSentClose:Z

    .line 155
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->readerSentClose:Z

    .line 156
    .local v0, "performClose":Z
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_20

    .line 158
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-virtual {v1, p1, p2}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writeClose(ILjava/lang/String;)V

    .line 160
    if-eqz v0, :cond_1f

    .line 161
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->close()V

    .line 163
    :cond_1f
    return-void

    .line 156
    .end local v0    # "performClose":Z
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public readMessage()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 101
    :try_start_1
    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->reader:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->processNextFrame()V

    .line 102
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->readerSentClose:Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_c

    if-nez v2, :cond_b

    const/4 v1, 0x1

    .line 105
    :cond_b
    :goto_b
    return v1

    .line 103
    :catch_c
    move-exception v0

    .line 104
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->readerErrorClose(Ljava/io/IOException;)V

    goto :goto_b
.end method

.method public sendMessage(Lcom/squareup/okhttp/RequestBody;)V
    .registers 9
    .param p1, "message"    # Lcom/squareup/okhttp/RequestBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    if-nez p1, :cond_a

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "message == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 111
    :cond_a
    iget-boolean v4, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writerSentClose:Z

    if-eqz v4, :cond_16

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "closed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 113
    :cond_16
    invoke-virtual {p1}, Lcom/squareup/okhttp/RequestBody;->contentType()Lcom/squareup/okhttp/MediaType;

    move-result-object v1

    .line 114
    .local v1, "contentType":Lcom/squareup/okhttp/MediaType;
    if-nez v1, :cond_24

    .line 115
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Message content type was null. Must use WebSocket.TEXT or WebSocket.BINARY."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 118
    :cond_24
    invoke-virtual {v1}, Lcom/squareup/okhttp/MediaType;->subtype()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "contentSubtype":Ljava/lang/String;
    sget-object v4, Lcom/squareup/okhttp/ws/WebSocket;->TEXT:Lcom/squareup/okhttp/MediaType;

    invoke-virtual {v4}, Lcom/squareup/okhttp/MediaType;->subtype()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 122
    const/4 v2, 0x1

    .line 131
    .local v2, "formatOpcode":I
    :goto_35
    iget-object v4, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-virtual {v4, v2}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->newMessageSink(I)Lokio/Sink;

    move-result-object v4

    invoke-static {v4}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v3

    .line 132
    .local v3, "sink":Lokio/BufferedSink;
    invoke-virtual {p1, v3}, Lcom/squareup/okhttp/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 133
    invoke-interface {v3}, Lokio/BufferedSink;->close()V

    .line 134
    return-void

    .line 123
    .end local v2    # "formatOpcode":I
    .end local v3    # "sink":Lokio/BufferedSink;
    :cond_46
    sget-object v4, Lcom/squareup/okhttp/ws/WebSocket;->BINARY:Lcom/squareup/okhttp/MediaType;

    invoke-virtual {v4}, Lcom/squareup/okhttp/MediaType;->subtype()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 124
    const/4 v2, 0x2

    .restart local v2    # "formatOpcode":I
    goto :goto_35

    .line 126
    .end local v2    # "formatOpcode":I
    :cond_54
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown message content type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 127
    invoke-virtual {v1}, Lcom/squareup/okhttp/MediaType;->type()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/squareup/okhttp/MediaType;->subtype()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Must use WebSocket.TEXT or WebSocket.BINARY."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public sendPing(Lokio/Buffer;)V
    .registers 4
    .param p1, "payload"    # Lokio/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writerSentClose:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_c
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writePing(Lokio/Buffer;)V

    .line 139
    return-void
.end method

.method public sendPong(Lokio/Buffer;)V
    .registers 4
    .param p1, "payload"    # Lokio/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writerSentClose:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_c
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writePong(Lokio/Buffer;)V

    .line 145
    return-void
.end method
