.class public abstract Lcom/duoku/platform/download/worker/AbstractListLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/download/worker/AbstractListLoader$PackageIntentReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field DEBUG:Z

.field MYTAG:Ljava/lang/String;

.field PREFIX:Ljava/lang/String;

.field private mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mPackageObserver:Lcom/duoku/platform/download/worker/AbstractListLoader$PackageIntentReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/duoku/platform/download/worker/AbstractListLoader$PackageIntentReceiver",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->DEBUG:Z

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->MYTAG:Ljava/lang/String;

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->PREFIX:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/worker/AbstractListLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->DEBUG:Z

    if-eqz v0, :cond_28

    .line 75
    const-string v1, "AppInstaller"

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->PREFIX:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " deliverResult "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_7c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_1d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_28
    invoke-virtual {p0}, Lcom/duoku/platform/download/worker/AbstractListLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 78
    iget-boolean v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->DEBUG:Z

    if-eqz v0, :cond_39

    .line 79
    const-string v0, "AppInstaller"

    const-string v1, "deliverResult isReset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_39
    if-eqz p1, :cond_3e

    .line 84
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/worker/AbstractListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 88
    :cond_3e
    iput-object p1, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->mApps:Ljava/util/List;

    .line 89
    invoke-virtual {p0}, Lcom/duoku/platform/download/worker/AbstractListLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 91
    iget-boolean v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->DEBUG:Z

    if-eqz v0, :cond_68

    .line 92
    const-string v0, "AppInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->PREFIX:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " deliverResult isStarted deliverResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_68
    iget-boolean v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->DEBUG:Z

    if-eqz v0, :cond_73

    .line 94
    iget-object v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->MYTAG:Ljava/lang/String;

    const-string v1, "##deliverResult  isStarted immediately deliver its results"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_73
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 110
    :cond_76
    :goto_76
    if-eqz p1, :cond_7b

    .line 112
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/worker/AbstractListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 114
    :cond_7b
    return-void

    .line 75
    :cond_7c
    const/4 v0, 0x0

    goto :goto_1d

    .line 101
    :cond_7e
    iget-boolean v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->DEBUG:Z

    if-eqz v0, :cond_9c

    .line 102
    const-string v0, "AppInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->PREFIX:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " deliverResult not Started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_9c
    iget-boolean v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->DEBUG:Z

    if-eqz v0, :cond_76

    .line 104
    iget-object v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->MYTAG:Ljava/lang/String;

    const-string v1, "##deliverResult not Started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76
.end method

.method public abstract isPackageIntentReceiver()Z
.end method

.method public abstract loadData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/duoku/platform/download/worker/AbstractListLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/duoku/platform/download/worker/AbstractListLoader;->loadData()Ljava/util/List;

    move-result-object v1

    .line 56
    iget-boolean v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 57
    iget-object v2, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->MYTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "##loadInBackground:"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_4f

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_26
    iget-boolean v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->DEBUG:Z

    if-eqz v0, :cond_4e

    .line 60
    const-string v2, "AppInstaller"

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->PREFIX:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " [loadInBackground]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_51

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    :goto_43
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_4e
    return-object v1

    .line 57
    :cond_4f
    const/4 v0, 0x0

    goto :goto_1b

    .line 60
    :cond_51
    const/4 v0, 0x0

    goto :goto_43
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/worker/AbstractListLoader;->onCanceled(Ljava/util/List;)V

    return-void
.end method

