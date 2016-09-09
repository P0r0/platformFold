.class public Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$RetryResult;
.super Ljava/lang/Object;
.source "FileUploadIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RetryResult"
.end annotation


# instance fields
.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field retry:Z

.field final synthetic this$0:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;


# direct methods
.method public constructor <init>(Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;

    .prologue
    .line 513
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$RetryResult;->this$0:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$RetryResult;->latch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public await()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 528
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$RetryResult;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 529
    return-void
.end method

.method public declared-synchronized trySetResult(Z)Z
    .registers 6
    .param p1, "retry"    # Z

    .prologue
    .line 520
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$RetryResult;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_19

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 521
    const/4 v0, 0x0

    .line 524
    :goto_e
    monitor-exit p0

    return v0

    .line 522
    :cond_10
    :try_start_10
    iput-boolean p1, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$RetryResult;->retry:Z

    .line 523
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$RetryResult;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_19

    .line 524
    const/4 v0, 0x1

    goto :goto_e

    .line 520
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method
