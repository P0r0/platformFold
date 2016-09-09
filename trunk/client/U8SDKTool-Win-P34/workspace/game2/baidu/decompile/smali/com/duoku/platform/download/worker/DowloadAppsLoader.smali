.class public Lcom/duoku/platform/download/worker/DowloadAppsLoader;
.super Lcom/duoku/platform/download/worker/AbstractListLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/duoku/platform/download/worker/AbstractListLoader",
        "<",
        "Lcom/duoku/platform/download/mode/DownloadAppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field started:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/worker/AbstractListLoader;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/download/worker/DowloadAppsLoader;->started:Z

    .line 33
    return-void
.end method

.method private buildPostContent()[B
    .registers 2

    .prologue
    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method private checkStatus(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/DownloadAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 94
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-lt v1, v2, :cond_1c

    .line 100
    invoke-static {p1}, Lcom/duoku/platform/download/utils/PackageHelper;->queryPackageStatusForDownloads(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 108
    return-void

    .line 97
    :cond_1c
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 101
    :cond_2d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 103
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/download/PackageMode;

    .line 104
    iget v4, v1, Lcom/duoku/platform/download/PackageMode;->status:I

    invoke-virtual {v0, v4}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setApkStatus(I)V

    .line 105
    iget-object v1, v1, Lcom/duoku/platform/download/PackageMode;->reason:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setApkReason(Ljava/lang/Integer;)V

    goto :goto_15
.end method

.method private checkUpdate()V
    .registers 1

    .prologue
    .line 136
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    .line 137
    return-void
.end method

.method private doCheckJob()V
    .registers 1

    .prologue
    .line 155
    return-void
.end method

.method private parseData(Ljava/io/InputStream;)V
    .registers 3

    .prologue
    .line 141
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/duoku/platform/download/utils/StringUtil;->InputStreamToString(Ljava/io/InputStream;Z)Ljava/lang/String;

    .line 143
    return-void
.end method


# virtual methods
.method public isPackageIntentReceiver()Z
    .registers 2

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public loadData()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/DownloadAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/duoku/platform/download/worker/DowloadAppsLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/AppManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/AppManager;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/AppManager;->getAndCheckDownloadGames()Ljava/util/List;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_17

    .line 81
    invoke-direct {p0, v0}, Lcom/duoku/platform/download/worker/DowloadAppsLoader;->checkStatus(Ljava/util/List;)V

    .line 83
    :cond_17
    return-object v0
.end method

.method public onCanceled(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/DownloadAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/duoku/platform/download/worker/AbstractListLoader;->onCanceled(Ljava/util/List;)V

    .line 51
    return-void
.end method

.method protected onDownloadChanged(Z)V
    .registers 4

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/duoku/platform/download/worker/AbstractListLoader;->onDownloadChanged(Z)V

    .line 125
    if-eqz p1, :cond_13

    .line 127
    iget-boolean v0, p0, Lcom/duoku/platform/download/worker/DowloadAppsLoader;->DEBUG:Z

    if-eqz v0, :cond_10

    .line 128
    const-string v0, "DownloadLog"

    const-string v1, "Loader onDownloadChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_10
    invoke-virtual {p0}, Lcom/duoku/platform/download/worker/DowloadAppsLoader;->forceLoad()V

    .line 132
    :cond_13
    return-void
.end method

.method protected onInstallChanged()V
    .registers 3

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/duoku/platform/download/worker/DowloadAppsLoader;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 66
    const-string v0, "AppInstaller"

    const-string v1, "onInstallChanged forceLoad"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_b
    invoke-virtual {p0}, Lcom/duoku/platform/download/worker/DowloadAppsLoader;->forceLoad()V

    .line 68
    return-void
.end method

.method protected onReceveAppEvent()V
    .registers 1

    .prologue
    .line 119
    return-void
.end method

.method protected onReceveAppEvent(Z)V
    .registers 5

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/duoku/platform/download/worker/DowloadAppsLoader;->DEBUG:Z

    if-eqz v0, :cond_18

    .line 57
    const-string v0, "AppInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DowloadAppsLoader onReceveAppEvent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_18
    invoke-virtual {p0}, Lcom/duoku/platform/download/worker/DowloadAppsLoader;->forceLoad()V

    .line 60
    return-void
.end method

.method protected onStartLoading()V
    .registers 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/duoku/platform/download/worker/AbstractListLoader;->onStartLoading()V

    .line 39
    return-void
.end method

.method protected onStopLoading()V
    .registers 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/duoku/platform/download/worker/AbstractListLoader;->onStopLoading()V

    .line 45
    return-void
.end method
