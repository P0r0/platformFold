.class public Lcom/gionee/game/offlinesdk/GamePlatform;
.super Ljava/lang/Object;
.source "GamePlatform.java"


# static fields
.field public static final PAY_METHOD_ALIPAY:I = 0x1

.field public static final PAY_METHOD_UNSPECIFIED:I = 0x0

.field public static final PAY_METHOD_WECHAT:I = 0x2

.field private static volatile sInstance:Lcom/gionee/game/offlinesdk/GamePlatform;

.field private static sIsInit:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/gionee/game/offlinesdk/GamePlatform;->sIsInit:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method private checkInit()V
    .registers 3

    .prologue
    .line 48
    sget-boolean v0, Lcom/gionee/game/offlinesdk/GamePlatform;->sIsInit:Z

    if-nez v0, :cond_c

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "GamePlatform must be init before call getInstance"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_c
    return-void
.end method

.method public static getInstance()Lcom/gionee/game/offlinesdk/GamePlatform;
    .registers 2

    .prologue
    .line 22
    const-class v1, Lcom/gionee/game/offlinesdk/GamePlatform;

    monitor-enter v1

    .line 23
    :try_start_3
    sget-object v0, Lcom/gionee/game/offlinesdk/GamePlatform;->sInstance:Lcom/gionee/game/offlinesdk/GamePlatform;

    if-nez v0, :cond_e

    .line 24
    new-instance v0, Lcom/gionee/game/offlinesdk/GamePlatform;

    invoke-direct {v0}, Lcom/gionee/game/offlinesdk/GamePlatform;-><init>()V

    sput-object v0, Lcom/gionee/game/offlinesdk/GamePlatform;->sInstance:Lcom/gionee/game/offlinesdk/GamePlatform;

    .line 26
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 28
    sget-object v0, Lcom/gionee/game/offlinesdk/GamePlatform;->sInstance:Lcom/gionee/game/offlinesdk/GamePlatform;

    return-object v0

    .line 26
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public static init(Landroid/app/Application;Lcom/gionee/game/offlinesdk/AppInfo;)V
    .registers 3
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "appInfo"    # Lcom/gionee/game/offlinesdk/AppInfo;

    .prologue
    .line 32
    invoke-static {}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->getInstance()Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->init(Landroid/content/Context;Lcom/gionee/game/offlinesdk/AppInfo;)V

    .line 33
    invoke-static {p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->getInstance(Landroid/app/Application;)Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;

    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gionee/game/offlinesdk/GamePlatform;->sIsInit:Z

    .line 35
    return-void
.end method


# virtual methods
.method public initPlugin(Landroid/app/Activity;Lcom/gionee/game/offlinesdk/InitPluginCallback;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callBack"    # Lcom/gionee/game/offlinesdk/InitPluginCallback;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/GamePlatform;->checkInit()V

    .line 44
    invoke-static {}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->getInstance()Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->initPlugin(Landroid/app/Activity;Lcom/gionee/game/offlinesdk/InitPluginCallback;)V

    .line 45
    return-void
.end method

.method public pay(Landroid/app/Activity;Lcom/gionee/game/offlinesdk/OrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orderInfo"    # Lcom/gionee/game/offlinesdk/OrderInfo;
    .param p3, "callback"    # Lcom/gionee/game/offlinesdk/PayCallback;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/GamePlatform;->checkInit()V

    .line 39
    invoke-static {}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->getInstance()Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->pay(Landroid/app/Activity;Lcom/gionee/game/offlinesdk/OrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;)V

    .line 40
    return-void
.end method
