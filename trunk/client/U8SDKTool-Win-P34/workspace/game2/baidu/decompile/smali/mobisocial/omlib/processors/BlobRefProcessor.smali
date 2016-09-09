.class public Lmobisocial/omlib/processors/BlobRefProcessor;
.super Ljava/lang/Object;
.source "BlobRefProcessor.java"

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


# virtual methods
.method public beginBatch(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;)V
    .registers 4
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;

    .prologue
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/processors/BlobRefProcessor;->mBatch:Ljava/util/List;

    .line 25
    return-void
.end method

.method public endBatch(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 6
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 54
    iget-object v0, p0, Lmobisocial/omlib/processors/BlobRefProcessor;->mBatch:Ljava/util/List;

    .line 55
    .local v0, "batch":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lmobisocial/omlib/processors/BlobRefProcessor;->mBatch:Ljava/util/List;

    .line 56
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    .line 57
    new-instance v1, Lmobisocial/omlib/processors/BlobRefProcessor$1;

    invoke-direct {v1, p0, p1, v0}, Lmobisocial/omlib/processors/BlobRefProcessor$1;-><init>(Lmobisocial/omlib/processors/BlobRefProcessor;Lmobisocial/omlib/client/LongdanClient;Ljava/util/List;)V

    invoke-interface {p3, v1}, Lmobisocial/omlib/db/PostCommit;->add(Ljava/lang/Runnable;)V

    .line 65
    :cond_13
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
    .line 50
    return-void
.end method

.method public processMessage(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/omlib/db/entity/OMAccount;Lmobisocial/longdan/LDProtocols$LDMessage;Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;)V
    .registers 25
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;
    .param p4, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;
    .param p5, "sender"    # Lmobisocial/omlib/db/entity/OMAccount;
    .param p6, "msg"    # Lmobisocial/longdan/LDProtocols$LDMessage;
    .param p7, "receipt"    # Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;

    .prologue
    .line 30
    :try_start_0
    move-object/from16 v0, p6

    iget-object v3, v0, Lmobisocial/longdan/LDProtocols$LDMessage;->Body:[B

    const-class v4, Lmobisocial/longdan/LDObjects$BlobReferenceObj;

    invoke-static {v3, v4}, Lmobisocial/serialization/SerializationUtils;->fromJson([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lmobisocial/longdan/LDObjects$BlobReferenceObj;

    .line 31
    .local v15, "bref":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    iget-object v3, v15, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Hash:[B

    if-eqz v3, :cond_14

    iget-object v3, v15, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Source:Ljava/lang/String;

    if-nez v3, :cond_27

    .line 32
    :cond_14
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Missing fields on blob ref"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1c

    .line 43
    .end local v15    # "bref":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    :catch_1c
    move-exception v16

    .line 44
    .local v16, "e":Ljava/lang/Exception;
    const-string v3, "Omlib-processor"

    const-string v4, "Failed to decode blobRef"

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_26
    :goto_26
    return-void

    .line 33
    .restart local v15    # "bref":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    :cond_27
    :try_start_27
    iget-object v3, v15, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Source:Ljava/lang/String;

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_45

    iget-object v3, v15, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Source:Ljava/lang/String;

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_45

    iget-object v3, v15, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Source:Ljava/lang/String;

    const-string v4, "longdan://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 34
    :cond_45
    move-object/from16 v0, p1

    iget-object v3, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    iget-object v6, v15, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Hash:[B

    iget-object v7, v15, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Source:Ljava/lang/String;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lmobisocial/longdan/LDProtocols$LDMessage;->Timestamp:J

    iget-object v10, v15, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->MimeType:Ljava/lang/String;

    iget-object v11, v15, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Category:Ljava/lang/String;

    iget-object v12, v15, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Length:Ljava/lang/Long;

    iget-object v13, v15, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Encrypted:Ljava/lang/Boolean;

    move-object/from16 v0, p4

    iget-wide v4, v0, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v3 .. v14}, Lmobisocial/omlib/client/ClientBlobUtils;->ensureBlobSource(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;[BLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;)V

    .line 35
    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlib/processors/BlobRefProcessor;->mBatch:Ljava/util/List;

    iget-object v4, v15, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Hash:[B

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 36
    :cond_72
    iget-object v3, v15, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Source:Ljava/lang/String;

    const-string v4, "hosted://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 37
    iget-object v3, v15, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Hash:[B

    const/16 v4, 0xa

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "b64Hash":Ljava/lang/String;
    const-string v3, "%s#%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v15, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Source:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 39
    .local v7, "composedSource":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    iget-object v6, v15, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Hash:[B

    move-object/from16 v0, p6

    iget-wide v8, v0, Lmobisocial/longdan/LDProtocols$LDMessage;->Timestamp:J

    iget-object v10, v15, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->MimeType:Ljava/lang/String;

    iget-object v11, v15, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Category:Ljava/lang/String;

    iget-object v12, v15, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Length:Ljava/lang/Long;

    iget-object v13, v15, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Encrypted:Ljava/lang/Boolean;

    move-object/from16 v0, p4

    iget-wide v4, v0, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v3 .. v14}, Lmobisocial/omlib/client/ClientBlobUtils;->ensureBlobSource(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;[BLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;)V

    .line 40
    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlib/processors/BlobRefProcessor;->mBatch:Ljava/util/List;

    iget-object v4, v15, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Hash:[B

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_bf} :catch_1c

    goto/16 :goto_26
.end method
