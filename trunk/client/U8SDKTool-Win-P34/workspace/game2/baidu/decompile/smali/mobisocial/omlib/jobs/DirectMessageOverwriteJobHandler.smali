.class public Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;
.super Ljava/lang/Object;
.source "DirectMessageOverwriteJobHandler.java"

# interfaces
.implements Lmobisocial/omlib/client/interfaces/DurableJobHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmobisocial/omlib/client/interfaces/DurableJobHandler",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "msg-direct-overwrite"


# instance fields
.field public attachments:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "attachments"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDObjects$BlobReferenceObj;",
            ">;"
        }
    .end annotation
.end field

.field public volatile deliveryListener:Lmobisocial/omlib/interfaces/MessageDeliveryListener;

.field public hashForSend:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hashForSend"
    .end annotation
.end field

.field public localMsgId:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "localId"
    .end annotation
.end field

.field public localObjId:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "objId"
    .end annotation
.end field

.field public request:Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "request"
    .end annotation
.end field

.field public slice:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "slice"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;)V
    .registers 8
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "request"    # Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->request:Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;

    .line 51
    iget-object v0, p0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->request:Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;

    iget-object v1, p1, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    iget-object v2, p2, Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;->Sender:Lmobisocial/longdan/LDProtocols$LDIdentity;

    iget-object v3, p2, Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;->Recipients:Ljava/util/List;

    iget-object v4, p2, Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;->FeedKind:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lmobisocial/omlib/client/ClientFeedUtils;->makeCanonicalFeedKey(Lmobisocial/longdan/LDProtocols$LDIdentity;Ljava/util/List;Ljava/lang/String;)Lmobisocial/longdan/LDProtocols$LDFeed;

    move-result-object v1

    iput-object v1, v0, Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    .line 52
    new-instance v0, Ljava/lang/Long;

    iget-object v1, p0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->request:Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;

    iget-object v1, v1, Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    invoke-virtual {v1}, Lmobisocial/longdan/LDProtocols$LDFeed;->hashCode()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->slice:Ljava/lang/Long;

    .line 53
    return-void
.end method


# virtual methods
.method public getJobType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    const-string v0, "msg-direct-overwrite"

    return-object v0
.end method

