.class public Lcom/gionee/gsp/service/GnGetMessageService;
.super Lcom/gionee/gsp/service/GnBaseService;
.source "GnGetMessageService.java"


# static fields
.field private static mGetMessageService:Lcom/gionee/gsp/service/GnGetMessageService;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/gionee/gsp/service/GnBaseService;-><init>()V

    .line 17
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/gionee/gsp/service/GnGetMessageService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 18
    return-void
.end method

.method public static declared-synchronized getInStance()Lcom/gionee/gsp/service/GnGetMessageService;
    .registers 2

    .prologue
    .line 26
    const-class v1, Lcom/gionee/gsp/service/GnGetMessageService;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/gionee/gsp/service/GnGetMessageService;->mGetMessageService:Lcom/gionee/gsp/service/GnGetMessageService;

    if-nez v0, :cond_e

    .line 27
    new-instance v0, Lcom/gionee/gsp/service/GnGetMessageService;

    invoke-direct {v0}, Lcom/gionee/gsp/service/GnGetMessageService;-><init>()V

    sput-object v0, Lcom/gionee/gsp/service/GnGetMessageService;->mGetMessageService:Lcom/gionee/gsp/service/GnGetMessageService;

    .line 28
    :cond_e
    sget-object v0, Lcom/gionee/gsp/service/GnGetMessageService;->mGetMessageService:Lcom/gionee/gsp/service/GnGetMessageService;
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
    .registers 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/gionee/gsp/service/GnGetMessageService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/gionee/gsp/service/GnGetMessageService;->mGetMessageService:Lcom/gionee/gsp/service/GnGetMessageService;

    .line 39
    invoke-virtual {p0}, Lcom/gionee/gsp/service/GnGetMessageService;->removeAll()V

    .line 40
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=============111mTaskSet="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gionee/gsp/service/GnGetMessageService;->mTaskSet:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    return-void
.end method
