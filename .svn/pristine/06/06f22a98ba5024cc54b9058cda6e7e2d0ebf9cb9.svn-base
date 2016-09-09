.class public abstract Lmobisocial/omlib/jobs/AwaitableDurableJobHandler;
.super Ljava/lang/Object;
.source "AwaitableDurableJobHandler.java"

# interfaces
.implements Lmobisocial/omlib/client/interfaces/DurableJobHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lmobisocial/omlib/client/interfaces/DurableJobHandler",
        "<TTResult;>;"
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "awaitable"


# instance fields
.field private mComplete:Z

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    .local p0, "this":Lmobisocial/omlib/jobs/AwaitableDurableJobHandler;, "Lmobisocial/omlib/jobs/AwaitableDurableJobHandler<TTResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/jobs/AwaitableDurableJobHandler;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public await()V
    .registers 3

    .prologue
    .line 48
    .local p0, "this":Lmobisocial/omlib/jobs/AwaitableDurableJobHandler;, "Lmobisocial/omlib/jobs/AwaitableDurableJobHandler<TTResult;>;"
    :goto_0
    iget-boolean v0, p0, Lmobisocial/omlib/jobs/AwaitableDurableJobHandler;->mComplete:Z

    if-nez v0, :cond_13

    .line 50
    :try_start_4
    iget-object v1, p0, Lmobisocial/omlib/jobs/AwaitableDurableJobHandler;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_7} :catch_11

    .line 51
    :try_start_7
    iget-object v0, p0, Lmobisocial/omlib/jobs/AwaitableDurableJobHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 52
    monitor-exit v1

    goto :goto_0

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    :try_start_10
    throw v0
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_11} :catch_11

    .line 53
    :catch_11
    move-exception v0

    goto :goto_0

    .line 56
    :cond_13
    return-void
.end method

.method public getJobType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    .local p0, "this":Lmobisocial/omlib/jobs/AwaitableDurableJobHandler;, "Lmobisocial/omlib/jobs/AwaitableDurableJobHandler<TTResult;>;"
    const-string v0, "awaitable"

    return-object v0
.end method

.method public getSlice()J
    .registers 3

    .prologue
    .line 24
    .local p0, "this":Lmobisocial/omlib/jobs/AwaitableDurableJobHandler;, "Lmobisocial/omlib/jobs/AwaitableDurableJobHandler<TTResult;>;"
    const-wide v0, 0x492559f64fL

    return-wide v0
.end method

.method public onReconstitutedRequest()Z
    .registers 2

    .prologue
    .line 33
    .local p0, "this":Lmobisocial/omlib/jobs/AwaitableDurableJobHandler;, "Lmobisocial/omlib/jobs/AwaitableDurableJobHandler<TTResult;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public requestAboutToBeScheduled(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 4
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 29
    .local p0, "this":Lmobisocial/omlib/jobs/AwaitableDurableJobHandler;, "Lmobisocial/omlib/jobs/AwaitableDurableJobHandler<TTResult;>;"
    return-void
.end method

.method public requestComplete(Lmobisocial/omlib/client/LongdanClient;Ljava/lang/Object;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 7
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p3, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p4, "postCommit"    # Lmobisocial/omlib/db/PostCommit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobisocial/omlib/client/LongdanClient;",
            "TTResult;",
            "Lmobisocial/omlib/db/OMSQLiteHelper;",
            "Lmobisocial/omlib/db/PostCommit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lmobisocial/omlib/jobs/AwaitableDurableJobHandler;, "Lmobisocial/omlib/jobs/AwaitableDurableJobHandler<TTResult;>;"
    .local p2, "result":Ljava/lang/Object;, "TTResult;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobisocial/omlib/jobs/AwaitableDurableJobHandler;->mComplete:Z

    .line 42
    iget-object v1, p0, Lmobisocial/omlib/jobs/AwaitableDurableJobHandler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 43
    :try_start_6
    iget-object v0, p0, Lmobisocial/omlib/jobs/AwaitableDurableJobHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 44
    monitor-exit v1

    .line 45
    return-void

    .line 44
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method
