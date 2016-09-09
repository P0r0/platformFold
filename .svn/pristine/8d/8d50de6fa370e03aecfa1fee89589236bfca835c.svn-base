.class public Lmobisocial/omlib/jobs/BlobUploadJobHandler;
.super Lmobisocial/omlib/jobs/AwaitableDurableJobHandler;
.source "BlobUploadJobHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmobisocial/omlib/jobs/AwaitableDurableJobHandler",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "upload"


# instance fields
.field public inline:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "inline"
    .end annotation
.end field

.field transient mLength:J

.field public transient postJob:Lmobisocial/omlib/jobs/BaseJobWithBlob;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "continueWithJob"
    .end annotation
.end field

.field public referenceObjId:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "objId"
    .end annotation
.end field

.field public request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "request"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lmobisocial/omlib/jobs/AwaitableDurableJobHandler;-><init>()V

    return-void
.end method

.method private skipRetryForFeed(Lmobisocial/longdan/LDProtocols$LDFeed;)Z
    .registers 4
    .param p1, "feed"    # Lmobisocial/longdan/LDProtocols$LDFeed;

    .prologue
    .line 74
    if-eqz p1, :cond_12

    sget-object v0, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->Public:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

    iget-object v1, p0, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    iget-object v1, v1, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    iget-object v1, v1, Lmobisocial/longdan/LDProtocols$LDFeed;->Kind:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public getJobType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    const-string v0, "upload"

    return-object v0
.end method

.method public getSlice()J
    .registers 5

    .prologue
    .line 46
    iget-object v0, p0, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    if-nez v0, :cond_c

    .line 47
    const-wide v0, 0x492559f64fL

    .line 48
    :goto_b
    return-wide v0

    :cond_c
    iget-boolean v0, p0, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->inline:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    invoke-virtual {v0}, Lmobisocial/longdan/LDProtocols$LDFeed;->hashCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_b

    :cond_1a
    const-string v0, "%s-sidechannel"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    iget-object v3, v3, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    invoke-virtual {v3}, Lmobisocial/longdan/LDProtocols$LDFeed;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_b
.end method

