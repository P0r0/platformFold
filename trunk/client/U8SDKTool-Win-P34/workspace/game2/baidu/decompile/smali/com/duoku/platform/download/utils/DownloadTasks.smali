.class public Lcom/duoku/platform/download/utils/DownloadTasks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/download/utils/DownloadTasks$Error;
    }
.end annotation


# static fields
.field public static downloadTasks:Lcom/duoku/platform/download/utils/DownloadTasks;

.field public static mContext:Landroid/content/Context;


# instance fields
.field private mOpenDownloadReceiver:Lcom/duoku/platform/download/OpenDownloadReceiver;

.field private mPackageReceiver:Lcom/duoku/platform/download/utils/PackageReceiver;

.field threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method private checkSdcard()Ljava/lang/Runnable;
    .registers 4

    .prologue
    .line 441
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 442
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 444
    sget-object v0, Lcom/duoku/platform/download/utils/DownloadTasks;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/duoku/platform/download/utils/DownloadTasks;->mContext:Landroid/content/Context;

    const-string v2, "dk_sdcard_unmounted"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/CustomToast;->showToast(Ljava/lang/String;)V

    .line 473
    const/4 v0, 0x0

    :goto_1e
    return-object v0

    .line 448
    :cond_1f
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 449
    new-instance v0, Lcom/duoku/platform/download/utils/DownloadTasks$5;

    invoke-direct {v0, p0, v1}, Lcom/duoku/platform/download/utils/DownloadTasks$5;-><init>(Lcom/duoku/platform/download/utils/DownloadTasks;Landroid/os/Handler;)V

    goto :goto_1e
.end method

.method private doDownload(Lcom/duoku/platform/ui/entity/f;)V
    .registers 6

    .prologue
    .line 265
    if-nez p1, :cond_3

    .line 325
    :cond_2
    :goto_2
    return-void

    .line 269
    :cond_3
    if-eqz p1, :cond_2

    .line 272
    invoke-virtual {p0}, Lcom/duoku/platform/download/utils/DownloadTasks;->downloadCheck()Lcom/duoku/platform/download/utils/DownloadTasks$Error;

    move-result-object v0

    .line 273
    sget-object v1, Lcom/duoku/platform/download/utils/DownloadTasks$Error;->NONE:Lcom/duoku/platform/download/utils/DownloadTasks$Error;

    if-eq v1, v0, :cond_f

    .line 275
    sget-object v0, Lcom/duoku/platform/download/utils/DownloadTasks$Error;->NETWORK_NOT_WIFI:Lcom/duoku/platform/download/utils/DownloadTasks$Error;

    .line 288
    :cond_f
    new-instance v0, Lcom/duoku/platform/download/mode/DownloadItemInput;

    invoke-direct {v0}, Lcom/duoku/platform/download/mode/DownloadItemInput;-><init>()V

    .line 289
    invoke-virtual {p1}, Lcom/duoku/platform/ui/entity/f;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->setGameId(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p1}, Lcom/duoku/platform/ui/entity/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->setDownloadUrl(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1}, Lcom/duoku/platform/ui/entity/f;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->setDisplayName(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p1}, Lcom/duoku/platform/ui/entity/f;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->setPackageName(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p1}, Lcom/duoku/platform/ui/entity/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->setIconUrl(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p1}, Lcom/duoku/platform/ui/entity/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->setVersion(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p1}, Lcom/duoku/platform/ui/entity/f;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->setVersionInt(I)V

    .line 298
    :try_start_45
    invoke-virtual {p1}, Lcom/duoku/platform/ui/entity/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/duoku/platform/download/mode/DownloadItemInput;->setSize(J)V
    :try_end_50
    .catch Ljava/lang/NumberFormatException; {:try_start_45 .. :try_end_50} :catch_59

    .line 305
    :goto_50
    new-instance v1, Lcom/duoku/platform/download/utils/DownloadTasks$1;

    invoke-direct {v1, p0}, Lcom/duoku/platform/download/utils/DownloadTasks$1;-><init>(Lcom/duoku/platform/download/utils/DownloadTasks;)V

    invoke-static {v0, v1}, Lcom/duoku/platform/download/utils/PackageHelper;->download(Lcom/duoku/platform/download/mode/DownloadItemInput;Lcom/duoku/platform/download/listener/DownloadCallback;)V

    goto :goto_2

    .line 300
    :catch_59
    move-exception v1

    .line 302
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/duoku/platform/download/mode/DownloadItemInput;->setSize(J)V

    goto :goto_50
