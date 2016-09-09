.class public Lcom/gionee/gsp/service/GnSendLogService;
.super Lcom/gionee/gsp/service/GnBaseService;
.source "GnSendLogService.java"


# static fields
.field private static mGetMessageService:Lcom/gionee/gsp/service/GnSendLogService;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/gionee/gsp/service/GnBaseService;-><init>()V

    .line 20
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/gionee/gsp/service/GnSendLogService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 21
    return-void
.end method

.method public static declared-synchronized getInStance()Lcom/gionee/gsp/service/GnSendLogService;
    .registers 2

    .prologue
    .line 29
    const-class v1, Lcom/gionee/gsp/service/GnSendLogService;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/gionee/gsp/service/GnSendLogService;->mGetMessageService:Lcom/gionee/gsp/service/GnSendLogService;

    if-nez v0, :cond_e

    .line 30
    new-instance v0, Lcom/gionee/gsp/service/GnSendLogService;

    invoke-direct {v0}, Lcom/gionee/gsp/service/GnSendLogService;-><init>()V

    sput-object v0, Lcom/gionee/gsp/service/GnSendLogService;->mGetMessageService:Lcom/gionee/gsp/service/GnSendLogService;

    .line 31
    :cond_e
    sget-object v0, Lcom/gionee/gsp/service/GnSendLogService;->mGetMessageService:Lcom/gionee/gsp/service/GnSendLogService;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method