.method public perform(Lmobisocial/omlib/client/LongdanClient;)Ljava/lang/Object;
    .registers 6
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v2, p1, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    iget-object v3, p0, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    iget-object v3, v3, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->blobHash:[B

    invoke-virtual {v2, v3}, Lmobisocial/omlib/client/ClientBlobUtils;->getStoragePathForBlobWithHash([B)Ljava/io/File;

    move-result-object v1

    .line 58
    .local v1, "path":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_18

    .line 59
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v2, "Local file not found."

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 66
    :cond_17
    :goto_17
    return-object v0

    .line 61
    :cond_18
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->mLength:J

    .line 63
    :try_start_1e
    invoke-virtual {p1}, Lmobisocial/omlib/client/LongdanClient;->getBlobUploader()Lmobisocial/omlib/client/LongdanBlobUploadProcessor;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    invoke-virtual {v2, v3}, Lmobisocial/omlib/client/LongdanBlobUploadProcessor;->performUploadAndWait(Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;)Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    :try_end_27
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_1e .. :try_end_27} :catch_29

    move-result-object v0

    goto :goto_17

    .line 64
    :catch_29
    move-exception v0

    .line 65
    .local v0, "e":Lmobisocial/longdan/exception/LongdanException;
    iget-object v2, p0, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    iget-object v2, v2, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    invoke-direct {p0, v2}, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->skipRetryForFeed(Lmobisocial/longdan/LDProtocols$LDFeed;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v0}, Lmobisocial/longdan/exception/LongdanException;->isPermanentError()Z

    move-result v2

    if-nez v2, :cond_17

    .line 68
    throw v0
.end method

.method public requestAboutToBeScheduled(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 4
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 53
    return-void
.end method

.method public requestComplete(Lmobisocial/omlib/client/LongdanClient;Ljava/lang/Object;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 27
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "result"    # Ljava/lang/Object;
    .param p3, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p4, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 79
    move-object/from16 v0, p2

    instance-of v3, v0, Ljava/lang/Exception;

    if-eqz v3, :cond_3f

    .line 80
    const-string v3, "Omlib-job"

    const-string v4, "Blob upload failed"

    check-cast p2, Ljava/lang/Exception;

    .end local p2    # "result":Ljava/lang/Object;
    move-object/from16 v0, p2

    invoke-static {v3, v4, v0}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    iget-object v3, v3, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->skipRetryForFeed(Lmobisocial/longdan/LDProtocols$LDFeed;)Z

    move-result v3

    if-eqz v3, :cond_3e

    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->referenceObjId:Ljava/lang/Long;

    if-eqz v3, :cond_3e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->inline:Z

    if-eqz v3, :cond_3e

    .line 82
    invoke-virtual/range {p1 .. p1}, Lmobisocial/omlib/client/LongdanClient;->getDurableJobProcessor()Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->referenceObjId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v3, v0, v1, v4, v5}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->cancelSendJobIfExists(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;J)V

    .line 117
    :cond_3e
    :goto_3e
    return-void

    .line 86
    .restart local p2    # "result":Ljava/lang/Object;
    :cond_3f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 87
    .local v8, "timestamp":J
    const/4 v14, 0x0

    .local v14, "feedId":Ljava/lang/Long;
    move-object/from16 v19, p2

    .line 88
    check-cast v19, Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;

    .line 89
    .local v19, "record":Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    move-object/from16 v0, v19

    iget-object v3, v0, Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;->decryptedHash:[B

    if-eqz v3, :cond_135

    const/16 v16, 0x1

    .line 90
    .local v16, "encrypted":Z
    :goto_50
    new-instance v15, Lmobisocial/longdan/LDObjects$BlobReferenceObj;

    invoke-direct {v15}, Lmobisocial/longdan/LDObjects$BlobReferenceObj;-><init>()V

    .line 91
    .local v15, "bref":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    iget-object v3, v3, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->blobHash:[B

    iput-object v3, v15, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Hash:[B

    .line 92
    move-object/from16 v0, v19

    iget-object v3, v0, Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;->blobLinkString:Ljava/lang/String;

    iput-object v3, v15, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Source:Ljava/lang/String;

    .line 93
    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    iget-object v3, v3, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->category:Ljava/lang/String;

    iput-object v3, v15, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Category:Ljava/lang/String;

    .line 94
    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    iget-object v3, v3, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->mimeType:Ljava/lang/String;

    iput-object v3, v15, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->MimeType:Ljava/lang/String;

    .line 95
    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    iget-object v3, v3, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->pushType:Ljava/lang/String;

    iput-object v3, v15, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->PushType:Ljava/lang/String;

    .line 96
    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    iget-boolean v3, v3, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->noBackup:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v15, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->NoBackup:Ljava/lang/Boolean;

    .line 97
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v15, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Timestamp:Ljava/lang/Long;

    .line 98
    move-object/from16 v0, p0

    iget-wide v4, v0, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->mLength:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v15, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Length:Ljava/lang/Long;

    .line 99
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v15, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Encrypted:Ljava/lang/Boolean;

    .line 100
    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    iget-object v3, v3, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    if-eqz v3, :cond_eb

    .line 101
    if-eqz v16, :cond_139

    const-string v21, "eref"

    .line 102
    .local v21, "type":Ljava/lang/String;
    :goto_a9
    move-object/from16 v0, p1

    iget-object v3, v0, Lmobisocial/omlib/client/LongdanClient;->Messaging:Lmobisocial/omlib/client/ClientMessagingUtils;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lmobisocial/omlib/client/ClientMessagingUtils;->generateTypedId(Ljava/lang/String;)Lmobisocial/longdan/LDProtocols$LDTypedId;

    move-result-object v18

    .line 103
    .local v18, "msgId":Lmobisocial/longdan/LDProtocols$LDTypedId;
    move-object/from16 v0, p1

    iget-object v3, v0, Lmobisocial/omlib/client/LongdanClient;->Messaging:Lmobisocial/omlib/client/ClientMessagingUtils;

    invoke-virtual {v3, v15}, Lmobisocial/omlib/client/ClientMessagingUtils;->encodeMessageBody(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)[B

    move-result-object v2

    .line 104
    .local v2, "body":[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    iget-object v3, v3, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    move-object/from16 v0, v18

    invoke-static {v3, v0, v2}, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->create(Lmobisocial/longdan/LDProtocols$LDFeed;Lmobisocial/longdan/LDProtocols$LDTypedId;[B)Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;

    move-result-object v20

    .line 105
    .local v20, "sendRef":Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;
    invoke-virtual/range {p1 .. p1}, Lmobisocial/omlib/client/LongdanClient;->getDurableJobProcessor()Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v4}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->scheduleJob(Lmobisocial/omlib/client/interfaces/DurableJobHandler;Z)V

    .line 106
    const-class v3, Lmobisocial/omlib/db/entity/OMFeed;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    iget-object v4, v4, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v17

    check-cast v17, Lmobisocial/omlib/db/entity/OMFeed;

    .line 107
    .local v17, "feed":Lmobisocial/omlib/db/entity/OMFeed;
    if-eqz v17, :cond_eb

    .line 108
    move-object/from16 v0, v17

    iget-wide v4, v0, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 111
    .end local v2    # "body":[B
    .end local v17    # "feed":Lmobisocial/omlib/db/entity/OMFeed;
    .end local v18    # "msgId":Lmobisocial/longdan/LDProtocols$LDTypedId;
    .end local v20    # "sendRef":Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;
    .end local v21    # "type":Ljava/lang/String;
    :cond_eb
    move-object/from16 v0, p1

    iget-object v3, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    iget-object v6, v4, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->blobHash:[B

    move-object/from16 v0, v19

    iget-object v7, v0, Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;->blobLinkString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    iget-object v10, v4, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    iget-object v11, v4, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->category:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->mLength:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v3 .. v14}, Lmobisocial/omlib/client/ClientBlobUtils;->ensureBlobSource(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;[BLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->postJob:Lmobisocial/omlib/jobs/BaseJobWithBlob;

    if-eqz v3, :cond_130

    .line 113
    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->postJob:Lmobisocial/omlib/jobs/BaseJobWithBlob;

    invoke-virtual {v3, v15}, Lmobisocial/omlib/jobs/BaseJobWithBlob;->setBlobRecord(Lmobisocial/longdan/LDObjects$BlobReferenceObj;)V

    .line 114
    invoke-virtual/range {p1 .. p1}, Lmobisocial/omlib/client/LongdanClient;->getDurableJobProcessor()Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->postJob:Lmobisocial/omlib/jobs/BaseJobWithBlob;

    invoke-virtual {v3, v4}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->scheduleJob(Lmobisocial/omlib/client/interfaces/DurableJobHandler;)V

    .line 116
    :cond_130
    invoke-super/range {p0 .. p4}, Lmobisocial/omlib/jobs/AwaitableDurableJobHandler;->requestComplete(Lmobisocial/omlib/client/LongdanClient;Ljava/lang/Object;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V

    goto/16 :goto_3e

    .line 89
    .end local v15    # "bref":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    .end local v16    # "encrypted":Z
    :cond_135
    const/16 v16, 0x0

    goto/16 :goto_50

    .line 101
    .restart local v15    # "bref":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    .restart local v16    # "encrypted":Z
    :cond_139
    const-string v21, "ref"

    goto/16 :goto_a9
.end method
