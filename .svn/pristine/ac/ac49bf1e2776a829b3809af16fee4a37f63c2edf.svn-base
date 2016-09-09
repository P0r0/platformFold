.class Lcom/duoku/platform/download/DownloadProvider$b;
.super Landroid/database/CursorWrapper;
.source "SourceFile"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/download/DownloadProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/database/CrossProcessCursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 2

    .prologue
    .line 1479
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 1480
    check-cast p1, Landroid/database/CrossProcessCursor;

    iput-object p1, p0, Lcom/duoku/platform/download/DownloadProvider$b;->a:Landroid/database/CrossProcessCursor;

    .line 1481
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 3

    .prologue
    .line 1491
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Download manager cursors are read-only"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Z
    .registers 3

    .prologue
    .line 1502
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Download manager cursors are read-only"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fillWindow(ILandroid/database/CursorWindow;)V
    .registers 4

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadProvider$b;->a:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    .line 1509
    return-void
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .registers 2

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadProvider$b;->a:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    return-object v0
.end method

.method public onMove(II)Z
    .registers 4

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadProvider$b;->a:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    move-result v0

    return v0
.end method
