.class Lmobisocial/omlib/client/LongdanMessageProcessor$PostCommitRunner;
.super Ljava/lang/Object;
.source "LongdanMessageProcessor.java"

# interfaces
.implements Lmobisocial/omlib/db/PostCommit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/client/LongdanMessageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostCommitRunner"
.end annotation


# instance fields
.field private mCommitted:Z

.field private final mRunnables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;


# direct methods
.method private constructor <init>(Lmobisocial/omlib/client/LongdanMessageProcessor;)V
    .registers 3

    .prologue
    .line 202
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$PostCommitRunner;->this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$PostCommitRunner;->mRunnables:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lmobisocial/omlib/client/LongdanMessageProcessor;Lmobisocial/omlib/client/LongdanMessageProcessor$1;)V
    .registers 3
    .param p1, "x0"    # Lmobisocial/omlib/client/LongdanMessageProcessor;
    .param p2, "x1"    # Lmobisocial/omlib/client/LongdanMessageProcessor$1;

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lmobisocial/omlib/client/LongdanMessageProcessor$PostCommitRunner;-><init>(Lmobisocial/omlib/client/LongdanMessageProcessor;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 210
    iget-boolean v0, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$PostCommitRunner;->mCommitted:Z

    if-eqz v0, :cond_12

    .line 211
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$PostCommitRunner;->this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;

    # getter for: Lmobisocial/omlib/client/LongdanMessageProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v0}, Lmobisocial/omlib/client/LongdanMessageProcessor;->access$200(Lmobisocial/omlib/client/LongdanMessageProcessor;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanClient;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 215
    :goto_11
    return-void

    .line 213
    :cond_12
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$PostCommitRunner;->mRunnables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11
.end method

.method public commit()V
    .registers 5

    .prologue
    .line 218
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$PostCommitRunner;->mCommitted:Z

    .line 219
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$PostCommitRunner;->this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;

    # getter for: Lmobisocial/omlib/client/LongdanMessageProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v2}, Lmobisocial/omlib/client/LongdanMessageProcessor;->access$200(Lmobisocial/omlib/client/LongdanMessageProcessor;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v2

    invoke-virtual {v2}, Lmobisocial/omlib/client/LongdanClient;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 220
    .local v0, "cbe":Ljava/util/concurrent/Executor;
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$PostCommitRunner;->mRunnables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 221
    .local v1, "r":Ljava/lang/Runnable;
    new-instance v3, Lmobisocial/omlib/helper/SafeRunnable;

    invoke-direct {v3, v1}, Lmobisocial/omlib/helper/SafeRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_13

    .line 223
    .end local v1    # "r":Ljava/lang/Runnable;
    :cond_28
    return-void
.end method
