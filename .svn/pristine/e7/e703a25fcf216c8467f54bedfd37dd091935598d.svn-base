.class public Lmobisocial/omlib/processors/DeleteProcessor;
.super Ljava/lang/Object;
.source "DeleteProcessor.java"

# interfaces
.implements Lmobisocial/omlib/client/interfaces/DurableMessageProcessor;


# instance fields
.field mBatch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static performDelete(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/omlib/db/entity/OMObject;)V
    .registers 10
    .param p0, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p1, "postCommit"    # Lmobisocial/omlib/db/PostCommit;
    .param p2, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;
    .param p3, "o"    # Lmobisocial/omlib/db/entity/OMObject;

    .prologue
    .line 67
    invoke-virtual {p0, p3}, Lmobisocial/omlib/db/OMSQLiteHelper;->deleteObject(Lmobisocial/omlib/db/util/OMBase;)Z

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "feedUpdated":Z
    iget-wide v2, p2, Lmobisocial/omlib/db/entity/OMFeed;->lastReadTime:J

    iget-object v1, p3, Lmobisocial/omlib/db/entity/OMObject;->serverTimestamp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_20

    .line 70
    iget-wide v2, p2, Lmobisocial/omlib/db/entity/OMFeed;->numUnread:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_20

    .line 71
    const/4 v0, 0x1

    .line 72
    iget-wide v2, p2, Lmobisocial/omlib/db/entity/OMFeed;->numUnread:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p2, Lmobisocial/omlib/db/entity/OMFeed;->numUnread:J

    .line 75
    :cond_20
    iget-wide v2, p2, Lmobisocial/omlib/db/entity/OMFeed;->renderableObjId:J

    iget-object v1, p3, Lmobisocial/omlib/db/entity/OMObject;->id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_30

    .line 76
    invoke-static {p0, p1, p2}, Lmobisocial/omlib/processors/DeleteProcessor;->updateFeedRenderables(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/db/entity/OMFeed;)V

    .line 77
    const/4 v0, 0x1

    .line 79
    :cond_30
    if-eqz v0, :cond_35

    .line 80
    invoke-virtual {p0, p2}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 81
    :cond_35
    return-void
.end method

