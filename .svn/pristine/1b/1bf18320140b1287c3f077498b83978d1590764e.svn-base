.class Lcom/duoku/platform/ui/b$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/ui/b;->a(Lcom/duoku/platform/download/PackageMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/ui/b;

.field private final synthetic b:Lcom/duoku/platform/download/PackageMode;


# direct methods
.method constructor <init>(Lcom/duoku/platform/ui/b;Lcom/duoku/platform/download/PackageMode;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/ui/b$7;->a:Lcom/duoku/platform/ui/b;

    iput-object p2, p0, Lcom/duoku/platform/ui/b$7;->b:Lcom/duoku/platform/download/PackageMode;

    .line 2033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 2037
    iget-object v0, p0, Lcom/duoku/platform/ui/b$7;->a:Lcom/duoku/platform/ui/b;

    invoke-static {v0}, Lcom/duoku/platform/ui/b;->f(Lcom/duoku/platform/ui/b;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/duoku/platform/ui/b$7;->a:Lcom/duoku/platform/ui/b;

    iget-object v0, v0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    if-nez v0, :cond_f

    .line 2069
    :cond_e
    :goto_e
    return-void

    .line 2041
    :cond_f
    iget-object v0, p0, Lcom/duoku/platform/ui/b$7;->a:Lcom/duoku/platform/ui/b;

    invoke-static {v0}, Lcom/duoku/platform/ui/b;->f(Lcom/duoku/platform/ui/b;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    .line 2042
    iget-object v0, p0, Lcom/duoku/platform/ui/b$7;->a:Lcom/duoku/platform/ui/b;

    iget-object v0, v0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 2043
    if-eqz v0, :cond_e

    .line 2045
    iget-object v1, p0, Lcom/duoku/platform/ui/b$7;->a:Lcom/duoku/platform/ui/b;

    iget-object v1, v1, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->setNotifyOnChange(Z)V

    .line 2046
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2e
    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_51

    .line 2059
    iget-object v0, p0, Lcom/duoku/platform/ui/b$7;->a:Lcom/duoku/platform/ui/b;

    iget-object v1, p0, Lcom/duoku/platform/ui/b$7;->a:Lcom/duoku/platform/ui/b;

    iget-object v1, v1, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v1}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/ui/b;->a(Lcom/duoku/platform/ui/b;Ljava/util/List;)Ljava/util/List;

    .line 2060
    iget-object v0, p0, Lcom/duoku/platform/ui/b$7;->a:Lcom/duoku/platform/ui/b;

    iget-object v0, v0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->notifyDataSetChanged()V

    .line 2061
    iget-object v0, p0, Lcom/duoku/platform/ui/b$7;->a:Lcom/duoku/platform/ui/b;

    iget-object v0, v0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->setNotifyOnChange(Z)V

    goto :goto_e

    .line 2046
    :cond_51
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 2051
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/duoku/platform/ui/b$7;->b:Lcom/duoku/platform/download/PackageMode;

    iget-wide v4, v4, Lcom/duoku/platform/download/PackageMode;->downloadId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2e

    .line 2053
    iget-object v2, p0, Lcom/duoku/platform/ui/b$7;->b:Lcom/duoku/platform/download/PackageMode;

    iget-wide v2, v2, Lcom/duoku/platform/download/PackageMode;->currentSize:J

    invoke-virtual {v0, v2, v3}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setCurrtentSize(J)V

    .line 2054
    iget-object v2, p0, Lcom/duoku/platform/ui/b$7;->b:Lcom/duoku/platform/download/PackageMode;

    iget-wide v2, v2, Lcom/duoku/platform/download/PackageMode;->totalSize:J

    invoke-virtual {v0, v2, v3}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setTotalSize(J)V

    .line 2055
    iget-object v2, p0, Lcom/duoku/platform/ui/b$7;->b:Lcom/duoku/platform/download/PackageMode;

    iget v2, v2, Lcom/duoku/platform/download/PackageMode;->status:I

    invoke-virtual {v0, v2}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setApkStatus(I)V

    .line 2056
    iget-object v2, p0, Lcom/duoku/platform/ui/b$7;->b:Lcom/duoku/platform/download/PackageMode;

    iget-object v2, v2, Lcom/duoku/platform/download/PackageMode;->reason:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setApkReason(Ljava/lang/Integer;)V

    goto :goto_2e
.end method
