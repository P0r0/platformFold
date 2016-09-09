.class public Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;
.super Ljava/lang/Object;
.source "GamePlatformImpl.java"


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mAppInfo:Lcom/gionee/game/offlinesdk/AppInfo;

.field private mPlatformProxy:Lcom/gionee/game/offlinesdk/common/GamePlatformProxy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;Landroid/app/Activity;Lcom/gionee/game/offlinesdk/OrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;)V
    .registers 4
    .param p0, "x0"    # Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/gionee/game/offlinesdk/OrderInfo;
    .param p3, "x3"    # Lcom/gionee/game/offlinesdk/PayCallback;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->checkout(Landroid/app/Activity;Lcom/gionee/game/offlinesdk/OrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;Landroid/app/Activity;Lcom/gionee/game/offlinesdk/OrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;)V
    .registers 4
    .param p0, "x0"    # Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/gionee/game/offlinesdk/OrderInfo;
    .param p3, "x3"    # Lcom/gionee/game/offlinesdk/PayCallback;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->showCancelPayDialog(Landroid/app/Activity;Lcom/gionee/game/offlinesdk/OrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;Landroid/app/Activity;Lcom/gionee/game/offlinesdk/OrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;)V
    .registers 4
    .param p0, "x0"    # Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/gionee/game/offlinesdk/OrderInfo;
    .param p3, "x3"    # Lcom/gionee/game/offlinesdk/PayCallback;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->checkPay(Landroid/app/Activity;Lcom/gionee/game/offlinesdk/OrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;)V

    return-void
.end method

