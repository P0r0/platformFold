.class Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$AbandonDeferredBlobTask;
.super Ljava/util/TimerTask;
.source "LongdanBlobDownloadProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AbandonDeferredBlobTask"
.end annotation


# instance fields
.field final mBlobHash:Ljava/nio/ByteBuffer;

.field final synthetic this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;


# direct methods
.method public constructor <init>(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p2, "blobHash"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 697
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$AbandonDeferredBlobTask;->this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 698
    iput-object p2, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$AbandonDeferredBlobTask;->mBlobHash:Ljava/nio/ByteBuffer;

    .line 699
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 703
    const/4 v1, 0x0

    .line 704
    .local v1, "pbr":Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$AbandonDeferredBlobTask;->this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    iget-object v3, v2, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mRequestQueue:Ljava/util/LinkedList;

    monitor-enter v3

    .line 705
    :try_start_6
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$AbandonDeferredBlobTask;->this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    iget-object v2, v2, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mDeferredRequests:Ljava/util/Set;

    iget-object v4, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$AbandonDeferredBlobTask;->mBlobHash:Ljava/nio/ByteBuffer;

    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 706
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$AbandonDeferredBlobTask;->this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    iget-object v2, v2, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mPendingRequests:Ljava/util/HashMap;

    iget-object v4, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$AbandonDeferredBlobTask;->mBlobHash:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;

    move-object v1, v0

    .line 708
    :cond_20
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_32

    .line 709
    if-eqz v1, :cond_31

    .line 710
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$AbandonDeferredBlobTask;->this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    iget-object v3, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$AbandonDeferredBlobTask;->mBlobHash:Ljava/nio/ByteBuffer;

    new-instance v4, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$AbandonDeferredBlobTask$1;

    const-string v5, "No blob source available."

    invoke-direct {v4, p0, v5}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$AbandonDeferredBlobTask$1;-><init>(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$AbandonDeferredBlobTask;Ljava/lang/String;)V

    # invokes: Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->blobDownloadFailed(Ljava/nio/ByteBuffer;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;Lmobisocial/longdan/exception/LongdanException;)V
    invoke-static {v2, v3, v1, v4}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->access$700(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;Ljava/nio/ByteBuffer;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;Lmobisocial/longdan/exception/LongdanException;)V

    .line 723
    :cond_31
    return-void

    .line 708
    :catchall_32
    move-exception v2

    :try_start_33
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v2
.end method