.end method

.method private filterInstalledTasks()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 400
    new-instance v0, Lcom/duoku/platform/download/utils/DownloadTasks$2;

    invoke-direct {v0, p0}, Lcom/duoku/platform/download/utils/DownloadTasks$2;-><init>(Lcom/duoku/platform/download/utils/DownloadTasks;)V

    return-object v0
.end method

.method private getBean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/duoku/platform/ui/entity/f;
    .registers 13

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/high16 v2, 0x44800000    # 1024.0f

    .line 110
    new-instance v0, Lcom/duoku/platform/ui/entity/f;

    invoke-direct {v0, p1, p2, p3}, Lcom/duoku/platform/ui/entity/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "KB"

    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_3c

    .line 113
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p4, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 115
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    .line 123
    :cond_33
    :goto_33
    invoke-virtual {v0, p4}, Lcom/duoku/platform/ui/entity/f;->b(Ljava/lang/String;)V

    .line 124
    iput-object p5, v0, Lcom/duoku/platform/ui/entity/f;->a:Ljava/lang/String;

    .line 125
    invoke-virtual {v0, p6}, Lcom/duoku/platform/ui/entity/f;->a(Ljava/lang/String;)V

    .line 126
    return-object v0

    .line 117
    :cond_3c
    const-string v1, "MB"

    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_33

    .line 119
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p4, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v1, v2

    .line 121
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_33
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/DownloadTasks;
    .registers 2

    .prologue
    .line 384
    sget-object v0, Lcom/duoku/platform/download/utils/DownloadTasks;->downloadTasks:Lcom/duoku/platform/download/utils/DownloadTasks;

    if-nez v0, :cond_10

    .line 387
    new-instance v0, Lcom/duoku/platform/download/utils/DownloadTasks;

    invoke-direct {v0}, Lcom/duoku/platform/download/utils/DownloadTasks;-><init>()V

    sput-object v0, Lcom/duoku/platform/download/utils/DownloadTasks;->downloadTasks:Lcom/duoku/platform/download/utils/DownloadTasks;

    .line 388
    sget-object v0, Lcom/duoku/platform/download/utils/DownloadTasks;->downloadTasks:Lcom/duoku/platform/download/utils/DownloadTasks;

    invoke-virtual {v0, p0}, Lcom/duoku/platform/download/utils/DownloadTasks;->onCreate(Landroid/content/Context;)V

    .line 390
    :cond_10
    sget-object v0, Lcom/duoku/platform/download/utils/DownloadTasks;->downloadTasks:Lcom/duoku/platform/download/utils/DownloadTasks;

    return-object v0
.end method

.method public static instance()Landroid/content/Context;
    .registers 1

    .prologue
    .line 478
    sget-object v0, Lcom/duoku/platform/download/utils/DownloadTasks;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private loadDataHandle(Lcom/duoku/platform/ui/entity/f;)Lcom/duoku/platform/ui/entity/f;
    .registers 3

    .prologue
    .line 161
    .line 163
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/utils/DownloadTasks;->getDetails(Lcom/duoku/platform/ui/entity/f;)Lcom/duoku/platform/download/PackageMode;

    move-result-object v0

    iput-object v0, p1, Lcom/duoku/platform/ui/entity/f;->c:Lcom/duoku/platform/download/PackageMode;

    .line 164
    return-object p1
.end method

