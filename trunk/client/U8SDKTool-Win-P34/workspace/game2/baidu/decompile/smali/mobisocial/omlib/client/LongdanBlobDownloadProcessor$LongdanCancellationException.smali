.class Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$LongdanCancellationException;
.super Lmobisocial/longdan/exception/LongdanException;
.source "LongdanBlobDownloadProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LongdanCancellationException"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 613
    const-string v0, "Operation Cancelled"

    invoke-direct {p0, v0}, Lmobisocial/longdan/exception/LongdanException;-><init>(Ljava/lang/String;)V

    .line 614
    return-void
.end method


# virtual methods
.method public isNetworkError()Z
    .registers 2

    .prologue
    .line 618
    const/4 v0, 0x0

    return v0
.end method

.method public isPermanentError()Z
    .registers 2

    .prologue
    .line 623
    const/4 v0, 0x0

    return v0
.end method

.method public isUserError()Z
    .registers 2

    .prologue
    .line 628
    const/4 v0, 0x1

    return v0
.end method
