.class Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask$1;
.super Lcom/squareup/okhttp/RequestBody;
.source "LongdanBlobUploadProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;->handleBlobUpload()Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;

.field final synthetic val$blobInputStream:Ljava/io/InputStream;

.field final synthetic val$upr:Lmobisocial/longdan/LDProtocols$LDGetUploadTicketRequest;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;Lmobisocial/longdan/LDProtocols$LDGetUploadTicketRequest;Ljava/io/InputStream;)V
    .registers 4
    .param p1, "this$1"    # Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;

    .prologue
    .line 215
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask$1;->this$1:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;

    iput-object p2, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask$1;->val$upr:Lmobisocial/longdan/LDProtocols$LDGetUploadTicketRequest;

    iput-object p3, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask$1;->val$blobInputStream:Ljava/io/InputStream;

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
    .line 243
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask$1;->val$upr:Lmobisocial/longdan/LDProtocols$LDGetUploadTicketRequest;

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDGetUploadTicketRequest;->Metadata:Lmobisocial/longdan/LDProtocols$LDBlobMetadata;

    iget-wide v0, v0, Lmobisocial/longdan/LDProtocols$LDBlobMetadata;->Size:J

    return-wide v0
.end method

.method public contentType()Lcom/squareup/okhttp/MediaType;
    .registers 3

    .prologue
    .line 219
    iget-object v1, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask$1;->val$upr:Lmobisocial/longdan/LDProtocols$LDGetUploadTicketRequest;

    iget-object v1, v1, Lmobisocial/longdan/LDProtocols$LDGetUploadTicketRequest;->Metadata:Lmobisocial/longdan/LDProtocols$LDBlobMetadata;

    iget-object v0, v1, Lmobisocial/longdan/LDProtocols$LDBlobMetadata;->MimeType:Ljava/lang/String;

    .line 220
    .local v0, "mime":Ljava/lang/String;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    :goto_9
    return-object v1

    :cond_a
    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v1

    goto :goto_9
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .registers 13
    .param p1, "bufferedSink"    # Lokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    const/16 v0, 0x2000

    new-array v6, v0, [B

    .line 227
    .local v6, "data":[B
    const/4 v8, 0x0

    .line 228
    .local v8, "percentageComplete":F
    const/4 v10, 0x0

    .line 229
    .local v10, "written":I
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask$1;->val$upr:Lmobisocial/longdan/LDProtocols$LDGetUploadTicketRequest;

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDGetUploadTicketRequest;->Metadata:Lmobisocial/longdan/LDProtocols$LDBlobMetadata;

    iget-wide v4, v0, Lmobisocial/longdan/LDProtocols$LDBlobMetadata;->Size:J

    .line 230
    .local v4, "length":J
    :cond_c
    :goto_c
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask$1;->val$blobInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .local v9, "read":I
    if-lez v9, :cond_45

    .line 231
    const/4 v0, 0x0

    invoke-interface {p1, v6, v0, v9}, Lokio/BufferedSink;->write([BII)Lokio/BufferedSink;

    .line 232
    add-int/2addr v10, v9

    .line 233
    int-to-float v0, v10

    long-to-float v1, v4

    div-float v7, v0, v1

    .line 234
    .local v7, "percentage":F
    const v0, 0x3f7eb852    # 0.995f

    cmpl-float v0, v7, v0

    if-gtz v0, :cond_2d

    sub-float v0, v7, v8

    const v1, 0x3b23d70a    # 0.0025f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    .line 235
    :cond_2d
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask$1;->this$1:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;->this$0:Lmobisocial/omlib/client/LongdanBlobUploadProcessor;

    # getter for: Lmobisocial/omlib/client/LongdanBlobUploadProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v0}, Lmobisocial/omlib/client/LongdanBlobUploadProcessor;->access$000(Lmobisocial/omlib/client/LongdanBlobUploadProcessor;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Messaging:Lmobisocial/omlib/client/ClientMessagingUtils;

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils;->notification:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;

    iget-object v1, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask$1;->this$1:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;

    iget-object v1, v1, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;->mRequest:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    iget-object v1, v1, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->blobHash:[B

    int-to-long v2, v10

    invoke-virtual/range {v0 .. v5}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->notifyBlobTransferProgress([BJJ)V

    .line 236
    move v8, v7

    goto :goto_c

    .line 239
    .end local v7    # "percentage":F
    :cond_45
    return-void
.end method
