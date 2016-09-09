.class Lmobisocial/omlib/client/LongdanBlobUploadProcessor$1;
.super Ljava/lang/Object;
.source "LongdanBlobUploadProcessor.java"

# interfaces
.implements Lmobisocial/omlib/client/interfaces/LongdanBlobUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/LongdanBlobUploadProcessor;->performUploadAndWait(Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;)Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/LongdanBlobUploadProcessor;

.field final synthetic val$container:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$ResultContainer;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanBlobUploadProcessor;Lmobisocial/omlib/client/LongdanBlobUploadProcessor$ResultContainer;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanBlobUploadProcessor;

    .prologue
    .line 87
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$1;->this$0:Lmobisocial/omlib/client/LongdanBlobUploadProcessor;

    iput-object p2, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$1;->val$container:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$ResultContainer;

    iput-object p3, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlobUploadComplete(Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;)V
    .registers 3
    .param p1, "remote"    # Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;

    .prologue
    .line 91
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$1;->val$container:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$ResultContainer;

    iput-object p1, v0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$ResultContainer;->result:Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;

    .line 92
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 93
    return-void
.end method

.method public onBlobUploadFailed(Lmobisocial/longdan/exception/LongdanException;)V
    .registers 3
    .param p1, "e"    # Lmobisocial/longdan/exception/LongdanException;

    .prologue
    .line 97
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$1;->val$container:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$ResultContainer;

    iput-object p1, v0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$ResultContainer;->exception:Lmobisocial/longdan/exception/LongdanException;

    .line 98
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 99
    return-void
.end method
