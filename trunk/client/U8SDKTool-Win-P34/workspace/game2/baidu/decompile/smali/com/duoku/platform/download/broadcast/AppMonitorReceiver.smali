.class public Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field static netType:I


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const/4 v0, -0x1

    sput v0, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->netType:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 351
    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->onPackageAdded(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2(Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 454
    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->onPackageRemoved(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3(Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 341
    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->onPackageReplaced(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private checkAnother(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 414
    iget-object v0, p0, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/download/utils/AppManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/AppManager;

    move-result-object v3

    .line 415
    invoke-virtual {v3}, Lcom/duoku/platform/download/utils/AppManager;->getAndCheckDownloadGames()Ljava/util/List;

    move-result-object v2

    .line 416
    if-eqz v2, :cond_22

    .line 418
    const/4 v1, 0x0

    .line 419
    const/4 v0, 0x0

    .line 420
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    move-object v1, v0

    :cond_14
    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_23

    .line 428
    const/4 v0, 0x1

    if-ne v2, v0, :cond_22

    if-eqz v1, :cond_22

    .line 444
    invoke-virtual {v3, p1}, Lcom/duoku/platform/download/utils/AppManager;->removeDownloadRecordIfNecessary(Ljava/lang/String;)V

    .line 451
    :cond_22
    return-void

    .line 420
    :cond_23
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 422
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 424
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    .line 425
    goto :goto_14
.end method

.method private initIfNessary()V
    .registers 3

    .prologue
    .line 263
    new-instance v0, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$1;

    invoke-direct {v0, p0}, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$1;-><init>(Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 284
    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 285
    return-void
.end method

.method private isApkReplaced(Landroid/content/Intent;)Z
    .registers 4

    .prologue
    .line 571
    const-string v0, "android.intent.extra.REPLACING"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 594
    return v0
.end method

.method private notifyForFileMissed(Lcom/duoku/platform/download/mode/DownloadAppInfo;)V
    .registers 18

    .prologue
    .line 556
    new-instance v0, Lcom/duoku/platform/download/mode/QueryInput;

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getVersionInt()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/duoku/platform/download/mode/QueryInput;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->queryPackageStatus(Lcom/duoku/platform/download/mode/QueryInput;)Ljava/util/Map;

    move-result-object v1

    .line 559
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/PackageMode;

    .line 561
    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getSaveDest()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getVersionInt()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v8

    .line 562
    iget v10, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    const/4 v11, 0x0

    const-wide/16 v12, -0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 561
    invoke-static/range {v1 .. v13}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 567
    return-void
.end method

.method private onPackageAdded(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .prologue
    .line 355
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 357
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/duoku/platform/download/utils/AppUtil;->isSystemPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 358
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 409
    :cond_18
    :goto_18
    return-void

    .line 362
    :cond_19
    invoke-static {p1}, Lcom/duoku/platform/download/utils/AppManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/AppManager;

    move-result-object v1

    .line 364
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/duoku/platform/download/utils/AppUtil;->loadAppInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/duoku/platform/download/mode/InstalledAppInfo;

    move-result-object v2

    .line 366
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    if-eqz v2, :cond_18

    .line 368
    invoke-virtual {v1, v2}, Lcom/duoku/platform/download/utils/AppManager;->addInstalledAppRecord(Lcom/duoku/platform/download/mode/InstalledAppInfo;)Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 386
    invoke-direct {p0, v0}, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->checkAnother(Ljava/lang/String;)V

    .line 392
    invoke-static {}, Lcom/duoku/platform/download/utils/AppCache;->getInstance()Lcom/duoku/platform/download/utils/AppCache;

    move-result-object v0

    .line 393
    invoke-virtual {v0, p1}, Lcom/duoku/platform/download/utils/AppCache;->refreshDownload(Landroid/content/Context;)V

    .line 394
    invoke-virtual {v0, p1}, Lcom/duoku/platform/download/utils/AppCache;->refreshInstall(Landroid/content/Context;)V

    .line 396
    invoke-virtual {v0, p1}, Lcom/duoku/platform/download/utils/AppCache;->refreshUpdatable(Landroid/content/Context;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_45

    goto :goto_18

    .line 405
    :catch_45
    move-exception v0

    .line 407
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method

.method private onPackageRemoved(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 458
    :try_start_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 459
    invoke-static {p1}, Lcom/duoku/platform/download/utils/AppManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/AppManager;

    move-result-object v0

    .line 460
    invoke-virtual {v0, v5}, Lcom/duoku/platform/download/utils/AppManager;->removeInstallAppRecord(Ljava/lang/String;)Lcom/duoku/platform/download/mode/InstalledAppInfo;

    move-result-object v1

    .line 464
    invoke-virtual {v0, v5}, Lcom/duoku/platform/download/utils/AppManager;->updateDownloadRecordIfNecessary(Ljava/lang/String;)V

    .line 465
    if-eqz v1, :cond_1a

    .line 467
    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/utils/AppManager;->notifyForAppRemoved(Lcom/duoku/platform/download/mode/InstalledAppInfo;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_88

    .line 471
    :cond_1a
    :try_start_1a
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/AppManager;->getAndCheckDownloadGames()Ljava/util/List;

    move-result-object v1

    .line 472
    if-eqz v1, :cond_38

    .line 475
    const/4 v0, 0x0

    .line 476
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v0

    move v4, v2

    :cond_27
    :goto_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_43

    .line 509
    if-ne v4, v3, :cond_38

    if-eqz v1, :cond_38

    .line 511
    invoke-static {}, Lcom/duoku/platform/download/utils/BackAppListener;->getInstance()Lcom/duoku/platform/download/utils/BackAppListener;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/utils/BackAppListener;->cancleNotification(Lcom/duoku/platform/download/mode/DownloadAppInfo;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_38} :catch_83

    .line 522
    :cond_38
    :goto_38
    :try_start_38
    invoke-static {}, Lcom/duoku/platform/download/utils/AppCache;->getInstance()Lcom/duoku/platform/download/utils/AppCache;

    move-result-object v0

    .line 523
    invoke-virtual {v0, p1}, Lcom/duoku/platform/download/utils/AppCache;->refreshDownload(Landroid/content/Context;)V

    .line 524
    invoke-virtual {v0, p1}, Lcom/duoku/platform/download/utils/AppCache;->refreshInstall(Landroid/content/Context;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_42} :catch_88

    .line 531
    :goto_42
    return-void

    .line 476
    :cond_43
    :try_start_43
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 478
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 488
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getSaveDest()Ljava/lang/String;

    move-result-object v1

    .line 489
    if-nez v1, :cond_64

    move v1, v3

    .line 503
    :goto_5a
    if-eqz v1, :cond_5f

    .line 504
    invoke-direct {p0, v0}, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->removeApp(Lcom/duoku/platform/download/mode/DownloadAppInfo;)V

    .line 505
    :cond_5f
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move-object v1, v0

    .line 506
    goto :goto_27

    .line 495
    :cond_64
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getStatus()Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    move-result-object v7

    .line 496
    sget-object v8, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_SUCCESSFUL:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    if-ne v7, v8, :cond_8d

    .line 498
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 499
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 500
    invoke-virtual {v7}, Ljava/io/File;->exists()Z
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_7c} :catch_83

    move-result v1

    if-eqz v1, :cond_81

    move v1, v2

    goto :goto_5a

    :cond_81
    move v1, v3

    goto :goto_5a

    .line 517
    :catch_83
    move-exception v0

    .line 519
    :try_start_84
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_38

    .line 526
    :catch_88
    move-exception v0

    .line 528
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_42

    :cond_8d
    move v1, v2

    goto :goto_5a
.end method

.method private onPackageReplaced(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 343
    return-void
.end method

.method private queryDownload(Landroid/content/Intent;)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;
    .registers 8

    .prologue
    .line 242
    :try_start_0
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    const-string v1, "title"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 244
    const-string v1, "id"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 245
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2c

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 247
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/duoku/platform/download/DownloadUtil;->getDownloadInfo(Landroid/content/Context;J)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_28

    move-result-object v0

    .line 256
    :goto_27
    return-object v0

    .line 251
    :catch_28
    move-exception v0

    .line 253
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 256
    :cond_2c
    const/4 v0, 0x0

    goto :goto_27
.end method

.method private removeApp(Lcom/duoku/platform/download/mode/DownloadAppInfo;)V
    .registers 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 540
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    .line 541
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1d

    .line 543
    iget-object v1, p0, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->mContext:Landroid/content/Context;

    new-array v2, v6, [J

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v4

    aput-wide v4, v2, v7

    invoke-static {v1, v6, v2}, Lcom/duoku/platform/download/DownloadUtil;->removeDownload(Landroid/content/Context;Z[J)I

    .line 546
    :cond_1d
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v2

    .line 545
    invoke-interface {v0, v6, v2, v3}, Lcom/duoku/platform/d/a;->a(ZJ)V

    .line 547
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/BroadcaseSender;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/BroadcaseSender;

    move-result-object v0

    .line 548
    new-array v1, v6, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v7, v1}, Lcom/duoku/platform/download/utils/BroadcaseSender;->notifyDownloadChanged(Z[Ljava/lang/String;)V

    .line 550
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/duoku/platform/download/utils/PackageHelper;->removeMergeGame(Ljava/lang/String;Ljava/lang/String;J)V

    .line 551
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->notifyForFileMissed(Lcom/duoku/platform/download/mode/DownloadAppInfo;)V

    .line 552
    return-void
.end method

.method private submitIncompleteTasks()V
    .registers 2

    .prologue
    .line 293
    new-instance v0, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$2;

    invoke-direct {v0, p0}, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$2;-><init>(Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;)V

    .line 300
    invoke-virtual {v0}, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$2;->start()V

    .line 301
    return-void
.end method

.method private updateDataIfNecessary(Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 312
    new-instance v0, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$3;

    invoke-direct {v0, p0, p1}, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$3;-><init>(Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;Landroid/content/Intent;)V

    .line 338
    invoke-virtual {v0}, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$3;->start()V

    .line 339
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 57
    :try_start_1
    iput-object p1, p0, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 61
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 66
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 68
    const-string v0, "dk_sdcard_unmounted"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/CustomToast;->showToast(Ljava/lang/String;)V

    .line 139
    :cond_24
    :goto_24
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_3c

    .line 140
    const-string v0, "MyReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received broadcast intent for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_3c
    :goto_3c
    return-void

    .line 71
    :cond_3d
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 74
    invoke-static {p1}, Lcom/duoku/platform/download/utils/DeviceUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 77
    invoke-direct {p0}, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->submitIncompleteTasks()V

    .line 79
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->checkClientUpdate()V

    .line 82
    :cond_51
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 84
    if-eqz v0, :cond_24

    .line 86
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 88
    if-nez v0, :cond_71

    .line 90
    const-string v0, "dk_alert_network_inavailble"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/CustomToast;->showToast(Ljava/lang/String;)V

    goto :goto_24

    .line 143
    :catch_6f
    move-exception v0

    goto :goto_3c

    .line 94
    :cond_71
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 96
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-eq v2, v3, :cond_94

    .line 101
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->isAppForeground()Z

    move-result v2

    if-eqz v2, :cond_94

    sget v2, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->netType:I

    if-ne v2, v3, :cond_94

    .line 103
    const-string v2, "dk_network_changed_to_mobile"

    invoke-static {p1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/download/utils/CustomToast;->showToast(Ljava/lang/String;)V

    .line 106
    :cond_94
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    sput v0, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->netType:I

    goto :goto_24

    .line 112
    :cond_9b
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 114
    :cond_b3
    invoke-direct {p0, p2}, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->updateDataIfNecessary(Landroid/content/Intent;)V

    .line 115
    invoke-static {p1}, Lcom/duoku/platform/download/utils/BroadcaseSender;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/BroadcaseSender;

    move-result-object v0

    .line 116
    invoke-virtual {v0, p2}, Lcom/duoku/platform/download/utils/BroadcaseSender;->sendPreBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_24

    .line 118
    :cond_bf
    sget-object v0, Lcom/duoku/platform/download/utils/BroadcaseSender;->ACTION_DOWNLOAD_COMPLETE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 122
    sget-object v0, Lcom/duoku/platform/download/utils/BroadcaseSender;->ACTION_DOWNLOAD_PAUSE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 126
    sget-object v0, Lcom/duoku/platform/download/utils/BroadcaseSender;->ACTION_DOWNLOAD_PAUSE_BY_USER:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 130
    sget-object v0, Lcom/duoku/platform/download/utils/BroadcaseSender;->ACTION_DOWNLOAD_START:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 134
    sget-object v0, Lcom/duoku/platform/download/utils/BroadcaseSender;->ACTION_DOWNLOAD_CANCLE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e4} :catch_6f

    goto/16 :goto_24
.end method
