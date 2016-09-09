.class public Lcom/gionee/game/offlinesdk/upgrade/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# static fields
.field private static sPluginManager:Lcom/gionee/game/offlinesdk/upgrade/PluginManager;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mInstallListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/gionee/game/offlinesdk/upgrade/PluginManager$1;

    invoke-direct {v0, p0}, Lcom/gionee/game/offlinesdk/upgrade/PluginManager$1;-><init>(Lcom/gionee/game/offlinesdk/upgrade/PluginManager;)V

    iput-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/PluginManager;->mInstallListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/gionee/game/offlinesdk/upgrade/PluginManager;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/gionee/game/offlinesdk/upgrade/PluginManager;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/PluginManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$002(Lcom/gionee/game/offlinesdk/upgrade/PluginManager;Landroid/app/Activity;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/gionee/game/offlinesdk/upgrade/PluginManager;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/gionee/game/offlinesdk/upgrade/PluginManager;->mActivity:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic access$100(Lcom/gionee/game/offlinesdk/upgrade/PluginManager;Landroid/app/Activity;)V
    .registers 2
    .param p0, "x0"    # Lcom/gionee/game/offlinesdk/upgrade/PluginManager;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/gionee/game/offlinesdk/upgrade/PluginManager;->showInstallTipDialog(Landroid/app/Activity;)V

    return-void
.end method

.method public static getInstance()Lcom/gionee/game/offlinesdk/upgrade/PluginManager;
    .registers 2

    .prologue
    .line 28
    const-class v1, Lcom/gionee/game/offlinesdk/upgrade/PluginManager;

    monitor-enter v1

    .line 29
    :try_start_3
    sget-object v0, Lcom/gionee/game/offlinesdk/upgrade/PluginManager;->sPluginManager:Lcom/gionee/game/offlinesdk/upgrade/PluginManager;

    if-nez v0, :cond_e

    .line 30
    new-instance v0, Lcom/gionee/game/offlinesdk/upgrade/PluginManager;

    invoke-direct {v0}, Lcom/gionee/game/offlinesdk/upgrade/PluginManager;-><init>()V

    sput-object v0, Lcom/gionee/game/offlinesdk/upgrade/PluginManager;->sPluginManager:Lcom/gionee/game/offlinesdk/upgrade/PluginManager;

    .line 32
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 33
    sget-object v0, Lcom/gionee/game/offlinesdk/upgrade/PluginManager;->sPluginManager:Lcom/gionee/game/offlinesdk/upgrade/PluginManager;

    return-object v0

    .line 32
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private showInstallTipDialog(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/PluginManager;->mInstallListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {p1, v0}, Lcom/gionee/game/offlinesdk/upgrade/DialogUtils;->showInstallTipDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Lcom/gionee/game/offlinesdk/upgrade/GameDialog;

    .line 94
    return-void
.end method


# virtual methods
.method public initPlugin(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/gionee/game/offlinesdk/upgrade/PluginManager;->mActivity:Landroid/app/Activity;

    .line 38
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->onEvent(I)V

    .line 39
    invoke-static {}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->getInstance()Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->isPluginInstanlled(Landroid/app/Activity;)Z

    move-result v0

    .line 40
    .local v0, "isPluginInstalled":Z
    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPluginInstanlled=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    if-eqz v0, :cond_2d

    .line 42
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->onEvent(I)V

    .line 46
    :goto_2c
    return-void

    .line 44
    :cond_2d
    invoke-virtual {p0, p1}, Lcom/gionee/game/offlinesdk/upgrade/PluginManager;->silentInstall(Landroid/app/Activity;)V

    goto :goto_2c
.end method

.method public manualInstall(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 71
    invoke-static {}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->getInstance()Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->getInstanllInfoList(Landroid/app/Activity;)Ljava/util/List;

    move-result-object v1

    .line 73
    .local v1, "installList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnInstanllPackageInfo;>;"
    new-instance v0, Lcom/gionee/game/offlinesdk/upgrade/PluginManager$3;

    invoke-direct {v0, p0, v1}, Lcom/gionee/game/offlinesdk/upgrade/PluginManager$3;-><init>(Lcom/gionee/game/offlinesdk/upgrade/PluginManager;Ljava/util/List;)V

    .line 89
    .local v0, "gnInstallListener":Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;
    invoke-static {}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->getInstance()Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v0, v3}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->install(Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;Z)V

    .line 90
    return-void
.end method

.method public silentInstall(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 49
    invoke-static {}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->getInstance()Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->getInstanllInfoList(Landroid/app/Activity;)Ljava/util/List;

    move-result-object v1

    .line 51
    .local v1, "installList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnInstanllPackageInfo;>;"
    new-instance v0, Lcom/gionee/game/offlinesdk/upgrade/PluginManager$2;

    invoke-direct {v0, p0, v1, p1}, Lcom/gionee/game/offlinesdk/upgrade/PluginManager$2;-><init>(Lcom/gionee/game/offlinesdk/upgrade/PluginManager;Ljava/util/List;Landroid/app/Activity;)V

    .line 67
    .local v0, "gnInstallListener":Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;
    invoke-static {}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->getInstance()Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v0, v3}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->install(Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;Z)V

    .line 68
    return-void
.end method
