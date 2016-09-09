.class Lmobisocial/omlib/client/ClientFeedUtils$10;
.super Ljava/lang/Object;
.source "ClientFeedUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientFeedUtils;->notifyFeedStatus(JLmobisocial/omlib/model/RealtimePushObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/ClientFeedUtils;

.field final synthetic val$feedId:J

.field final synthetic val$realtimePushObjects:Ljava/util/List;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientFeedUtils;JLjava/util/List;)V
    .registers 5
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientFeedUtils;

    .prologue
    .line 788
    iput-object p1, p0, Lmobisocial/omlib/client/ClientFeedUtils$10;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    iput-wide p2, p0, Lmobisocial/omlib/client/ClientFeedUtils$10;->val$feedId:J

    iput-object p4, p0, Lmobisocial/omlib/client/ClientFeedUtils$10;->val$realtimePushObjects:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 793
    iget-object v1, p0, Lmobisocial/omlib/client/ClientFeedUtils$10;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    # getter for: Lmobisocial/omlib/client/ClientFeedUtils;->mRealtimeCallbacks:Ljava/util/Map;
    invoke-static {v1}, Lmobisocial/omlib/client/ClientFeedUtils;->access$200(Lmobisocial/omlib/client/ClientFeedUtils;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    .line 794
    :try_start_7
    iget-object v1, p0, Lmobisocial/omlib/client/ClientFeedUtils$10;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    # getter for: Lmobisocial/omlib/client/ClientFeedUtils;->mRealtimeCallbacks:Ljava/util/Map;
    invoke-static {v1}, Lmobisocial/omlib/client/ClientFeedUtils;->access$200(Lmobisocial/omlib/client/ClientFeedUtils;)Ljava/util/Map;

    move-result-object v1

    iget-wide v4, p0, Lmobisocial/omlib/client/ClientFeedUtils$10;->val$feedId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/interfaces/RealtimeCallback;

    .line 795
    .local v0, "cb":Lmobisocial/omlib/interfaces/RealtimeCallback;
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_22

    .line 796
    if-eqz v0, :cond_21

    .line 797
    iget-object v1, p0, Lmobisocial/omlib/client/ClientFeedUtils$10;->val$realtimePushObjects:Ljava/util/List;

    invoke-interface {v0, v1}, Lmobisocial/omlib/interfaces/RealtimeCallback;->onRealtimeMessage(Ljava/util/List;)V

    .line 799
    :cond_21
    return-void

    .line 795
    .end local v0    # "cb":Lmobisocial/omlib/interfaces/RealtimeCallback;
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method
