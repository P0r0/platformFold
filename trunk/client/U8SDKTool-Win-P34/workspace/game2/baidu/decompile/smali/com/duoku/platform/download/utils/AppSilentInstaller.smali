.class public Lcom/duoku/platform/download/utils/AppSilentInstaller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;,
        Lcom/duoku/platform/download/utils/AppSilentInstaller$a;,
        Lcom/duoku/platform/download/utils/AppSilentInstaller$PackageInstallerCallback;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/duoku/platform/download/utils/AppSilentInstaller; = null

.field public static final TAG:Ljava/lang/String; = "AppInstaller"


# instance fields
.field private dataSet:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/duoku/platform/download/mode/InstallPacket;",
            ">;"
        }
    .end annotation
.end field

.field private receiver:Lcom/duoku/platform/download/broadcast/AutoInstallAppMonitorReceiver;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/download/utils/AppSilentInstaller;->dataSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 74
    return-void
.end method

.method static synthetic access$0(Lcom/duoku/platform/download/utils/AppSilentInstaller;Landroid/content/Intent;)V
    .registers 2

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/utils/AppSilentInstaller;->notifyInstallStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1(Lcom/duoku/platform/download/utils/AppSilentInstaller;Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/utils/AppSilentInstaller;->unregisterReceiver(Landroid/content/Context;)V

    return-void
.end method

.method private checkInstall(Lcom/duoku/platform/download/mode/InstallPacket;Lcom/duoku/platform/download/utils/AppSilentInstaller$PackageInstallerCallback;)Z
    .registers 6

    .prologue
    .line 151
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstallPacket;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/duoku/platform/download/utils/AppSilentInstaller;->filter(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 153
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 154
    const-string v0, "AppInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[AppSilentInstaller#sendInstallRequest]\u91cd\u590d\u5b89\u88c5,\u4e0d\u518d\u7ee7\u7eed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstallPacket;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_26
    const/4 v0, 0x0

    .line 161
    :goto_27
    return v0

    .line 158
    :cond_28
    invoke-virtual {p1, p2}, Lcom/duoku/platform/download/mode/InstallPacket;->setCallback(Lcom/duoku/platform/download/utils/AppSilentInstaller$PackageInstallerCallback;)V

    .line 159
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppSilentInstaller;->dataSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 161
    const/4 v0, 0x1

    goto :goto_27
.end method

.method private filter(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppSilentInstaller;->dataSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    .line 94
    const/4 v0, 0x1

    :goto_d
    return v0

    .line 87
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/InstallPacket;

    .line 89
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstallPacket;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 91
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private findTarget(Lcom/duoku/platform/download/mode/InstallPacket;)Lcom/duoku/platform/download/mode/InstallPacket;
    .registers 7

    .prologue
    .line 240
    const/4 v1, 0x0

    .line 241
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppSilentInstaller;->dataSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    move-object v0, v1

    .line 254
    :cond_e
    :goto_e
    return-object v0

    .line 241
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/InstallPacket;

    .line 243
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstallPacket;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_29

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstallPacket;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstallPacket;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 248
    :cond_29
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstallPacket;->getGameId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstallPacket;->getGameId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstallPacket;->getGameId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_e
.end method

.method private formInstallPacket(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)Lcom/duoku/platform/download/mode/InstallPacket;
    .registers 10

    .prologue
    .line 127
    :try_start_0
    invoke-virtual {p1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getAppData()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->getAppData(Ljava/lang/String;)Lcom/duoku/platform/download/PackageMark;

    move-result-object v0

    .line 129
    iget-object v2, v0, Lcom/duoku/platform/download/PackageMark;->packageName:Ljava/lang/String;

    .line 130
    iget-object v6, v0, Lcom/duoku/platform/download/PackageMark;->gameId:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getDest()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 134
    invoke-virtual {p1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getDownloadId()J

    move-result-wide v4

    .line 135
    invoke-virtual {p1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getUrl()Ljava/lang/String;

    move-result-object v7

    .line 136
    invoke-virtual {p1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 138
    new-instance v0, Lcom/duoku/platform/download/mode/InstallPacket;

    invoke-direct/range {v0 .. v7}, Lcom/duoku/platform/download/mode/InstallPacket;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    .line 144
    :goto_29
    return-object v0

    .line 141
    :catch_2a
    move-exception v0

    .line 143
    const-string v1, "AppInstaller"

    const-string v2, "formInstallPacket error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public static declared-synchronized getInstnce()Lcom/duoku/platform/download/utils/AppSilentInstaller;
    .registers 2

    .prologue
    .line 78
    const-class v1, Lcom/duoku/platform/download/utils/AppSilentInstaller;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/duoku/platform/download/utils/AppSilentInstaller;->INSTANCE:Lcom/duoku/platform/download/utils/AppSilentInstaller;

    if-nez v0, :cond_e

    .line 80
    new-instance v0, Lcom/duoku/platform/download/utils/AppSilentInstaller;

    invoke-direct {v0}, Lcom/duoku/platform/download/utils/AppSilentInstaller;-><init>()V

    sput-object v0, Lcom/duoku/platform/download/utils/AppSilentInstaller;->INSTANCE:Lcom/duoku/platform/download/utils/AppSilentInstaller;

    .line 82
    :cond_e
    sget-object v0, Lcom/duoku/platform/download/utils/AppSilentInstaller;->INSTANCE:Lcom/duoku/platform/download/utils/AppSilentInstaller;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 78
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private notifyInstallStatus(Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 207
    const-string v0, "status_AUTO"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 208
    const-string v0, "item_AUTO"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/InstallPacket;

    .line 210
    if-eqz v1, :cond_15

    .line 212
    invoke-direct {p0, v0}, Lcom/duoku/platform/download/utils/AppSilentInstaller;->notifyInstallStatus(Lcom/duoku/platform/download/mode/InstallPacket;)V

    .line 219
    :goto_14
    return-void

    .line 217
    :cond_15
    invoke-direct {p0, v0}, Lcom/duoku/platform/download/utils/AppSilentInstaller;->notifyInstallStatus(Lcom/duoku/platform/download/mode/InstallPacket;)V

    goto :goto_14
.end method

.method private notifyInstallStatus(Lcom/duoku/platform/download/mode/InstallPacket;)V
    .registers 6

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/utils/AppSilentInstaller;->findTarget(Lcom/duoku/platform/download/mode/InstallPacket;)Lcom/duoku/platform/download/mode/InstallPacket;

    move-result-object v0

    .line 270
    if-nez v0, :cond_2b

    .line 272
    const-string v0, "AppInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstallPacket;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in dataset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/download/utils/AppSilentInstaller;->dataSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :goto_2a
    return-void

    .line 275
    :cond_2b
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstallPacket;->getStatus()Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    move-result-object v1

    .line 276
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstallPacket;->getErrorReason()I

    move-result v2

    .line 277
    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/mode/InstallPacket;->setStatus(Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;)V

    .line 278
    invoke-virtual {v0, v2}, Lcom/duoku/platform/download/mode/InstallPacket;->setErrorReason(I)V

    .line 280
    invoke-direct {p0, v0}, Lcom/duoku/platform/download/utils/AppSilentInstaller;->removeOldPackIfNecessary(Lcom/duoku/platform/download/mode/InstallPacket;)V

    .line 282
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstallPacket;->getCallback()Lcom/duoku/platform/download/utils/AppSilentInstaller$PackageInstallerCallback;

    move-result-object v1

    .line 283
    if-nez v1, :cond_5b

    .line 285
    const-string v1, "AppInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot find callback for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstallPacket;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 288
    :cond_5b
    invoke-interface {v1, v0}, Lcom/duoku/platform/download/utils/AppSilentInstaller$PackageInstallerCallback;->onInstallerEvent(Lcom/duoku/platform/download/mode/InstallPacket;)V

    goto :goto_2a
.end method

.method private registerReceiver(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 324
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppSilentInstaller;->receiver:Lcom/duoku/platform/download/broadcast/AutoInstallAppMonitorReceiver;

    if-nez v0, :cond_20

    .line 326
    new-instance v0, Lcom/duoku/platform/download/utils/AppSilentInstaller$a;

    invoke-direct {v0, p0}, Lcom/duoku/platform/download/utils/AppSilentInstaller$a;-><init>(Lcom/duoku/platform/download/utils/AppSilentInstaller;)V

    iput-object v0, p0, Lcom/duoku/platform/download/utils/AppSilentInstaller;->receiver:Lcom/duoku/platform/download/broadcast/AutoInstallAppMonitorReceiver;

    .line 327
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "duoku.gamesearch.intent.action.PACKAGE_ADDED_AUTO"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 328
    const-string v1, "duoku.gamesearch.intent.action.INSTALL_SERVICE_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getSender()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/download/utils/AppSilentInstaller;->receiver:Lcom/duoku/platform/download/broadcast/AutoInstallAppMonitorReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 332
    :cond_20
    return-void
.end method

.method private removeOldPackIfNecessary(Lcom/duoku/platform/download/mode/InstallPacket;)V
    .registers 4

    .prologue
    .line 259
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstallPacket;->getStatus()Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    move-result-object v0

    .line 261
    sget-object v1, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->INSTALLED:Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    if-eq v0, v1, :cond_c

    sget-object v1, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->INSTALL_ERROR:Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    if-ne v0, v1, :cond_11

    .line 263
    :cond_c
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppSilentInstaller;->dataSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 265
    :cond_11
    return-void
.end method

.method private startInstall(Landroid/content/Context;Lcom/duoku/platform/download/mode/InstallPacket;)V
    .registers 6

    .prologue
    .line 352
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_18

    .line 353
    const-string v0, "AppInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[AppInstaller#startInstall] startService for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_18
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/duoku/platform/download/SilentInstallService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 356
    const-string v1, "arg_pack"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 357
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 358
    return-void
.end method

.method private unregisterReceiver(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 336
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppSilentInstaller;->receiver:Lcom/duoku/platform/download/broadcast/AutoInstallAppMonitorReceiver;

    if-eqz v0, :cond_10

    .line 339
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getSender()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/utils/AppSilentInstaller;->receiver:Lcom/duoku/platform/download/broadcast/AutoInstallAppMonitorReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/download/utils/AppSilentInstaller;->receiver:Lcom/duoku/platform/download/broadcast/AutoInstallAppMonitorReceiver;

    .line 342
    :cond_10
    return-void
.end method


# virtual methods
.method public getInstallDataSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/duoku/platform/download/mode/InstallPacket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppSilentInstaller;->dataSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method public getInstallPackage(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppSilentInstaller;->dataSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    .line 120
    const/4 v0, 0x0

    :goto_d
    return v0

    .line 113
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/InstallPacket;

    .line 115
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstallPacket;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 117
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public onDestory()V
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppSilentInstaller;->dataSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v0, :cond_9

    .line 106
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppSilentInstaller;->dataSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 108
    :cond_9
    const/4 v0, 0x0

    sput-object v0, Lcom/duoku/platform/download/utils/AppSilentInstaller;->INSTANCE:Lcom/duoku/platform/download/utils/AppSilentInstaller;

    .line 109
    return-void
.end method

.method public sendInstallRequest(Landroid/content/Context;Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;Lcom/duoku/platform/download/utils/AppSilentInstaller$PackageInstallerCallback;)V
    .registers 8

    .prologue
    .line 166
    invoke-direct {p0, p2}, Lcom/duoku/platform/download/utils/AppSilentInstaller;->formInstallPacket(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)Lcom/duoku/platform/download/mode/InstallPacket;

    move-result-object v0

    .line 167
    if-nez v0, :cond_7

    .line 191
    :cond_6
    return-void

    .line 171
    :cond_7
    invoke-direct {p0, v0, p3}, Lcom/duoku/platform/download/utils/AppSilentInstaller;->checkInstall(Lcom/duoku/platform/download/mode/InstallPacket;Lcom/duoku/platform/download/utils/AppSilentInstaller$PackageInstallerCallback;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 176
    sget-boolean v1, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v1, :cond_35

    .line 177
    const-string v1, "AppInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[AppSilentInstaller#sendInstallRequest]"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstallPacket;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " dataSet:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/duoku/platform/download/utils/AppSilentInstaller;->dataSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_35
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppSilentInstaller;->dataSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3b
    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/InstallPacket;

    .line 180
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstallPacket;->isStarted()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 182
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/utils/AppSilentInstaller;->registerReceiver(Landroid/content/Context;)V

    .line 184
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/duoku/platform/download/mode/InstallPacket;->setStarted(Z)V

    .line 185
    sget-object v2, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->INSTALLING:Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    invoke-virtual {v0, v2}, Lcom/duoku/platform/download/mode/InstallPacket;->setStatus(Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;)V

    .line 187
    invoke-direct {p0, v0}, Lcom/duoku/platform/download/utils/AppSilentInstaller;->notifyInstallStatus(Lcom/duoku/platform/download/mode/InstallPacket;)V

    .line 188
    invoke-direct {p0, p1, v0}, Lcom/duoku/platform/download/utils/AppSilentInstaller;->startInstall(Landroid/content/Context;Lcom/duoku/platform/download/mode/InstallPacket;)V

    goto :goto_3b
.end method
