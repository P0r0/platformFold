.class public Lcom/gionee/game/offlinesdk/common/GamePlatformPopular;
.super Lcom/gionee/game/offlinesdk/common/GamePlatformProxy;
.source "GamePlatformPopular.java"


# static fields
.field private static sStandaloneCommplatform:Lcom/gionee/gsp/standalone/GnCommplatformForStandalone;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/common/GamePlatformProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public checkInstanllState(Landroid/app/Activity;)Z
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 51
    sget-object v0, Lcom/gionee/game/offlinesdk/common/GamePlatformPopular;->sStandaloneCommplatform:Lcom/gionee/gsp/standalone/GnCommplatformForStandalone;

    invoke-virtual {v0, p1}, Lcom/gionee/gsp/standalone/GnCommplatformForStandalone;->checkInstanllState(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public createOrder(Landroid/app/Activity;Lcom/gionee/gsp/standalone/CreateOrderForStandalone;Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "order"    # Lcom/gionee/gsp/standalone/CreateOrderForStandalone;
    .param p3, "listener"    # Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;

    .prologue
    .line 40
    sget-object v0, Lcom/gionee/game/offlinesdk/common/GamePlatformPopular;->sStandaloneCommplatform:Lcom/gionee/gsp/standalone/GnCommplatformForStandalone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gionee/gsp/standalone/GnCommplatformForStandalone;->createOrder(Landroid/app/Activity;Lcom/gionee/gsp/standalone/CreateOrderForStandalone;Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;)V

    .line 41
    return-void
.end method

.method public getGnInstanllPackageInfoList(Landroid/app/Activity;)Ljava/util/List;
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnInstanllPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    sget-object v0, Lcom/gionee/game/offlinesdk/common/GamePlatformPopular;->sStandaloneCommplatform:Lcom/gionee/gsp/standalone/GnCommplatformForStandalone;

    invoke-virtual {v0, p1}, Lcom/gionee/gsp/standalone/GnCommplatformForStandalone;->getGnInstanllPackageInfoList(Landroid/app/Activity;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/gionee/game/offlinesdk/AppInfo;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appInfo"    # Lcom/gionee/game/offlinesdk/AppInfo;

    .prologue
    .line 23
    const-class v1, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;

    monitor-enter v1

    .line 24
    :try_start_3
    sget-object v0, Lcom/gionee/game/offlinesdk/common/GamePlatformPopular;->sStandaloneCommplatform:Lcom/gionee/gsp/standalone/GnCommplatformForStandalone;

    if-nez v0, :cond_d

    .line 25
    invoke-static {p1}, Lcom/gionee/gsp/standalone/GnCommplatformForStandalone;->getInstance(Landroid/content/Context;)Lcom/gionee/gsp/standalone/GnCommplatformForStandalone;

    move-result-object v0

    sput-object v0, Lcom/gionee/game/offlinesdk/common/GamePlatformPopular;->sStandaloneCommplatform:Lcom/gionee/gsp/standalone/GnCommplatformForStandalone;

    .line 27
    :cond_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1e

    .line 28
    sget-object v0, Lcom/gionee/game/offlinesdk/common/GamePlatformPopular;->sStandaloneCommplatform:Lcom/gionee/gsp/standalone/GnCommplatformForStandalone;

    sget-object v1, Lcom/gionee/gsp/GnEType;->GAME_STANDALONE:Lcom/gionee/gsp/GnEType;

    invoke-virtual {p2}, Lcom/gionee/game/offlinesdk/AppInfo;->getApiKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/gionee/game/offlinesdk/AppInfo;->getPrivateKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/gionee/gsp/standalone/GnCommplatformForStandalone;->init(Landroid/content/Context;Lcom/gionee/gsp/GnEType;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void

    .line 27
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public install(Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;Z)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "installListener"    # Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;
    .param p3, "autoInstall"    # Z

    .prologue
    .line 34
    sget-object v0, Lcom/gionee/game/offlinesdk/common/GamePlatformPopular;->sStandaloneCommplatform:Lcom/gionee/gsp/standalone/GnCommplatformForStandalone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gionee/gsp/standalone/GnCommplatformForStandalone;->install(Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;Z)V

    .line 35
    return-void
.end method

.method public pay(Landroid/app/Activity;Lcom/gionee/gsp/GnOrderInfo;Lcom/gionee/gsp/AmigoPayer$MyPayCallback;ILjava/lang/String;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orderInfo"    # Lcom/gionee/gsp/GnOrderInfo;
    .param p3, "myPayCallback"    # Lcom/gionee/gsp/AmigoPayer$MyPayCallback;
    .param p4, "payMethod"    # I
    .param p5, "cpUserId"    # Ljava/lang/String;

    .prologue
    .line 46
    sget-object v0, Lcom/gionee/game/offlinesdk/common/GamePlatformPopular;->sStandaloneCommplatform:Lcom/gionee/gsp/standalone/GnCommplatformForStandalone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gionee/gsp/standalone/GnCommplatformForStandalone;->pay(Landroid/app/Activity;Lcom/gionee/gsp/GnOrderInfo;Lcom/gionee/gsp/AmigoPayer$MyPayCallback;)V

    .line 47
    return-void
.end method
