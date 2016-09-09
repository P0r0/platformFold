.class Lmobisocial/omlib/client/ClientFeedUtils$12;
.super Ljava/lang/Object;
.source "ClientFeedUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientFeedUtils;->subscribeForRealtime(JLmobisocial/omlib/interfaces/RealtimeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/ClientFeedUtils;

.field final synthetic val$feedId:J

.field final synthetic val$pushObjectMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientFeedUtils;JLjava/util/Map;)V
    .registers 5
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientFeedUtils;

    .prologue
    .line 978
    iput-object p1, p0, Lmobisocial/omlib/client/ClientFeedUtils$12;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    iput-wide p2, p0, Lmobisocial/omlib/client/ClientFeedUtils$12;->val$feedId:J

    iput-object p4, p0, Lmobisocial/omlib/client/ClientFeedUtils$12;->val$pushObjectMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 983
    iget-object v1, p0, Lmobisocial/omlib/client/ClientFeedUtils$12;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    # getter for: Lmobisocial/omlib/client/ClientFeedUtils;->mRealtimeCallbacks:Ljava/util/Map;
    invoke-static {v1}, Lmobisocial/omlib/client/ClientFeedUtils;->access$200(Lmobisocial/omlib/client/ClientFeedUtils;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    .line 984
    :try_start_7
    iget-object v1, p0, Lmobisocial/omlib/client/ClientFeedUtils$12;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    # getter for: Lmobisocial/omlib/client/ClientFeedUtils;->mRealtimeCallbacks:Ljava/util/Map;
    invoke-static {v1}, Lmobisocial/omlib/client/ClientFeedUtils;->access$200(Lmobisocial/omlib/client/ClientFeedUtils;)Ljava/util/Map;

    move-result-object v1

    iget-wide v4, p0, Lmobisocial/omlib/client/ClientFeedUtils$12;->val$feedId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/interfaces/RealtimeCallback;

    .line 985
    .local v0, "c":Lmobisocial/omlib/interfaces/RealtimeCallback;
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_2b

    .line 986
    if-eqz v0, :cond_2a

    .line 987
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lmobisocial/omlib/client/ClientFeedUtils$12;->val$pushObjectMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lmobisocial/omlib/interfaces/RealtimeCallback;->onRealtimeMessage(Ljava/util/List;)V

    .line 989
    :cond_2a
    return-void

    .line 985
    .end local v0    # "c":Lmobisocial/omlib/interfaces/RealtimeCallback;
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1
.end method
