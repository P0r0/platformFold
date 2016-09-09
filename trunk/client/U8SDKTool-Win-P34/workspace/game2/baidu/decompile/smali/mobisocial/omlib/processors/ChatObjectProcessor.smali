.class public Lmobisocial/omlib/processors/ChatObjectProcessor;
.super Ljava/lang/Object;
.source "ChatObjectProcessor.java"

# interfaces
.implements Lmobisocial/omlib/client/interfaces/DurableMessageProcessor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginBatch(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;)V
    .registers 3
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;

    .prologue
    .line 23
    return-void
.end method

.method public endBatch(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 4
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 113
    return-void
.end method

.method public processDelete(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/longdan/LDProtocols$LDMessage;Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;)V
    .registers 11
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;
    .param p4, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;
    .param p5, "msg"    # Lmobisocial/longdan/LDProtocols$LDMessage;
    .param p6, "record"    # Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;

    .prologue
    .line 105
    const-class v1, Lmobisocial/omlib/db/entity/OMObject;

    iget-object v2, p6, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;->databaseRecord:Lmobisocial/omlib/db/entity/OMMessage;

    iget-wide v2, v2, Lmobisocial/omlib/db/entity/OMMessage;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMObject;

    .line 106
    .local v0, "o":Lmobisocial/omlib/db/entity/OMObject;
    if-eqz v0, :cond_15

    .line 107
    invoke-static {p2, p3, p4, v0}, Lmobisocial/omlib/processors/DeleteProcessor;->performDelete(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/omlib/db/entity/OMObject;)V

    .line 109
    :cond_15
    return-void
.end method

.method public processMessage(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/omlib/db/entity/OMAccount;Lmobisocial/longdan/LDProtocols$LDMessage;Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;)V
    .registers 28
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;
    .param p4, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;
    .param p5, "sender"    # Lmobisocial/omlib/db/entity/OMAccount;
    .param p6, "msg"    # Lmobisocial/longdan/LDProtocols$LDMessage;
    .param p7, "receipt"    # Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;

    .prologue
    .line 27
    move-object/from16 v0, p6

    iget-object v4, v0, Lmobisocial/longdan/LDProtocols$LDMessage;->Body:[B

    const-class v5, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    invoke-static {v4, v5}, Lmobisocial/serialization/SerializationUtils;->fromJson([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    .line 28
    .local v7, "omo":Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;
    iget-object v4, v7, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->profileVersion:Ljava/lang/Long;

    if-eqz v4, :cond_2a

    move-object/from16 v0, p5

    iget-wide v4, v0, Lmobisocial/omlib/db/entity/OMAccount;->profileVersion:J

    iget-object v6, v7, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->profileVersion:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v4, v4, v8

    if-gez v4, :cond_2a

    .line 29
    const/4 v4, 0x0

    move-object/from16 v0, p5

    iput-boolean v4, v0, Lmobisocial/omlib/db/entity/OMAccount;->upToDate:Z

    .line 30
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 32
    :cond_2a
    move-object/from16 v0, p6

    iget-wide v4, v0, Lmobisocial/longdan/LDProtocols$LDMessage;->Timestamp:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-nez v4, :cond_18d

    move-object/from16 v0, p7

    iget-object v4, v0, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;->localObjectId:Ljava/lang/Long;

    if-nez v4, :cond_18d

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 34
    .local v12, "currentTime":J
    invoke-virtual/range {p1 .. p1}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v4

    invoke-virtual {v4}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->getServerTimeDelta()J

    move-result-wide v4

    add-long/2addr v12, v4

    .line 35
    move-object/from16 v0, p4

    iget-wide v4, v0, Lmobisocial/omlib/db/entity/OMFeed;->renderableTime:J

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v7, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->serverTimestamp:Ljava/lang/Long;

    .line 39
    .end local v12    # "currentTime":J
    :goto_58
    move-object/from16 v0, p5

    iget-object v4, v0, Lmobisocial/omlib/db/entity/OMAccount;->id:Ljava/lang/Long;

    iput-object v4, v7, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->senderId:Ljava/lang/Long;

    .line 40
    move-object/from16 v0, p4

    iget-wide v4, v0, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v7, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->feedId:Ljava/lang/Long;

    .line 41
    move-object/from16 v0, p6

    iget-object v4, v0, Lmobisocial/longdan/LDProtocols$LDMessage;->Id:Lmobisocial/longdan/LDProtocols$LDTypedId;

    iget-object v4, v4, Lmobisocial/longdan/LDProtocols$LDTypedId;->Type:Ljava/lang/String;

    iput-object v4, v7, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->type:Ljava/lang/String;

    .line 42
    move-object/from16 v0, p7

    iget-object v4, v0, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;->databaseRecord:Lmobisocial/omlib/db/entity/OMMessage;

    iget-wide v4, v4, Lmobisocial/omlib/db/entity/OMMessage;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v7, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->messageId:Ljava/lang/Long;

    .line 43
    move-object/from16 v0, p7

    iget-object v4, v0, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;->hashForSend:Ljava/lang/Long;

    if-nez v4, :cond_19c

    .line 44
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v7, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->messageStatus:Ljava/lang/Integer;

    :goto_89
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 49
    invoke-virtual/range {v4 .. v10}, Lmobisocial/omlib/processors/ChatObjectProcessor;->processObject(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/entity/OMObject;Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/omlib/db/entity/OMAccount;Lmobisocial/longdan/LDProtocols$LDMessage;)Z

    move-result v4

    if-eqz v4, :cond_186

    .line 50
    const-class v4, Lmobisocial/omlib/db/entity/OMObject;

    move-object/from16 v0, p7

    iget-object v5, v0, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;->databaseRecord:Lmobisocial/omlib/db/entity/OMMessage;

    iget-wide v8, v5, Lmobisocial/omlib/db/entity/OMMessage;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v11

    check-cast v11, Lmobisocial/omlib/db/entity/OMObject;

    .line 51
    .local v11, "existing":Lmobisocial/omlib/db/entity/OMObject;
    if-eqz v11, :cond_1b1

    .line 52
    sget v4, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v5, 0x3

    if-gt v4, v5, :cond_d4

    .line 53
    const-string v4, "Omlib-processor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating duplicate object "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p6

    iget-object v6, v0, Lmobisocial/longdan/LDProtocols$LDMessage;->Id:Lmobisocial/longdan/LDProtocols$LDTypedId;

    iget-object v6, v6, Lmobisocial/longdan/LDProtocols$LDTypedId;->Type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_d4
    iget-object v4, v11, Lmobisocial/omlib/db/entity/OMObject;->id:Ljava/lang/Long;

    iput-object v4, v7, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->id:Ljava/lang/Long;

    .line 55
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 61
    :goto_dd
    const/4 v14, 0x0

    .line 62
    .local v14, "feedUpdated":Z
    iget-object v4, v7, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->serverTimestamp:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p4

    iget-wide v8, v0, Lmobisocial/omlib/db/entity/OMFeed;->renderableTime:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_101

    .line 63
    iget-object v4, v7, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->id:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p4

    iput-wide v4, v0, Lmobisocial/omlib/db/entity/OMFeed;->renderableObjId:J

    .line 64
    iget-object v4, v7, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->serverTimestamp:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p4

    iput-wide v4, v0, Lmobisocial/omlib/db/entity/OMFeed;->renderableTime:J

    .line 65
    const/4 v14, 0x1

    .line 67
    :cond_101
    move-object/from16 v0, p4

    iget-wide v0, v0, Lmobisocial/omlib/db/entity/OMFeed;->lastReadTime:J

    move-wide/from16 v16, v0

    .line 68
    .local v16, "lastReadTime":J
    const-wide/16 v4, 0x0

    cmp-long v4, v16, v4

    if-nez v4, :cond_111

    .line 69
    invoke-virtual/range {p1 .. p1}, Lmobisocial/omlib/client/LongdanClient;->getInitialInstallTime()J

    move-result-wide v16

    .line 71
    :cond_111
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p5

    iget-boolean v5, v0, Lmobisocial/omlib/db/entity/OMAccount;->owned:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12b

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v5, v7, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->silent:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ec

    :cond_12b
    const/4 v15, 0x1

    .line 72
    .local v15, "skipNotify":Z
    :goto_12c
    iget-object v4, v7, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->notify:Ljava/util/List;

    if-eqz v4, :cond_141

    .line 73
    iget-object v4, v7, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->notify:Ljava/util/List;

    move-object/from16 v0, p1

    iget-object v5, v0, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-virtual {v5}, Lmobisocial/omlib/client/ClientAuthUtils;->getAccount()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1ef

    const/4 v15, 0x1

    .line 75
    :cond_141
    :goto_141
    if-nez v15, :cond_17d

    .line 77
    iget-object v4, v7, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->serverTimestamp:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lmobisocial/omlib/client/LongdanClient;->getInitialInstallTime()J

    move-result-wide v8

    cmp-long v4, v4, v8

    if-lez v4, :cond_158

    .line 78
    invoke-virtual/range {p1 .. p1}, Lmobisocial/omlib/client/LongdanClient;->getNotificationProvider()Lmobisocial/omlib/client/interfaces/NotificationProvider;

    move-result-object v4

    invoke-interface {v4, v7}, Lmobisocial/omlib/client/interfaces/NotificationProvider;->queueObjectPushedEvent(Lmobisocial/omlib/db/entity/OMObject;)V

    .line 80
    :cond_158
    iget-object v4, v7, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->serverTimestamp:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v16

    if-lez v4, :cond_17d

    .line 81
    move-object/from16 v0, p1

    iget-object v4, v0, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    move-object/from16 v0, p4

    iget-wide v8, v0, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    invoke-virtual {v4, v8, v9}, Lmobisocial/omlib/client/ClientFeedUtils;->isFeedActive(J)Z

    move-result v4

    if-eqz v4, :cond_1f2

    .line 82
    move-object/from16 v0, p1

    iget-object v4, v0, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lmobisocial/omlib/client/ClientFeedUtils;->markFeedReadFromProcessorThread(Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V

    .line 89
    :cond_17d
    :goto_17d
    if-eqz v14, :cond_186

    .line 90
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 93
    .end local v11    # "existing":Lmobisocial/omlib/db/entity/OMObject;
    .end local v14    # "feedUpdated":Z
    .end local v15    # "skipNotify":Z
    .end local v16    # "lastReadTime":J
    :cond_186
    iget-object v4, v7, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->id:Ljava/lang/Long;

    move-object/from16 v0, p7

    iput-object v4, v0, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;->localObjectId:Ljava/lang/Long;

    .line 94
    return-void

    .line 37
    :cond_18d
    move-object/from16 v0, p6

    iget-wide v4, v0, Lmobisocial/longdan/LDProtocols$LDMessage;->Timestamp:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v7, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->serverTimestamp:Ljava/lang/Long;

    goto/16 :goto_58

    .line 46
    :cond_19c
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v7, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->messageStatus:Ljava/lang/Integer;

    .line 47
    move-object/from16 v0, p7

    iget-object v4, v0, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;->databaseRecord:Lmobisocial/omlib/db/entity/OMMessage;

    iget-wide v4, v4, Lmobisocial/omlib/db/entity/OMMessage;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v7, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->outgoingId:Ljava/lang/Long;

    goto/16 :goto_89

    .line 57
    .restart local v11    # "existing":Lmobisocial/omlib/db/entity/OMObject;
    :cond_1b1
    move-object/from16 v0, p5

    iget-object v4, v0, Lmobisocial/omlib/db/entity/OMAccount;->messageCount:Ljava/lang/Long;

    if-eqz v4, :cond_1e9

    move-object/from16 v0, p5

    iget-object v4, v0, Lmobisocial/omlib/db/entity/OMAccount;->messageCount:Ljava/lang/Long;

    move-object/from16 v0, p5

    iget-object v5, v0, Lmobisocial/omlib/db/entity/OMAccount;->messageCount:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v18, 0x1

    add-long v8, v8, v18

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p5

    iput-object v5, v0, Lmobisocial/omlib/db/entity/OMAccount;->messageCount:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_1d3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p5

    iput-object v4, v0, Lmobisocial/omlib/db/entity/OMAccount;->messageCount:Ljava/lang/Long;

    .line 58
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lmobisocial/omlib/db/OMSQLiteHelper;->insertObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 59
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    goto/16 :goto_dd

    .line 57
    :cond_1e9
    const-wide/16 v4, 0x1

    goto :goto_1d3

    .line 71
    .restart local v14    # "feedUpdated":Z
    .restart local v16    # "lastReadTime":J
    :cond_1ec
    const/4 v15, 0x0

    goto/16 :goto_12c

    .line 73
    .restart local v15    # "skipNotify":Z
    :cond_1ef
    const/4 v15, 0x0

    goto/16 :goto_141

    .line 84
    :cond_1f2
    move-object/from16 v0, p4

    iget-wide v4, v0, Lmobisocial/omlib/db/entity/OMFeed;->numUnread:J

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    move-object/from16 v0, p4

    iput-wide v4, v0, Lmobisocial/omlib/db/entity/OMFeed;->numUnread:J

    .line 85
    const/4 v14, 0x1

    goto/16 :goto_17d
.end method

.method protected processObject(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/entity/OMObject;Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/omlib/db/entity/OMAccount;Lmobisocial/longdan/LDProtocols$LDMessage;)Z
    .registers 8
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "obj"    # Lmobisocial/omlib/db/entity/OMObject;
    .param p4, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;
    .param p5, "sender"    # Lmobisocial/omlib/db/entity/OMAccount;
    .param p6, "msg"    # Lmobisocial/longdan/LDProtocols$LDMessage;

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method
