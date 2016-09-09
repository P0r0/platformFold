.class Lmobisocial/omlib/client/LongdanMessageConsumer$10;
.super Ljava/lang/Object;
.source "LongdanMessageConsumer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/LongdanMessageConsumer;->postSyncStateChanged(Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

.field final synthetic val$state:Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanMessageConsumer;Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanMessageConsumer;

    .prologue
    .line 241
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$10;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    iput-object p2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$10;->val$state:Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 246
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$10;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    # getter for: Lmobisocial/omlib/client/LongdanMessageConsumer;->mSyncStateLock:Ljava/lang/Object;
    invoke-static {v2}, Lmobisocial/omlib/client/LongdanMessageConsumer;->access$400(Lmobisocial/omlib/client/LongdanMessageConsumer;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 247
    :try_start_7
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$10;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    # getter for: Lmobisocial/omlib/client/LongdanMessageConsumer;->mSyncListeners:Ljava/util/Set;
    invoke-static {v2}, Lmobisocial/omlib/client/LongdanMessageConsumer;->access$500(Lmobisocial/omlib/client/LongdanMessageConsumer;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 248
    .local v0, "currentListeners":Ljava/util/Set;, "Ljava/util/Set<Lmobisocial/omlib/interfaces/SyncStateListener;>;"
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_29

    .line 249
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobisocial/omlib/interfaces/SyncStateListener;

    .line 250
    .local v1, "l":Lmobisocial/omlib/interfaces/SyncStateListener;
    iget-object v3, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$10;->val$state:Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;

    invoke-interface {v1, v3}, Lmobisocial/omlib/interfaces/SyncStateListener;->onSyncStateChanged(Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;)V

    goto :goto_17

    .line 248
    .end local v0    # "currentListeners":Ljava/util/Set;, "Ljava/util/Set<Lmobisocial/omlib/interfaces/SyncStateListener;>;"
    .end local v1    # "l":Lmobisocial/omlib/interfaces/SyncStateListener;
    :catchall_29
    move-exception v2

    :try_start_2a
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v2

    .line 252
    .restart local v0    # "currentListeners":Ljava/util/Set;, "Ljava/util/Set<Lmobisocial/omlib/interfaces/SyncStateListener;>;"
    :cond_2c
    return-void
.end method
