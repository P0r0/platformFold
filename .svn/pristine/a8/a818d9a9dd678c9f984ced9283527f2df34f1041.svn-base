.class public Lcom/duoku/platform/download/DownloadHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/download/DownloadHelper$DownloadProgressCallback;
    }
.end annotation


# static fields
.field static callbacks:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/duoku/platform/download/DownloadHelper$DownloadProgressCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/duoku/platform/download/DownloadHelper;->callbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addDownloadListener(Lcom/duoku/platform/download/DownloadHelper$DownloadProgressCallback;)V
    .registers 3

    .prologue
    .line 35
    const-class v1, Lcom/duoku/platform/download/DownloadHelper;

    monitor-enter v1

    if-eqz p0, :cond_a

    .line 37
    :try_start_5
    sget-object v0, Lcom/duoku/platform/download/DownloadHelper;->callbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_c

    .line 39
    :cond_a
    monitor-exit v1

    return-void

    .line 35
    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static notifyDownloadProgress(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 22

    .prologue
    .line 72
    sget-object v0, Lcom/duoku/platform/download/DownloadHelper;->callbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 74
    sget-object v0, Lcom/duoku/platform/download/DownloadHelper;->callbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_15

    .line 82
    :cond_14
    return-void

    .line 74
    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/download/DownloadHelper$DownloadProgressCallback;

    .line 76
    if-eqz v1, :cond_e

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    .line 78
    invoke-interface/range {v1 .. v11}, Lcom/duoku/platform/download/DownloadHelper$DownloadProgressCallback;->onDownloading(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_e
.end method

.method public static declared-synchronized removeAllDownloadListener()V
    .registers 2

    .prologue
    .line 53
    const-class v1, Lcom/duoku/platform/download/DownloadHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/duoku/platform/download/DownloadHelper;->callbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v0, :cond_c

    .line 55
    sget-object v0, Lcom/duoku/platform/download/DownloadHelper;->callbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 57
    :cond_c
    monitor-exit v1

    return-void

    .line 53
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized removeDownloadListener(Lcom/duoku/platform/download/DownloadHelper$DownloadProgressCallback;)V
    .registers 3

    .prologue
    .line 48
    const-class v1, Lcom/duoku/platform/download/DownloadHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/duoku/platform/download/DownloadHelper;->callbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 49
    monitor-exit v1

    return-void

    .line 48
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method
