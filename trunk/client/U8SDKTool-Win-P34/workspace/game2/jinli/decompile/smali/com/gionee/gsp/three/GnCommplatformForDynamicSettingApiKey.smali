.class public Lcom/gionee/gsp/three/GnCommplatformForDynamicSettingApiKey;
.super Ljava/lang/Object;
.source "GnCommplatformForDynamicSettingApiKey.java"


# static fields
.field private static sContext:Landroid/content/Context;

.field private static sGnCommplatform:Lcom/gionee/gsp/three/GnCommplatformForDynamicSettingApiKey;

.field private static sGnCommplatformImplForBase:Lcom/gionee/gsp/service/GnCommplatformImplForBase;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/gionee/gsp/three/GnCommplatformForDynamicSettingApiKey;->sContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/gionee/gsp/three/GnCommplatformForDynamicSettingApiKey;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const-class v1, Lcom/gionee/gsp/three/GnCommplatformForDynamicSettingApiKey;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/gionee/gsp/three/GnCommplatformForDynamicSettingApiKey;->sGnCommplatform:Lcom/gionee/gsp/three/GnCommplatformForDynamicSettingApiKey;

    if-nez v0, :cond_e

    .line 35
    new-instance v0, Lcom/gionee/gsp/three/GnCommplatformForDynamicSettingApiKey;

    invoke-direct {v0, p0}, Lcom/gionee/gsp/three/GnCommplatformForDynamicSettingApiKey;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/gionee/gsp/three/GnCommplatformForDynamicSettingApiKey;->sGnCommplatform:Lcom/gionee/gsp/three/GnCommplatformForDynamicSettingApiKey;

    .line 39
    :cond_e
    invoke-static {p0}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->getInstance(Landroid/content/Context;)Lcom/gionee/gsp/GnCommplatform;

    move-result-object v0

    .line 38
    check-cast v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    sput-object v0, Lcom/gionee/gsp/three/GnCommplatformForDynamicSettingApiKey;->sGnCommplatformImplForBase:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    .line 40
    sget-object v0, Lcom/gionee/gsp/three/GnCommplatformForDynamicSettingApiKey;->sGnCommplatform:Lcom/gionee/gsp/three/GnCommplatformForDynamicSettingApiKey;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/gionee/gsp/GnEType;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/gionee/gsp/GnEType;
    .param p3, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 45
    sget-object v0, Lcom/gionee/gsp/three/GnCommplatformForDynamicSettingApiKey;->sGnCommplatformImplForBase:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->init(Landroid/content/Context;Lcom/gionee/gsp/GnEType;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public setApiKey(Ljava/lang/String;)V
    .registers 3
    .param p1, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 53
    sget-object v0, Lcom/gionee/gsp/three/GnCommplatformForDynamicSettingApiKey;->sGnCommplatformImplForBase:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    invoke-virtual {v0, p1}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->setApiKey(Ljava/lang/String;)V

    .line 54
    return-void
.end method
