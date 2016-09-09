.class Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;
.super Ljava/lang/Object;
.source "LongdanBlobDownloadProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PendingBlobDownloadRequest"
.end annotation


# static fields
.field static final mUncancellable:Landroid/os/CancellationSignal;


# instance fields
.field final blobHash:[B

.field eligibleTime:J

.field failCount:I

.field highPriority:Z

.field final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field final mCancellation:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 752
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    sput-object v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->mUncancellable:Landroid/os/CancellationSignal;

    return-void
.end method

.method public constructor <init>([BZ)V
    .registers 4
    .param p1, "blobHash"    # [B
    .param p2, "highPriority"    # Z

    .prologue
    .line 766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 756
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->listeners:Ljava/util/List;

    .line 767
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->blobHash:[B

    .line 768
    new-instance v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;

    invoke-direct {v0}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->mCancellation:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;

    .line 769
    iput-boolean p2, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->highPriority:Z

    .line 770
    return-void
.end method


# virtual methods
.method public addListener(Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;Landroid/os/CancellationSignal;)V
    .registers 4
    .param p1, "listener"    # Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;
    .param p2, "cancellation"    # Landroid/os/CancellationSignal;

    .prologue
    .line 773
    if-eqz p1, :cond_7

    .line 774
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    :cond_7
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->mCancellation:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;

    if-nez p2, :cond_d

    sget-object p2, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->mUncancellable:Landroid/os/CancellationSignal;

    .end local p2    # "cancellation":Landroid/os/CancellationSignal;
    :cond_d
    invoke-virtual {v0, p2}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;->addCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 776
    return-void
.end method
