.class Lmobisocial/omlib/client/ClientFeedUtils$RealtimeNotifyTask;
.super Ljava/util/TimerTask;
.source "ClientFeedUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/client/ClientFeedUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RealtimeNotifyTask"
.end annotation


# instance fields
.field final mFeedId:J

.field final synthetic this$0:Lmobisocial/omlib/client/ClientFeedUtils;


# direct methods
.method public constructor <init>(Lmobisocial/omlib/client/ClientFeedUtils;J)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientFeedUtils;
    .param p2, "feedId"    # J

    .prologue
    .line 914
    iput-object p1, p0, Lmobisocial/omlib/client/ClientFeedUtils$RealtimeNotifyTask;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 915
    iput-wide p2, p0, Lmobisocial/omlib/client/ClientFeedUtils$RealtimeNotifyTask;->mFeedId:J

    .line 916
    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    .line 920
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 921
    .local v2, "currTime":J
    iget-object v8, p0, Lmobisocial/omlib/client/ClientFeedUtils$RealtimeNotifyTask;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    # getter for: Lmobisocial/omlib/client/ClientFeedUtils;->mFeedStatusIndicators:Ljava/util/Map;
    invoke-static {v8}, Lmobisocial/omlib/client/ClientFeedUtils;->access$400(Lmobisocial/omlib/client/ClientFeedUtils;)Ljava/util/Map;

    move-result-object v9

    monitor-enter v9

    .line 922
    :try_start_b
    iget-object v8, p0, Lmobisocial/omlib/client/ClientFeedUtils$RealtimeNotifyTask;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    # getter for: Lmobisocial/omlib/client/ClientFeedUtils;->mFeedStatusIndicators:Ljava/util/Map;
    invoke-static {v8}, Lmobisocial/omlib/client/ClientFeedUtils;->access$400(Lmobisocial/omlib/client/ClientFeedUtils;)Ljava/util/Map;

    move-result-object v8

    iget-wide v10, p0, Lmobisocial/omlib/client/ClientFeedUtils$RealtimeNotifyTask;->mFeedId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 923
    .local v5, "mapForThisFeed":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lmobisocial/omlib/model/RealtimePushObject;>;"
    if-eqz v5, :cond_77

    .line 924
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 925
    .local v4, "entrySetIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lmobisocial/omlib/model/RealtimePushObject;>;>;"
    :cond_27
    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4a

    .line 926
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 927
    .local v7, "pushObjectEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lmobisocial/omlib/model/RealtimePushObject;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmobisocial/omlib/model/RealtimePushObject;

    .line 928
    .local v6, "obj":Lmobisocial/omlib/model/RealtimePushObject;
    iget-wide v10, v6, Lmobisocial/omlib/model/RealtimePushObject;->expiration:J

    cmp-long v8, v10, v2

    if-gtz v8, :cond_27

    .line 929
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_27

    .line 947
    .end local v4    # "entrySetIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lmobisocial/omlib/model/RealtimePushObject;>;>;"
    .end local v5    # "mapForThisFeed":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lmobisocial/omlib/model/RealtimePushObject;>;"
    .end local v6    # "obj":Lmobisocial/omlib/model/RealtimePushObject;
    .end local v7    # "pushObjectEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lmobisocial/omlib/model/RealtimePushObject;>;"
    :catchall_47
    move-exception v8

    monitor-exit v9
    :try_end_49
    .catchall {:try_start_b .. :try_end_49} :catchall_47

    throw v8

    .line 932
    .restart local v4    # "entrySetIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lmobisocial/omlib/model/RealtimePushObject;>;>;"
    .restart local v5    # "mapForThisFeed":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lmobisocial/omlib/model/RealtimePushObject;>;"
    :cond_4a
    :try_start_4a
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 934
    .local v1, "currentObjects":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/model/RealtimePushObject;>;"
    iget-object v8, p0, Lmobisocial/omlib/client/ClientFeedUtils$RealtimeNotifyTask;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    # getter for: Lmobisocial/omlib/client/ClientFeedUtils;->mRealtimeCallbacks:Ljava/util/Map;
    invoke-static {v8}, Lmobisocial/omlib/client/ClientFeedUtils;->access$200(Lmobisocial/omlib/client/ClientFeedUtils;)Ljava/util/Map;

    move-result-object v10

    monitor-enter v10
    :try_end_5a
    .catchall {:try_start_4a .. :try_end_5a} :catchall_47

    .line 935
    :try_start_5a
    iget-object v8, p0, Lmobisocial/omlib/client/ClientFeedUtils$RealtimeNotifyTask;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    # getter for: Lmobisocial/omlib/client/ClientFeedUtils;->mRealtimeCallbacks:Ljava/util/Map;
    invoke-static {v8}, Lmobisocial/omlib/client/ClientFeedUtils;->access$200(Lmobisocial/omlib/client/ClientFeedUtils;)Ljava/util/Map;

    move-result-object v8

    iget-wide v12, p0, Lmobisocial/omlib/client/ClientFeedUtils$RealtimeNotifyTask;->mFeedId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/interfaces/RealtimeCallback;

    .line 936
    .local v0, "cb":Lmobisocial/omlib/interfaces/RealtimeCallback;
    monitor-exit v10
    :try_end_6d
    .catchall {:try_start_5a .. :try_end_6d} :catchall_79

    .line 937
    if-eqz v0, :cond_77

    .line 938
    :try_start_6f
    new-instance v8, Lmobisocial/omlib/client/ClientFeedUtils$RealtimeNotifyTask$1;

    invoke-direct {v8, p0, v0, v1}, Lmobisocial/omlib/client/ClientFeedUtils$RealtimeNotifyTask$1;-><init>(Lmobisocial/omlib/client/ClientFeedUtils$RealtimeNotifyTask;Lmobisocial/omlib/interfaces/RealtimeCallback;Ljava/util/List;)V

    invoke-static {v8}, Lmobisocial/util/PlatformUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 947
    .end local v0    # "cb":Lmobisocial/omlib/interfaces/RealtimeCallback;
    .end local v1    # "currentObjects":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/model/RealtimePushObject;>;"
    .end local v4    # "entrySetIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lmobisocial/omlib/model/RealtimePushObject;>;>;"
    :cond_77
    monitor-exit v9
    :try_end_78
    .catchall {:try_start_6f .. :try_end_78} :catchall_47

    .line 948
    return-void

    .line 936
    .restart local v1    # "currentObjects":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/model/RealtimePushObject;>;"
    .restart local v4    # "entrySetIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lmobisocial/omlib/model/RealtimePushObject;>;>;"
    :catchall_79
    move-exception v8

    :try_start_7a
    monitor-exit v10
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    :try_start_7b
    throw v8
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_47
.end method
