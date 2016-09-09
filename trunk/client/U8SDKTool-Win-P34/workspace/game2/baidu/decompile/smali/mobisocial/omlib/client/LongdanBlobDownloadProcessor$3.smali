.class Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$3;
.super Ljava/lang/Object;
.source "LongdanBlobDownloadProcessor.java"

# interfaces
.implements Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->getBlobForHashAndWait([BZILandroid/os/CancellationSignal;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

.field final synthetic val$failure:[Lmobisocial/longdan/exception/LongdanException;

.field final synthetic val$holder:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$BlobPathHolder;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$BlobPathHolder;Ljava/util/concurrent/CountDownLatch;[Lmobisocial/longdan/exception/LongdanException;)V
    .registers 5
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    .prologue
    .line 233
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$3;->this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    iput-object p2, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$3;->val$holder:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$BlobPathHolder;

    iput-object p3, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p4, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$3;->val$failure:[Lmobisocial/longdan/exception/LongdanException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlobDownloaded([BLjava/io/File;)V
    .registers 4
    .param p1, "blobHash"    # [B
    .param p2, "blobFile"    # Ljava/io/File;

    .prologue
    .line 237
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$3;->val$holder:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$BlobPathHolder;

    iput-object p2, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$BlobPathHolder;->blobFile:Ljava/io/File;

    .line 238
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 239
    return-void
.end method

.method public onBlobFailed([BLmobisocial/longdan/exception/LongdanException;)V
    .registers 5
    .param p1, "blobHash"    # [B
    .param p2, "e"    # Lmobisocial/longdan/exception/LongdanException;

    .prologue
    .line 243
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$3;->val$failure:[Lmobisocial/longdan/exception/LongdanException;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 244
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 245
    return-void
.end method
