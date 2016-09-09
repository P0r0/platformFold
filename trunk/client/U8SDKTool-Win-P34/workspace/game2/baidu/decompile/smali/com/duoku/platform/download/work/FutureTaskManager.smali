.class public Lcom/duoku/platform/download/work/FutureTaskManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;
    }
.end annotation


# static fields
.field static INSTANCE:Lcom/duoku/platform/download/work/FutureTaskManager; = null

.field private static final TAG:Ljava/lang/String; = "FutureTaskManager"


# instance fields
.field private tasks:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/download/work/FutureTaskManager;->tasks:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 119
    return-void
.end method

.method private cacheTask(ILjava/lang/String;)V
    .registers 7

    .prologue
    .line 483
    iget-object v0, p0, Lcom/duoku/platform/download/work/FutureTaskManager;->tasks:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v1, Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;

    const-wide/16 v2, -0x1

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;-><init>(JILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 484
    return-void
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
    .line 164
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 165
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-lt v1, v2, :cond_1c

    .line 171
    invoke-static {p1}, Lcom/duoku/platform/download/utils/PackageHelper;->queryPackageStatusForDownloads(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    .line 172
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 179
    return-void

    .line 168
    :cond_1c
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 172
    :cond_2d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 174
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/download/PackageMode;

    .line 175
    iget v4, v1, Lcom/duoku/platform/download/PackageMode;->status:I

    invoke-virtual {v0, v4}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setApkStatus(I)V

    .line 176
    iget-object v1, v1, Lcom/duoku/platform/download/PackageMode;->reason:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setApkReason(Ljava/lang/Integer;)V

    goto :goto_15
.end method

.method private checkTask(ILjava/lang/String;)Z
    .registers 6

    .prologue
    .line 466
    iget-object v0, p0, Lcom/duoku/platform/download/work/FutureTaskManager;->tasks:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    .line 473
    const/4 v0, 0x1

    :goto_d
    return v0

    .line 466
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;

    .line 468
    invoke-virtual {v0}, Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;->getTaskTag()I

    move-result v2

    if-ne v2, p1, :cond_6

    invoke-virtual {v0}, Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;->getTaskExtra()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 470
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static declared-synchronized getInstance()Lcom/duoku/platform/download/work/FutureTaskManager;
    .registers 2

    .prologue
    .line 123
    const-class v1, Lcom/duoku/platform/download/work/FutureTaskManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/duoku/platform/download/work/FutureTaskManager;->INSTANCE:Lcom/duoku/platform/download/work/FutureTaskManager;

    if-nez v0, :cond_e

    .line 125
    new-instance v0, Lcom/duoku/platform/download/work/FutureTaskManager;

    invoke-direct {v0}, Lcom/duoku/platform/download/work/FutureTaskManager;-><init>()V

    sput-object v0, Lcom/duoku/platform/download/work/FutureTaskManager;->INSTANCE:Lcom/duoku/platform/download/work/FutureTaskManager;

    .line 127
    :cond_e
    sget-object v0, Lcom/duoku/platform/download/work/FutureTaskManager;->INSTANCE:Lcom/duoku/platform/download/work/FutureTaskManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 123
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getTasks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 500
    invoke-static {}, Lcom/duoku/platform/d/g;->b()Lcom/duoku/platform/d/c;

    move-result-object v0

    .line 501
    invoke-interface {v0}, Lcom/duoku/platform/d/c;->a()Ljava/util/List;

    move-result-object v0

    .line 502
    return-object v0
.end method

.method private onPackageRemoved(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 201
    :try_start_0
    invoke-static {p1}, Lcom/duoku/platform/download/utils/AppManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/AppManager;

    move-result-object v0

    .line 202
    invoke-virtual {v0, p2}, Lcom/duoku/platform/download/utils/AppManager;->removeInstallAppRecord(Ljava/lang/String;)Lcom/duoku/platform/download/mode/InstalledAppInfo;

    move-result-object v1

    .line 206
    invoke-virtual {v0, p2}, Lcom/duoku/platform/download/utils/AppManager;->updateDownloadRecordIfNecessary(Ljava/lang/String;)V

    .line 207
    if-eqz v1, :cond_10

    .line 209
    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/utils/AppManager;->notifyForAppRemoved(Lcom/duoku/platform/download/mode/InstalledAppInfo;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_55

    .line 213
    :cond_10
    :try_start_10
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/AppManager;->getAndCheckDownloadGames()Ljava/util/List;

    move-result-object v2

    .line 214
    if-eqz v2, :cond_30

    .line 216
    const/4 v1, 0x0

    .line 217
    const/4 v0, 0x0

    .line 218
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    move-object v1, v0

    :cond_1e
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 226
    const/4 v0, 0x1

    if-ne v2, v0, :cond_30

    if-eqz v1, :cond_30

    .line 228
    invoke-static {}, Lcom/duoku/platform/download/utils/BackAppListener;->getInstance()Lcom/duoku/platform/download/utils/BackAppListener;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/utils/BackAppListener;->cancleNotification(Lcom/duoku/platform/download/mode/DownloadAppInfo;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_30} :catch_50

    .line 239
    :cond_30
    :goto_30
    :try_start_30
    invoke-static {}, Lcom/duoku/platform/download/utils/AppCache;->getInstance()Lcom/duoku/platform/download/utils/AppCache;

    move-result-object v0

    .line 240
    invoke-virtual {v0, p1}, Lcom/duoku/platform/download/utils/AppCache;->refreshDownload(Landroid/content/Context;)V

    .line 241
    invoke-virtual {v0, p1}, Lcom/duoku/platform/download/utils/AppCache;->refreshInstall(Landroid/content/Context;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3a} :catch_55

    .line 248
    :goto_3a
    return-void

    .line 218
    :cond_3b
    :try_start_3b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 220
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_48} :catch_50

    move-result v4

    if-eqz v4, :cond_1e

    .line 222
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    .line 223
    goto :goto_1e

    .line 234
    :catch_50
    move-exception v0

    .line 236
    :try_start_51
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_30

    .line 243
    :catch_55
    move-exception v0

    .line 245
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3a
.end method

.method private registerGames(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 334
    return-void
.end method

.method private removeCacheTask(ILjava/lang/String;)V
    .registers 3

    .prologue
    .line 479
    return-void
.end method

.method private removeTasks(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 494
    invoke-static {}, Lcom/duoku/platform/d/g;->b()Lcom/duoku/platform/d/c;

    move-result-object v0

    .line 495
    invoke-interface {v0, p1}, Lcom/duoku/platform/d/c;->a(Ljava/util/List;)V

    .line 496
    return-void
.end method

.method private requestDownloadedGames(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 459
    return-void
.end method

.method private saveTask(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 488
    invoke-static {}, Lcom/duoku/platform/d/g;->b()Lcom/duoku/platform/d/c;

    move-result-object v0

    .line 489
    invoke-interface {v0, p1, p2}, Lcom/duoku/platform/d/c;->a(ILjava/lang/String;)V

    .line 490
    return-void
.end method

.method private spliteTasks(Ljava/util/List;)Ljava/util/Map;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 508
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 544
    return-object v0
.end method

.method private submitGames(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 348
    return-void
.end method

.method private verifyGames(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    return-void
.end method


# virtual methods
.method public filterInstalledIfNecessary()V
    .registers 6

    .prologue
    .line 183
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    .line 184
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/util/q;->e(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    .line 185
    invoke-interface {v0}, Lcom/duoku/platform/d/a;->g()Ljava/util/List;

    move-result-object v3

    .line 186
    const/4 v0, 0x0

    move v1, v0

    :goto_12
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_19

    .line 195
    return-void

    .line 188
    :cond_19
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 190
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/duoku/platform/download/work/FutureTaskManager;->onPackageRemoved(Landroid/content/Context;Ljava/lang/String;)V

    .line 186
    :cond_3a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12
.end method

.method public filterPausedIfNecessary()V
    .registers 5

    .prologue
    .line 135
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/AppManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/AppManager;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/AppManager;->getAndCheckDownloadGames()Ljava/util/List;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_17

    .line 142
    invoke-direct {p0, v0}, Lcom/duoku/platform/download/work/FutureTaskManager;->checkStatus(Ljava/util/List;)V

    .line 144
    :cond_17
    if-eqz v0, :cond_23

    .line 145
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 154
    :cond_23
    invoke-static {}, Lcom/duoku/platform/download/utils/BackAppListener;->getInstance()Lcom/duoku/platform/download/utils/BackAppListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/BackAppListener;->onCreate()V

    .line 155
    return-void

    .line 145
    :cond_2b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 147
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getApkStatus()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1d

    .line 150
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/duoku/platform/download/utils/PackageHelper;->pauseDownloadGames(J)V

    goto :goto_1d
.end method

.method public registerGame(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 382
    return-void
.end method

.method public requestDownloadedGames()V
    .registers 1

    .prologue
    .line 439
    return-void
.end method

.method public submitGame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 4

    .prologue
    .line 422
    return-void
.end method

.method public submitIncompleteIfNecessary()V
    .registers 1

    .prologue
    .line 276
    return-void
.end method

.method public verifyGame(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 306
    return-void
.end method