.method private onActionClick(Lcom/duoku/platform/ui/entity/f;)V
    .registers 4

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/utils/DownloadTasks;->loadDataHandle(Lcom/duoku/platform/ui/entity/f;)Lcom/duoku/platform/ui/entity/f;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_f

    .line 191
    iget-object v1, v0, Lcom/duoku/platform/ui/entity/f;->c:Lcom/duoku/platform/download/PackageMode;

    .line 193
    if-eqz v1, :cond_f

    .line 195
    iget v1, v1, Lcom/duoku/platform/download/PackageMode;->status:I

    sparse-switch v1, :sswitch_data_14

    .line 256
    :cond_f
    :goto_f
    :sswitch_f
    return-void

    .line 200
    :sswitch_10
    invoke-direct {p0, v0}, Lcom/duoku/platform/download/utils/DownloadTasks;->doDownload(Lcom/duoku/platform/ui/entity/f;)V

    goto :goto_f

    .line 195
    :sswitch_data_14
    .sparse-switch
        0x0 -> :sswitch_10
        0x4 -> :sswitch_f
        0x8 -> :sswitch_f
        0x10 -> :sswitch_f
        0x20 -> :sswitch_f
        0x40 -> :sswitch_f
        0x800 -> :sswitch_f
        0x1000 -> :sswitch_f
        0x2000 -> :sswitch_f
        0x4000 -> :sswitch_f
        0x80000 -> :sswitch_f
    .end sparse-switch
.end method

.method private submitIncompletedTasks()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 429
    new-instance v0, Lcom/duoku/platform/download/utils/DownloadTasks$4;

    invoke-direct {v0, p0}, Lcom/duoku/platform/download/utils/DownloadTasks$4;-><init>(Lcom/duoku/platform/download/utils/DownloadTasks;)V

    return-object v0
.end method

.method private submitPausedTasks()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 417
    new-instance v0, Lcom/duoku/platform/download/utils/DownloadTasks$3;

    invoke-direct {v0, p0}, Lcom/duoku/platform/download/utils/DownloadTasks$3;-><init>(Lcom/duoku/platform/download/utils/DownloadTasks;)V

    return-object v0
.end method


# virtual methods
.method public OnDestory()V
    .registers 3

    .prologue
    .line 94
    sget-object v0, Lcom/duoku/platform/download/utils/DownloadTasks;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/download/utils/DownloadTasks;->mPackageReceiver:Lcom/duoku/platform/download/utils/PackageReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 95
    sget-object v0, Lcom/duoku/platform/download/utils/DownloadTasks;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/download/utils/DownloadTasks;->mOpenDownloadReceiver:Lcom/duoku/platform/download/OpenDownloadReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 96
    return-void
.end method

.method public downloadCheck()Lcom/duoku/platform/download/utils/DownloadTasks$Error;
    .registers 5

    .prologue
    .line 329
    sget-object v0, Lcom/duoku/platform/download/utils/DownloadTasks$Error;->INVALID:Lcom/duoku/platform/download/utils/DownloadTasks$Error;

    .line 332
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 334
    sget-object v0, Lcom/duoku/platform/download/utils/DownloadTasks$Error;->SD_UNMOUNTED:Lcom/duoku/platform/download/utils/DownloadTasks$Error;

    .line 335
    sget-object v1, Lcom/duoku/platform/download/utils/DownloadTasks;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/duoku/platform/download/utils/DownloadTasks;->mContext:Landroid/content/Context;

    const-string v3, "dk_sdcard_unmounted"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/download/utils/CustomToast;->showToast(Ljava/lang/String;)V

    .line 362
    :goto_21
    return-object v0

    .line 340
    :cond_22
    invoke-static {}, Lcom/duoku/platform/g/b;->b()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 344
    invoke-static {}, Lcom/duoku/platform/g/b;->d()Z

    move-result v0

    if-nez v0, :cond_56

    .line 347
    sget-object v0, Lcom/duoku/platform/download/utils/DownloadTasks$Error;->NONE:Lcom/duoku/platform/download/utils/DownloadTasks$Error;

    .line 348
    sget-object v1, Lcom/duoku/platform/download/utils/DownloadTasks;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/duoku/platform/download/utils/DownloadTasks;->mContext:Landroid/content/Context;

    const-string v3, "dk_network_non_wifi"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/download/utils/CustomToast;->showToast(Ljava/lang/String;)V

    goto :goto_21

    .line 357
    :cond_42
    sget-object v0, Lcom/duoku/platform/download/utils/DownloadTasks$Error;->NETWORK_NOT_CONNECTED:Lcom/duoku/platform/download/utils/DownloadTasks$Error;

    .line 358
    sget-object v1, Lcom/duoku/platform/download/utils/DownloadTasks;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/duoku/platform/download/utils/DownloadTasks;->mContext:Landroid/content/Context;

    const-string v3, "dk_alert_network_inavailble"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/download/utils/CustomToast;->showToast(Ljava/lang/String;)V

    goto :goto_21

    .line 362
    :cond_56
    sget-object v0, Lcom/duoku/platform/download/utils/DownloadTasks$Error;->NONE:Lcom/duoku/platform/download/utils/DownloadTasks$Error;

    goto :goto_21
