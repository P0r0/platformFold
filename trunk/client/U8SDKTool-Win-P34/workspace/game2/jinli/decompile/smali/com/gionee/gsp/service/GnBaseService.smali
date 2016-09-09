.class public abstract Lcom/gionee/gsp/service/GnBaseService;
.super Ljava/lang/Object;
.source "GnBaseService.java"


# instance fields
.field protected mExecutorService:Ljava/util/concurrent/ExecutorService;

.field protected mTaskSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gionee/gsp/service/GnBaseService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/gionee/gsp/service/GnBaseService;->mTaskSet:Ljava/util/Set;

    .line 26
    return-void
.end method


# virtual methods
.method public add(Lcom/gionee/gsp/service/GnCommand;Ljava/lang/String;)V
    .registers 4
    .param p1, "command"    # Lcom/gionee/gsp/service/GnCommand;
    .param p2, "taskTag"    # Ljava/lang/String;

    .prologue
    .line 36
    monitor-enter p0

    .line 37
    :try_start_1
    iget-object v0, p0, Lcom/gionee/gsp/service/GnBaseService;->mTaskSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lcom/gionee/gsp/service/GnBaseService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 36
    monitor-exit p0

    .line 40
    return-void

    .line 36
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public isExist(Ljava/lang/String;)Z
    .registers 3
    .param p1, "taskTag"    # Ljava/lang/String;

    .prologue
    .line 73
    monitor-enter p0

    .line 74
    :try_start_1
    iget-object v0, p0, Lcom/gionee/gsp/service/GnBaseService;->mTaskSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 73
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3
    .param p1, "taskTag"    # Ljava/lang/String;

    .prologue
    .line 49
    monitor-enter p0

    .line 50
    :try_start_1
    iget-object v0, p0, Lcom/gionee/gsp/service/GnBaseService;->mTaskSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 49
    monitor-exit p0

    .line 52
    return-void

    .line 49
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public removeAll()V
    .registers 2

    .prologue
    .line 61
    monitor-enter p0

    .line 62
    :try_start_1
    iget-object v0, p0, Lcom/gionee/gsp/service/GnBaseService;->mTaskSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 61
    monitor-exit p0

    .line 64
    return-void

    .line 61
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public shutdown()V
    .registers 1

    .prologue
    .line 87
    return-void
.end method
