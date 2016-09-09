.class public Lcom/gionee/gsp/service/GnLocalService;
.super Ljava/lang/Object;
.source "GnLocalService.java"


# static fields
.field private static mGnLocalService:Lcom/gionee/gsp/service/GnLocalService;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private getGnCommplatformImpl(Landroid/content/Context;)Lcom/gionee/gsp/service/GnCommplatformImplForBase;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-static {p1}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->getInstance(Landroid/content/Context;)Lcom/gionee/gsp/GnCommplatform;

    move-result-object v0

    check-cast v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/gionee/gsp/service/GnLocalService;
    .registers 2

    .prologue
    .line 41
    const-class v1, Lcom/gionee/gsp/service/GnLocalService;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/gionee/gsp/service/GnLocalService;->mGnLocalService:Lcom/gionee/gsp/service/GnLocalService;

    if-nez v0, :cond_e

    .line 42
    new-instance v0, Lcom/gionee/gsp/service/GnLocalService;

    invoke-direct {v0}, Lcom/gionee/gsp/service/GnLocalService;-><init>()V

    sput-object v0, Lcom/gionee/gsp/service/GnLocalService;->mGnLocalService:Lcom/gionee/gsp/service/GnLocalService;

    .line 44
    :cond_e
    sget-object v0, Lcom/gionee/gsp/service/GnLocalService;->mGnLocalService:Lcom/gionee/gsp/service/GnLocalService;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 41
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public sendOperatorLog(Landroid/content/Context;Ljava/util/List;Lcom/gionee/gsp/GnCallbackListener;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnLogInfo;",
            ">;",
            "Lcom/gionee/gsp/GnCallbackListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "mSLogInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnLogInfo;>;"
    .local p3, "callback":Lcom/gionee/gsp/GnCallbackListener;, "Lcom/gionee/gsp/GnCallbackListener<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/gionee/gsp/service/GnLocalService;->getGnCommplatformImpl(Landroid/content/Context;)Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->sendOperatorLog(Landroid/content/Context;Ljava/util/List;Lcom/gionee/gsp/GnCallbackListener;)V

    .line 56
    return-void
.end method
