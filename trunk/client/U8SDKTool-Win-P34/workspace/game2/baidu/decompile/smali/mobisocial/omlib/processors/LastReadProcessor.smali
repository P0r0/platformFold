.class public Lmobisocial/omlib/processors/LastReadProcessor;
.super Ljava/lang/Object;
.source "LastReadProcessor.java"

# interfaces
.implements Lmobisocial/omlib/client/interfaces/DurableMessageProcessor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginBatch(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;)V
    .registers 3
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;

    .prologue
    .line 21
    return-void
.end method

.method public endBatch(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 4
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 50
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
    .line 46
    return-void
.end method

.method public processMessage(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/omlib/db/entity/OMAccount;Lmobisocial/longdan/LDProtocols$LDMessage;Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;)V
    .registers 20
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;
    .param p4, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;
    .param p5, "sender"    # Lmobisocial/omlib/db/entity/OMAccount;
    .param p6, "msg"    # Lmobisocial/longdan/LDProtocols$LDMessage;
    .param p7, "receipt"    # Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;

    .prologue
    .line 25
    move-object/from16 v0, p5

    iget-object v5, v0, Lmobisocial/omlib/db/entity/OMAccount;->id:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p4

    iget-wide v10, v0, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    invoke-static {v8, v9, v10, v11}, Lmobisocial/omlib/client/ClientFeedUtils;->getFeedMemberRowKey(JJ)[B

    move-result-object v2

    .line 26
    .local v2, "key":[B
    const-class v5, Lmobisocial/omlib/db/entity/OMFeedMember;

    invoke-virtual {p2, v5, v2}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v4

    check-cast v4, Lmobisocial/omlib/db/entity/OMFeedMember;

    .line 27
    .local v4, "member":Lmobisocial/omlib/db/entity/OMFeedMember;
    move-object/from16 v0, p6

    iget-object v5, v0, Lmobisocial/longdan/LDProtocols$LDMessage;->Body:[B

    const-class v8, Lmobisocial/longdan/LDObjects$LastReadObj;

    invoke-static {v5, v8}, Lmobisocial/serialization/SerializationUtils;->fromJson([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobisocial/longdan/LDObjects$LastReadObj;

    .line 28
    .local v3, "lro":Lmobisocial/longdan/LDObjects$LastReadObj;
    iget-wide v6, v3, Lmobisocial/longdan/LDObjects$LastReadObj;->LastReadTime:J

    .line 29
    .local v6, "timestamp":J
    if-eqz v4, :cond_6c

    iget-object v5, v4, Lmobisocial/omlib/db/entity/OMFeedMember;->lastRead:Ljava/lang/Long;

    if-eqz v5, :cond_36

    iget-object v5, v4, Lmobisocial/omlib/db/entity/OMFeedMember;->lastRead:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-gez v5, :cond_6c

    .line 30
    :cond_36
    sget v5, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v8, 0x3

    if-gt v5, v8, :cond_63

    .line 31
    const-string v5, "Omlib-processor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Updating last read time for feed #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    iget-wide v10, v0, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " member "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lmobisocial/omlib/db/entity/OMFeedMember;->accountId:Ljava/lang/Long;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_63
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Lmobisocial/omlib/db/entity/OMFeedMember;->lastRead:Ljava/lang/Long;

    .line 33
    invoke-virtual {p2, v4}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 35
    :cond_6c
    move-object/from16 v0, p5

    iget-boolean v5, v0, Lmobisocial/omlib/db/entity/OMAccount;->owned:Z

    if-eqz v5, :cond_89

    .line 36
    move-object/from16 v0, p4

    iget-wide v8, v0, Lmobisocial/omlib/db/entity/OMFeed;->lastReadTime:J

    cmp-long v5, v8, v6

    if-gez v5, :cond_89

    .line 37
    move-object/from16 v0, p4

    iput-wide v6, v0, Lmobisocial/omlib/db/entity/OMFeed;->lastReadTime:J

    .line 38
    const-wide/16 v8, 0x0

    move-object/from16 v0, p4

    iput-wide v8, v0, Lmobisocial/omlib/db/entity/OMFeed;->numUnread:J

    .line 39
    move-object/from16 v0, p4

    invoke-virtual {p2, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 42
    :cond_89
    return-void
.end method
