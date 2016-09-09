.class Lcom/duoku/platform/download/DownloadService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/download/DownloadService$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/DownloadService;->scanFile(Lcom/duoku/platform/download/DownloadInfo;ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/download/DownloadService;

.field private final synthetic b:Z

.field private final synthetic c:Z

.field private final synthetic d:Landroid/net/Uri;

.field private final synthetic e:Z

.field private final synthetic f:Landroid/content/ContentResolver;

.field private final synthetic g:J

.field private final synthetic h:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/duoku/platform/download/DownloadService;ZZLandroid/net/Uri;ZLandroid/content/ContentResolver;JLjava/lang/String;)V
    .registers 11

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/DownloadService$1;->a:Lcom/duoku/platform/download/DownloadService;

    iput-boolean p2, p0, Lcom/duoku/platform/download/DownloadService$1;->b:Z

    iput-boolean p3, p0, Lcom/duoku/platform/download/DownloadService$1;->c:Z

    iput-object p4, p0, Lcom/duoku/platform/download/DownloadService$1;->d:Landroid/net/Uri;

    iput-boolean p5, p0, Lcom/duoku/platform/download/DownloadService$1;->e:Z

    iput-object p6, p0, Lcom/duoku/platform/download/DownloadService$1;->f:Landroid/content/ContentResolver;

    iput-wide p7, p0, Lcom/duoku/platform/download/DownloadService$1;->g:J

    iput-object p9, p0, Lcom/duoku/platform/download/DownloadService$1;->h:Ljava/lang/String;

    .line 844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 850
    iget-boolean v1, p0, Lcom/duoku/platform/download/DownloadService$1;->b:Z

    if-eqz v1, :cond_3e

    .line 855
    const/4 v1, 0x0

    .line 856
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 857
    iget-boolean v3, p0, Lcom/duoku/platform/download/DownloadService$1;->c:Z

    if-nez v3, :cond_1a

    .line 859
    const-string v1, "scanned"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move v1, v0

    .line 862
    :cond_1a
    if-eqz p2, :cond_57

    .line 864
    const-string v1, "mediaprovider_uri"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    :goto_25
    if-eqz v0, :cond_35

    .line 869
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadService$1;->a:Lcom/duoku/platform/download/DownloadService;

    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/DownloadService$1;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 870
    if-nez v0, :cond_35

    .line 892
    :cond_35
    :goto_35
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadService$1;->a:Lcom/duoku/platform/download/DownloadService;

    # getter for: Lcom/duoku/platform/download/DownloadService;->mMediaScannerConnectionClient:Lcom/duoku/platform/download/DownloadService$b;
    invoke-static {v0}, Lcom/duoku/platform/download/DownloadService;->access$15(Lcom/duoku/platform/download/DownloadService;)Lcom/duoku/platform/download/DownloadService$b;

    move-result-object v0

    iput-object v4, v0, Lcom/duoku/platform/download/DownloadService$b;->a:Lcom/duoku/platform/download/DownloadService$OnScanCompletedListener;

    .line 893
    return-void

    .line 879
    :cond_3e
    iget-boolean v0, p0, Lcom/duoku/platform/download/DownloadService$1;->e:Z

    if-eqz v0, :cond_35

    .line 881
    if-eqz p2, :cond_4d

    .line 885
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadService$1;->a:Lcom/duoku/platform/download/DownloadService;

    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 889
    :cond_4d
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadService$1;->f:Landroid/content/ContentResolver;

    iget-wide v2, p0, Lcom/duoku/platform/download/DownloadService$1;->g:J

    iget-object v1, p0, Lcom/duoku/platform/download/DownloadService$1;->h:Ljava/lang/String;

    invoke-static {v0, v2, v3, p1, v1}, Lcom/duoku/platform/download/Helpers;->deleteFile(Landroid/content/ContentResolver;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    :cond_57
    move v0, v1

    goto :goto_25
.end method