.method private addGameListener(Landroid/app/Activity;Lcom/gionee/game/offlinesdk/InitPluginCallback;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callBack"    # Lcom/gionee/game/offlinesdk/InitPluginCallback;

    .prologue
    .line 164
    new-instance v0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$7;-><init>(Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;Landroid/app/Activity;Lcom/gionee/game/offlinesdk/InitPluginCallback;)V

    .line 196
    .local v0, "listener":Lcom/gionee/game/offlinesdk/listener/GameListener;
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_10

    invoke-static {v0, v1}, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->addOnceListener(Lcom/gionee/game/offlinesdk/listener/GameListener;[I)V

    .line 199
    return-void

    .line 196
    nop

    :array_10
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method private checkPay(Landroid/app/Activity;Lcom/gionee/game/offlinesdk/OrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orderInfo"    # Lcom/gionee/game/offlinesdk/OrderInfo;
    .param p3, "payCallback"    # Lcom/gionee/game/offlinesdk/PayCallback;

    .prologue
    .line 69
    invoke-virtual {p2}, Lcom/gionee/game/offlinesdk/OrderInfo;->getPayMethod()I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->mAppInfo:Lcom/gionee/game/offlinesdk/AppInfo;

    invoke-virtual {v0}, Lcom/gionee/game/offlinesdk/AppInfo;->isSpecificPayMode()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->showPayMethodDialog(Landroid/app/Activity;Lcom/gionee/game/offlinesdk/OrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;)V

    .line 74
    :goto_11
    return-void

    .line 72
    :cond_12
    invoke-direct {p0, p1, p2, p3}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->checkout(Landroid/app/Activity;Lcom/gionee/game/offlinesdk/OrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;)V

    goto :goto_11
.end method

.method private checkout(Landroid/app/Activity;Lcom/gionee/game/offlinesdk/OrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orderInfo"    # Lcom/gionee/game/offlinesdk/OrderInfo;
    .param p3, "callback"    # Lcom/gionee/game/offlinesdk/PayCallback;

    .prologue
    .line 150
    new-instance v0, Lcom/gionee/game/offlinesdk/common/GamePayer;

    invoke-direct {v0, p1}, Lcom/gionee/game/offlinesdk/common/GamePayer;-><init>(Landroid/app/Activity;)V

    .line 151
    .local v0, "gamePayer":Lcom/gionee/game/offlinesdk/common/GamePayer;
    invoke-virtual {v0, p2, p3}, Lcom/gionee/game/offlinesdk/common/GamePayer;->pay(Lcom/gionee/game/offlinesdk/OrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;)V

    .line 152
    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .registers 1

    .prologue
    .line 60
    invoke-static {}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->getInstance()Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;

    move-result-object v0

    iget-object v0, v0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;
    .registers 2

    .prologue
    .line 44
    const-class v1, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;

    monitor-enter v1

    .line 45
    :try_start_3
    sget-object v0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->sInstance:Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;

    if-nez v0, :cond_e

    .line 46
    new-instance v0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;

    invoke-direct {v0}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;-><init>()V

    sput-object v0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->sInstance:Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;

    .line 48
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 49
    sget-object v0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->sInstance:Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;

    return-object v0

    .line 48
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public static post(Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 224
    sget-object v0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    return-void
.end method

.method public static postDelayed(Ljava/lang/Runnable;J)V
    .registers 4
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delayMillis"    # J

    .prologue
    .line 228
    sget-object v0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 229
    return-void
.end method

.method public static removeCallbacks(Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 232
    sget-object v0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 233
    return-void
.end method

.method private showCancelPayDialog(Landroid/app/Activity;Lcom/gionee/game/offlinesdk/OrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;)V
    .registers 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orderInfo"    # Lcom/gionee/game/offlinesdk/OrderInfo;
    .param p3, "callback"    # Lcom/gionee/game/offlinesdk/PayCallback;

    .prologue
    const/4 v6, 0x0

    .line 120
    new-instance v2, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;

    invoke-direct {v2, p1}, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;-><init>(Landroid/content/Context;)V

    .line 121
    .local v2, "messageDialog":Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;
    new-instance v0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$5;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$5;-><init>(Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;Landroid/app/Activity;Lcom/gionee/game/offlinesdk/OrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;)V

    invoke-virtual {v2, v0}, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->setPositiveButtonListener(Landroid/view/View$OnClickListener;)V

    .line 130
    new-instance v0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$6;

    invoke-direct {v0, p0, v2, p3}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$6;-><init>(Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;Lcom/gionee/game/offlinesdk/PayCallback;)V

    invoke-virtual {v2, v0}, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->setNegativeButtonListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-virtual {v2, v6}, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->setCancelable(Z)V

    .line 144
    invoke-virtual {v2, v6}, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->setCanceledOnTouchOutside(Z)V

    .line 145
    invoke-virtual {v2}, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->show()V

    .line 146
    invoke-static {}, Lcom/gionee/game/offlinesdk/statis/StatisHelper;->getInstance()Lcom/gionee/game/offlinesdk/statis/StatisHelper;

    move-result-object v0

    const-string v1, "2_\u9000\u51fa\u652f\u4ed8\u4e8c\u6b21\u786e\u8ba4\u9875\u9762"

    const-string v3, "\u51fa\u73b0\u4e8c\u6b21\u786e\u8ba4\u9875\u9762"

    invoke-virtual {v0, v1, v3}, Lcom/gionee/game/offlinesdk/statis/StatisHelper;->send(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method private showPayMethodDialog(Landroid/app/Activity;Lcom/gionee/game/offlinesdk/OrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;)V
    .registers 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orderInfo"    # Lcom/gionee/game/offlinesdk/OrderInfo;
    .param p3, "payCallback"    # Lcom/gionee/game/offlinesdk/PayCallback;

    .prologue
    const/4 v6, 0x0

    .line 78
    new-instance v2, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;

    invoke-direct {v2, p1}, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;-><init>(Landroid/content/Context;)V

    .line 79
    .local v2, "dialog":Lcom/gionee/game/offlinesdk/upgrade/PayDialog;
    new-instance v0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$1;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$1;-><init>(Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;Lcom/gionee/game/offlinesdk/upgrade/PayDialog;Lcom/gionee/game/offlinesdk/OrderInfo;Landroid/app/Activity;Lcom/gionee/game/offlinesdk/PayCallback;)V

    invoke-virtual {v2, v0}, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->setAlipay(Landroid/view/View$OnClickListener;)V

    .line 87
    new-instance v0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$2;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$2;-><init>(Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;Lcom/gionee/game/offlinesdk/upgrade/PayDialog;Lcom/gionee/game/offlinesdk/OrderInfo;Landroid/app/Activity;Lcom/gionee/game/offlinesdk/PayCallback;)V

    invoke-virtual {v2, v0}, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->setWechatPay(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {p2}, Lcom/gionee/game/offlinesdk/OrderInfo;->getMessagePayCallback()Lcom/gionee/game/offlinesdk/MessagePayCallback;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 97
    new-instance v0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$3;

    invoke-direct {v0, p0, v2, p2}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$3;-><init>(Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;Lcom/gionee/game/offlinesdk/upgrade/PayDialog;Lcom/gionee/game/offlinesdk/OrderInfo;)V

    invoke-virtual {v2, v0}, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->setMessagePay(Landroid/view/View$OnClickListener;)V

    .line 106
    :cond_2c
    new-instance v0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$4;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$4;-><init>(Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;Lcom/gionee/game/offlinesdk/upgrade/PayDialog;Landroid/app/Activity;Lcom/gionee/game/offlinesdk/OrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;)V

    invoke-virtual {v2, v0}, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->setCloseIconButtonListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-virtual {v2, v6}, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->setCancelable(Z)V

    .line 115
    invoke-virtual {v2, v6}, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->setCanceledOnTouchOutside(Z)V

    .line 116
    invoke-virtual {v2}, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->show()V

    .line 117
    return-void
.end method


# virtual methods
.method public createOrder(Landroid/app/Activity;Lcom/gionee/gsp/standalone/CreateOrderForStandalone;Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "order"    # Lcom/gionee/gsp/standalone/CreateOrderForStandalone;
    .param p3, "listener"    # Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->mPlatformProxy:Lcom/gionee/game/offlinesdk/common/GamePlatformProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gionee/game/offlinesdk/common/GamePlatformProxy;->createOrder(Landroid/app/Activity;Lcom/gionee/gsp/standalone/CreateOrderForStandalone;Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;)V

    .line 216
    return-void
.end method

.method public getAppInfo()Lcom/gionee/game/offlinesdk/AppInfo;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->mAppInfo:Lcom/gionee/game/offlinesdk/AppInfo;

    return-object v0
.end method

.method public getInstanllInfoList(Landroid/app/Activity;)Ljava/util/List;
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
    .line 210
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->mPlatformProxy:Lcom/gionee/game/offlinesdk/common/GamePlatformProxy;

    invoke-virtual {v0, p1}, Lcom/gionee/game/offlinesdk/common/GamePlatformProxy;->getGnInstanllPackageInfoList(Landroid/app/Activity;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/gionee/game/offlinesdk/AppInfo;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appInfo"    # Lcom/gionee/game/offlinesdk/AppInfo;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->mAppContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->mAppInfo:Lcom/gionee/game/offlinesdk/AppInfo;

    .line 55
    invoke-virtual {p2}, Lcom/gionee/game/offlinesdk/AppInfo;->isSpecificPayMode()Z

    move-result v0

    invoke-static {v0}, Lcom/gionee/game/offlinesdk/common/GamePlatformFactory;->createGamePlatform(Z)Lcom/gionee/game/offlinesdk/common/GamePlatformProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->mPlatformProxy:Lcom/gionee/game/offlinesdk/common/GamePlatformProxy;

    .line 56
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->mPlatformProxy:Lcom/gionee/game/offlinesdk/common/GamePlatformProxy;

    invoke-virtual {v0, p1, p2}, Lcom/gionee/game/offlinesdk/common/GamePlatformProxy;->init(Landroid/content/Context;Lcom/gionee/game/offlinesdk/AppInfo;)V

    .line 57
    return-void
.end method

.method public initPlugin(Landroid/app/Activity;Lcom/gionee/game/offlinesdk/InitPluginCallback;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callBack"    # Lcom/gionee/game/offlinesdk/InitPluginCallback;

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->addGameListener(Landroid/app/Activity;Lcom/gionee/game/offlinesdk/InitPluginCallback;)V

    .line 160
    invoke-static {}, Lcom/gionee/game/offlinesdk/upgrade/PluginManager;->getInstance()Lcom/gionee/game/offlinesdk/upgrade/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gionee/game/offlinesdk/upgrade/PluginManager;->initPlugin(Landroid/app/Activity;)V

    .line 161
    return-void
.end method

.method public install(Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;Z)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "installListener"    # Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;
    .param p3, "autoInstall"    # Z

    .prologue
    .line 202
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->mPlatformProxy:Lcom/gionee/game/offlinesdk/common/GamePlatformProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gionee/game/offlinesdk/common/GamePlatformProxy;->install(Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;Z)V

    .line 203
    return-void
.end method

.method public isPluginInstanlled(Landroid/app/Activity;)Z
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->mPlatformProxy:Lcom/gionee/game/offlinesdk/common/GamePlatformProxy;

    invoke-virtual {v0, p1}, Lcom/gionee/game/offlinesdk/common/GamePlatformProxy;->checkInstanllState(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public pay(Landroid/app/Activity;Lcom/gionee/game/offlinesdk/OrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orderInfo"    # Lcom/gionee/game/offlinesdk/OrderInfo;
    .param p3, "payCallback"    # Lcom/gionee/game/offlinesdk/PayCallback;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->checkPay(Landroid/app/Activity;Lcom/gionee/game/offlinesdk/OrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;)V

    .line 65
    return-void
.end method

.method public pay(Landroid/app/Activity;Lcom/gionee/gsp/GnOrderInfo;Lcom/gionee/gsp/AmigoPayer$MyPayCallback;ILjava/lang/String;)V
    .registers 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orderInfo"    # Lcom/gionee/gsp/GnOrderInfo;
    .param p3, "myPayCallback"    # Lcom/gionee/gsp/AmigoPayer$MyPayCallback;
    .param p4, "payMothod"    # I
    .param p5, "cpUserId"    # Ljava/lang/String;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->mPlatformProxy:Lcom/gionee/game/offlinesdk/common/GamePlatformProxy;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/gionee/game/offlinesdk/common/GamePlatformProxy;->pay(Landroid/app/Activity;Lcom/gionee/gsp/GnOrderInfo;Lcom/gionee/gsp/AmigoPayer$MyPayCallback;ILjava/lang/String;)V

    .line 221
    return-void
.end method
