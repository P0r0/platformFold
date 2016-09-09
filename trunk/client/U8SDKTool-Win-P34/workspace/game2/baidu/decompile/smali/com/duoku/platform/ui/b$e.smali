.class Lcom/duoku/platform/ui/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/download/utils/PackageHelper$PackageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/ui/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/ui/b;


# direct methods
.method constructor <init>(Lcom/duoku/platform/ui/b;)V
    .registers 2

    .prologue
    .line 1847
    iput-object p1, p0, Lcom/duoku/platform/ui/b$e;->a:Lcom/duoku/platform/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V
    .registers 14

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1852
    iget-object v0, p0, Lcom/duoku/platform/ui/b$e;->a:Lcom/duoku/platform/ui/b;

    iget-object v0, v0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    if-nez v0, :cond_11

    .line 1854
    iget-object v0, p0, Lcom/duoku/platform/ui/b$e;->a:Lcom/duoku/platform/ui/b;

    invoke-static {v0, v9}, Lcom/duoku/platform/ui/b;->a(Lcom/duoku/platform/ui/b;Z)V

    .line 1963
    :cond_10
    :goto_10
    :sswitch_10
    return-void

    .line 1858
    :cond_11
    iget-object v0, p0, Lcom/duoku/platform/ui/b$e;->a:Lcom/duoku/platform/ui/b;

    iget-object v0, v0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 1859
    if-eqz v0, :cond_10

    .line 1866
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_151

    move-object v0, v1

    .line 1884
    :cond_26
    :goto_26
    if-eqz v0, :cond_10

    .line 1889
    iget v2, p1, Lcom/duoku/platform/download/PackageMode;->status:I

    sparse-switch v2, :sswitch_data_198

    goto :goto_10

    .line 1933
    :sswitch_2e
    iget-wide v2, p1, Lcom/duoku/platform/download/PackageMode;->currentSize:J

    invoke-virtual {v0, v2, v3}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setCurrtentSize(J)V

    .line 1934
    iget-wide v2, p1, Lcom/duoku/platform/download/PackageMode;->totalSize:J

    invoke-virtual {v0, v2, v3}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setTotalSize(J)V

    .line 1935
    iget v1, p1, Lcom/duoku/platform/download/PackageMode;->status:I

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setApkStatus(I)V

    .line 1936
    iget-object v1, p1, Lcom/duoku/platform/download/PackageMode;->reason:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setApkReason(Ljava/lang/Integer;)V

    .line 1938
    iget-object v1, p0, Lcom/duoku/platform/ui/b$e;->a:Lcom/duoku/platform/ui/b;

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/duoku/platform/ui/b;->a(Lcom/duoku/platform/ui/b;J)V

    .line 1940
    iget-object v1, p0, Lcom/duoku/platform/ui/b$e;->a:Lcom/duoku/platform/ui/b;

    invoke-static {v1, p1}, Lcom/duoku/platform/ui/b;->a(Lcom/duoku/platform/ui/b;Lcom/duoku/platform/download/PackageMode;)V

    .line 1941
    iget-object v1, p0, Lcom/duoku/platform/ui/b$e;->a:Lcom/duoku/platform/ui/b;

    iget-boolean v1, v1, Lcom/duoku/platform/ui/b;->h:Z

    if-eqz v1, :cond_83

    iget v1, p1, Lcom/duoku/platform/download/PackageMode;->status:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_83

    .line 1943
    const-string v1, "DownloadAppListFragment"

    const-string v2, "[onPackageStatusChanged]DOWNLOAD_PAUSED current:%s total:%s,for %s"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getCurrtentSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getTotalSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    :cond_83
    iget-object v1, p0, Lcom/duoku/platform/ui/b$e;->a:Lcom/duoku/platform/ui/b;

    iget-boolean v1, v1, Lcom/duoku/platform/ui/b;->h:Z

    if-eqz v1, :cond_b6

    iget v1, p1, Lcom/duoku/platform/download/PackageMode;->status:I

    const/16 v2, 0x40

    if-ne v1, v2, :cond_b6

    .line 1947
    const-string v1, "DownloadAppListFragment"

    const-string v2, "[onPackageStatusChanged]DOWNLOADED current:%s total:%s,for %s"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getCurrtentSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getTotalSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    :cond_b6
    iget-object v1, p0, Lcom/duoku/platform/ui/b$e;->a:Lcom/duoku/platform/ui/b;

    iget-boolean v1, v1, Lcom/duoku/platform/ui/b;->h:Z

    if-eqz v1, :cond_e9

    iget v1, p1, Lcom/duoku/platform/download/PackageMode;->status:I

    const/16 v2, 0x80

    if-ne v1, v2, :cond_e9

    .line 1951
    const-string v1, "DownloadAppListFragment"

    const-string v2, "[onPackageStatusChanged]MERGING current:%s total:%s,for %s"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getCurrtentSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getTotalSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    :cond_e9
    iget-object v1, p0, Lcom/duoku/platform/ui/b$e;->a:Lcom/duoku/platform/ui/b;

    iget-boolean v1, v1, Lcom/duoku/platform/ui/b;->h:Z

    if-eqz v1, :cond_11c

    iget v1, p1, Lcom/duoku/platform/download/PackageMode;->status:I

    const/16 v2, 0x200

    if-ne v1, v2, :cond_11c

    .line 1955
    const-string v1, "DownloadAppListFragment"

    const-string v2, "[onPackageStatusChanged]MERGED current:%s total:%s,for %s"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getCurrtentSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getTotalSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    :cond_11c
    iget-object v1, p0, Lcom/duoku/platform/ui/b$e;->a:Lcom/duoku/platform/ui/b;

    iget-boolean v1, v1, Lcom/duoku/platform/ui/b;->h:Z

    if-eqz v1, :cond_10

    iget v1, p1, Lcom/duoku/platform/download/PackageMode;->status:I

    const/16 v2, 0x100

    if-ne v1, v2, :cond_10

    .line 1959
    const-string v1, "DownloadAppListFragment"

    const-string v2, "[onPackageStatusChanged]MERGE_FAILED current:%s total:%s,for %s"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getCurrtentSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getTotalSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 1866
    :cond_151
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 1868
    iget-wide v4, p1, Lcom/duoku/platform/download/PackageMode;->downloadId:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_169

    iget-wide v4, p1, Lcom/duoku/platform/download/PackageMode;->downloadId:J

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_26

    .line 1873
    :cond_169
    iget-object v3, p1, Lcom/duoku/platform/download/PackageMode;->gameId:Ljava/lang/String;

    if-eqz v3, :cond_179

    iget-object v3, p1, Lcom/duoku/platform/download/PackageMode;->gameId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 1878
    :cond_179
    iget-object v3, p1, Lcom/duoku/platform/download/PackageMode;->downloadUrl:Ljava/lang/String;

    if-eqz v3, :cond_1f

    iget-object v3, p1, Lcom/duoku/platform/download/PackageMode;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    goto/16 :goto_26

    .line 1922
    :sswitch_18b
    iget-object v0, p0, Lcom/duoku/platform/ui/b$e;->a:Lcom/duoku/platform/ui/b;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/b;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iget-object v2, p0, Lcom/duoku/platform/ui/b$e;->a:Lcom/duoku/platform/ui/b;

    invoke-virtual {v0, v8, v1, v2}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto/16 :goto_10

    .line 1889
    :sswitch_data_198
    .sparse-switch
        0x0 -> :sswitch_10
        0x4 -> :sswitch_2e
        0x8 -> :sswitch_2e
        0x10 -> :sswitch_2e
        0x20 -> :sswitch_2e
        0x40 -> :sswitch_2e
        0x80 -> :sswitch_2e
        0x100 -> :sswitch_2e
        0x200 -> :sswitch_2e
        0x400 -> :sswitch_2e
        0x800 -> :sswitch_2e
        0x1000 -> :sswitch_18b
        0x2000 -> :sswitch_10
        0x4000 -> :sswitch_10
        0x8000 -> :sswitch_2e
        0x10000 -> :sswitch_2e
        0x40000 -> :sswitch_2e
        0x80000 -> :sswitch_2e
    .end sparse-switch
.end method
