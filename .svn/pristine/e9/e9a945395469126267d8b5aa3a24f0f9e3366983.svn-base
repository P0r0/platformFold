.class Lmobisocial/omlib/service/OmlibService$12;
.super Ljava/lang/Object;
.source "OmlibService.java"

# interfaces
.implements Lmobisocial/omlib/api/OmletMessagingApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/service/OmlibService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/service/OmlibService;


# direct methods
.method constructor <init>(Lmobisocial/omlib/service/OmlibService;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlib/service/OmlibService;

    .prologue
    .line 555
    iput-object p1, p0, Lmobisocial/omlib/service/OmlibService$12;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(JZ)Z
    .registers 5
    .param p1, "objectId"    # J
    .param p3, "localOnly"    # Z

    .prologue
    .line 591
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$12;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Messaging:Lmobisocial/omlib/client/ClientMessagingUtils;

    invoke-virtual {v0, p1, p2, p3}, Lmobisocial/omlib/client/ClientMessagingUtils;->delete(JZ)Z

    move-result v0

    return v0
.end method

.method public getCurrentSyncState()Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;
    .registers 2

    .prologue
    .line 586
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$12;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanClient;->getCurrentSyncState()Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;

    move-result-object v0

    return-object v0
.end method

.method public like(J)V
    .registers 4
    .param p1, "objectId"    # J

    .prologue
    .line 596
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$12;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Messaging:Lmobisocial/omlib/client/ClientMessagingUtils;

    invoke-virtual {v0, p1, p2}, Lmobisocial/omlib/client/ClientMessagingUtils;->like(J)V

    .line 597
    return-void
.end method

.method public declared-synchronized onMessagingActivityPaused()V
    .registers 3

    .prologue
    .line 617
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$12;->this$0:Lmobisocial/omlib/service/OmlibService;

    # operator-- for: Lmobisocial/omlib/service/OmlibService;->mSocketInterest:I
    invoke-static {v0}, Lmobisocial/omlib/service/OmlibService;->access$610(Lmobisocial/omlib/service/OmlibService;)I

    .line 618
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$12;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    sget-object v1, Lmobisocial/omlib/client/LongdanClient$ConnectionType;->Msg:Lmobisocial/omlib/client/LongdanClient$ConnectionType;

    invoke-virtual {v0, v1}, Lmobisocial/omlib/client/LongdanClient;->decrementInterestForConnection(Lmobisocial/omlib/client/LongdanClient$ConnectionType;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 619
    monitor-exit p0

    return-void

    .line 617
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onMessagingActivityResumed()V
    .registers 3

    .prologue
    .line 611
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$12;->this$0:Lmobisocial/omlib/service/OmlibService;

    # operator++ for: Lmobisocial/omlib/service/OmlibService;->mSocketInterest:I
    invoke-static {v0}, Lmobisocial/omlib/service/OmlibService;->access$608(Lmobisocial/omlib/service/OmlibService;)I

    .line 612
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$12;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    sget-object v1, Lmobisocial/omlib/client/LongdanClient$ConnectionType;->Msg:Lmobisocial/omlib/client/LongdanClient$ConnectionType;

    invoke-virtual {v0, v1}, Lmobisocial/omlib/client/LongdanClient;->incrementInterestForConnection(Lmobisocial/omlib/client/LongdanClient$ConnectionType;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 613
    monitor-exit p0

    return-void

    .line 611
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerDeliveryListener(Lmobisocial/omlib/interfaces/MessageDeliveryListener;)V
    .registers 6
    .param p1, "listener"    # Lmobisocial/omlib/interfaces/MessageDeliveryListener;

    .prologue
    .line 623
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$12;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Messaging:Lmobisocial/omlib/client/ClientMessagingUtils;

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils;->notification:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->registerForDeliveryNotifications(Lmobisocial/omlib/interfaces/MessageDeliveryListener;J)V

    .line 624
    return-void
.end method

.method public registerSyncStateListener(Lmobisocial/omlib/interfaces/SyncStateListener;)V
    .registers 3
    .param p1, "listener"    # Lmobisocial/omlib/interfaces/SyncStateListener;

    .prologue
    .line 576
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$12;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmobisocial/omlib/client/LongdanClient;->addSyncListener(Lmobisocial/omlib/interfaces/SyncStateListener;)V

    .line 577
    return-void
.end method

.method public resetLikes(J)V
    .registers 4
    .param p1, "objectId"    # J

    .prologue
    .line 601
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$12;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Messaging:Lmobisocial/omlib/client/ClientMessagingUtils;

    invoke-virtual {v0, p1, p2}, Lmobisocial/omlib/client/ClientMessagingUtils;->resetLikes(J)V

    .line 602
    return-void
.end method

.method public send(Landroid/net/Uri;Lmobisocial/omlib/interfaces/Sendable;)V
    .registers 4
    .param p1, "feedUri"    # Landroid/net/Uri;
    .param p2, "obj"    # Lmobisocial/omlib/interfaces/Sendable;

    .prologue
    .line 559
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmobisocial/omlib/service/OmlibService$12;->send(Landroid/net/Uri;Lmobisocial/omlib/interfaces/Sendable;Lmobisocial/omlib/interfaces/MessageDeliveryListener;)V

    .line 560
    return-void
.end method

.method public send(Landroid/net/Uri;Lmobisocial/omlib/interfaces/Sendable;Lmobisocial/omlib/interfaces/MessageDeliveryListener;)V
    .registers 11
    .param p1, "feedUri"    # Landroid/net/Uri;
    .param p2, "obj"    # Lmobisocial/omlib/interfaces/Sendable;
    .param p3, "l"    # Lmobisocial/omlib/interfaces/MessageDeliveryListener;

    .prologue
    .line 564
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 565
    .local v2, "feedId":J
    iget-object v4, p0, Lmobisocial/omlib/service/OmlibService$12;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v4}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v4

    invoke-virtual {v4}, Lmobisocial/omlib/client/LongdanClient;->getDbHelper()Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v4

    const-class v5, Lmobisocial/omlib/db/entity/OMFeed;

    invoke-virtual {v4, v5, v2, v3}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMFeed;

    .line 566
    .local v0, "feed":Lmobisocial/omlib/db/entity/OMFeed;
    if-nez v0, :cond_31

    .line 567
    const-string v4, "OmlibService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t send message, feed not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :goto_30
    return-void

    .line 570
    :cond_31
    iget-object v4, v0, Lmobisocial/omlib/db/entity/OMFeed;->identifier:Ljava/lang/String;

    const-class v5, Lmobisocial/longdan/LDProtocols$LDFeed;

    invoke-static {v4, v5}, Lmobisocial/serialization/SerializationUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobisocial/longdan/LDProtocols$LDFeed;

    .line 571
    .local v1, "ldFeed":Lmobisocial/longdan/LDProtocols$LDFeed;
    iget-object v4, p0, Lmobisocial/omlib/service/OmlibService$12;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v4}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v4

    iget-object v4, v4, Lmobisocial/omlib/client/LongdanClient;->Messaging:Lmobisocial/omlib/client/ClientMessagingUtils;

    invoke-virtual {v4, v1, p2, p3}, Lmobisocial/omlib/client/ClientMessagingUtils;->send(Lmobisocial/longdan/LDProtocols$LDFeed;Lmobisocial/omlib/interfaces/Sendable;Lmobisocial/omlib/interfaces/MessageDeliveryListener;)V

    goto :goto_30
.end method

.method public storyForUrl(Landroid/net/Uri;)Lmobisocial/omlib/interfaces/Sendable;
    .registers 4
    .param p1, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 606
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$12;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Messaging:Lmobisocial/omlib/client/ClientMessagingUtils;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobisocial/omlib/client/ClientMessagingUtils;->fetchStoryForUrl(Ljava/net/URI;)Lmobisocial/omlib/interfaces/Sendable;

    move-result-object v0

    return-object v0
.end method

.method public unregisterDeliveryListener(Lmobisocial/omlib/interfaces/MessageDeliveryListener;)V
    .registers 6
    .param p1, "listener"    # Lmobisocial/omlib/interfaces/MessageDeliveryListener;

    .prologue
    .line 628
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$12;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Messaging:Lmobisocial/omlib/client/ClientMessagingUtils;

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils;->notification:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->unregisterForDeliveryNotifications(Lmobisocial/omlib/interfaces/MessageDeliveryListener;J)V

    .line 629
    return-void
.end method

.method public unregisterSyncStateListener(Lmobisocial/omlib/interfaces/SyncStateListener;)V
    .registers 3
    .param p1, "listener"    # Lmobisocial/omlib/interfaces/SyncStateListener;

    .prologue
    .line 581
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$12;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmobisocial/omlib/client/LongdanClient;->removeSyncListener(Lmobisocial/omlib/interfaces/SyncStateListener;)V

    .line 582
    return-void
.end method
