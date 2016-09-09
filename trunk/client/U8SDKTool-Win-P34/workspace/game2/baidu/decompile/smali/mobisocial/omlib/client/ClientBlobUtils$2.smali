.class Lmobisocial/omlib/client/ClientBlobUtils$2;
.super Lcom/squareup/okhttp/RequestBody;
.source "ClientBlobUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientBlobUtils;->uploadSmallBlobWithProgress(Ljava/io/InputStream;Ljava/lang/String;Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;Lmobisocial/omlib/interfaces/BlobUploadListener;JLjava/util/concurrent/atomic/AtomicLong;Landroid/os/CancellationSignal;)Z
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

.field final synthetic val$totalLength:J

.field final synthetic val$uploaded:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientBlobUtils;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/concurrent/atomic/AtomicLong;Lmobisocial/omlib/interfaces/BlobUploadListener;JLandroid/os/CancellationSignal;)V
    .registers 9
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientBlobUtils;

    .prologue
    .line 302
    iput-object p1, p0, Lmobisocial/omlib/client/ClientBlobUtils$2;->this$0:Lmobisocial/omlib/client/ClientBlobUtils;

    iput-object p2, p0, Lmobisocial/omlib/client/ClientBlobUtils$2;->val$mimeType:Ljava/lang/String;

    iput-object p3, p0, Lmobisocial/omlib/client/ClientBlobUtils$2;->val$blobInputStream:Ljava/io/InputStream;

    iput-object p4, p0, Lmobisocial/omlib/client/ClientBlobUtils$2;->val$uploaded:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p5, p0, Lmobisocial/omlib/client/ClientBlobUtils$2;->val$handler:Lmobisocial/omlib/interfaces/BlobUploadListener;

    iput-wide p6, p0, Lmobisocial/omlib/client/ClientBlobUtils$2;->val$totalLength:J

    iput-object p8, p0, Lmobisocial/omlib/client/ClientBlobUtils$2;->val$cancellation:Landroid/os/CancellationSignal;

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
    .line 324
    iget-wide v0, p0, Lmobisocial/omlib/client/ClientBlobUtils$2;->val$totalLength:J

    return-wide v0
.end method

.method public contentType()Lcom/squareup/okhttp/MediaType;
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lmobisocial/omlib/client/ClientBlobUtils$2;->val$mimeType:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lmobisocial/omlib/client/ClientBlobUtils$2;->val$mimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    goto :goto_5
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .registers 8
    .param p1, "bufferedSink"    # Lokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    const/16 v2, 0x2000

    new-array v0, v2, [B

    .line 313
    .local v0, "data":[B
    :goto_4
    iget-object v2, p0, Lmobisocial/omlib/client/ClientBlobUtils$2;->val$blobInputStream:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "read":I
    if-lez v1, :cond_2f

    .line 314
    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lokio/BufferedSink;->write([BII)Lokio/BufferedSink;

    .line 315
    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    .line 316
    iget-object v2, p0, Lmobisocial/omlib/client/ClientBlobUtils$2;->val$uploaded:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 317
    iget-object v2, p0, Lmobisocial/omlib/client/ClientBlobUtils$2;->val$handler:Lmobisocial/omlib/interfaces/BlobUploadListener;

    iget-object v3, p0, Lmobisocial/omlib/client/ClientBlobUtils$2;->val$uploaded:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    long-to-float v3, v4

    iget-wide v4, p0, Lmobisocial/omlib/client/ClientBlobUtils$2;->val$totalLength:J

    long-to-float v4, v4

    div-float/2addr v3, v4

    invoke-interface {v2, v3}, Lmobisocial/omlib/interfaces/BlobUploadListener;->onPartUploaded(F)V

    .line 318
    iget-object v2, p0, Lmobisocial/omlib/client/ClientBlobUtils$2;->val$cancellation:Landroid/os/CancellationSignal;

    invoke-virtual {v2}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    goto :goto_4

    .line 320
    :cond_2f
    return-void
.end method
