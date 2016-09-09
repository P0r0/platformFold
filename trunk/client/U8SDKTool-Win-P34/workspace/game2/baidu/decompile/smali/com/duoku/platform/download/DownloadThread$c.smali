.class Lcom/duoku/platform/download/DownloadThread$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/download/DownloadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/io/FileOutputStream;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:I

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/duoku/platform/download/DownloadInfo;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-boolean v0, p0, Lcom/duoku/platform/download/DownloadThread$c;->d:Z

    .line 106
    iput v0, p0, Lcom/duoku/platform/download/DownloadThread$c;->e:I

    .line 108
    iput v0, p0, Lcom/duoku/platform/download/DownloadThread$c;->f:I

    .line 112
    iput-boolean v0, p0, Lcom/duoku/platform/download/DownloadThread$c;->h:Z

    .line 124
    iget-object v0, p1, Lcom/duoku/platform/download/DownloadInfo;->mMimeType:Ljava/lang/String;

    # invokes: Lcom/duoku/platform/download/DownloadThread;->sanitizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/duoku/platform/download/DownloadThread;->access$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadThread$c;->c:Ljava/lang/String;

    .line 125
    iget v0, p1, Lcom/duoku/platform/download/DownloadInfo;->mRedirectCount:I

    iput v0, p0, Lcom/duoku/platform/download/DownloadThread$c;->f:I

    .line 126
    iget-object v0, p1, Lcom/duoku/platform/download/DownloadInfo;->mUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadThread$c;->i:Ljava/lang/String;

    .line 127
    iget-object v0, p1, Lcom/duoku/platform/download/DownloadInfo;->mFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadThread$c;->a:Ljava/lang/String;

    .line 128
    return-void
.end method