.end method

.method public executeRunnable(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 483
    iget-object v0, p0, Lcom/duoku/platform/download/utils/DownloadTasks;->threadPool:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_a

    .line 485
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/download/utils/DownloadTasks;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 488
    :cond_a
    if-eqz p1, :cond_11

    .line 490
    iget-object v0, p0, Lcom/duoku/platform/download/utils/DownloadTasks;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 492
    :cond_11
    return-void
.end method

.method protected getDetails(Lcom/duoku/platform/ui/entity/f;)Lcom/duoku/platform/download/PackageMode;
    .registers 4

    .prologue
    .line 175
    new-instance v0, Lcom/duoku/platform/download/mode/QueryInput;

    invoke-direct {v0}, Lcom/duoku/platform/download/mode/QueryInput;-><init>()V

    .line 177
    invoke-virtual {p1}, Lcom/duoku/platform/ui/entity/f;->getGameId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duoku/platform/download/mode/QueryInput;->gameId:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Lcom/duoku/platform/ui/entity/f;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duoku/platform/download/mode/QueryInput;->packageName:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Lcom/duoku/platform/ui/entity/f;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duoku/platform/download/mode/QueryInput;->version:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Lcom/duoku/platform/ui/entity/f;->e()I

    move-result v1

    iput v1, v0, Lcom/duoku/platform/download/mode/QueryInput;->versionCode:I

    .line 181
    invoke-virtual {p1}, Lcom/duoku/platform/ui/entity/f;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duoku/platform/download/mode/QueryInput;->downloadUrl:Ljava/lang/String;

    .line 182
    iput-object v0, p1, Lcom/duoku/platform/ui/entity/f;->d:Lcom/duoku/platform/download/mode/QueryInput;

    .line 183
    iget-object v0, p1, Lcom/duoku/platform/ui/entity/f;->d:Lcom/duoku/platform/download/mode/QueryInput;

    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->queryPackageStatus(Lcom/duoku/platform/download/mode/QueryInput;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/duoku/platform/ui/entity/f;->d:Lcom/duoku/platform/download/mode/QueryInput;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/PackageMode;

    return-object v0
.end method

.method public getGameCounts()I
    .registers 2

    .prologue
    .line 134
    sget-object v0, Lcom/duoku/platform/download/utils/DownloadTasks;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/download/utils/AppManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/AppManager;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/AppManager;->getGameCounts()I

    move-result v0

    .line 136
    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 56
    sput-object p1, Lcom/duoku/platform/download/utils/DownloadTasks;->mContext:Landroid/content/Context;

    .line 57
    sget-object v0, Lcom/duoku/platform/download/utils/DownloadTasks;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/download/utils/AppUtil;->init(Landroid/content/Context;)V

    .line 58
    invoke-static {}, Lcom/duoku/platform/download/utils/PackageHelper;->addDownloadProgressListener()V

    .line 59
    invoke-direct {p0}, Lcom/duoku/platform/download/utils/DownloadTasks;->submitPausedTasks()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/download/utils/DownloadTasks;->executeRunnable(Ljava/lang/Runnable;)V

    .line 60
    invoke-static {}, Lcom/duoku/platform/download/utils/AppCache;->getInstance()Lcom/duoku/platform/download/utils/AppCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/AppCache;->onCreate()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/download/utils/DownloadTasks;->executeRunnable(Ljava/lang/Runnable;)V

    .line 61
    invoke-direct {p0}, Lcom/duoku/platform/download/utils/DownloadTasks;->checkSdcard()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/download/utils/DownloadTasks;->executeRunnable(Ljava/lang/Runnable;)V

    .line 62
    invoke-direct {p0}, Lcom/duoku/platform/download/utils/DownloadTasks;->submitIncompletedTasks()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/download/utils/DownloadTasks;->executeRunnable(Ljava/lang/Runnable;)V

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 65
    new-instance v1, Lcom/duoku/platform/download/utils/PackageReceiver;

    invoke-direct {v1}, Lcom/duoku/platform/download/utils/PackageReceiver;-><init>()V

    iput-object v1, p0, Lcom/duoku/platform/download/utils/DownloadTasks;->mPackageReceiver:Lcom/duoku/platform/download/utils/PackageReceiver;

    .line 66
    sget-object v1, Lcom/duoku/platform/download/DownloadManager;->ACTION_DOWNLOAD_START:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    sget-object v1, Lcom/duoku/platform/download/DownloadManager;->ACTION_DOWNLOAD_COMPLETE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    sget-object v1, Lcom/duoku/platform/download/DownloadManager;->ACTION_DOWNLOAD_CANCLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    sget-object v1, Lcom/duoku/platform/download/DownloadManager;->ACTION_DOWNLOAD_PAUSE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    sget-object v1, Lcom/duoku/platform/download/DownloadManager;->ACTION_DOWNLOAD_PAUSE_BY_USER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    sget-object v1, Lcom/duoku/platform/download/DownloadManager;->ACTION_DOWNLOAD_RUNNING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    sget-object v1, Lcom/duoku/platform/download/utils/DownloadTasks;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/download/utils/DownloadTasks;->mPackageReceiver:Lcom/duoku/platform/download/utils/PackageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    new-instance v0, Lcom/duoku/platform/download/OpenDownloadReceiver;

    invoke-direct {v0}, Lcom/duoku/platform/download/OpenDownloadReceiver;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/download/utils/DownloadTasks;->mOpenDownloadReceiver:Lcom/duoku/platform/download/OpenDownloadReceiver;

    .line 76
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 77
    sget-object v0, Lcom/duoku/platform/download/Downloads;->ACTION_NOTIFICATION_CLICKED:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    :try_start_6c
    const-string v0, "vnd.android.cursor.item/download"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_71
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_6c .. :try_end_71} :catch_7e

    .line 86
    :goto_71
    const-string v0, "content"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/duoku/platform/download/utils/DownloadTasks;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/download/utils/DownloadTasks;->mOpenDownloadReceiver:Lcom/duoku/platform/download/OpenDownloadReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    return-void

    .line 82
    :catch_7e
    move-exception v0

    .line 84
    invoke-virtual {v0}, Landroid/content/IntentFilter$MalformedMimeTypeException;->printStackTrace()V

    goto :goto_71
.end method

.method public startDownloadGame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 144
    invoke-static {p1}, Lcom/duoku/platform/download/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {p2}, Lcom/duoku/platform/download/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {p3}, Lcom/duoku/platform/download/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {p4}, Lcom/duoku/platform/download/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {p5}, Lcom/duoku/platform/download/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 145
    invoke-static {p6}, Lcom/duoku/platform/download/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 154
    :cond_24
    :goto_24
    return-void

    .line 149
    :cond_25
    invoke-direct/range {p0 .. p6}, Lcom/duoku/platform/download/utils/DownloadTasks;->getBean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/duoku/platform/ui/entity/f;

    move-result-object v0

    .line 150
    invoke-direct {p0, v0}, Lcom/duoku/platform/download/utils/DownloadTasks;->onActionClick(Lcom/duoku/platform/ui/entity/f;)V

    .line 152
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "36"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/download/utils/DownloadTasks;->mContext:Landroid/content/Context;

    const-string v2, "cp_download_start"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_24
.end method

.method public startDownloadManagerActivity(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 376
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "35"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 377
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "cp_download_manager"

    invoke-virtual {v0, p1, v1}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 378
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/duoku/platform/ui/DKDownloadManagerActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 379
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 380
    return-void
.end method
