.class public Lmobisocial/omlib/jobs/DirectBlobUploadJobHandler;
.super Lmobisocial/omlib/jobs/AwaitableDurableJobHandler;
.source "DirectBlobUploadJobHandler.java"


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
.field public static final TYPE:Ljava/lang/String; = "direct-upload"


# instance fields
.field public inline:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "inline"
    .end annotation
.end field

.field mLength:J

.field public request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "request"
    .end annotation
.end field

.field public slice:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "slice"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Lmobisocial/omlib/jobs/AwaitableDurableJobHandler;-><init>()V

    .line 59
    return-void
.end method

.method public constructor <init>(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;)V
    .registers 7
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "request"    # Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    .prologue
    .line 43
    invoke-direct {p0}, Lmobisocial/omlib/jobs/AwaitableDurableJobHandler;-><init>()V

    .line 44
    iput-object p2, p0, Lmobisocial/omlib/jobs/DirectBlobUploadJobHandler;->request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    .line 45
    sget-object v0, Lmobisocial/omlib/client/ClientBlobUtils;->THUMBNAIL_CATEGORY:Ljava/lang/String;

    iget-object v1, p2, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lmobisocial/omlib/jobs/DirectBlobUploadJobHandler;->inline:Z

    .line 46
    iget-object v0, p2, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->sender:Lmobisocial/longdan/LDProtocols$LDIdentity;

    iget-object v1, p2, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->recipients:Ljava/util/List;

    iget-object v2, p2, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->feedKind:Ljava/lang/String;

    iget-boolean v3, p0, Lmobisocial/omlib/jobs/DirectBlobUploadJobHandler;->inline:Z

    invoke-static {p1, v0, v1, v2, v3}, Lmobisocial/omlib/jobs/DirectBlobUploadJobHandler;->makeSlice(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/longdan/LDProtocols$LDIdentity;Ljava/util/List;Ljava/lang/String;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lmobisocial/omlib/jobs/DirectBlobUploadJobHandler;->slice:J

    .line 47
    return-void
.end method

.method static makeSlice(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/longdan/LDProtocols$LDIdentity;Ljava/util/List;Ljava/lang/String;Z)J
    .registers 11
    .param p0, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p1, "sender"    # Lmobisocial/longdan/LDProtocols$LDIdentity;
    .param p3, "feedKind"    # Ljava/lang/String;
    .param p4, "inline"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobisocial/omlib/client/LongdanClient;",
            "Lmobisocial/longdan/LDProtocols$LDIdentity;",
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDIdentity;",
            ">;",
            "Ljava/lang/String;",
            "Z)J"
        }
    .end annotation

    .prologue
    .line 50
    .local p2, "recipients":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/LDProtocols$LDIdentity;>;"
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    invoke-virtual {v2, p1, p2, p3}, Lmobisocial/omlib/client/ClientFeedUtils;->makeCanonicalFeedKey(Lmobisocial/longdan/LDProtocols$LDIdentity;Ljava/util/List;Ljava/lang/String;)Lmobisocial/longdan/LDProtocols$LDFeed;

    move-result-object v0

    .line 51
    .local v0, "feed":Lmobisocial/longdan/LDProtocols$LDFeed;
    if-nez v0, :cond_16

    .line 52
    if-eqz p4, :cond_10

    const-wide v2, 0x492559f64fL

    .line 54
    :goto_f
    return-wide v2

    .line 52
    :cond_10
    const-wide v2, 0x492559f650L

    goto :goto_f

    .line 53
    :cond_16
    invoke-virtual {v0}, Lmobisocial/longdan/LDProtocols$LDFeed;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "feedKey":Ljava/lang/String;
    if-eqz p4, :cond_22

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    goto :goto_f

    :cond_22
    const-string v2, "%s-sidechannel"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    goto :goto_f
.end method


# virtual methods
.method public getJobType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    const-string v0, "direct-upload"

    return-object v0
.end method

.method public getSlice()J
    .registers 3

    .prologue
    .line 63
    iget-wide v0, p0, Lmobisocial/omlib/jobs/DirectBlobUploadJobHandler;->slice:J

    return-wide v0
.end method

