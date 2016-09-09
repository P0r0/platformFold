.class public final Lcom/squareup/okhttp/internal/ws/WebSocketReader;
.super Ljava/lang/Object;
.source "WebSocketReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;,
        Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;
    }
.end annotation


# instance fields
.field private closed:Z

.field private frameBytesRead:J

.field private final frameCallback:Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;

.field private frameLength:J

.field private final framedMessageSource:Lokio/Source;

.field private final isClient:Z

.field private isControlFrame:Z

.field private isFinalFrame:Z

.field private isMasked:Z

.field private final maskBuffer:[B

.field private final maskKey:[B

.field private messageClosed:Z

.field private opcode:I

.field private final source:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(ZLokio/BufferedSource;Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;)V
    .registers 6
    .param p1, "isClient"    # Z
    .param p2, "source"    # Lokio/BufferedSource;
    .param p3, "frameCallback"    # Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FramedMessageSource;-><init>(Lcom/squareup/okhttp/internal/ws/WebSocketReader;Lcom/squareup/okhttp/internal/ws/WebSocketReader$1;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->framedMessageSource:Lokio/Source;

    .line 78
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskKey:[B

    .line 79
    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskBuffer:[B

    .line 82
    if-nez p2, :cond_20

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_20
    if-nez p3, :cond_2a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "frameCallback == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_2a
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isClient:Z

    .line 85
    iput-object p2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    .line 86
    iput-object p3, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameCallback:Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;

    .line 87
    return-void
.end method

.method static synthetic access$100(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Z
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->closed:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Lokio/BufferedSource;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)[B
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskKey:[B

    return-object v0
.end method

.method static synthetic access$200(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Z
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->messageClosed:Z

    return v0
.end method

.method static synthetic access$202(Lcom/squareup/okhttp/internal/ws/WebSocketReader;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/ws/WebSocketReader;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->messageClosed:Z

    return p1
.end method

.method static synthetic access$300(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)J
    .registers 3
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/squareup/okhttp/internal/ws/WebSocketReader;J)J
    .registers 4
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/ws/WebSocketReader;
    .param p1, "x1"    # J

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)J
    .registers 3
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Z
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isFinalFrame:Z

    return v0
.end method

.method static synthetic access$600(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)V
    .registers 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/ws/WebSocketReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->readUntilNonControlFrame()V

    return-void
.end method

.method static synthetic access$700(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)I
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    .prologue
    .line 53
    iget v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->opcode:I

    return v0
.end method

.method static synthetic access$800(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)Z
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isMasked:Z

    return v0
.end method

.method static synthetic access$900(Lcom/squareup/okhttp/internal/ws/WebSocketReader;)[B
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskBuffer:[B

    return-object v0
.end method

.method private readControlFrame()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 161
    const/4 v6, 0x0

    .line 162
    .local v6, "buffer":Lokio/Buffer;
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1a

    .line 163
    new-instance v6, Lokio/Buffer;

    .end local v6    # "buffer":Lokio/Buffer;
    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    .line 165
    .restart local v6    # "buffer":Lokio/Buffer;
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isClient:Z

    if-eqz v0, :cond_53

    .line 166
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    invoke-interface {v0, v6, v2, v3}, Lokio/BufferedSource;->readFully(Lokio/Buffer;J)V

    .line 179
    :cond_1a
    iget v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->opcode:I

    packed-switch v0, :pswitch_data_106

    .line 209
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown control opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->opcode:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    .local v10, "read":I
    .local v12, "toRead":I
    :cond_3e
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskBuffer:[B

    int-to-long v1, v10

    iget-object v3, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskKey:[B

    iget-wide v4, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/internal/ws/WebSocketProtocol;->toggleMask([BJ[BJ)V

    .line 173
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskBuffer:[B

    invoke-virtual {v6, v0, v13, v10}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    .line 174
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    int-to-long v2, v10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    .line 168
    .end local v10    # "read":I
    .end local v12    # "toRead":I
    :cond_53
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1a

    .line 169
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskBuffer:[B

    array-length v2, v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v12, v0

    .line 170
    .restart local v12    # "toRead":I
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskBuffer:[B

    invoke-interface {v0, v1, v13, v12}, Lokio/BufferedSource;->read([BII)I

    move-result v10

    .line 171
    .restart local v10    # "read":I
    const/4 v0, -0x1

    if-ne v10, v0, :cond_3e

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 181
    .end local v10    # "read":I
    .end local v12    # "toRead":I
    :pswitch_7a
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameCallback:Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;

    invoke-interface {v0, v6}, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;->onPing(Lokio/Buffer;)V

    .line 211
    :goto_7f
    return-void

    .line 184
    :pswitch_80
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameCallback:Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;

    invoke-interface {v0, v6}, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;->onPong(Lokio/Buffer;)V

    goto :goto_7f

    .line 187
    :pswitch_86
    const/16 v7, 0x3e8

    .line 188
    .local v7, "code":I
    const-string v11, ""

    .line 189
    .local v11, "reason":Ljava/lang/String;
    if-eqz v6, :cond_fc

    .line 190
    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v8

    .line 191
    .local v8, "bufferSize":J
    const-wide/16 v0, 0x1

    cmp-long v0, v8, v0

    if-nez v0, :cond_9e

    .line 192
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Malformed close payload length of 1."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_9e
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_fc

    .line 194
    invoke-virtual {v6}, Lokio/Buffer;->readShort()S

    move-result v7

    .line 195
    const/16 v0, 0x3e8

    if-lt v7, v0, :cond_b0

    const/16 v0, 0x1388

    if-lt v7, v0, :cond_c9

    .line 196
    :cond_b0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Code must be in range [1000,5000): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_c9
    const/16 v0, 0x3ec

    if-lt v7, v0, :cond_d1

    const/16 v0, 0x3ee

    if-le v7, v0, :cond_d9

    :cond_d1
    const/16 v0, 0x3f4

    if-lt v7, v0, :cond_f8

    const/16 v0, 0xbb7

    if-gt v7, v0, :cond_f8

    .line 199
    :cond_d9
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is reserved and may not be used."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_f8
    invoke-virtual {v6}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v11

    .line 205
    .end local v8    # "bufferSize":J
    :cond_fc
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameCallback:Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;

    invoke-interface {v0, v7, v11}, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;->onClose(ILjava/lang/String;)V

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->closed:Z

    goto/16 :goto_7f

    .line 179
    :pswitch_data_106
    .packed-switch 0x8
        :pswitch_86
        :pswitch_7a
        :pswitch_80
    .end packed-switch
.end method

.method private readHeader()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 108
    iget-boolean v5, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->closed:Z

    if-eqz v5, :cond_10

    new-instance v5, Ljava/io/IOException;

    const-string v6, "closed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 110
    :cond_10
    iget-object v5, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readByte()B

    move-result v5

    and-int/lit16 v0, v5, 0xff

    .line 112
    .local v0, "b0":I
    and-int/lit8 v5, v0, 0xf

    iput v5, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->opcode:I

    .line 113
    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_3a

    move v5, v6

    :goto_21
    iput-boolean v5, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isFinalFrame:Z

    .line 114
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3c

    move v5, v6

    :goto_28
    iput-boolean v5, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isControlFrame:Z

    .line 117
    iget-boolean v5, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v5, :cond_3e

    iget-boolean v5, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isFinalFrame:Z

    if-nez v5, :cond_3e

    .line 118
    new-instance v5, Ljava/net/ProtocolException;

    const-string v6, "Control frames must be final."

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3a
    move v5, v7

    .line 113
    goto :goto_21

    :cond_3c
    move v5, v7

    .line 114
    goto :goto_28

    .line 121
    :cond_3e
    and-int/lit8 v5, v0, 0x40

    if-eqz v5, :cond_5b

    move v2, v6

    .line 122
    .local v2, "reservedFlag1":Z
    :goto_43
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_5d

    move v3, v6

    .line 123
    .local v3, "reservedFlag2":Z
    :goto_48
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_5f

    move v4, v6

    .line 124
    .local v4, "reservedFlag3":Z
    :goto_4d
    if-nez v2, :cond_53

    if-nez v3, :cond_53

    if-eqz v4, :cond_61

    .line 126
    :cond_53
    new-instance v5, Ljava/net/ProtocolException;

    const-string v6, "Reserved flags are unsupported."

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v2    # "reservedFlag1":Z
    .end local v3    # "reservedFlag2":Z
    .end local v4    # "reservedFlag3":Z
    :cond_5b
    move v2, v7

    .line 121
    goto :goto_43

    .restart local v2    # "reservedFlag1":Z
    :cond_5d
    move v3, v7

    .line 122
    goto :goto_48

    .restart local v3    # "reservedFlag2":Z
    :cond_5f
    move v4, v7

    .line 123
    goto :goto_4d

    .line 129
    .restart local v4    # "reservedFlag3":Z
    :cond_61
    iget-object v5, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readByte()B

    move-result v5

    and-int/lit16 v1, v5, 0xff

    .line 131
    .local v1, "b1":I
    and-int/lit16 v5, v1, 0x80

    if-eqz v5, :cond_7d

    :goto_6d
    iput-boolean v6, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isMasked:Z

    .line 132
    iget-boolean v5, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isMasked:Z

    iget-boolean v6, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isClient:Z

    if-ne v5, v6, :cond_7f

    .line 134
    new-instance v5, Ljava/net/ProtocolException;

    const-string v6, "Client-sent frames must be masked. Server sent must not."

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_7d
    move v6, v7

    .line 131
    goto :goto_6d

    .line 138
    :cond_7f
    and-int/lit8 v5, v1, 0x7f

    int-to-long v6, v5

    iput-wide v6, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    .line 139
    iget-wide v6, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v8, 0x7e

    cmp-long v5, v6, v8

    if-nez v5, :cond_af

    .line 140
    iget-object v5, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readShort()S

    move-result v5

    int-to-long v6, v5

    const-wide/32 v8, 0xffff

    and-long/2addr v6, v8

    iput-wide v6, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    .line 148
    :cond_99
    iput-wide v10, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameBytesRead:J

    .line 150
    iget-boolean v5, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v5, :cond_ea

    iget-wide v6, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v8, 0x7d

    cmp-long v5, v6, v8

    if-lez v5, :cond_ea

    .line 151
    new-instance v5, Ljava/net/ProtocolException;

    const-string v6, "Control frame must be less than 125B."

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 141
    :cond_af
    iget-wide v6, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v8, 0x7f

    cmp-long v5, v6, v8

    if-nez v5, :cond_99

    .line 142
    iget-object v5, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    .line 143
    iget-wide v6, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    cmp-long v5, v6, v10

    if-gez v5, :cond_99

    .line 144
    new-instance v5, Ljava/net/ProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Frame length 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameLength:J

    .line 145
    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " > 0x7FFFFFFFFFFFFFFF"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 154
    :cond_ea
    iget-boolean v5, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isMasked:Z

    if-eqz v5, :cond_f5

    .line 156
    iget-object v5, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    iget-object v6, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->maskKey:[B

    invoke-interface {v5, v6}, Lokio/BufferedSource;->readFully([B)V

    .line 158
    :cond_f5
    return-void
.end method

.method private readMessageFrame()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    iget v3, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->opcode:I

    packed-switch v3, :pswitch_data_4a

    .line 223
    new-instance v3, Ljava/net/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown opcode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->opcode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 217
    :pswitch_24
    sget-object v2, Lcom/squareup/okhttp/ws/WebSocket;->TEXT:Lcom/squareup/okhttp/MediaType;

    .line 226
    .local v2, "type":Lcom/squareup/okhttp/MediaType;
    :goto_26
    iget-object v3, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->framedMessageSource:Lokio/Source;

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    .line 227
    .local v1, "source":Lokio/BufferedSource;
    new-instance v0, Lcom/squareup/okhttp/internal/ws/WebSocketReader$1;

    invoke-direct {v0, p0, v2, v1}, Lcom/squareup/okhttp/internal/ws/WebSocketReader$1;-><init>(Lcom/squareup/okhttp/internal/ws/WebSocketReader;Lcom/squareup/okhttp/MediaType;Lokio/BufferedSource;)V

    .line 241
    .local v0, "body":Lcom/squareup/okhttp/ResponseBody;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->messageClosed:Z

    .line 242
    iget-object v3, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->frameCallback:Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;

    invoke-interface {v3, v0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;->onMessage(Lcom/squareup/okhttp/ResponseBody;)V

    .line 243
    iget-boolean v3, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->messageClosed:Z

    if-nez v3, :cond_48

    .line 244
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Listener failed to call close on message payload."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 220
    .end local v0    # "body":Lcom/squareup/okhttp/ResponseBody;
    .end local v1    # "source":Lokio/BufferedSource;
    .end local v2    # "type":Lcom/squareup/okhttp/MediaType;
    :pswitch_45
    sget-object v2, Lcom/squareup/okhttp/ws/WebSocket;->BINARY:Lcom/squareup/okhttp/MediaType;

    .line 221
    .restart local v2    # "type":Lcom/squareup/okhttp/MediaType;
    goto :goto_26

    .line 246
    .restart local v0    # "body":Lcom/squareup/okhttp/ResponseBody;
    .restart local v1    # "source":Lokio/BufferedSource;
    :cond_48
    return-void

    .line 215
    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_24
        :pswitch_45
    .end packed-switch
.end method

.method private readUntilNonControlFrame()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    :goto_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->closed:Z

    if-nez v0, :cond_b

    .line 251
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->readHeader()V

    .line 252
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isControlFrame:Z

    if-nez v0, :cond_c

    .line 257
    :cond_b
    return-void

    .line 255
    :cond_c
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->readControlFrame()V

    goto :goto_0
.end method


# virtual methods
.method public processNextFrame()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->readHeader()V

    .line 100
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v0, :cond_b

    .line 101
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->readControlFrame()V

    .line 105
    :goto_a
    return-void

    .line 103
    :cond_b
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->readMessageFrame()V

    goto :goto_a
.end method
