.class public Lcom/gionee/game/offlinesdk/common/GamePlatformSpecific;
.super Lcom/gionee/game/offlinesdk/common/GamePlatformProxy;
.source "GamePlatformSpecific.java"


# static fields
.field private static sStandaloneCommplatform:Lcom/gionee/gsp/standalone/customchannel/GnCommplatformForCustomChannelStandalone;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/common/GamePlatformProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public checkInstanllState(Landroid/app/Activity;)Z
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 67
    sget-object v0, Lcom/gionee/game/offlinesdk/common/GamePlatformSpecific;->sStandaloneCommplatform:Lcom/gionee/gsp/standalone/customchannel/GnCommplatformForCustomChannelStandalone;

    invoke-virtual {v0, p1}, Lcom/gionee/gsp/standalone/customchannel/GnCommplatformForCustomChannelStandalone;->checkInstanllState(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public createOrder(Landroid/app/Activity;Lcom/gionee/gsp/standalone/CreateOrderForStandalone;Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "order"    # Lcom/gionee/gsp/standalone/CreateOrderForStandalone;
    .param p3, "listener"    # Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;

    .prologue
    .line 43
    sget-object v0, Lcom/gionee/game/offlinesdk/common/GamePlatformSpecific;->sStandaloneCommplatform:Lcom/gionee/gsp/standalone/customchannel/GnCommplatformForCustomChannelStandalone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gionee/gsp/standalone/customchannel/GnCommplatformForCustomChannelStandalone;->createOrder(Landroid/app/Activity;Lcom/gionee/gsp/standalone/CreateOrderForStandalone;Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;)V

    .line 44
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
    .line 72
    sget-object v0, Lcom/gionee/game/offlinesdk/common/GamePlatformSpecific;->sStandaloneCommplatform:Lcom/gionee/gsp/standalone/customchannel/GnCommplatformForCustomChannelStandalone;

    invoke-virtual {v0, p1}, Lcom/gionee/gsp/standalone/customchannel/GnCommplatformForCustomChannelStandalone;->getGnInstanllPackageInfoList(Landroid/app/Activity;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/gionee/game/offlinesdk/AppInfo;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appInfo"    # Lcom/gionee/game/offlinesdk/AppInfo;

    .prologue
    .line 26
    const-class v1, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;

    monitor-enter v1

    .line 27
    :try_start_3
    sget-object v0, Lcom/gionee/game/offlinesdk/common/GamePlatformSpecific;->sStandaloneCommplatform:Lcom/gionee/gsp/standalone/customchannel/GnCommplatformForCustomChannelStandalone;

    if-nez v0, :cond_d

    .line 28
    invoke-static {p1}, Lcom/gionee/gsp/standalone/customchannel/GnCommplatformForCustomChannelStandalone;->getInstance(Landroid/content/Context;)Lcom/gionee/gsp/standalone/customchannel/GnCommplatformForCustomChannelStandalone;

    move-result-object v0

    sput-object v0, Lcom/gionee/game/offlinesdk/common/GamePlatformSpecific;->sStandaloneCommplatform:Lcom/gionee/gsp/standalone/customchannel/GnCommplatformForCustomChannelStandalone;

    .line 30
    :cond_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1e

    .line 31
    sget-object v0, Lcom/gionee/game/offlinesdk/common/GamePlatformSpecific;->sStandaloneCommplatform:Lcom/gionee/gsp/standalone/customchannel/GnCommplatformForCustomChannelStandalone;

    sget-object v1, Lcom/gionee/gsp/GnEType;->GAME_STANDALONE:Lcom/gionee/gsp/GnEType;

    invoke-virtual {p2}, Lcom/gionee/game/offlinesdk/AppInfo;->getApiKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/gionee/game/offlinesdk/AppInfo;->getPrivateKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/gionee/gsp/standalone/customchannel/GnCommplatformForCustomChannelStandalone;->init(Landroid/content/Context;Lcom/gionee/gsp/GnEType;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void

    .line 30
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
    .line 37
    sget-object v0, Lcom/gionee/game/offlinesdk/common/GamePlatformSpecific;->sStandaloneCommplatform:Lcom/gionee/gsp/standalone/customchannel/GnCommplatformForCustomChannelStandalone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gionee/gsp/standalone/customchannel/GnCommplatformForCustomChannelStandalone;->install(Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;Z)V

    .line 38
    return-void
.end method

.method public pay(Landroid/app/Activity;Lcom/gionee/gsp/GnOrderInfo;Lcom/gionee/gsp/AmigoPayer$MyPayCallback;ILjava/lang/String;)V
    .registers 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orderInfo"    # Lcom/gionee/gsp/GnOrderInfo;
    .param p3, "myPayCallback"    # Lcom/gionee/gsp/AmigoPayer$MyPayCallback;
    .param p4, "payMethod"    # I
    .param p5, "cpUserId"    # Ljava/lang/String;

    .prologue
    .line 50
    packed-switch p4, :pswitch_data_28

    .line 60
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "pay method (%d) specific incorrect"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :pswitch_19
    sget-object v4, Lcom/gionee/gsp/GnECustomChannel;->ALIPAY:Lcom/gionee/gsp/GnECustomChannel;

    .line 62
    .local v4, "payChannel":Lcom/gionee/gsp/GnECustomChannel;
    :goto_1b
    sget-object v0, Lcom/gionee/game/offlinesdk/common/GamePlatformSpecific;->sStandaloneCommplatform:Lcom/gionee/gsp/standalone/customchannel/GnCommplatformForCustomChannelStandalone;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/gionee/gsp/standalone/customchannel/GnCommplatformForCustomChannelStandalone;->pay(Landroid/app/Activity;Lcom/gionee/gsp/GnOrderInfo;Lcom/gionee/gsp/AmigoPayer$MyPayCallback;Lcom/gionee/gsp/GnECustomChannel;Ljava/lang/String;)V

    .line 63
    return-void

    .line 56
    .end local v4    # "payChannel":Lcom/gionee/gsp/GnECustomChannel;
    :pswitch_25
    sget-object v4, Lcom/gionee/gsp/GnECustomChannel;->WECHAT:Lcom/gionee/gsp/GnECustomChannel;

    .line 57
    .restart local v4    # "payChannel":Lcom/gionee/gsp/GnECustomChannel;
    goto :goto_1b

    .line 50
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_19
        :pswitch_25
    .end packed-switch
.end method
