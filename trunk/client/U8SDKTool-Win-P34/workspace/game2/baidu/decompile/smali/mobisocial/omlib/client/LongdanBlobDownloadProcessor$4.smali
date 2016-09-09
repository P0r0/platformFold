.class Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$4;
.super Lmobisocial/longdan/exception/LongdanException;
.source "LongdanBlobDownloadProcessor.java"


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


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$4;->this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    invoke-direct {p0, p2}, Lmobisocial/longdan/exception/LongdanException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isNetworkError()Z
    .registers 2

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public isPermanentError()Z
    .registers 2

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public isUserError()Z
    .registers 2

    .prologue
    .line 275
    const/4 v0, 0x1

    return v0
.end method
