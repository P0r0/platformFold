.class Lcom/duoku/platform/download/DownloadService$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/download/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Lcom/duoku/platform/download/DownloadService$OnScanCompletedListener;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .registers 1

    .prologue
    .line 269
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4

    .prologue
    .line 274
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadService$b;->a:Lcom/duoku/platform/download/DownloadService$OnScanCompletedListener;

    if-eqz v0, :cond_9

    .line 276
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadService$b;->a:Lcom/duoku/platform/download/DownloadService$OnScanCompletedListener;

    invoke-interface {v0, p1, p2}, Lcom/duoku/platform/download/DownloadService$OnScanCompletedListener;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V

    .line 278
    :cond_9
    return-void
.end method