.method public onCanceled(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 193
    iget-boolean v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->DEBUG:Z

    if-eqz v0, :cond_21

    .line 194
    const-string v0, "AppInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->PREFIX:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "onCanceled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_21
    iget-boolean v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->DEBUG:Z

    if-eqz v0, :cond_2c

    .line 196
    iget-object v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->MYTAG:Ljava/lang/String;

    const-string v1, "##onCanceled "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_2c
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/worker/AbstractListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 200
    return-void
.end method

.method protected onDownloadChanged(Z)V
    .registers 4

    .prologue
    .line 369
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 370
    const-string v0, "DownloadLog"

    const-string v1, "Loader onDownloadChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_b
    return-void
.end method

.method protected varargs onIgnoredStatusChanged(Z[Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 347
    return-void
.end method

.method protected onInstallChanged()V
    .registers 3

    .prologue
    .line 375
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 376
    const-string v0, "AppInstaller"

    const-string v1, "Loader onInstallChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_b
    return-void
.end method

.method protected onInstalledListInitialized()V
    .registers 3

    .prologue
    .line 363
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 364
    const-string v0, "Refresh"

    const-string v1, "Loader onInstalledIistInitialized"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_b
    return-void
.end method

.method protected onReceveAppEvent(Z)V
    .registers 2

    .prologue
    .line 353
    return-void
.end method

.method protected onReleaseResources(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 246
    return-void
.end method

.method protected onReset()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 208
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 209
    iget-boolean v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 210
    const-string v0, "AppInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->PREFIX:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "onReset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_22
    iget-boolean v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->DEBUG:Z

    if-eqz v0, :cond_2d

    .line 212
    iget-object v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->MYTAG:Ljava/lang/String;

    const-string v1, "##onReset "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_2d
    invoke-virtual {p0}, Lcom/duoku/platform/download/worker/AbstractListLoader;->onStopLoading()V

    .line 218
    iget-object v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->mApps:Ljava/util/List;

    if-eqz v0, :cond_3b

    .line 220
    iget-object v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->mApps:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/download/worker/AbstractListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 221
    iput-object v3, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->mApps:Ljava/util/List;

    .line 225
    :cond_3b
    iget-object v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->mPackageObserver:Lcom/duoku/platform/download/worker/AbstractListLoader$PackageIntentReceiver;

    if-eqz v0, :cond_4a

    .line 229
    :try_start_3f
    invoke-virtual {p0}, Lcom/duoku/platform/download/worker/AbstractListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->mPackageObserver:Lcom/duoku/platform/download/worker/AbstractListLoader$PackageIntentReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_48} :catch_4b

    .line 234
    :goto_48
    iput-object v3, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->mPackageObserver:Lcom/duoku/platform/download/worker/AbstractListLoader$PackageIntentReceiver;

    .line 236
    :cond_4a
    return-void

    .line 231
    :catch_4b
    move-exception v0

    goto :goto_48
.end method

.method protected onStartLoading()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 122
    invoke-virtual {p0}, Lcom/duoku/platform/download/worker/AbstractListLoader;->takeContentChanged()Z

    move-result v3

    .line 124
    iget-boolean v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->DEBUG:Z

    if-eqz v0, :cond_24

    .line 125
    const-string v0, "AppInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->PREFIX:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " onStartLoading"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_24
    iget-boolean v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->DEBUG:Z

    if-eqz v0, :cond_4b

    .line 127
    iget-object v4, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->MYTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "##onStartLoading null?"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->mApps:Ljava/util/List;

    if-nez v0, :cond_ce

    move v0, v1

    :goto_36
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " takeContentChanged?"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_4b
    iget-object v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->mApps:Ljava/util/List;

    if-eqz v0, :cond_d1

    .line 132
    iget-object v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->mApps:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/download/worker/AbstractListLoader;->deliverResult(Ljava/util/List;)V

    .line 133
    iget-boolean v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->DEBUG:Z

    if-eqz v0, :cond_72

    .line 134
    const-string v0, "AppInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->PREFIX:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " [onStartLoading] mApps != null deliverResult "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_72
    :goto_72
    invoke-virtual {p0}, Lcom/duoku/platform/download/worker/AbstractListLoader;->isPackageIntentReceiver()Z

    move-result v0

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->mPackageObserver:Lcom/duoku/platform/download/worker/AbstractListLoader$PackageIntentReceiver;

    if-nez v0, :cond_83

    .line 150
    new-instance v0, Lcom/duoku/platform/download/worker/AbstractListLoader$PackageIntentReceiver;

    invoke-direct {v0, p0}, Lcom/duoku/platform/download/worker/AbstractListLoader$PackageIntentReceiver;-><init>(Lcom/duoku/platform/download/worker/AbstractListLoader;)V

    iput-object v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->mPackageObserver:Lcom/duoku/platform/download/worker/AbstractListLoader$PackageIntentReceiver;

    .line 153
    :cond_83
    if-nez v3, :cond_89

    iget-object v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->mApps:Ljava/util/List;

    if-nez v0, :cond_f2

    .line 157
    :cond_89
    iget-boolean v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->DEBUG:Z

    if-eqz v0, :cond_94

    .line 158
    iget-object v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->MYTAG:Ljava/lang/String;

    const-string v4, "##onStartLoading forceLoad "

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_94
    iget-boolean v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->DEBUG:Z

    if-eqz v0, :cond_ca

    .line 160
    const-string v0, "AppInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->PREFIX:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "takeContentChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mApps == null ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->mApps:Ljava/util/List;

    if-nez v4, :cond_f0

    :goto_b9
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " forceLoad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_ca
    invoke-virtual {p0}, Lcom/duoku/platform/download/worker/AbstractListLoader;->forceLoad()V

    .line 170
    :cond_cd
    :goto_cd
    return-void

    :cond_ce
    move v0, v2

    .line 127
    goto/16 :goto_36

    .line 143
    :cond_d1
    iget-boolean v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->DEBUG:Z

    if-eqz v0, :cond_72

    .line 144
    const-string v0, "AppInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->PREFIX:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "onStartLoading mApps == null not deliverResult "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    :cond_f0
    move v1, v2

    .line 160
    goto :goto_b9

    .line 165
    :cond_f2
    iget-boolean v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->DEBUG:Z

    if-eqz v0, :cond_fd

    .line 166
    iget-object v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->MYTAG:Ljava/lang/String;

    const-string v1, "##onStartLoading not forceLoad "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_fd
    iget-boolean v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->DEBUG:Z

    if-eqz v0, :cond_cd

    .line 168
    const-string v0, "AppInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->PREFIX:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " not forceLoad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cd
.end method

.method protected onStopLoading()V
    .registers 4

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 179
    iget-object v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->MYTAG:Ljava/lang/String;

    const-string v1, "##onStopLoading "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_b
    iget-boolean v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->DEBUG:Z

    if-eqz v0, :cond_29

    .line 181
    const-string v0, "AppInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duoku/platform/download/worker/AbstractListLoader;->PREFIX:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "onStopLoading"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_29
    invoke-virtual {p0}, Lcom/duoku/platform/download/worker/AbstractListLoader;->cancelLoad()Z

    .line 184
    return-void
.end method

.method protected onUpdatableListInitialized()V
    .registers 3

    .prologue
    .line 357
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 358
    const-string v0, "Refresh"

    const-string v1, "Loader onUpdatableListInitialized"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_b
    return-void
.end method
