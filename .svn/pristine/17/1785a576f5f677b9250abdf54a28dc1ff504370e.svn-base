.class public Lcom/duoku/platform/download/utils/BackAppListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/download/DownloadConfiguration$DownloadListener;
.implements Lcom/duoku/platform/download/utils/AppSilentInstaller$PackageInstallerCallback;


# static fields
.field private static synthetic $SWITCH_TABLE$com$duoku$platform$download$utils$AppSilentInstaller$InstallStatus:[I = null

.field static final DIFF_SIGN:I = -0x64

.field static INSTANCE:Lcom/duoku/platform/download/utils/BackAppListener; = null

.field private static final TAG:Ljava/lang/String; = "BackAppListener"


# instance fields
.field context:Landroid/content/Context;

.field handler:Landroid/os/Handler;

.field notificaionReceiver:Lcom/duoku/platform/download/broadcast/NotificaionReceiver;

.field notifiedIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$duoku$platform$download$utils$AppSilentInstaller$InstallStatus()[I
    .registers 3

    .prologue
    .line 45
    sget-object v0, Lcom/duoku/platform/download/utils/BackAppListener;->$SWITCH_TABLE$com$duoku$platform$download$utils$AppSilentInstaller$InstallStatus:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->values()[Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->INSTALLED:Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    invoke-virtual {v1}, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_44

    :goto_15
    :try_start_15
    sget-object v1, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->INSTALLING:Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    invoke-virtual {v1}, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_42

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->INSTALL_ERROR:Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    invoke-virtual {v1}, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_40

    :goto_27
    :try_start_27
    sget-object v1, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->UNINSTALLED:Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    invoke-virtual {v1}, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_3e

    :goto_30
    :try_start_30
    sget-object v1, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->UNINSTALLING:Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    invoke-virtual {v1}, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_3c

    :goto_39
    sput-object v0, Lcom/duoku/platform/download/utils/BackAppListener;->$SWITCH_TABLE$com$duoku$platform$download$utils$AppSilentInstaller$InstallStatus:[I

    goto :goto_4

    :catch_3c
    move-exception v1

    goto :goto_39

    :catch_3e
    move-exception v1

    goto :goto_30

    :catch_40
    move-exception v1

    goto :goto_27

    :catch_42
    move-exception v1

    goto :goto_1e

    :catch_44
    move-exception v1

    goto :goto_15
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/download/utils/BackAppListener;->notifiedIds:Ljava/util/Set;

    .line 903
    new-instance v0, Lcom/duoku/platform/download/utils/BackAppListener$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/duoku/platform/download/utils/BackAppListener$1;-><init>(Lcom/duoku/platform/download/utils/BackAppListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/duoku/platform/download/utils/BackAppListener;->handler:Landroid/os/Handler;

    .line 54
    iput-object p1, p0, Lcom/duoku/platform/download/utils/BackAppListener;->context:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lcom/duoku/platform/download/utils/BackAppListener;->notifiedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/duoku/platform/download/utils/BackAppListener;I)V
    .registers 2

    .prologue
    .line 870
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/utils/BackAppListener;->parseError(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/duoku/platform/download/utils/BackAppListener;Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/Class;)V
    .registers 8

    .prologue
    .line 201
    invoke-direct/range {p0 .. p7}, Lcom/duoku/platform/download/utils/BackAppListener;->showNotification(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/Class;)V

    return-void
.end method

.method private addListener()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 98
    return-void
.end method

.method private checkAuto()Z
    .registers 2

    .prologue
    .line 375
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->isInstallAutomaticllyAfterDownloading()Z

    move-result v0

    return v0
.end method

.method private checkTip()Z
    .registers 2

    .prologue
    .line 385
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->isShowInstallTipAfterDownloading()Z

    move-result v0

    return v0
.end method

.method private extraAppData(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)Lcom/duoku/platform/download/PackageMark;
    .registers 3

    .prologue
    .line 518
    invoke-virtual {p1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getAppData()Ljava/lang/String;

    move-result-object v0

    .line 519
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->getAppData(Ljava/lang/String;)Lcom/duoku/platform/download/PackageMark;

    move-result-object v0

    .line 520
    return-object v0
.end method

.method public static getInstance()Lcom/duoku/platform/download/utils/BackAppListener;
    .registers 2

    .prologue
    .line 63
    sget-object v0, Lcom/duoku/platform/download/utils/BackAppListener;->INSTANCE:Lcom/duoku/platform/download/utils/BackAppListener;

    if-nez v0, :cond_f

    .line 65
    new-instance v0, Lcom/duoku/platform/download/utils/BackAppListener;

    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/duoku/platform/download/utils/BackAppListener;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duoku/platform/download/utils/BackAppListener;->INSTANCE:Lcom/duoku/platform/download/utils/BackAppListener;

    .line 67
    :cond_f
    sget-object v0, Lcom/duoku/platform/download/utils/BackAppListener;->INSTANCE:Lcom/duoku/platform/download/utils/BackAppListener;

    return-object v0
.end method

.method private handleInstalledEvent(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 917
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/BroadcaseSender;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/BroadcaseSender;

    move-result-object v0

    .line 918
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/duoku/platform/download/utils/BroadcaseSender;->sendPreBroadcastForPackageEvent(ZLjava/lang/String;)V

    .line 943
    return-void
.end method

.method private markInstallStatus(Lcom/duoku/platform/download/mode/InstallPacket;)V
    .registers 3

    .prologue
    .line 745
    new-instance v0, Lcom/duoku/platform/download/utils/BackAppListener$3;

    invoke-direct {v0, p0, p1}, Lcom/duoku/platform/download/utils/BackAppListener$3;-><init>(Lcom/duoku/platform/download/utils/BackAppListener;Lcom/duoku/platform/download/mode/InstallPacket;)V

    invoke-static {v0}, Lcom/duoku/platform/download/work/DBTaskManager;->submitTask(Ljava/lang/Runnable;)V

    .line 825
    return-void
.end method

.method private notifyDownloadFinished(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V
    .registers 2

    .prologue
    .line 651
    return-void
.end method

.method private notifyForCheck(Lcom/duoku/platform/download/PackageMode;)V
    .registers 6

    .prologue
    const/high16 v3, 0x40000

    .line 566
    const-string v0, "BackAppListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifyForCheck "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iput v3, p1, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 568
    invoke-static {p1}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V

    .line 569
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/AppManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/AppManager;

    move-result-object v0

    .line 570
    iget-object v1, p1, Lcom/duoku/platform/download/PackageMode;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/duoku/platform/download/utils/AppManager;->saveCheckStatus(Ljava/lang/String;I)V

    .line 571
    return-void
.end method

.method private notifyForChecked(Lcom/duoku/platform/download/PackageMode;)V
    .registers 6

    .prologue
    const/high16 v3, 0x80000

    .line 580
    const-string v0, "BackAppListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifyForChecked "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iput v3, p1, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 583
    invoke-static {p1}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V

    .line 584
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/AppManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/AppManager;

    move-result-object v0

    .line 585
    iget-object v1, p1, Lcom/duoku/platform/download/PackageMode;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/duoku/platform/download/utils/AppManager;->saveCheckStatus(Ljava/lang/String;I)V

    .line 587
    return-void
.end method

.method private notifyForCheckedWithStatus(Lcom/duoku/platform/download/PackageMode;I)V
    .registers 6

    .prologue
    .line 597
    const-string v0, "BackAppListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifyForChecked "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const/high16 v0, 0x80000

    iput v0, p1, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 600
    invoke-static {p1}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V

    .line 601
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/AppManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/AppManager;

    move-result-object v0

    .line 602
    iget-object v1, p1, Lcom/duoku/platform/download/PackageMode;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/duoku/platform/download/utils/AppManager;->saveCheckStatus(Ljava/lang/String;I)V

    .line 604
    return-void
.end method

.method private notifyInstall(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V
    .registers 7

    .prologue
    .line 656
    invoke-virtual {p1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getAppData()Ljava/lang/String;

    move-result-object v0

    .line 657
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->getAppData(Ljava/lang/String;)Lcom/duoku/platform/download/PackageMark;

    move-result-object v1

    .line 658
    if-nez v1, :cond_12

    .line 660
    const-string v0, "BackAppListener"

    const-string v1, "Parse Mark data Error,cannot install"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_11
    :goto_11
    return-void

    .line 663
    :cond_12
    iget-object v1, v1, Lcom/duoku/platform/download/PackageMark;->packageName:Ljava/lang/String;

    .line 665
    invoke-direct {p0}, Lcom/duoku/platform/download/utils/BackAppListener;->checkAuto()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 667
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/duoku/platform/download/utils/AppUtil;->loadAppInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/duoku/platform/download/mode/InstalledAppInfo;

    move-result-object v0

    .line 668
    if-eqz v0, :cond_40

    .line 670
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_40

    .line 671
    const-string v0, "AppInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[notifyInstall]\u5df2\u7ecf\u5b89\u88c5 for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_40
    invoke-static {}, Lcom/duoku/platform/download/utils/AppSilentInstaller;->getInstnce()Lcom/duoku/platform/download/utils/AppSilentInstaller;

    move-result-object v0

    .line 675
    invoke-virtual {p1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getDest()Ljava/lang/String;

    move-result-object v2

    .line 676
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 678
    sget-boolean v2, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v2, :cond_67

    .line 679
    const-string v2, "AppInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[notifyInstall]\u9759\u9ed8\u5b89\u88c5 for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_67
    iget-object v1, p0, Lcom/duoku/platform/download/utils/BackAppListener;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p0}, Lcom/duoku/platform/download/utils/AppSilentInstaller;->sendInstallRequest(Landroid/content/Context;Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;Lcom/duoku/platform/download/utils/AppSilentInstaller$PackageInstallerCallback;)V

    goto :goto_11

    .line 684
    :cond_6d
    invoke-direct {p0}, Lcom/duoku/platform/download/utils/BackAppListener;->checkTip()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 686
    sget-boolean v1, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v1, :cond_8b

    .line 687
    const-string v1, "BackAppListener"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[notifyInstall]\u975e\u9759\u9ed8\u5b89\u88c5 tryAutoInstall for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_8b
    invoke-virtual {p1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getDest()Ljava/lang/String;

    move-result-object v0

    .line 689
    invoke-virtual {p0, v0}, Lcom/duoku/platform/download/utils/BackAppListener;->installAppNormal(Ljava/lang/String;)V

    .line 691
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "38"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 692
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/utils/BackAppListener;->context:Landroid/content/Context;

    const-string v2, "cp_download_downloaded"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_11
.end method

.method private parseError(I)V
    .registers 3

    .prologue
    .line 874
    sparse-switch p1, :sswitch_data_26

    .line 892
    :try_start_3
    const-string v0, "\u5b89\u88c5\u5931\u8d25"

    invoke-static {v0}, Lcom/duoku/platform/download/utils/CustomToast;->showToast(Ljava/lang/String;)V

    .line 900
    :goto_8
    :sswitch_8
    return-void

    .line 878
    :sswitch_9
    const-string v0, "\u6b64\u6e38\u620f\u5df2\u7ecf\u5b89\u88c5"

    invoke-static {v0}, Lcom/duoku/platform/download/utils/CustomToast;->showToast(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_f

    goto :goto_8

    .line 896
    :catch_f
    move-exception v0

    .line 898
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 881
    :sswitch_14
    :try_start_14
    const-string v0, "\u60a8\u7684\u624b\u673a\u7a7a\u95f4\u4e0d\u8db3\uff0c\u65e0\u6cd5\u5b89\u88c5\u6b64\u6e38\u620f!"

    invoke-static {v0}, Lcom/duoku/platform/download/utils/CustomToast;->showToast(Ljava/lang/String;)V

    goto :goto_8

    .line 884
    :sswitch_1a
    const-string v0, "\u60a8\u7684\u624b\u673a\u7248\u672c\u8f83\u4f4e\uff0c\u65e0\u6cd5\u5b89\u88c5\u6b64\u6e38\u620f!"

    invoke-static {v0}, Lcom/duoku/platform/download/utils/CustomToast;->showToast(Ljava/lang/String;)V

    goto :goto_8

    .line 887
    :sswitch_20
    const-string v0, "\u60a8\u7684\u624b\u673a\u65e0\u6cd5\u5b89\u88c5\u6b64\u6e38\u620f!"

    invoke-static {v0}, Lcom/duoku/platform/download/utils/CustomToast;->showToast(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_25} :catch_f

    goto :goto_8

    .line 874
    :sswitch_data_26
    .sparse-switch
        -0x64 -> :sswitch_8
        -0x11 -> :sswitch_20
        -0xc -> :sswitch_1a
        -0x5 -> :sswitch_9
        -0x4 -> :sswitch_14
        -0x1 -> :sswitch_9
    .end sparse-switch
.end method

.method private registerNotificationReceiver(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 146
    iget-object v0, p0, Lcom/duoku/platform/download/utils/BackAppListener;->notificaionReceiver:Lcom/duoku/platform/download/broadcast/NotificaionReceiver;

    if-nez v0, :cond_1b

    .line 148
    new-instance v0, Lcom/duoku/platform/download/broadcast/NotificaionReceiver;

    invoke-direct {v0}, Lcom/duoku/platform/download/broadcast/NotificaionReceiver;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/download/utils/BackAppListener;->notificaionReceiver:Lcom/duoku/platform/download/broadcast/NotificaionReceiver;

    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "duoku.opensdk.intent.action.CANCLE_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getSender()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/download/utils/BackAppListener;->notificaionReceiver:Lcom/duoku/platform/download/broadcast/NotificaionReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    :cond_1b
    return-void
.end method

.method private removeListener()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 104
    return-void
.end method

.method public static showInstalledNotification(Landroid/content/Context;Lcom/duoku/platform/download/mode/DownloadAppInfo;)V
    .registers 13

    .prologue
    const/4 v3, 0x0

    .line 242
    .line 245
    const/4 v4, 0x0

    .line 246
    :try_start_2
    const-string v5, "\u5b89\u88c5\u6210\u529f"

    .line 249
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    .line 251
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v0

    const-string v1, "dk_ic_notification"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Landroid/app/Notification;->icon:I

    .line 259
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 262
    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 264
    const-string v2, ""

    .line 266
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f6

    move-object v0, v2

    move-object v1, v3

    .line 281
    :goto_33
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13f

    .line 284
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 285
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getExtra()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 289
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    :cond_5c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\u5b89\u88c5\u6210\u529f\uff0c\u70b9\u51fb\u542f\u52a8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    .line 295
    :goto_78
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 297
    invoke-virtual {v7, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 298
    const-string v0, "\u70b9\u51fb\u67e5\u770b\u6e38\u620f"

    .line 304
    :cond_85
    const-string v2, "notification_id"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v8

    invoke-virtual {v7, v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 306
    const/high16 v2, 0x34000000

    invoke-virtual {v7, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 308
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 309
    const-string v3, "com.duoku.game.helper.SORT_GAMES"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 312
    const-string v3, "realIntent"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 313
    const-string v3, "pkgName"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const/4 v1, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v6, Landroid/app/Notification;->when:J

    .line 318
    invoke-virtual {v6, p0, v5, v0, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 321
    new-instance v0, Landroid/content/Intent;

    const-string v1, "duoku.opensdk.intent.action.CANCLE_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    const-string v1, "notification_id"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 324
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v6, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 325
    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 333
    iget v0, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v6, Landroid/app/Notification;->flags:I

    .line 336
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 339
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_134

    .line 341
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 347
    :goto_f2
    invoke-virtual {v0, v1, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 355
    :goto_f5
    return-void

    .line 266
    :cond_f6
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 269
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 272
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 275
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]\u5b89\u88c5\u6210\u529f\uff0c\u70b9\u51fb\u542f\u52a8"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 277
    goto/16 :goto_33

    .line 345
    :cond_134
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_137} :catch_13a

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_f2

    .line 351
    :catch_13a
    move-exception v0

    .line 353
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f5

    :cond_13f
    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto/16 :goto_78
.end method

.method private showNotification(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/Class;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 203
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/utils/BackAppListener;->registerNotificationReceiver(Landroid/content/Context;)V

    .line 205
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 206
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v0

    const-string v2, "dk_ic_notification"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 211
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    const-string v2, "notification_id"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 213
    const/high16 v2, 0x34000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/app/Notification;->when:J

    .line 216
    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, p1, p4, p5, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 218
    new-instance v0, Landroid/content/Intent;

    const-string v2, "duoku.opensdk.intent.action.CANCLE_NOTIFICATION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    const-string v2, "notification_id"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 220
    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 221
    iput-object p4, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 223
    if-nez p6, :cond_5a

    .line 225
    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0xa

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 232
    :goto_4d
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 233
    long-to-int v2, p2

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 235
    return-void

    .line 229
    :cond_5a
    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v1, Landroid/app/Notification;->flags:I

    goto :goto_4d
.end method

.method private startDownloadService()V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 112
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 113
    iget-object v1, p0, Lcom/duoku/platform/download/utils/BackAppListener;->context:Landroid/content/Context;

    const-class v2, Lcom/duoku/platform/download/DownloadService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lcom/duoku/platform/download/utils/BackAppListener;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 115
    return-void
.end method

.method private submit(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V
    .registers 3

    .prologue
    .line 705
    new-instance v0, Lcom/duoku/platform/download/utils/BackAppListener$2;

    invoke-direct {v0, p0, p1}, Lcom/duoku/platform/download/utils/BackAppListener$2;-><init>(Lcom/duoku/platform/download/utils/BackAppListener;Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V

    invoke-static {v0}, Lcom/duoku/platform/download/work/DBTaskManager;->submitTask(Ljava/lang/Runnable;)V

    .line 741
    return-void
.end method

.method private unregisterNotificationReceiver(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 157
    iget-object v0, p0, Lcom/duoku/platform/download/utils/BackAppListener;->notificaionReceiver:Lcom/duoku/platform/download/broadcast/NotificaionReceiver;

    if-eqz v0, :cond_10

    .line 160
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getSender()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/utils/BackAppListener;->notificaionReceiver:Lcom/duoku/platform/download/broadcast/NotificaionReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/download/utils/BackAppListener;->notificaionReceiver:Lcom/duoku/platform/download/broadcast/NotificaionReceiver;

    .line 163
    :cond_10
    return-void
.end method

.method private updateData(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;ZLandroid/content/pm/PackageInfo;)Ljava/lang/String;
    .registers 16

    .prologue
    const/4 v11, 0x0

    .line 433
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/utils/BackAppListener;->extraAppData(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)Lcom/duoku/platform/download/PackageMark;

    move-result-object v0

    .line 434
    iget-object v5, v0, Lcom/duoku/platform/download/PackageMark;->packageName:Ljava/lang/String;

    .line 435
    iget-object v4, v0, Lcom/duoku/platform/download/PackageMark;->gameId:Ljava/lang/String;

    .line 436
    invoke-virtual {p1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getDest()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 438
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/download/utils/ApkUtil;->getPackageForFile(Ljava/lang/String;Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 439
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 440
    iget-object v7, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 441
    iget v8, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 443
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 445
    const-string v2, "BackAppListener"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "[checkApk]\u4e25\u91cd\u9519\u8bef\uff0capk\u4fe1\u606f\u4e0d\u4e00\u81f4"

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-static {v6, v7, v8, v4, p2}, Lcom/duoku/platform/download/utils/PackageHelper;->formDownloadAppData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 447
    invoke-virtual {p1, v2}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->setAppData(Ljava/lang/String;)V

    .line 453
    :cond_4a
    if-eqz p3, :cond_6e

    .line 457
    :try_start_4c
    invoke-static {v1}, Lcom/duoku/platform/download/utils/AppUtil;->getSignMd5(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_61

    move-result-object v10

    .line 468
    :goto_50
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/AppManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/AppManager;

    move-result-object v1

    .line 469
    invoke-virtual {p1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getDownloadId()J

    move-result-wide v2

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v11}, Lcom/duoku/platform/download/utils/AppManager;->updateDownloadRecord(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    .line 471
    return-object v10

    .line 459
    :catch_61
    move-exception v1

    .line 461
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 462
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/duoku/platform/download/utils/ApkUtil;->getApkSignatureByFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_50

    :cond_6e
    move-object v10, v11

    goto :goto_50
.end method


# virtual methods
.method public cancleNotification(Lcom/duoku/platform/download/mode/DownloadAppInfo;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 168
    if-nez p1, :cond_3

    .line 181
    :goto_2
    return-void

    .line 172
    :cond_3
    iget-object v0, p0, Lcom/duoku/platform/download/utils/BackAppListener;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 173
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 175
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_2

    .line 179
    :cond_1f
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_2
.end method

.method public cancleNotification(Ljava/lang/String;J)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/duoku/platform/download/utils/BackAppListener;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 187
    if-nez p1, :cond_11

    .line 189
    long-to-int v1, p2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 195
    :goto_10
    return-void

    .line 193
    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_10
.end method

.method public changeAutoInstall(Z)V
    .registers 2

    .prologue
    .line 82
    if-eqz p1, :cond_9

    .line 84
    invoke-direct {p0}, Lcom/duoku/platform/download/utils/BackAppListener;->startDownloadService()V

    .line 85
    invoke-direct {p0}, Lcom/duoku/platform/download/utils/BackAppListener;->addListener()V

    .line 92
    :goto_8
    return-void

    .line 90
    :cond_9
    invoke-direct {p0}, Lcom/duoku/platform/download/utils/BackAppListener;->removeListener()V

    goto :goto_8
.end method

.method public checkApkIdentical(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;ZLandroid/content/pm/PackageInfo;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 483
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/duoku/platform/download/utils/BackAppListener;->updateData(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;ZLandroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v1

    .line 484
    if-nez p3, :cond_8

    .line 505
    :cond_7
    :goto_7
    return v0

    .line 490
    :cond_8
    invoke-static {p3}, Lcom/duoku/platform/download/utils/AppUtil;->getSignMd5(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v2

    .line 491
    if-eqz v2, :cond_7

    .line 495
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_16

    move-result v1

    if-nez v1, :cond_7

    .line 505
    :goto_14
    const/4 v0, 0x0

    goto :goto_7

    .line 501
    :catch_16
    move-exception v0

    .line 503
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14
.end method

.method public checkApkValid(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)Z
    .registers 5

    .prologue
    .line 417
    :try_start_0
    invoke-virtual {p1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getDest()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/download/utils/ApkUtil;->getPackageForFile(Ljava/lang/String;Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_1a

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_32

    .line 420
    :cond_1a
    const-string v0, "BackAppListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[checkApk]\u4e25\u91cd\u9519\u8bef\uff0c\u65e0\u6cd5\u83b7\u53d6apk\u7684\u4fe1\u606f for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getDest()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_34

    .line 422
    :cond_32
    const/4 v0, 0x1

    .line 428
    :goto_33
    return v0

    .line 424
    :catch_34
    move-exception v0

    .line 428
    const/4 v0, 0x0

    goto :goto_33
.end method

.method installAppNormal(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 390
    invoke-static {p1}, Lcom/duoku/platform/download/utils/PackageHelper;->installDirectly(Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public notifyAndSubmitForDiffUpdate(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;Lcom/duoku/platform/download/PackageMode;)V
    .registers 5

    .prologue
    .line 614
    invoke-direct {p0, p2}, Lcom/duoku/platform/download/utils/BackAppListener;->notifyForCheck(Lcom/duoku/platform/download/PackageMode;)V

    .line 617
    :try_start_3
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/utils/BackAppListener;->notifyDownloadFinished(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V

    .line 619
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/utils/BackAppListener;->checkApkValid(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)Z

    move-result v0

    .line 620
    if-nez v0, :cond_d

    .line 641
    :goto_c
    return-void

    .line 624
    :cond_d
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/utils/BackAppListener;->extraAppData(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)Lcom/duoku/platform/download/PackageMark;

    move-result-object v0

    .line 625
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v0, v0, Lcom/duoku/platform/download/PackageMark;->packageName:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/duoku/platform/download/utils/AppUtil;->loadPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 626
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/duoku/platform/download/utils/BackAppListener;->checkApkIdentical(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;ZLandroid/content/pm/PackageInfo;)Z

    move-result v0

    .line 627
    if-nez v0, :cond_2f

    .line 629
    invoke-direct {p0, p2}, Lcom/duoku/platform/download/utils/BackAppListener;->notifyForChecked(Lcom/duoku/platform/download/PackageMode;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_29} :catch_2a

    goto :goto_c

    .line 637
    :catch_2a
    move-exception v0

    .line 639
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    .line 632
    :cond_2f
    :try_start_2f
    invoke-direct {p0, p2}, Lcom/duoku/platform/download/utils/BackAppListener;->notifyForChecked(Lcom/duoku/platform/download/PackageMode;)V

    .line 633
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/utils/BackAppListener;->notifyInstall(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V

    .line 634
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/utils/BackAppListener;->submit(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_38} :catch_2a

    goto :goto_c
.end method

.method public notifyAndSubmitForNormal(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;Lcom/duoku/platform/download/PackageMode;)V
    .registers 4

    .prologue
    .line 534
    :try_start_0
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/utils/BackAppListener;->notifyDownloadFinished(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V

    .line 549
    invoke-direct {p0, p2}, Lcom/duoku/platform/download/utils/BackAppListener;->notifyForChecked(Lcom/duoku/platform/download/PackageMode;)V

    .line 550
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/utils/BackAppListener;->notifyInstall(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V

    .line 551
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/utils/BackAppListener;->submit(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 557
    :goto_c
    return-void

    .line 553
    :catch_d
    move-exception v0

    .line 555
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/duoku/platform/download/utils/BackAppListener;->startDownloadService()V

    .line 73
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 122
    :try_start_0
    invoke-static {}, Lcom/duoku/platform/download/utils/AppSilentInstaller;->getInstnce()Lcom/duoku/platform/download/utils/AppSilentInstaller;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/AppSilentInstaller;->onDestory()V

    .line 124
    iget-object v0, p0, Lcom/duoku/platform/download/utils/BackAppListener;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/duoku/platform/download/utils/BackAppListener;->unregisterNotificationReceiver(Landroid/content/Context;)V

    .line 125
    const/4 v0, 0x0

    sput-object v0, Lcom/duoku/platform/download/utils/BackAppListener;->INSTANCE:Lcom/duoku/platform/download/utils/BackAppListener;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 131
    :goto_f
    return-void

    .line 127
    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method public onDownloadProcessing(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    return-void
.end method

.method public onInstallerEvent(Lcom/duoku/platform/download/mode/InstallPacket;)V
    .registers 5

    .prologue
    .line 836
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstallPacket;->getStatus()Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    move-result-object v0

    .line 837
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstallPacket;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 842
    invoke-static {}, Lcom/duoku/platform/download/utils/BackAppListener;->$SWITCH_TABLE$com$duoku$platform$download$utils$AppSilentInstaller$InstallStatus()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_34

    .line 868
    :goto_15
    return-void

    .line 848
    :pswitch_16
    invoke-direct {p0, v1}, Lcom/duoku/platform/download/utils/BackAppListener;->handleInstalledEvent(Ljava/lang/String;)V

    .line 849
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/utils/BackAppListener;->markInstallStatus(Lcom/duoku/platform/download/mode/InstallPacket;)V

    goto :goto_15

    .line 852
    :pswitch_1d
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/utils/BackAppListener;->markInstallStatus(Lcom/duoku/platform/download/mode/InstallPacket;)V

    goto :goto_15

    .line 855
    :pswitch_21
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/utils/BackAppListener;->markInstallStatus(Lcom/duoku/platform/download/mode/InstallPacket;)V

    .line 858
    :try_start_24
    iget-object v0, p0, Lcom/duoku/platform/download/utils/BackAppListener;->handler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstallPacket;->getErrorReason()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2d} :catch_2e

    goto :goto_15

    .line 860
    :catch_2e
    move-exception v0

    .line 862
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15

    .line 842
    nop

    :pswitch_data_34
    .packed-switch 0x2
        :pswitch_1d
        :pswitch_16
        :pswitch_21
    .end packed-switch
.end method