.method public getSlice()J
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->slice:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public onReconstitutedRequest()Z
    .registers 2

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public perform(Lmobisocial/omlib/client/LongdanClient;)Ljava/lang/Object;
    .registers 5
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p1}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->request:Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;

    const-class v2, Lmobisocial/longdan/LDProtocols$LDSendDirectMessageResponse;

    invoke-virtual {v0, v1, v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v0

    return-object v0
.end method

.method public requestAboutToBeScheduled(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 14
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    const/4 v0, 0x0

    .line 71
    iget-object v5, p0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->localMsgId:Ljava/lang/Long;

    if-nez v5, :cond_f9

    .line 72
    new-instance v3, Lmobisocial/longdan/LDProtocols$LDMessage;

    invoke-direct {v3}, Lmobisocial/longdan/LDProtocols$LDMessage;-><init>()V

    .line 73
    .local v3, "msg":Lmobisocial/longdan/LDProtocols$LDMessage;
    iget-object v5, p0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->request:Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;

    iget-object v5, v5, Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    iput-object v5, v3, Lmobisocial/longdan/LDProtocols$LDMessage;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    .line 74
    iget-object v5, p0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->request:Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;

    iget-object v5, v5, Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;->Body:[B

    iput-object v5, v3, Lmobisocial/longdan/LDProtocols$LDMessage;->Body:[B

    .line 75
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v3, Lmobisocial/longdan/LDProtocols$LDMessage;->Deleted:Ljava/lang/Boolean;

    .line 76
    iget-object v5, p0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->request:Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;

    iget-object v5, v5, Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;->Id:Lmobisocial/longdan/LDProtocols$LDTypedId;

    iput-object v5, v3, Lmobisocial/longdan/LDProtocols$LDMessage;->Id:Lmobisocial/longdan/LDProtocols$LDTypedId;

    .line 77
    iget-object v5, p1, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-virtual {v5}, Lmobisocial/omlib/client/ClientAuthUtils;->getAccount()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lmobisocial/longdan/LDProtocols$LDMessage;->Owner:Ljava/lang/String;

    .line 78
    iget-object v5, p0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->request:Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;

    iget-wide v6, v5, Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;->Version:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_81

    const/4 v5, 0x0

    :goto_35
    iput-object v5, v3, Lmobisocial/longdan/LDProtocols$LDMessage;->Version:Ljava/lang/Long;

    .line 79
    new-instance v5, Ljava/lang/Long;

    iget-object v6, p1, Lmobisocial/omlib/client/LongdanClient;->Messaging:Lmobisocial/omlib/client/ClientMessagingUtils;

    invoke-virtual {v6, v3}, Lmobisocial/omlib/client/ClientMessagingUtils;->getHashForSend(Lmobisocial/longdan/LDProtocols$LDMessage;)J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    iput-object v5, p0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->hashForSend:Ljava/lang/Long;

    .line 80
    new-instance v4, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;

    invoke-direct {v4}, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;-><init>()V

    .line 81
    .local v4, "receipt":Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;
    iget-object v5, p0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->hashForSend:Ljava/lang/Long;

    iput-object v5, v4, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;->hashForSend:Ljava/lang/Long;

    .line 82
    invoke-virtual {p1}, Lmobisocial/omlib/client/LongdanClient;->getMessageProcessor()Lmobisocial/omlib/client/LongdanMessageProcessor;

    move-result-object v5

    invoke-virtual {v5, v3, v4, p2, p3}, Lmobisocial/omlib/client/LongdanMessageProcessor;->processDurableMessageForSending(Lmobisocial/longdan/LDProtocols$LDMessage;Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V

    .line 85
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 86
    .local v1, "attch":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v5, p0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->attachments:Ljava/util/List;

    if-eqz v5, :cond_8a

    iget-object v5, v4, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;->localObjectId:Ljava/lang/Long;

    if-eqz v5, :cond_8a

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "attch":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v5, p0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->attachments:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    .restart local v1    # "attch":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v5, p0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->attachments:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobisocial/longdan/LDObjects$BlobReferenceObj;

    .line 89
    .local v2, "blob":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    iget-object v6, v2, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Hash:[B

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    .line 78
    .end local v1    # "attch":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v2    # "blob":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    .end local v4    # "receipt":Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;
    :cond_81
    iget-object v5, p0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->request:Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;

    iget-wide v6, v5, Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;->Version:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_35

    .line 92
    .restart local v1    # "attch":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v4    # "receipt":Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;
    :cond_8a
    iget-object v5, v4, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;->localObjectId:Ljava/lang/Long;

    if-eqz v5, :cond_ae

    .line 93
    iget-object v5, p1, Lmobisocial/omlib/client/LongdanClient;->Messaging:Lmobisocial/omlib/client/ClientMessagingUtils;

    iget-object v5, v5, Lmobisocial/omlib/client/ClientMessagingUtils;->notification:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;

    iget-object v6, v4, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;->localObjectId:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v1}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->registerObjectForDelivery(JLjava/util/List;)V

    .line 94
    iget-object v5, p0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->deliveryListener:Lmobisocial/omlib/interfaces/MessageDeliveryListener;

    if-eqz v5, :cond_ae

    .line 95
    iget-object v5, p1, Lmobisocial/omlib/client/LongdanClient;->Messaging:Lmobisocial/omlib/client/ClientMessagingUtils;

    iget-object v5, v5, Lmobisocial/omlib/client/ClientMessagingUtils;->notification:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;

    iget-object v6, p0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->deliveryListener:Lmobisocial/omlib/interfaces/MessageDeliveryListener;

    iget-object v7, v4, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;->localObjectId:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->registerForDeliveryNotifications(Lmobisocial/omlib/interfaces/MessageDeliveryListener;J)V

    .line 98
    :cond_ae
    iget-object v5, p0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->attachments:Ljava/util/List;

    if-eqz v5, :cond_d6

    .line 99
    iget-object v5, p0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->attachments:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobisocial/longdan/LDObjects$BlobReferenceObj;

    .line 100
    .restart local v2    # "blob":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    iget-object v6, p1, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    iget-object v7, p0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->request:Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;

    iget-object v7, v7, Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;->Sender:Lmobisocial/longdan/LDProtocols$LDIdentity;

    iget-object v8, p0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->request:Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;

    iget-object v8, v8, Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;->Recipients:Ljava/util/List;

    iget-object v9, p0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->request:Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;

    iget-object v9, v9, Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;->FeedKind:Ljava/lang/String;

    invoke-virtual {v6, v2, v7, v8, v9}, Lmobisocial/omlib/client/ClientBlobUtils;->ensureBlobSentDirect(Lmobisocial/longdan/LDObjects$BlobReferenceObj;Lmobisocial/longdan/LDProtocols$LDIdentity;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_b8

    .line 103
    .end local v2    # "blob":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    :cond_d6
    iget-object v5, v4, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;->databaseRecord:Lmobisocial/omlib/db/entity/OMMessage;

    iget-wide v6, v5, Lmobisocial/omlib/db/entity/OMMessage;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->localMsgId:Ljava/lang/Long;

    .line 104
    iget-object v5, v4, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;->localObjectId:Ljava/lang/Long;

    iput-object v5, p0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->localObjId:Ljava/lang/Long;

    .line 105
    iget-object v5, p0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->localObjId:Ljava/lang/Long;

    if-eqz v5, :cond_f9

    .line 106
    iget-object v5, p0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->attachments:Ljava/util/List;

    if-nez v5, :cond_10d

    .line 107
    .local v0, "attachmentCount":I
    :goto_ec
    iget-object v5, p1, Lmobisocial/omlib/client/LongdanClient;->Messaging:Lmobisocial/omlib/client/ClientMessagingUtils;

    iget-object v5, v5, Lmobisocial/omlib/client/ClientMessagingUtils;->notification:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;

    iget-object v6, p0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->localObjId:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v0}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->notifyDeliveryScheduled(JI)V

    .line 110
    .end local v0    # "attachmentCount":I
    .end local v1    # "attch":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v3    # "msg":Lmobisocial/longdan/LDProtocols$LDMessage;
    .end local v4    # "receipt":Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;
    :cond_f9
    invoke-virtual {p1}, Lmobisocial/omlib/client/LongdanClient;->getMessageProcessor()Lmobisocial/omlib/client/LongdanMessageProcessor;

    move-result-object v5

    iget-object v6, p0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->localMsgId:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, p0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->hashForSend:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Lmobisocial/omlib/client/LongdanMessageProcessor;->addPendingMessage(JJ)V

    .line 111
    return-void

    .line 106
    .restart local v1    # "attch":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v3    # "msg":Lmobisocial/longdan/LDProtocols$LDMessage;
    .restart local v4    # "receipt":Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;
    :cond_10d
    iget-object v5, p0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->attachments:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_ec
.end method

.method public requestComplete(Lmobisocial/omlib/client/LongdanClient;Ljava/lang/Object;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 21
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "result"    # Ljava/lang/Object;
    .param p3, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p4, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 125
    const-class v7, Lmobisocial/omlib/db/entity/OMMessage;

    move-object/from16 v0, p0

    iget-object v10, v0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->localMsgId:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v10, v11}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v4

    check-cast v4, Lmobisocial/omlib/db/entity/OMMessage;

    .line 126
    .local v4, "msg":Lmobisocial/omlib/db/entity/OMMessage;
    if-nez v4, :cond_1c

    .line 127
    const-string v7, "Omlib-job"

    const-string v10, "Completed message but no record found"

    invoke-static {v7, v10}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :goto_1b
    return-void

    .line 130
    :cond_1c
    iget-object v7, v4, Lmobisocial/omlib/db/entity/OMMessage;->lastHashForSend:Ljava/lang/Long;

    if-eqz v7, :cond_127

    move-object/from16 v0, p0

    iget-object v7, v0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->hashForSend:Ljava/lang/Long;

    if-eqz v7, :cond_127

    iget-object v7, v4, Lmobisocial/omlib/db/entity/OMMessage;->lastHashForSend:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v7, v0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->hashForSend:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v7, v10, v12

    if-nez v7, :cond_127

    move-object/from16 v6, p2

    .line 131
    check-cast v6, Lmobisocial/longdan/LDProtocols$LDSendDirectMessageResponse;

    .line 132
    .local v6, "resp":Lmobisocial/longdan/LDProtocols$LDSendDirectMessageResponse;
    iget-wide v8, v6, Lmobisocial/longdan/LDProtocols$LDSendDirectMessageResponse;->Timestamp:J

    .line 133
    .local v8, "timestamp":J
    const-class v7, Lmobisocial/omlib/db/entity/OMFeed;

    iget-object v10, v6, Lmobisocial/longdan/LDProtocols$LDSendDirectMessageResponse;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v10}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v3

    check-cast v3, Lmobisocial/omlib/db/entity/OMFeed;

    .line 134
    .local v3, "feed":Lmobisocial/omlib/db/entity/OMFeed;
    if-nez v3, :cond_5a

    .line 135
    move-object/from16 v0, p1

    iget-object v7, v0, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    iget-object v10, v6, Lmobisocial/longdan/LDProtocols$LDSendDirectMessageResponse;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v7, v0, v1, v10}, Lmobisocial/omlib/client/ClientFeedUtils;->getOrCreateFeed(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/longdan/LDProtocols$LDFeed;)Lmobisocial/omlib/db/entity/OMFeed;

    move-result-object v3

    .line 137
    :cond_5a
    iget-wide v10, v3, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    iget-wide v12, v4, Lmobisocial/omlib/db/entity/OMMessage;->feedId:J

    cmp-long v7, v10, v12

    if-eqz v7, :cond_86

    .line 138
    const-string v7, "Omlib-job"

    const-string v10, "msg feed id mismatch, %d -> %d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-wide v14, v4, Lmobisocial/omlib/db/entity/OMMessage;->feedId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-wide v14, v3, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-wide v10, v3, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    iput-wide v10, v4, Lmobisocial/omlib/db/entity/OMMessage;->feedId:J

    .line 141
    :cond_86
    iput-wide v8, v4, Lmobisocial/omlib/db/entity/OMMessage;->timestamp:J

    .line 142
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v7, v0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->localObjId:Ljava/lang/Long;

    if-eqz v7, :cond_127

    .line 144
    const-class v7, Lmobisocial/omlib/db/entity/OMObject;

    move-object/from16 v0, p0

    iget-object v10, v0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->localObjId:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v10, v11}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v5

    check-cast v5, Lmobisocial/omlib/db/entity/OMObject;

    .line 145
    .local v5, "o":Lmobisocial/omlib/db/entity/OMObject;
    if-eqz v5, :cond_127

    .line 146
    iget-wide v10, v3, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    iget-object v7, v5, Lmobisocial/omlib/db/entity/OMObject;->feedId:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v7, v10, v12

    if-eqz v7, :cond_d7

    .line 147
    const-string v7, "Omlib-job"

    const-string v10, "obj feed id mismatch, %d -> %d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v5, Lmobisocial/omlib/db/entity/OMObject;->feedId:Ljava/lang/Long;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-wide v14, v3, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-wide v10, v3, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v5, Lmobisocial/omlib/db/entity/OMObject;->feedId:Ljava/lang/Long;

    .line 150
    :cond_d7
    iget-object v7, v6, Lmobisocial/longdan/LDProtocols$LDSendDirectMessageResponse;->Metadata:[B

    iput-object v7, v5, Lmobisocial/omlib/db/entity/OMObject;->serverMetadata:[B

    .line 151
    const-wide/16 v10, 0x3e8

    div-long v10, v8, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v5, Lmobisocial/omlib/db/entity/OMObject;->serverTimestamp:Ljava/lang/Long;

    .line 152
    const/4 v7, 0x0

    iput-object v7, v5, Lmobisocial/omlib/db/entity/OMObject;->outgoingId:Ljava/lang/Long;

    .line 153
    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v5, Lmobisocial/omlib/db/entity/OMObject;->messageStatus:Ljava/lang/Integer;

    .line 154
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 155
    const-class v7, Lmobisocial/omlib/db/entity/OMFeed;

    iget-object v10, v5, Lmobisocial/omlib/db/entity/OMObject;->feedId:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v10, v11}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v2

    check-cast v2, Lmobisocial/omlib/db/entity/OMFeed;

    .line 156
    .local v2, "f":Lmobisocial/omlib/db/entity/OMFeed;
    if-eqz v2, :cond_127

    .line 157
    iget-object v7, v5, Lmobisocial/omlib/db/entity/OMObject;->serverTimestamp:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-wide v12, v2, Lmobisocial/omlib/db/entity/OMFeed;->renderableTime:J

    cmp-long v7, v10, v12

    if-lez v7, :cond_127

    .line 158
    iget-object v7, v5, Lmobisocial/omlib/db/entity/OMObject;->id:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, v2, Lmobisocial/omlib/db/entity/OMFeed;->renderableObjId:J

    .line 159
    iget-object v7, v5, Lmobisocial/omlib/db/entity/OMObject;->serverTimestamp:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, v2, Lmobisocial/omlib/db/entity/OMFeed;->renderableTime:J

    .line 160
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 166
    .end local v2    # "f":Lmobisocial/omlib/db/entity/OMFeed;
    .end local v3    # "feed":Lmobisocial/omlib/db/entity/OMFeed;
    .end local v5    # "o":Lmobisocial/omlib/db/entity/OMObject;
    .end local v6    # "resp":Lmobisocial/longdan/LDProtocols$LDSendDirectMessageResponse;
    .end local v8    # "timestamp":J
    :cond_127
    invoke-virtual/range {p1 .. p1}, Lmobisocial/omlib/client/LongdanClient;->getMessageProcessor()Lmobisocial/omlib/client/LongdanMessageProcessor;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->localMsgId:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->hashForSend:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v7, v10, v11, v12, v13}, Lmobisocial/omlib/client/LongdanMessageProcessor;->removePendingMessage(JJ)Z

    goto/16 :goto_1b
.end method
