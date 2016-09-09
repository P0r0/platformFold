.class public Lmobisocial/omlib/processors/LikeProcessor;
.super Ljava/lang/Object;
.source "LikeProcessor.java"

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
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginBatch(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;)V
    .registers 4
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;

    .prologue
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/processors/LikeProcessor;->mBatch:Ljava/util/List;

    .line 27
    return-void
.end method

.method public endBatch(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 4
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 79
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
    .line 75
    return-void
.end method

.method public processMessage(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/omlib/db/entity/OMAccount;Lmobisocial/longdan/LDProtocols$LDMessage;Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;)V
    .registers 30
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;
    .param p4, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;
    .param p5, "sender"    # Lmobisocial/omlib/db/entity/OMAccount;
    .param p6, "msg"    # Lmobisocial/longdan/LDProtocols$LDMessage;
    .param p7, "receipt"    # Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;

    .prologue
    .line 31
    move-object/from16 v0, p6

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDMessage;->Body:[B

    move-object/from16 v18, v0

    const-class v19, Lmobisocial/longdan/LDObjects$LikeObj;

    invoke-static/range {v18 .. v19}, Lmobisocial/serialization/SerializationUtils;->fromJson([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmobisocial/longdan/LDObjects$LikeObj;

    .line 32
    .local v11, "like":Lmobisocial/longdan/LDObjects$LikeObj;
    move-object/from16 v0, p6

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDMessage;->Id:Lmobisocial/longdan/LDProtocols$LDTypedId;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDTypedId;->Id:[B

    move-object/from16 v18, v0

    const-class v19, Lmobisocial/longdan/LDProtocols$LDMessage;

    invoke-static/range {v18 .. v19}, Lmobisocial/serialization/SerializationUtils;->fromJson([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lmobisocial/longdan/LDProtocols$LDMessage;

    move-object/from16 v0, v18

    iget-object v15, v0, Lmobisocial/longdan/LDProtocols$LDMessage;->Id:Lmobisocial/longdan/LDProtocols$LDTypedId;

    .line 33
    .local v15, "referenceId":Lmobisocial/longdan/LDProtocols$LDTypedId;
    move-object/from16 v0, p1

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    move-object/from16 v18, v0

    invoke-virtual/range {p4 .. p4}, Lmobisocial/omlib/db/entity/OMFeed;->getLdFeed()Lmobisocial/longdan/LDProtocols$LDFeed;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Lmobisocial/omlib/client/ClientFeedUtils;->makeFeedIdTypedId(Lmobisocial/longdan/LDProtocols$LDFeed;Lmobisocial/longdan/LDProtocols$LDTypedId;)[B

    move-result-object v7

    .line 34
    .local v7, "encodedReferenceId":[B
    const-class v18, Lmobisocial/omlib/db/entity/OMMessage;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v13

    check-cast v13, Lmobisocial/omlib/db/entity/OMMessage;

    .line 35
    .local v13, "parentMsg":Lmobisocial/omlib/db/entity/OMMessage;
    if-nez v13, :cond_52

    .line 36
    invoke-virtual/range {p1 .. p1}, Lmobisocial/omlib/client/LongdanClient;->getMessageProcessor()Lmobisocial/omlib/client/LongdanMessageProcessor;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v7}, Lmobisocial/omlib/client/LongdanMessageProcessor;->deferMessageForDependency(Lmobisocial/longdan/LDProtocols$LDMessage;[B)V

    .line 71
    :cond_51
    :goto_51
    return-void

    .line 39
    :cond_52
    const-class v18, Lmobisocial/omlib/db/entity/OMObject;

    iget-wide v0, v13, Lmobisocial/omlib/db/entity/OMMessage;->id:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v14

    check-cast v14, Lmobisocial/omlib/db/entity/OMObject;

    .line 40
    .local v14, "parentObj":Lmobisocial/omlib/db/entity/OMObject;
    if-eqz v14, :cond_51

    .line 44
    iget-object v0, v14, Lmobisocial/omlib/db/entity/OMObject;->encodedLikes:[B

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lmobisocial/omlib/helper/LikeEncoder;->decode([B)Ljava/util/Map;

    move-result-object v12

    .line 45
    .local v12, "likes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v0, v14, Lmobisocial/omlib/db/entity/OMObject;->encodedAggregateLikes:[B

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lmobisocial/omlib/helper/LikeEncoder;->decode([B)Ljava/util/Map;

    move-result-object v6

    .line 46
    .local v6, "aggregateLikes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v20, Ljava/lang/Long;

    iget-object v0, v11, Lmobisocial/longdan/LDObjects$LikeObj;->Tally:Ljava/lang/Integer;

    move-object/from16 v18, v0

    if-nez v18, :cond_c3

    const-wide/16 v18, 0x0

    :goto_84
    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 47
    .local v8, "count":J
    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-lez v18, :cond_d1

    .line 48
    move-object/from16 v0, p5

    iget-object v0, v0, Lmobisocial/omlib/db/entity/OMAccount;->id:Ljava/lang/Long;

    move-object/from16 v18, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :goto_a6
    const-wide/16 v16, 0x0

    .line 53
    .local v16, "tally":J
    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_b0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_dd

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 54
    .local v10, "l":Ljava/lang/Long;
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    add-long v16, v16, v20

    .line 55
    goto :goto_b0

    .line 46
    .end local v8    # "count":J
    .end local v10    # "l":Ljava/lang/Long;
    .end local v16    # "tally":J
    :cond_c3
    iget-object v0, v11, Lmobisocial/longdan/LDObjects$LikeObj;->Tally:Ljava/lang/Integer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    goto :goto_84

    .line 50
    .restart local v8    # "count":J
    :cond_d1
    move-object/from16 v0, p5

    iget-object v0, v0, Lmobisocial/omlib/db/entity/OMAccount;->id:Ljava/lang/Long;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a6

    .line 56
    .restart local v16    # "tally":J
    :cond_dd
    new-instance v20, Ljava/lang/Long;

    iget-object v0, v11, Lmobisocial/longdan/LDObjects$LikeObj;->Aggregate:Ljava/lang/Integer;

    move-object/from16 v18, v0

    if-nez v18, :cond_126

    const-wide/16 v18, 0x0

    :goto_e7
    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 57
    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-lez v18, :cond_134

    .line 58
    move-object/from16 v0, p5

    iget-object v0, v0, Lmobisocial/omlib/db/entity/OMAccount;->id:Ljava/lang/Long;

    move-object/from16 v18, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :goto_109
    const-wide/16 v4, 0x0

    .line 63
    .local v4, "aggTally":J
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_113
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_140

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 64
    .restart local v10    # "l":Ljava/lang/Long;
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    add-long v4, v4, v20

    .line 65
    goto :goto_113

    .line 56
    .end local v4    # "aggTally":J
    .end local v10    # "l":Ljava/lang/Long;
    :cond_126
    iget-object v0, v11, Lmobisocial/longdan/LDObjects$LikeObj;->Aggregate:Ljava/lang/Integer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    goto :goto_e7

    .line 60
    :cond_134
    move-object/from16 v0, p5

    iget-object v0, v0, Lmobisocial/omlib/db/entity/OMAccount;->id:Ljava/lang/Long;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_109

    .line 66
    .restart local v4    # "aggTally":J
    :cond_140
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Lmobisocial/omlib/db/entity/OMObject;->likeCount:Ljava/lang/Long;

    .line 67
    invoke-static {v12}, Lmobisocial/omlib/helper/LikeEncoder;->encode(Ljava/util/Map;)[B

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Lmobisocial/omlib/db/entity/OMObject;->encodedLikes:[B

    .line 68
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Lmobisocial/omlib/db/entity/OMObject;->aggregateLikeCount:Ljava/lang/Long;

    .line 69
    invoke-static {v6}, Lmobisocial/omlib/helper/LikeEncoder;->encode(Ljava/util/Map;)[B

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Lmobisocial/omlib/db/entity/OMObject;->encodedAggregateLikes:[B

    .line 70
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    goto/16 :goto_51
.end method
