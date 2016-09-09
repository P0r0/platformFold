.class public Lmobisocial/omlib/processors/FeedDetailsProcessor;
.super Ljava/lang/Object;
.source "FeedDetailsProcessor.java"

# interfaces
.implements Lmobisocial/omlib/client/interfaces/DurableMessageProcessor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginBatch(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;)V
    .registers 3
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;

    .prologue
    .line 19
    return-void
.end method

.method public endBatch(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 4
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 55
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
    .line 51
    return-void
.end method

.method public processMessage(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/omlib/db/entity/OMAccount;Lmobisocial/longdan/LDProtocols$LDMessage;Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;)V
    .registers 27
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;
    .param p4, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;
    .param p5, "sender"    # Lmobisocial/omlib/db/entity/OMAccount;
    .param p6, "msg"    # Lmobisocial/longdan/LDProtocols$LDMessage;
    .param p7, "receipt"    # Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;

    .prologue
    .line 23
    move-object/from16 v0, p6

    iget-object v5, v0, Lmobisocial/longdan/LDProtocols$LDMessage;->Body:[B

    const-class v6, Lmobisocial/longdan/LDObjects$FeedDetailsObj;

    invoke-static {v5, v6}, Lmobisocial/serialization/SerializationUtils;->fromJson([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobisocial/longdan/LDObjects$FeedDetailsObj;

    .line 24
    .local v4, "details":Lmobisocial/longdan/LDObjects$FeedDetailsObj;
    const/16 v18, 0x0

    .line 25
    .local v18, "needsGeneratedDetails":Z
    iget-object v5, v4, Lmobisocial/longdan/LDObjects$FeedDetailsObj;->Name:Ljava/lang/String;

    if-eqz v5, :cond_7f

    iget-object v5, v4, Lmobisocial/longdan/LDObjects$FeedDetailsObj;->Name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7f

    .line 26
    iget-object v5, v4, Lmobisocial/longdan/LDObjects$FeedDetailsObj;->Name:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v5, v0, Lmobisocial/omlib/db/entity/OMFeed;->specifiedName:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v5, v0, Lmobisocial/omlib/db/entity/OMFeed;->name:Ljava/lang/String;

    .line 31
    :goto_24
    iget-object v5, v4, Lmobisocial/longdan/LDObjects$FeedDetailsObj;->ThumbnailLink:Ljava/lang/String;

    if-eqz v5, :cond_a6

    .line 32
    move-object/from16 v0, p1

    iget-object v5, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    iget-object v6, v4, Lmobisocial/longdan/LDObjects$FeedDetailsObj;->ThumbnailLink:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lmobisocial/omlib/client/ClientBlobUtils;->hashFromLongdanUrl(Ljava/lang/String;)[B

    move-result-object v17

    .line 33
    .local v17, "hash":[B
    iget-object v5, v4, Lmobisocial/longdan/LDObjects$FeedDetailsObj;->DeHash:[B

    if-eqz v5, :cond_3a

    iget-object v0, v4, Lmobisocial/longdan/LDObjects$FeedDetailsObj;->DeHash:[B

    move-object/from16 v17, v0

    .end local v17    # "hash":[B
    :cond_3a
    move-object/from16 v0, v17

    move-object/from16 v1, p4

    iput-object v0, v1, Lmobisocial/omlib/db/entity/OMFeed;->specifiedThumbnailHash:[B

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    iput-object v0, v1, Lmobisocial/omlib/db/entity/OMFeed;->thumbnailHash:[B

    .line 34
    move-object/from16 v0, p4

    iget-object v5, v0, Lmobisocial/omlib/db/entity/OMFeed;->thumbnailHash:[B

    if-eqz v5, :cond_87

    .line 35
    move-object/from16 v0, p1

    iget-object v5, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    move-object/from16 v0, p4

    iget-object v8, v0, Lmobisocial/omlib/db/entity/OMFeed;->thumbnailHash:[B

    iget-object v9, v4, Lmobisocial/longdan/LDObjects$FeedDetailsObj;->ThumbnailLink:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-string v12, "image/jpeg"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v5 .. v16}, Lmobisocial/omlib/client/ClientBlobUtils;->ensureBlobSource(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;[BLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;)V

    .line 43
    :goto_68
    if-eqz v18, :cond_77

    .line 44
    move-object/from16 v0, p1

    iget-object v5, v0, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v5, v0, v1, v2}, Lmobisocial/omlib/client/ClientFeedUtils;->generateDetailsForFeed(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/db/entity/OMFeed;)V

    .line 46
    :cond_77
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 47
    return-void

    .line 28
    :cond_7f
    const/4 v5, 0x0

    move-object/from16 v0, p4

    iput-object v5, v0, Lmobisocial/omlib/db/entity/OMFeed;->specifiedName:Ljava/lang/String;

    .line 29
    const/16 v18, 0x1

    goto :goto_24

    .line 37
    :cond_87
    const-string v5, "Omlib-processor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "got a null hash for feed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget-object v7, v0, Lmobisocial/omlib/db/entity/OMFeed;->identifier:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const/16 v18, 0x1

    goto :goto_68

    .line 41
    :cond_a6
    const/16 v18, 0x1

    goto :goto_68
.end method
