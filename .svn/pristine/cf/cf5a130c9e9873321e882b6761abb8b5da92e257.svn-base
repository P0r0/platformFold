.class Lmobisocial/omlib/client/ClientBlobUtils$3;
.super Lcom/squareup/okhttp/RequestBody;
.source "ClientBlobUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientBlobUtils;->uploadPiece(Ljava/io/InputStream;Ljava/lang/String;Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;Ljava/util/List;Lmobisocial/omlib/interfaces/BlobUploadListener;JJLjava/util/concurrent/atomic/AtomicLong;Landroid/os/CancellationSignal;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/ClientBlobUtils;

.field final synthetic val$blobInputStream:Ljava/io/InputStream;

.field final synthetic val$cancellation:Landroid/os/CancellationSignal;

.field final synthetic val$handler:Lmobisocial/omlib/interfaces/BlobUploadListener;

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$partLength:J

.field final synthetic val$totalLength:J

.field final synthetic val$uploaded:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientBlobUtils;Ljava/lang/String;JLjava/io/InputStream;Ljava/util/concurrent/atomic/AtomicLong;Lmobisocial/omlib/interfaces/BlobUploadListener;JLandroid/os/CancellationSignal;)V
    .registers 11
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientBlobUtils;

    .prologue
    .line 360
    iput-object p1, p0, Lmobisocial/omlib/client/ClientBlobUtils$3;->this$0:Lmobisocial/omlib/client/ClientBlobUtils;

    iput-object p2, p0, Lmobisocial/omlib/client/ClientBlobUtils$3;->val$mimeType:Ljava/lang/String;

    iput-wide p3, p0, Lmobisocial/omlib/client/ClientBlobUtils$3;->val$partLength:J

    iput-object p5, p0, Lmobisocial/omlib/client/ClientBlobUtils$3;->val$blobInputStream:Ljava/io/InputStream;

    iput-object p6, p0, Lmobisocial/omlib/client/ClientBlobUtils$3;->val$uploaded:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p7, p0, Lmobisocial/omlib/client/ClientBlobUtils$3;->val$handler:Lmobisocial/omlib/interfaces/BlobUploadListener;

    iput-wide p8, p0, Lmobisocial/omlib/client/ClientBlobUtils$3;->val$totalLength:J

    iput-object p10, p0, Lmobisocial/omlib/client/ClientBlobUtils$3;->val$cancellation:Landroid/os/CancellationSignal;

    invoke-direct {p0}, Lcom/squareup/okhttp/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    iget-wide v0, p0, Lmobisocial/omlib/client/ClientBlobUtils$3;->val$partLength:J

    return-wide v0
.end method

.method public contentType()Lcom/squareup/okhttp/MediaType;
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, Lmobisocial/omlib/client/ClientBlobUtils$3;->val$mimeType:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lmobisocial/omlib/client/ClientBlobUtils$3;->val$mimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    goto :goto_5
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .registers 11
    .param p1, "bufferedSink"    # Lokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 369
    const/16 v4, 0x2000

    new-array v0, v4, [B

    .line 371
    .local v0, "data":[B
    const/4 v2, 0x0

    .line 372
    .local v2, "offset":I
    array-length v4, v0

    iget-wide v6, p0, Lmobisocial/omlib/client/ClientBlobUtils$3;->val$partLength:J

    long-to-int v5, v6

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 373
    .local v1, "maxBytes":I
    :goto_f
    iget-object v4, p0, Lmobisocial/omlib/client/ClientBlobUtils$3;->val$blobInputStream:Ljava/io/InputStream;

    invoke-virtual {v4, v0, v8, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .local v3, "read":I
    if-lez v3, :cond_43

    .line 374
    invoke-interface {p1, v0, v8, v3}, Lokio/BufferedSink;->write([BII)Lokio/BufferedSink;

    .line 375
    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    .line 376
    iget-object v4, p0, Lmobisocial/omlib/client/ClientBlobUtils$3;->val$uploaded:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v6, v3

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 377
    iget-object v4, p0, Lmobisocial/omlib/client/ClientBlobUtils$3;->val$handler:Lmobisocial/omlib/interfaces/BlobUploadListener;

    iget-object v5, p0, Lmobisocial/omlib/client/ClientBlobUtils$3;->val$uploaded:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    long-to-float v5, v6

    iget-wide v6, p0, Lmobisocial/omlib/client/ClientBlobUtils$3;->val$totalLength:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    invoke-interface {v4, v5}, Lmobisocial/omlib/interfaces/BlobUploadListener;->onPartUploaded(F)V

    .line 378
    iget-object v4, p0, Lmobisocial/omlib/client/ClientBlobUtils$3;->val$cancellation:Landroid/os/CancellationSignal;

    invoke-virtual {v4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 379
    add-int/2addr v2, v3

    .line 380
    array-length v4, v0

    iget-wide v6, p0, Lmobisocial/omlib/client/ClientBlobUtils$3;->val$partLength:J

    long-to-int v5, v6

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_f

    .line 382
    :cond_43
    return-void
.end method
