.class public Lcom/gionee/gsp/service/GnSendMessageService;
.super Lcom/gionee/gsp/service/GnBaseService;
.source "GnSendMessageService.java"


# static fields
.field private static mGetMessageService:Lcom/gionee/gsp/service/GnSendMessageService;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/gionee/gsp/service/GnBaseService;-><init>()V

    .line 17
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/gionee/gsp/service/GnSendMessageService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 18
    return-void
.end method

.method public static declared-synchronized getInStance()Lcom/gionee/gsp/service/GnSendMessageService;
    .registers 2

    .prologue
    .line 26
    const-class v1, Lcom/gionee/gsp/service/GnSendMessageService;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/gionee/gsp/service/GnSendMessageService;->mGetMessageService:Lcom/gionee/gsp/service/GnSendMessageService;

    if-nez v0, :cond_e

    .line 27
    new-instance v0, Lcom/gionee/gsp/service/GnSendMessageService;

    invoke-direct {v0}, Lcom/gionee/gsp/service/GnSendMessageService;-><init>()V

    sput-object v0, Lcom/gionee/gsp/service/GnSendMessageService;->mGetMessageService:Lcom/gionee/gsp/service/GnSendMessageService;

    .line 28
    :cond_e
    sget-object v0, Lcom/gionee/gsp/service/GnSendMessageService;->mGetMessageService:Lcom/gionee/gsp/service/GnSendMessageService;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 26
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public shutdown()V
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/gionee/gsp/service/GnSendMessageService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/gionee/gsp/service/GnSendMessageService;->mGetMessageService:Lcom/gionee/gsp/service/GnSendMessageService;

    .line 39
    invoke-virtual {p0}, Lcom/gionee/gsp/service/GnSendMessageService;->removeAll()V

    .line 40
    return-void
.end method