.method private static updateFeedRenderables(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/db/entity/OMFeed;)V
    .registers 12
    .param p0, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p1, "postCommit"    # Lmobisocial/omlib/db/PostCommit;
    .param p2, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    .line 84
    iput-wide v4, p2, Lmobisocial/omlib/db/entity/OMFeed;->renderableObjId:J

    .line 85
    iput-wide v4, p2, Lmobisocial/omlib/db/entity/OMFeed;->renderableTime:J

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v1, "query":Ljava/lang/StringBuilder;
    const-string v3, "feedId"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND deleted != 1 ORDER BY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "serverTimestamp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " DESC LIMIT 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-class v3, Lmobisocial/omlib/db/entity/OMObject;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    iget-wide v6, p2, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v3, v4, v5}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectsByQuery(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 89
    .local v2, "res":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/db/entity/OMObject;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5a

    .line 90
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMObject;

    .line 91
    .local v0, "o":Lmobisocial/omlib/db/entity/OMObject;
    iget-object v3, v0, Lmobisocial/omlib/db/entity/OMObject;->id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p2, Lmobisocial/omlib/db/entity/OMFeed;->renderableObjId:J

    .line 92
    iget-object v3, v0, Lmobisocial/omlib/db/entity/OMObject;->serverTimestamp:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p2, Lmobisocial/omlib/db/entity/OMFeed;->renderableTime:J

    .line 94
    .end local v0    # "o":Lmobisocial/omlib/db/entity/OMObject;
    :cond_5a
    return-void
.end method


# virtual methods
.method public beginBatch(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;)V
    .registers 4
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;

    .prologue
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/processors/DeleteProcessor;->mBatch:Ljava/util/List;

    .line 25
    return-void
.end method

.method public endBatch(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 4
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 59
    return-void
.end method

.method public processDelete(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/longdan/LDProtocols$LDMessage;Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;)V
    .registers 7
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;
    .param p4, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;
    .param p5, "msg"    # Lmobisocial/longdan/LDProtocols$LDMessage;
    .param p6, "record"    # Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;

    .prologue
    .line 55
    return-void
.end method

.method public processMessage(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/omlib/db/entity/OMAccount;Lmobisocial/longdan/LDProtocols$LDMessage;Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;)V
    .registers 16
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;
    .param p4, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;
    .param p5, "sender"    # Lmobisocial/omlib/db/entity/OMAccount;
    .param p6, "msg"    # Lmobisocial/longdan/LDProtocols$LDMessage;
    .param p7, "receipt"    # Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;

    .prologue
    .line 29
    iget-object v5, p6, Lmobisocial/longdan/LDProtocols$LDMessage;->Body:[B

    const-class v6, Lmobisocial/omlib/db/entity/OMObject;

    invoke-static {v5, v6}, Lmobisocial/serialization/SerializationUtils;->fromJson([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobisocial/omlib/db/entity/OMObject;

    .line 30
    .local v1, "omo":Lmobisocial/omlib/db/entity/OMObject;
    iget-object v5, v1, Lmobisocial/omlib/db/entity/OMObject;->referenceId:[B

    const-class v6, Lmobisocial/longdan/LDProtocols$LDTypedId;

    invoke-static {v5, v6}, Lmobisocial/serialization/SerializationUtils;->fromJson([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobisocial/longdan/LDProtocols$LDTypedId;

    .line 31
    .local v4, "referenceId":Lmobisocial/longdan/LDProtocols$LDTypedId;
    iget-object v5, p1, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    invoke-virtual {p4}, Lmobisocial/omlib/db/entity/OMFeed;->getLdFeed()Lmobisocial/longdan/LDProtocols$LDFeed;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lmobisocial/omlib/client/ClientFeedUtils;->makeFeedIdTypedId(Lmobisocial/longdan/LDProtocols$LDFeed;Lmobisocial/longdan/LDProtocols$LDTypedId;)[B

    move-result-object v0

    .line 32
    .local v0, "encodedReferenceId":[B
    const-class v5, Lmobisocial/omlib/db/entity/OMMessage;

    invoke-virtual {p2, v5, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v2

    check-cast v2, Lmobisocial/omlib/db/entity/OMMessage;

    .line 33
    .local v2, "parentMsg":Lmobisocial/omlib/db/entity/OMMessage;
    if-nez v2, :cond_37

    .line 35
    new-instance v2, Lmobisocial/omlib/db/entity/OMMessage;

    .end local v2    # "parentMsg":Lmobisocial/omlib/db/entity/OMMessage;
    invoke-direct {v2}, Lmobisocial/omlib/db/entity/OMMessage;-><init>()V

    .line 36
    .restart local v2    # "parentMsg":Lmobisocial/omlib/db/entity/OMMessage;
    iput-object v0, v2, Lmobisocial/omlib/db/entity/OMMessage;->feedIdTypedId:[B

    .line 37
    iget-wide v6, p6, Lmobisocial/longdan/LDProtocols$LDMessage;->Timestamp:J

    iput-wide v6, v2, Lmobisocial/omlib/db/entity/OMMessage;->timestamp:J

    .line 38
    invoke-virtual {p2, v2}, Lmobisocial/omlib/db/OMSQLiteHelper;->insertObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 51
    :cond_36
    :goto_36
    return-void

    .line 41
    :cond_37
    const-class v5, Lmobisocial/omlib/db/entity/OMObject;

    iget-wide v6, v2, Lmobisocial/omlib/db/entity/OMMessage;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v3

    check-cast v3, Lmobisocial/omlib/db/entity/OMObject;

    .line 42
    .local v3, "parentObj":Lmobisocial/omlib/db/entity/OMObject;
    if-eqz v3, :cond_36

    .line 45
    iget-boolean v5, p5, Lmobisocial/omlib/db/entity/OMAccount;->owned:Z

    if-nez v5, :cond_56

    .line 46
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v3, Lmobisocial/omlib/db/entity/OMObject;->deleted:Ljava/lang/Boolean;

    .line 47
    invoke-virtual {p2, v3}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    goto :goto_36

    .line 49
    :cond_56
    invoke-static {p2, p3, p4, v3}, Lmobisocial/omlib/processors/DeleteProcessor;->performDelete(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/omlib/db/entity/OMObject;)V

    goto :goto_36
.end method
