.class Lmobisocial/omlib/service/OmlibService$11;
.super Ljava/lang/Object;
.source "OmlibService.java"

# interfaces
.implements Lmobisocial/omlib/api/OmletFeedApi;


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
    .line 417
    iput-object p1, p0, Lmobisocial/omlib/service/OmlibService$11;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptInvitationForFeed(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 11
    .param p1, "feedIdentifier"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/omlib/exception/NetworkException;
        }
    .end annotation

    .prologue
    .line 485
    :try_start_0
    new-instance v1, Lmobisocial/omlib/db/entity/OMFeed;

    invoke-direct {v1}, Lmobisocial/omlib/db/entity/OMFeed;-><init>()V

    .line 486
    .local v1, "f":Lmobisocial/omlib/db/entity/OMFeed;
    iput-object p1, v1, Lmobisocial/omlib/db/entity/OMFeed;->identifier:Ljava/lang/String;

    .line 487
    new-instance v2, Lmobisocial/longdan/LDProtocols$LDJoinFeedRequest;

    invoke-direct {v2}, Lmobisocial/longdan/LDProtocols$LDJoinFeedRequest;-><init>()V

    .line 488
    .local v2, "req":Lmobisocial/longdan/LDProtocols$LDJoinFeedRequest;
    iput-object p2, v2, Lmobisocial/longdan/LDProtocols$LDJoinFeedRequest;->Pin:Ljava/lang/String;

    .line 489
    invoke-virtual {v1}, Lmobisocial/omlib/db/entity/OMFeed;->getLdFeed()Lmobisocial/longdan/LDProtocols$LDFeed;

    move-result-object v4

    iput-object v4, v2, Lmobisocial/longdan/LDProtocols$LDJoinFeedRequest;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    .line 490
    iget-object v4, p0, Lmobisocial/omlib/service/OmlibService$11;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v4}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v4

    invoke-virtual {v4}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v4

    const-class v5, Lmobisocial/longdan/LDProtocols$LDSimpleResponse;

    invoke-virtual {v4, v2, v5}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    .line 491
    const/4 v4, 0x1

    new-array v3, v4, [Lmobisocial/omlib/db/entity/OMFeed;

    .line 492
    .local v3, "result":[Lmobisocial/omlib/db/entity/OMFeed;
    iget-object v4, p0, Lmobisocial/omlib/service/OmlibService$11;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v4}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v4

    new-instance v5, Lmobisocial/omlib/service/OmlibService$11$3;

    invoke-direct {v5, p0, v3, v2}, Lmobisocial/omlib/service/OmlibService$11$3;-><init>(Lmobisocial/omlib/service/OmlibService$11;[Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/longdan/LDProtocols$LDJoinFeedRequest;)V

    invoke-virtual {v4, v5}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThreadAndWait(Lmobisocial/omlib/db/DatabaseRunnable;)V

    .line 499
    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-nez v4, :cond_3b

    .line 500
    const/4 v4, 0x0

    .line 502
    :goto_3a
    return-object v4

    :cond_3b
    iget-object v4, p0, Lmobisocial/omlib/service/OmlibService$11;->this$0:Lmobisocial/omlib/service/OmlibService;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    iget-wide v6, v5, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    invoke-static {v4, v6, v7}, Lmobisocial/omlib/model/OmletModel$Feeds;->uriForFeed(Landroid/content/Context;J)Landroid/net/Uri;
    :try_end_45
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_0 .. :try_end_45} :catch_47

    move-result-object v4

    goto :goto_3a

    .line 503
    .end local v1    # "f":Lmobisocial/omlib/db/entity/OMFeed;
    .end local v2    # "req":Lmobisocial/longdan/LDProtocols$LDJoinFeedRequest;
    .end local v3    # "result":[Lmobisocial/omlib/db/entity/OMFeed;
    :catch_47
    move-exception v0

    .line 504
    .local v0, "e":Lmobisocial/longdan/exception/LongdanException;
    new-instance v4, Lmobisocial/omlib/exception/NetworkException;

    invoke-direct {v4, v0}, Lmobisocial/omlib/exception/NetworkException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method public varargs addAccountsToFeed(Landroid/net/Uri;[Ljava/lang/String;)V
    .registers 5
    .param p1, "localUri"    # Landroid/net/Uri;
    .param p2, "accounts"    # [Ljava/lang/String;

    .prologue
    .line 437
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$11;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    new-instance v1, Lmobisocial/omlib/service/OmlibService$11$2;

    invoke-direct {v1, p0, p1, p2}, Lmobisocial/omlib/service/OmlibService$11$2;-><init>(Lmobisocial/omlib/service/OmlibService$11;Landroid/net/Uri;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThread(Lmobisocial/omlib/db/DatabaseRunnable;)V

    .line 452
    return-void
.end method

.method public createFeed(Lmobisocial/omlib/api/OmletFeedApi$FeedKind;)Landroid/net/Uri;
    .registers 4
    .param p1, "kind"    # Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

    .prologue
    .line 421
    sget-object v0, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->Chat:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

    if-eq p1, v0, :cond_8

    sget-object v0, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->Control:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

    if-ne p1, v0, :cond_1a

    .line 422
    :cond_8
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$11;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    new-instance v1, Lmobisocial/omlib/service/OmlibService$11$1;

    invoke-direct {v1, p0, p1}, Lmobisocial/omlib/service/OmlibService$11$1;-><init>(Lmobisocial/omlib/service/OmlibService$11;Lmobisocial/omlib/api/OmletFeedApi$FeedKind;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/client/LongdanClient;->callOnDbThreadAndWait(Lmobisocial/omlib/db/DatabaseCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0

    .line 431
    :cond_1a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can only create chats and control feeds"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enablePushNotifications(Landroid/net/Uri;Z)V
    .registers 7
    .param p1, "feedUri"    # Landroid/net/Uri;
    .param p2, "showPushNotifications"    # Z

    .prologue
    .line 551
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$11;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p2}, Lmobisocial/omlib/client/ClientFeedUtils;->enablePushNotifications(JZ)V

    .line 552
    return-void
.end method

.method public getFeedInvitationLink(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 8
    .param p1, "feedUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/omlib/exception/NetworkException;
        }
    .end annotation

    .prologue
    .line 474
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 475
    .local v2, "feedId":J
    iget-object v4, p0, Lmobisocial/omlib/service/OmlibService$11;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v4}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v4

    invoke-virtual {v4}, Lmobisocial/omlib/client/LongdanClient;->getDbHelper()Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v4

    const-class v5, Lmobisocial/omlib/db/entity/OMFeed;

    invoke-virtual {v4, v5, v2, v3}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMFeed;

    .line 476
    .local v0, "feed":Lmobisocial/omlib/db/entity/OMFeed;
    if-nez v0, :cond_1a

    .line 477
    const/4 v4, 0x0

    .line 479
    :goto_19
    return-object v4

    .line 478
    :cond_1a
    iget-object v4, p0, Lmobisocial/omlib/service/OmlibService$11;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v4}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v4

    iget-object v4, v4, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    invoke-virtual {v4, v0}, Lmobisocial/omlib/client/ClientFeedUtils;->getFeedSharingLink(Lmobisocial/omlib/db/entity/OMFeed;)Ljava/net/URI;

    move-result-object v1

    .line 479
    .local v1, "uri":Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_19
.end method

.method public getFixedMembershipFeed(Ljava/util/List;)Landroid/net/Uri;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 465
    .local p1, "givenAccounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 466
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t provide no accounts to this method"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 468
    :cond_10
    iget-object v1, p0, Lmobisocial/omlib/service/OmlibService$11;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v1}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v1

    iget-object v1, v1, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    sget-object v2, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->Direct:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

    invoke-virtual {v1, v2, p1}, Lmobisocial/omlib/client/ClientFeedUtils;->getFixedMembershipFeed(Lmobisocial/omlib/api/OmletFeedApi$FeedKind;Ljava/util/List;)Lmobisocial/omlib/db/entity/OMFeed;

    move-result-object v0

    .line 469
    .local v0, "feed":Lmobisocial/omlib/db/entity/OMFeed;
    iget-object v1, p0, Lmobisocial/omlib/service/OmlibService$11;->this$0:Lmobisocial/omlib/service/OmlibService;

    iget-wide v2, v0, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    invoke-static {v1, v2, v3}, Lmobisocial/omlib/model/OmletModel$Feeds;->uriForFeed(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getOrCreateFeedWithAccounts(Ljava/util/List;)Landroid/net/Uri;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 456
    .local p1, "givenAccounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 457
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t provide no accounts to this method"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 459
    :cond_10
    iget-object v1, p0, Lmobisocial/omlib/service/OmlibService$11;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v1}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v1

    iget-object v1, v1, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    sget-object v2, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->Chat:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

    invoke-virtual {v1, v2, p1}, Lmobisocial/omlib/client/ClientFeedUtils;->getOrCreateFeedWithAccounts(Lmobisocial/omlib/api/OmletFeedApi$FeedKind;Ljava/util/List;)Lmobisocial/omlib/db/entity/OMFeed;

    move-result-object v0

    .line 460
    .local v0, "feed":Lmobisocial/omlib/db/entity/OMFeed;
    iget-object v1, p0, Lmobisocial/omlib/service/OmlibService$11;->this$0:Lmobisocial/omlib/service/OmlibService;

    iget-wide v2, v0, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    invoke-static {v1, v2, v3}, Lmobisocial/omlib/model/OmletModel$Feeds;->uriForFeed(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public markFeedActive(Landroid/net/Uri;)V
    .registers 6
    .param p1, "feedUri"    # Landroid/net/Uri;

    .prologue
    .line 520
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$11;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmobisocial/omlib/client/ClientFeedUtils;->markFeedActive(J)V

    .line 521
    return-void
.end method

.method public markFeedInactive(Landroid/net/Uri;)V
    .registers 6
    .param p1, "feedUri"    # Landroid/net/Uri;

    .prologue
    .line 535
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$11;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmobisocial/omlib/client/ClientFeedUtils;->markFeedInactive(J)V

    .line 536
    return-void
.end method

.method public markFeedRead(Landroid/net/Uri;)V
    .registers 6
    .param p1, "feedUri"    # Landroid/net/Uri;

    .prologue
    .line 515
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$11;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmobisocial/omlib/client/ClientFeedUtils;->markFeedRead(J)V

    .line 516
    return-void
.end method

.method public removeMemberFromFeed(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 7
    .param p1, "feedUri"    # Landroid/net/Uri;
    .param p2, "accountInFeed"    # Ljava/lang/String;

    .prologue
    .line 525
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$11;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p2}, Lmobisocial/omlib/client/ClientFeedUtils;->removeMemberFromFeed(JLjava/lang/String;)V

    .line 526
    return-void
.end method

.method public sendActiveStatusIndicator(Landroid/net/Uri;Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;)V
    .registers 7
    .param p1, "feedUri"    # Landroid/net/Uri;
    .param p2, "action"    # Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;

    .prologue
    .line 510
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$11;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p2}, Lmobisocial/omlib/client/ClientFeedUtils;->sendActiveStatusIndicator(JLmobisocial/omlib/api/OmletFeedApi$StatusIndicator;)V

    .line 511
    return-void
.end method

.method public setFeedImage(Landroid/net/Uri;Ljava/io/InputStream;)Landroid/net/Uri;
    .registers 7
    .param p1, "feedUri"    # Landroid/net/Uri;
    .param p2, "image"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 540
    iget-object v1, p0, Lmobisocial/omlib/service/OmlibService$11;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v1}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v1

    iget-object v1, v1, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p2}, Lmobisocial/omlib/client/ClientFeedUtils;->setFeedImage(JLjava/io/InputStream;)[B

    move-result-object v0

    .line 541
    .local v0, "hash":[B
    iget-object v1, p0, Lmobisocial/omlib/service/OmlibService$11;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-static {v1, v0}, Lmobisocial/omlib/model/OmletModel$Blobs;->uriForBlob(Landroid/content/Context;[B)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public setFeedName(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 7
    .param p1, "feedUri"    # Landroid/net/Uri;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 546
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$11;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p2}, Lmobisocial/omlib/client/ClientFeedUtils;->setFeedName(JLjava/lang/String;)V

    .line 547
    return-void
.end method

.method public subscribeForRealtime(Landroid/net/Uri;Lmobisocial/omlib/interfaces/RealtimeCallback;)V
    .registers 7
    .param p1, "feedUri"    # Landroid/net/Uri;
    .param p2, "realtimeCallback"    # Lmobisocial/omlib/interfaces/RealtimeCallback;

    .prologue
    .line 530
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$11;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p2}, Lmobisocial/omlib/client/ClientFeedUtils;->subscribeForRealtime(JLmobisocial/omlib/interfaces/RealtimeCallback;)V

    .line 531
    return-void
.end method
