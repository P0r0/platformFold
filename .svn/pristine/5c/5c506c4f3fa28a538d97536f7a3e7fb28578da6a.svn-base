.class Lcom/duoku/platform/download/DownloadUtil$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/DownloadUtil$a;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/download/DownloadUtil$a;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/duoku/platform/download/DownloadUtil$a;Ljava/util/List;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/DownloadUtil$a$1;->a:Lcom/duoku/platform/download/DownloadUtil$a;

    iput-object p2, p0, Lcom/duoku/platform/download/DownloadUtil$a$1;->b:Ljava/util/List;

    .line 733
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 739
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$a$1;->a:Lcom/duoku/platform/download/DownloadUtil$a;

    invoke-static {v0}, Lcom/duoku/platform/download/DownloadUtil$a;->a(Lcom/duoku/platform/download/DownloadUtil$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 740
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    .line 747
    return-void

    .line 742
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadListener;

    .line 743
    iget-object v2, p0, Lcom/duoku/platform/download/DownloadUtil$a$1;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadListener;->onDownloadProcessing(Ljava/util/List;)V

    goto :goto_a
.end method
