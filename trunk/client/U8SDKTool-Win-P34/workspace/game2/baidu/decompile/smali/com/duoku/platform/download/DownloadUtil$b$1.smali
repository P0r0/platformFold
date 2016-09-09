.class Lcom/duoku/platform/download/DownloadUtil$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/DownloadUtil$b;->a(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/download/DownloadUtil$b;

.field private final synthetic b:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;


# direct methods
.method constructor <init>(Lcom/duoku/platform/download/DownloadUtil$b;Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/DownloadUtil$b$1;->a:Lcom/duoku/platform/download/DownloadUtil$b;

    iput-object p2, p0, Lcom/duoku/platform/download/DownloadUtil$b$1;->b:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    .line 990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 996
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$b$1;->a:Lcom/duoku/platform/download/DownloadUtil$b;

    invoke-static {v0}, Lcom/duoku/platform/download/DownloadUtil$b;->a(Lcom/duoku/platform/download/DownloadUtil$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 997
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1003
    return-void

    .line 999
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemListener;

    .line 1000
    iget-object v2, p0, Lcom/duoku/platform/download/DownloadUtil$b$1;->b:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    invoke-interface {v0, v2}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemListener;->onDownloadProcessing(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V

    goto :goto_a
.end method
