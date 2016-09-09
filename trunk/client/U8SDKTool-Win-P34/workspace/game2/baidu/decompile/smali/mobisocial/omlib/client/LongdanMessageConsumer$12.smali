.class Lmobisocial/omlib/client/LongdanMessageConsumer$12;
.super Ljava/lang/Object;
.source "LongdanMessageConsumer.java"

# interfaces
.implements Lmobisocial/omlib/db/DatabaseRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/LongdanMessageConsumer;->fetchDirtyFeeds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

.field final synthetic val$amCaughtUp:Z

.field final synthetic val$device:Lmobisocial/omlib/db/entity/OMDevice;

.field final synthetic val$feedsToFetch:Ljava/util/LinkedList;

.field final synthetic val$lastSyncedTime:[J

.field final synthetic val$response:Lmobisocial/longdan/LDProtocols$LDDirtyFeedsResponse;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanMessageConsumer;Lmobisocial/longdan/LDProtocols$LDDirtyFeedsResponse;[JZLmobisocial/omlib/db/entity/OMDevice;Ljava/util/LinkedList;)V
    .registers 7
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanMessageConsumer;

    .prologue
    .line 359
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$12;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    iput-object p2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$12;->val$response:Lmobisocial/longdan/LDProtocols$LDDirtyFeedsResponse;

    iput-object p3, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$12;->val$lastSyncedTime:[J

    iput-boolean p4, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$12;->val$amCaughtUp:Z

    iput-object p5, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$12;->val$device:Lmobisocial/omlib/db/entity/OMDevice;

    iput-object p6, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$12;->val$feedsToFetch:Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 15
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 363
    iget-object v4, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$12;->val$response:Lmobisocial/longdan/LDProtocols$LDDirtyFeedsResponse;

    iget-object v4, v4, Lmobisocial/longdan/LDProtocols$LDDirtyFeedsResponse;->Dirty:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobisocial/longdan/LDProtocols$LDDirtyFeed;

    .line 364
    .local v1, "dirtyFeed":Lmobisocial/longdan/LDProtocols$LDDirtyFeed;
    iget-object v5, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$12;->val$lastSyncedTime:[J

    const/4 v6, 0x0

    iget-object v7, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$12;->val$lastSyncedTime:[J

    const/4 v8, 0x0

    aget-wide v8, v7, v8

    iget-wide v10, v1, Lmobisocial/longdan/LDProtocols$LDDirtyFeed;->LastWriteTime:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    aput-wide v8, v5, v6

    .line 365
    iget-boolean v5, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$12;->val$amCaughtUp:Z

    if-eqz v5, :cond_33

    iget-wide v6, v1, Lmobisocial/longdan/LDProtocols$LDDirtyFeed;->LastWriteTime:J

    iget-object v5, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$12;->val$device:Lmobisocial/omlib/db/entity/OMDevice;

    iget-wide v8, v5, Lmobisocial/omlib/db/entity/OMDevice;->feedSyncSplit:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_33

    .line 411
    .end local v1    # "dirtyFeed":Lmobisocial/longdan/LDProtocols$LDDirtyFeed;
    :cond_32
    return-void

    .line 368
    .restart local v1    # "dirtyFeed":Lmobisocial/longdan/LDProtocols$LDDirtyFeed;
    :cond_33
    const-class v5, Lmobisocial/omlib/db/entity/OMFeed;

    iget-object v6, v1, Lmobisocial/longdan/LDProtocols$LDDirtyFeed;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    invoke-virtual {p1, v5, v6}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v2

    check-cast v2, Lmobisocial/omlib/db/entity/OMFeed;

    .line 369
    .local v2, "feed":Lmobisocial/omlib/db/entity/OMFeed;
    if-eqz v2, :cond_c5

    const/4 v3, 0x1

    .line 370
    .local v3, "wasInDb":Z
    :goto_40
    if-nez v2, :cond_81

    .line 371
    new-instance v2, Lmobisocial/omlib/db/entity/OMFeed;

    .end local v2    # "feed":Lmobisocial/omlib/db/entity/OMFeed;
    invoke-direct {v2}, Lmobisocial/omlib/db/entity/OMFeed;-><init>()V

    .line 372
    .restart local v2    # "feed":Lmobisocial/omlib/db/entity/OMFeed;
    const/16 v5, 0x1f

    iput v5, v2, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    .line 373
    iget-object v5, v1, Lmobisocial/longdan/LDProtocols$LDDirtyFeed;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    invoke-virtual {v5}, Lmobisocial/longdan/LDProtocols$LDFeed;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lmobisocial/omlib/db/entity/OMFeed;->identifier:Ljava/lang/String;

    .line 374
    iget-object v5, v1, Lmobisocial/longdan/LDProtocols$LDDirtyFeed;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    iget-object v5, v5, Lmobisocial/longdan/LDProtocols$LDFeed;->Kind:Ljava/lang/String;

    iput-object v5, v2, Lmobisocial/omlib/db/entity/OMFeed;->kind:Ljava/lang/String;

    .line 375
    const/4 v5, 0x1

    iput-boolean v5, v2, Lmobisocial/omlib/db/entity/OMFeed;->expired:Z

    .line 376
    const-wide/16 v6, 0x3e8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x48190800

    sub-long/2addr v8, v10

    mul-long/2addr v6, v8

    iput-wide v6, v2, Lmobisocial/omlib/db/entity/OMFeed;->newestFromService:J

    .line 377
    iget-wide v6, v2, Lmobisocial/omlib/db/entity/OMFeed;->newestFromService:J

    iput-wide v6, v2, Lmobisocial/omlib/db/entity/OMFeed;->oldestFromService:J

    .line 378
    iget-object v5, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$12;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    # getter for: Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v5}, Lmobisocial/omlib/client/LongdanMessageConsumer;->access$100(Lmobisocial/omlib/client/LongdanMessageConsumer;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v5

    iget-object v5, v5, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    invoke-virtual {v5, v2}, Lmobisocial/omlib/client/ClientFeedUtils;->shouldFullSync(Lmobisocial/omlib/db/entity/OMFeed;)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 379
    iget v5, v2, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v2, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    .line 386
    :cond_81
    iget-object v5, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$12;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    # getter for: Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v5}, Lmobisocial/omlib/client/LongdanMessageConsumer;->access$100(Lmobisocial/omlib/client/LongdanMessageConsumer;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v5

    iget-object v5, v5, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    iget-object v6, v1, Lmobisocial/longdan/LDProtocols$LDDirtyFeed;->Acceptance:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lmobisocial/omlib/client/ClientFeedUtils;->getAcceptanceFromString(Ljava/lang/String;)Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;

    move-result-object v0

    .line 387
    .local v0, "acceptance":Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;
    invoke-virtual {v0}, Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;->ordinal()I

    move-result v5

    int-to-long v6, v5

    iput-wide v6, v2, Lmobisocial/omlib/db/entity/OMFeed;->acceptance:J

    .line 388
    const/4 v5, 0x1

    iput-boolean v5, v2, Lmobisocial/omlib/db/entity/OMFeed;->hasWriteAccess:Z

    .line 389
    iget-wide v6, v1, Lmobisocial/longdan/LDProtocols$LDDirtyFeed;->LastWriteTime:J

    iget-object v5, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$12;->val$response:Lmobisocial/longdan/LDProtocols$LDDirtyFeedsResponse;

    iget-wide v8, v5, Lmobisocial/longdan/LDProtocols$LDDirtyFeedsResponse;->Window:J

    add-long/2addr v6, v8

    iput-wide v6, v2, Lmobisocial/omlib/db/entity/OMFeed;->approximateDirtyTime:J

    .line 390
    iget v5, v2, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v2, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    .line 392
    iget v5, v2, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    and-int/lit8 v5, v5, -0x3

    iput v5, v2, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    .line 393
    sget-object v5, Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;->Blocked:Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;

    if-ne v0, v5, :cond_bc

    .line 394
    iget v5, v2, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    and-int/lit8 v5, v5, -0x2

    iput v5, v2, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    .line 395
    iget v5, v2, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    if-eqz v5, :cond_8

    .line 399
    :cond_bc
    sget-object v5, Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;->Removed:Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;

    if-ne v0, v5, :cond_c8

    .line 400
    invoke-virtual {p1, v2}, Lmobisocial/omlib/db/OMSQLiteHelper;->deleteObject(Lmobisocial/omlib/db/util/OMBase;)Z

    goto/16 :goto_8

    .line 369
    .end local v0    # "acceptance":Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;
    .end local v3    # "wasInDb":Z
    :cond_c5
    const/4 v3, 0x0

    goto/16 :goto_40

    .line 403
    .restart local v0    # "acceptance":Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;
    .restart local v3    # "wasInDb":Z
    :cond_c8
    iget-object v5, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$12;->val$feedsToFetch:Ljava/util/LinkedList;

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 404
    if-eqz v3, :cond_d4

    .line 405
    invoke-virtual {p1, v2}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    goto/16 :goto_8

    .line 407
    :cond_d4
    invoke-virtual {p1, v2}, Lmobisocial/omlib/db/OMSQLiteHelper;->insertObject(Lmobisocial/omlib/db/util/OMBase;)V

    goto/16 :goto_8
.end method
