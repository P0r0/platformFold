.class Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;
.super Ljava/lang/Object;
.source "LongdanBlobDownloadProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CancellationSignalSet"
.end annotation


# instance fields
.field final mCancellationSignals:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/os/CancellationSignal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 781
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;->mCancellationSignals:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public declared-synchronized addCancellationSignal(Landroid/os/CancellationSignal;)V
    .registers 3
    .param p1, "cancellation"    # Landroid/os/CancellationSignal;

    .prologue
    .line 784
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;->mCancellationSignals:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 785
    monitor-exit p0

    return-void

    .line 784
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized allCancelled()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 788
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;->mCancellationSignals:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_27

    move-result v2

    if-eqz v2, :cond_c

    .line 795
    :goto_a
    monitor-exit p0

    return v1

    .line 791
    :cond_c
    :try_start_c
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;->mCancellationSignals:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CancellationSignal;

    .line 792
    .local v0, "signal":Landroid/os/CancellationSignal;
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_27

    move-result v3

    if-nez v3, :cond_12

    goto :goto_a

    .line 795
    .end local v0    # "signal":Landroid/os/CancellationSignal;
    :cond_25
    const/4 v1, 0x1

    goto :goto_a

    .line 788
    :catchall_27
    move-exception v1

    monitor-exit p0

    throw v1
.end method