.method public onReconstitutedRequest()Z
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
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
    .line 77
    iget-object v2, p1, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    iget-object v3, p0, Lmobisocial/omlib/jobs/DirectBlobUploadJobHandler;->request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    iget-object v3, v3, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->blobHash:[B

    invoke-virtual {v2, v3}, Lmobisocial/omlib/client/ClientBlobUtils;->getStoragePathForBlobWithHash([B)Ljava/io/File;

    move-result-object v1

    .line 78
    .local v1, "path":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_18

    .line 79
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v2, "Local file not found."

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 86
    :cond_17
    :goto_17
    return-object v0

    .line 81
    :cond_18
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lmobisocial/omlib/jobs/DirectBlobUploadJobHandler;->mLength:J

    .line 83
    :try_start_1e
    invoke-virtual {p1}, Lmobisocial/omlib/client/LongdanClient;->getBlobUploader()Lmobisocial/omlib/client/LongdanBlobUploadProcessor;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlib/jobs/DirectBlobUploadJobHandler;->request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    invoke-virtual {v2, v3}, Lmobisocial/omlib/client/LongdanBlobUploadProcessor;->performUploadAndWait(Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;)Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    :try_end_27
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_1e .. :try_end_27} :catch_29

    move-result-object v0

    goto :goto_17

    .line 84
    :catch_29
    move-exception v0

    .line 85
    .local v0, "e":Lmobisocial/longdan/exception/LongdanException;
    invoke-virtual {v0}, Lmobisocial/longdan/exception/LongdanException;->isPermanentError()Z

    move-result v2

    if-nez v2, :cond_17

    .line 88
    throw v0
.end method

.method public requestAboutToBeScheduled(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 4
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 68
    return-void
.end method

.method public requestComplete(Lmobisocial/omlib/client/LongdanClient;Ljava/lang/Object;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 27
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "result"    # Ljava/lang/Object;
    .param p3, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p4, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 95
    move-object/from16 v0, p2

    instance-of v5, v0, Ljava/lang/Exception;

    if-eqz v5, :cond_12

    .line 96
    const-string v5, "Omlib-job"

    const-string v6, "Blob upload failed"

    check-cast p2, Ljava/lang/Exception;

    .end local p2    # "result":Ljava/lang/Object;
    move-object/from16 v0, p2

    invoke-static {v5, v6, v0}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    :goto_11
    return-void

    .line 100
    .restart local p2    # "result":Ljava/lang/Object;
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .local v10, "timestamp":J
    move-object/from16 v18, p2

    .line 101
    check-cast v18, Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;

    .line 102
    .local v18, "record":Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    move-object/from16 v0, v18

    iget-object v5, v0, Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;->decryptedHash:[B

    if-eqz v5, :cond_f8

    const/16 v17, 0x1

    .line 103
    .local v17, "encrypted":Z
    :goto_22
    new-instance v4, Lmobisocial/longdan/LDObjects$BlobReferenceObj;

    invoke-direct {v4}, Lmobisocial/longdan/LDObjects$BlobReferenceObj;-><init>()V

    .line 104
    .local v4, "bref":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    move-object/from16 v0, p0

    iget-object v5, v0, Lmobisocial/omlib/jobs/DirectBlobUploadJobHandler;->request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    iget-object v5, v5, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->blobHash:[B

    iput-object v5, v4, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Hash:[B

    .line 105
    move-object/from16 v0, v18

    iget-object v5, v0, Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;->blobLinkString:Ljava/lang/String;

    iput-object v5, v4, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Source:Ljava/lang/String;

    .line 106
    move-object/from16 v0, p0

    iget-object v5, v0, Lmobisocial/omlib/jobs/DirectBlobUploadJobHandler;->request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    iget-object v5, v5, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->category:Ljava/lang/String;

    iput-object v5, v4, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Category:Ljava/lang/String;

    .line 107
    move-object/from16 v0, p0

    iget-object v5, v0, Lmobisocial/omlib/jobs/DirectBlobUploadJobHandler;->request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    iget-object v5, v5, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->mimeType:Ljava/lang/String;

    iput-object v5, v4, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->MimeType:Ljava/lang/String;

    .line 108
    move-object/from16 v0, p0

    iget-object v5, v0, Lmobisocial/omlib/jobs/DirectBlobUploadJobHandler;->request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    iget-object v5, v5, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->pushType:Ljava/lang/String;

    iput-object v5, v4, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->PushType:Ljava/lang/String;

    .line 109
    move-object/from16 v0, p0

    iget-object v5, v0, Lmobisocial/omlib/jobs/DirectBlobUploadJobHandler;->request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    iget-boolean v5, v5, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->noBackup:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v4, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->NoBackup:Ljava/lang/Boolean;

    .line 110
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Timestamp:Ljava/lang/Long;

    .line 111
    move-object/from16 v0, p0

    iget-wide v6, v0, Lmobisocial/omlib/jobs/DirectBlobUploadJobHandler;->mLength:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Length:Ljava/lang/Long;

    .line 112
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v4, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Encrypted:Ljava/lang/Boolean;

    .line 113
    if-eqz v17, :cond_fc

    const-string v21, "eref"

    .line 114
    .local v21, "type":Ljava/lang/String;
    :goto_73
    new-instance v19, Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;

    invoke-direct/range {v19 .. v19}, Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;-><init>()V

    .line 115
    .local v19, "sdmr":Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;
    move-object/from16 v0, p0

    iget-object v5, v0, Lmobisocial/omlib/jobs/DirectBlobUploadJobHandler;->request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    iget-object v5, v5, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->sender:Lmobisocial/longdan/LDProtocols$LDIdentity;

    move-object/from16 v0, v19

    iput-object v5, v0, Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;->Sender:Lmobisocial/longdan/LDProtocols$LDIdentity;

    .line 116
    move-object/from16 v0, p0

    iget-object v5, v0, Lmobisocial/omlib/jobs/DirectBlobUploadJobHandler;->request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    iget-object v5, v5, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->recipients:Ljava/util/List;

    move-object/from16 v0, v19

    iput-object v5, v0, Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;->Recipients:Ljava/util/List;

    .line 117
    move-object/from16 v0, p0

    iget-object v5, v0, Lmobisocial/omlib/jobs/DirectBlobUploadJobHandler;->request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    iget-object v5, v5, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->feedKind:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v5, v0, Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;->FeedKind:Ljava/lang/String;

    .line 118
    move-object/from16 v0, p1

    iget-object v5, v0, Lmobisocial/omlib/client/LongdanClient;->Messaging:Lmobisocial/omlib/client/ClientMessagingUtils;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lmobisocial/omlib/client/ClientMessagingUtils;->generateTypedId(Ljava/lang/String;)Lmobisocial/longdan/LDProtocols$LDTypedId;

    move-result-object v5

    move-object/from16 v0, v19

    iput-object v5, v0, Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;->Id:Lmobisocial/longdan/LDProtocols$LDTypedId;

    .line 119
    move-object/from16 v0, p1

    iget-object v5, v0, Lmobisocial/omlib/client/LongdanClient;->Messaging:Lmobisocial/omlib/client/ClientMessagingUtils;

    invoke-virtual {v5, v4}, Lmobisocial/omlib/client/ClientMessagingUtils;->encodeMessageBody(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)[B

    move-result-object v5

    move-object/from16 v0, v19

    iput-object v5, v0, Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;->Body:[B

    .line 120
    new-instance v20, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;-><init>(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;)V

    .line 121
    .local v20, "sendRef":Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;
    invoke-virtual/range {p1 .. p1}, Lmobisocial/omlib/client/LongdanClient;->getDurableJobProcessor()Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->scheduleJob(Lmobisocial/omlib/client/interfaces/DurableJobHandler;)V

    .line 122
    move-object/from16 v0, p1

    iget-object v5, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmobisocial/omlib/jobs/DirectBlobUploadJobHandler;->request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    iget-object v8, v6, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->blobHash:[B

    move-object/from16 v0, v18

    iget-object v9, v0, Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;->blobLinkString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmobisocial/omlib/jobs/DirectBlobUploadJobHandler;->request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    iget-object v12, v6, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmobisocial/omlib/jobs/DirectBlobUploadJobHandler;->request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    iget-object v13, v6, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->category:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lmobisocial/omlib/jobs/DirectBlobUploadJobHandler;->mLength:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v5 .. v16}, Lmobisocial/omlib/client/ClientBlobUtils;->ensureBlobSource(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;[BLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;)V

    .line 123
    invoke-super/range {p0 .. p4}, Lmobisocial/omlib/jobs/AwaitableDurableJobHandler;->requestComplete(Lmobisocial/omlib/client/LongdanClient;Ljava/lang/Object;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V

    goto/16 :goto_11

    .line 102
    .end local v4    # "bref":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    .end local v17    # "encrypted":Z
    .end local v19    # "sdmr":Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;
    .end local v20    # "sendRef":Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;
    .end local v21    # "type":Ljava/lang/String;
    :cond_f8
    const/16 v17, 0x0

    goto/16 :goto_22

    .line 113
    .restart local v4    # "bref":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    .restart local v17    # "encrypted":Z
    :cond_fc
    const-string v21, "ref"

    goto/16 :goto_73
.end method
