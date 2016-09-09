.class public Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;
.super Ljava/lang/Object;
.source "MessageOverwriteJobHandler.java"

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
.field public static final TYPE:Ljava/lang/String; = "msg-overwrite"


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

.field public body:[B
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "body"
    .end annotation
.end field

.field public volatile deliveryListener:Lmobisocial/omlib/interfaces/MessageDeliveryListener;

.field public feed:Lmobisocial/longdan/LDProtocols$LDFeed;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "feed"
    .end annotation
.end field

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

.field public messageId:Lmobisocial/longdan/LDProtocols$LDTypedId;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "messageId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static create(Lmobisocial/longdan/LDProtocols$LDFeed;Lmobisocial/longdan/LDProtocols$LDTypedId;[B)Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;
    .registers 4
    .param p0, "feed"    # Lmobisocial/longdan/LDProtocols$LDFeed;
    .param p1, "msgId"    # Lmobisocial/longdan/LDProtocols$LDTypedId;
    .param p2, "body"    # [B

    .prologue
    .line 70
    new-instance v0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;

    invoke-direct {v0}, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;-><init>()V

    .line 71
    .local v0, "cmd":Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;
    iput-object p0, v0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    .line 72
    iput-object p2, v0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->body:[B

    .line 73
    iput-object p1, v0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->messageId:Lmobisocial/longdan/LDProtocols$LDTypedId;

    .line 74
    return-object v0
.end method

.method public static create(Lmobisocial/longdan/LDProtocols$LDFeed;Lmobisocial/omlib/interfaces/Sendable;Lmobisocial/omlib/interfaces/MessageDeliveryListener;)Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;
    .registers 6
    .param p0, "feed"    # Lmobisocial/longdan/LDProtocols$LDFeed;
    .param p1, "obj"    # Lmobisocial/omlib/interfaces/Sendable;
    .param p2, "listener"    # Lmobisocial/omlib/interfaces/MessageDeliveryListener;

    .prologue
    .line 58
    new-instance v0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;

    invoke-direct {v0}, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;-><init>()V

    .line 59
    .local v0, "cmd":Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;
    iput-object p0, v0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    .line 60
    invoke-interface {p1}, Lmobisocial/omlib/interfaces/Sendable;->getBody()[B

    move-result-object v1

    iput-object v1, v0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->body:[B

    .line 61
    new-instance v1, Lmobisocial/longdan/LDProtocols$LDTypedId;

    invoke-direct {v1}, Lmobisocial/longdan/LDProtocols$LDTypedId;-><init>()V

    iput-object v1, v0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->messageId:Lmobisocial/longdan/LDProtocols$LDTypedId;

    .line 62
    iget-object v1, v0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->messageId:Lmobisocial/longdan/LDProtocols$LDTypedId;

    invoke-interface {p1}, Lmobisocial/omlib/interfaces/Sendable;->getType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lmobisocial/longdan/LDProtocols$LDTypedId;->Type:Ljava/lang/String;

    .line 63
    iget-object v1, v0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->messageId:Lmobisocial/longdan/LDProtocols$LDTypedId;

    invoke-interface {p1}, Lmobisocial/omlib/interfaces/Sendable;->getId()[B

    move-result-object v2

    iput-object v2, v1, Lmobisocial/longdan/LDProtocols$LDTypedId;->Id:[B

    .line 64
    invoke-interface {p1}, Lmobisocial/omlib/interfaces/Sendable;->getAttachments()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->attachments:Ljava/util/List;

    .line 65
    iput-object p2, v0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->deliveryListener:Lmobisocial/omlib/interfaces/MessageDeliveryListener;

    .line 66
    return-object v0
.end method


# virtual methods
.method public getJobType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    const-string v0, "msg-overwrite"

    return-object v0
.end method

.method public getSlice()J
    .registers 3

    .prologue
    .line 84
    iget-object v0, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    invoke-virtual {v0}, Lmobisocial/longdan/LDProtocols$LDFeed;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public onReconstitutedRequest()Z
    .registers 2

    .prologue
    .line 133
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
    .line 138
    sget-object v2, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->Public:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

    iget-object v3, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    iget-object v3, v3, Lmobisocial/longdan/LDProtocols$LDFeed;->Kind:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->equals(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 140
    :try_start_c
    new-instance v1, Lmobisocial/longdan/LDProtocols$LDWriteToPublicChatRequest;

    invoke-direct {v1}, Lmobisocial/longdan/LDProtocols$LDWriteToPublicChatRequest;-><init>()V

    .line 141
    .local v1, "request":Lmobisocial/longdan/LDProtocols$LDWriteToPublicChatRequest;
    iget-object v2, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    iput-object v2, v1, Lmobisocial/longdan/LDProtocols$LDWriteToPublicChatRequest;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    .line 142
    iget-object v2, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->body:[B

    iput-object v2, v1, Lmobisocial/longdan/LDProtocols$LDWriteToPublicChatRequest;->Body:[B

    .line 143
    iget-object v2, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->messageId:Lmobisocial/longdan/LDProtocols$LDTypedId;

    iput-object v2, v1, Lmobisocial/longdan/LDProtocols$LDWriteToPublicChatRequest;->TypedId:Lmobisocial/longdan/LDProtocols$LDTypedId;

    .line 144
    invoke-virtual {p1}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v2

    const-class v3, Lmobisocial/longdan/LDProtocols$LDSimpleResponse;

    invoke-virtual {v2, v1, v3}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
    :try_end_26
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_c .. :try_end_26} :catch_28

    move-result-object v0

    .line 153
    .end local v1    # "request":Lmobisocial/longdan/LDProtocols$LDWriteToPublicChatRequest;
    :goto_27
    return-object v0

    .line 145
    :catch_28
    move-exception v0

    .line 146
    .local v0, "e":Lmobisocial/longdan/exception/LongdanException;
    goto :goto_27

    .line 149
    .end local v0    # "e":Lmobisocial/longdan/exception/LongdanException;
    :cond_2a
    new-instance v1, Lmobisocial/longdan/LDProtocols$LDOverwriteMessageRequest;

    invoke-direct {v1}, Lmobisocial/longdan/LDProtocols$LDOverwriteMessageRequest;-><init>()V

    .line 150
    .local v1, "request":Lmobisocial/longdan/LDProtocols$LDOverwriteMessageRequest;
    iget-object v2, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    iput-object v2, v1, Lmobisocial/longdan/LDProtocols$LDOverwriteMessageRequest;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    .line 151
    iget-object v2, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->body:[B

    iput-object v2, v1, Lmobisocial/longdan/LDProtocols$LDOverwriteMessageRequest;->Body:[B

    .line 152
    iget-object v2, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->messageId:Lmobisocial/longdan/LDProtocols$LDTypedId;

    iput-object v2, v1, Lmobisocial/longdan/LDProtocols$LDOverwriteMessageRequest;->Id:Lmobisocial/longdan/LDProtocols$LDTypedId;

    .line 153
    invoke-virtual {p1}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v2

    const-class v3, Lmobisocial/longdan/LDProtocols$LDSimpleResponse;

    invoke-virtual {v2, v1, v3}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v0

    goto :goto_27
.end method

.method public requestAboutToBeScheduled(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 14
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    const/4 v0, 0x0

    .line 89
    iget-object v5, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->localMsgId:Ljava/lang/Long;

    if-nez v5, :cond_d8

    .line 90
    new-instance v3, Lmobisocial/longdan/LDProtocols$LDMessage;

    invoke-direct {v3}, Lmobisocial/longdan/LDProtocols$LDMessage;-><init>()V

    .line 91
    .local v3, "msg":Lmobisocial/longdan/LDProtocols$LDMessage;
    iget-object v5, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    iput-object v5, v3, Lmobisocial/longdan/LDProtocols$LDMessage;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    .line 92
    iget-object v5, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->body:[B

    iput-object v5, v3, Lmobisocial/longdan/LDProtocols$LDMessage;->Body:[B

    .line 93
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v3, Lmobisocial/longdan/LDProtocols$LDMessage;->Deleted:Ljava/lang/Boolean;

    .line 94
    iget-object v5, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->messageId:Lmobisocial/longdan/LDProtocols$LDTypedId;

    iput-object v5, v3, Lmobisocial/longdan/LDProtocols$LDMessage;->Id:Lmobisocial/longdan/LDProtocols$LDTypedId;

    .line 95
    iget-object v5, p1, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-virtual {v5}, Lmobisocial/omlib/client/ClientAuthUtils;->getAccount()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lmobisocial/longdan/LDProtocols$LDMessage;->Owner:Ljava/lang/String;

    .line 96
    const/4 v5, 0x0

    iput-object v5, v3, Lmobisocial/longdan/LDProtocols$LDMessage;->Version:Ljava/lang/Long;

    .line 97
    new-instance v5, Ljava/lang/Long;

    iget-object v6, p1, Lmobisocial/omlib/client/LongdanClient;->Messaging:Lmobisocial/omlib/client/ClientMessagingUtils;

    invoke-virtual {v6, v3}, Lmobisocial/omlib/client/ClientMessagingUtils;->getHashForSend(Lmobisocial/longdan/LDProtocols$LDMessage;)J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    iput-object v5, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->hashForSend:Ljava/lang/Long;

    .line 98
    new-instance v4, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;

    invoke-direct {v4}, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;-><init>()V

    .line 99
    .local v4, "receipt":Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;
    iget-object v5, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->hashForSend:Ljava/lang/Long;

    iput-object v5, v4, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;->hashForSend:Ljava/lang/Long;

    .line 100
    invoke-virtual {p1}, Lmobisocial/omlib/client/LongdanClient;->getMessageProcessor()Lmobisocial/omlib/client/LongdanMessageProcessor;

    move-result-object v5

    invoke-virtual {v5, v3, v4, p2, p3}, Lmobisocial/omlib/client/LongdanMessageProcessor;->processDurableMessageForSending(Lmobisocial/longdan/LDProtocols$LDMessage;Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V

    .line 103
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 104
    .local v1, "attch":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v5, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->attachments:Ljava/util/List;

    if-eqz v5, :cond_71

    iget-object v5, v4, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;->localObjectId:Ljava/lang/Long;

    if-eqz v5, :cond_71

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "attch":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v5, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->attachments:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    .restart local v1    # "attch":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v5, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->attachments:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_71

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobisocial/longdan/LDObjects$BlobReferenceObj;

    .line 107
    .local v2, "blob":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    iget-object v6, v2, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Hash:[B

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    .line 110
    .end local v2    # "blob":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    :cond_71
    iget-object v5, v4, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;->localObjectId:Ljava/lang/Long;

    if-eqz v5, :cond_95

    .line 111
    iget-object v5, p1, Lmobisocial/omlib/client/LongdanClient;->Messaging:Lmobisocial/omlib/client/ClientMessagingUtils;

    iget-object v5, v5, Lmobisocial/omlib/client/ClientMessagingUtils;->notification:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;

    iget-object v6, v4, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;->localObjectId:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v1}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->registerObjectForDelivery(JLjava/util/List;)V

    .line 112
    iget-object v5, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->deliveryListener:Lmobisocial/omlib/interfaces/MessageDeliveryListener;

    if-eqz v5, :cond_95

    .line 113
    iget-object v5, p1, Lmobisocial/omlib/client/LongdanClient;->Messaging:Lmobisocial/omlib/client/ClientMessagingUtils;

    iget-object v5, v5, Lmobisocial/omlib/client/ClientMessagingUtils;->notification:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;

    iget-object v6, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->deliveryListener:Lmobisocial/omlib/interfaces/MessageDeliveryListener;

    iget-object v7, v4, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;->localObjectId:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->registerForDeliveryNotifications(Lmobisocial/omlib/interfaces/MessageDeliveryListener;J)V

    .line 116
    :cond_95
    iget-object v5, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->attachments:Ljava/util/List;

    if-eqz v5, :cond_b5

    .line 117
    iget-object v5, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->attachments:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobisocial/longdan/LDObjects$BlobReferenceObj;

    .line 118
    .restart local v2    # "blob":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    iget-object v6, p1, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    iget-object v7, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    iget-object v8, v4, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;->localObjectId:Ljava/lang/Long;

    invoke-virtual {v6, v2, v7, v8}, Lmobisocial/omlib/client/ClientBlobUtils;->ensureBlobSentToFeed(Lmobisocial/longdan/LDObjects$BlobReferenceObj;Lmobisocial/longdan/LDProtocols$LDFeed;Ljava/lang/Long;)V

    goto :goto_9f

    .line 121
    .end local v2    # "blob":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    :cond_b5
    iget-object v5, v4, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;->databaseRecord:Lmobisocial/omlib/db/entity/OMMessage;

    iget-wide v6, v5, Lmobisocial/omlib/db/entity/OMMessage;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->localMsgId:Ljava/lang/Long;

    .line 122
    iget-object v5, v4, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;->localObjectId:Ljava/lang/Long;

    iput-object v5, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->localObjId:Ljava/lang/Long;

    .line 123
    iget-object v5, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->localObjId:Ljava/lang/Long;

    if-eqz v5, :cond_d8

    .line 124
    iget-object v5, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->attachments:Ljava/util/List;

    if-nez v5, :cond_ec

    .line 125
    .local v0, "attachmentCount":I
    :goto_cb
    iget-object v5, p1, Lmobisocial/omlib/client/LongdanClient;->Messaging:Lmobisocial/omlib/client/ClientMessagingUtils;

    iget-object v5, v5, Lmobisocial/omlib/client/ClientMessagingUtils;->notification:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;

    iget-object v6, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->localObjId:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v0}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->notifyDeliveryScheduled(JI)V

    .line 128
    .end local v0    # "attachmentCount":I
    .end local v1    # "attch":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v3    # "msg":Lmobisocial/longdan/LDProtocols$LDMessage;
    .end local v4    # "receipt":Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;
    :cond_d8
    invoke-virtual {p1}, Lmobisocial/omlib/client/LongdanClient;->getMessageProcessor()Lmobisocial/omlib/client/LongdanMessageProcessor;

    move-result-object v5

    iget-object v6, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->localMsgId:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->hashForSend:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Lmobisocial/omlib/client/LongdanMessageProcessor;->addPendingMessage(JJ)V

    .line 129
    return-void

    .line 124
    .restart local v1    # "attch":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v3    # "msg":Lmobisocial/longdan/LDProtocols$LDMessage;
    .restart local v4    # "receipt":Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;
    :cond_ec
    iget-object v5, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->attachments:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_cb
.end method

.method public requestComplete(Lmobisocial/omlib/client/LongdanClient;Ljava/lang/Object;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 17
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "result"    # Ljava/lang/Object;
    .param p3, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p4, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 159
    const-class v5, Lmobisocial/omlib/db/entity/OMMessage;

    iget-object v8, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->localMsgId:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {p3, v5, v8, v9}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v3

    check-cast v3, Lmobisocial/omlib/db/entity/OMMessage;

    .line 160
    .local v3, "msg":Lmobisocial/omlib/db/entity/OMMessage;
    if-nez v3, :cond_18

    .line 161
    const-string v5, "Omlib-job"

    const-string v8, "Completed message but no record found"

    invoke-static {v5, v8}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .end local p2    # "result":Ljava/lang/Object;
    :cond_17
    :goto_17
    return-void

    .line 165
    .restart local p2    # "result":Ljava/lang/Object;
    :cond_18
    instance-of v1, p2, Lmobisocial/longdan/exception/LongdanException;

    .line 166
    .local v1, "deliveryFailed":Z
    iget-object v5, v3, Lmobisocial/omlib/db/entity/OMMessage;->lastHashForSend:Ljava/lang/Long;

    if-eqz v5, :cond_92

    iget-object v5, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->hashForSend:Ljava/lang/Long;

    if-eqz v5, :cond_92

    iget-object v5, v3, Lmobisocial/omlib/db/entity/OMMessage;->lastHashForSend:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v5, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->hashForSend:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v5, v8, v10

    if-nez v5, :cond_92

    .line 168
    if-eqz v1, :cond_b8

    .line 169
    const-wide/16 v6, 0x0

    .line 176
    .end local p2    # "result":Ljava/lang/Object;
    .local v6, "timestamp":J
    :goto_36
    iget-object v5, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->localObjId:Ljava/lang/Long;

    if-eqz v5, :cond_92

    .line 177
    const-class v5, Lmobisocial/omlib/db/entity/OMObject;

    iget-object v8, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->localObjId:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {p3, v5, v8, v9}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v4

    check-cast v4, Lmobisocial/omlib/db/entity/OMObject;

    .line 178
    .local v4, "o":Lmobisocial/omlib/db/entity/OMObject;
    if-eqz v4, :cond_92

    .line 179
    const-wide/16 v8, 0x3e8

    div-long v8, v6, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Lmobisocial/omlib/db/entity/OMObject;->serverTimestamp:Ljava/lang/Long;

    .line 180
    const/4 v5, 0x0

    iput-object v5, v4, Lmobisocial/omlib/db/entity/OMObject;->outgoingId:Ljava/lang/Long;

    .line 181
    if-eqz v1, :cond_c9

    const/4 v5, -0x1

    :goto_5a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lmobisocial/omlib/db/entity/OMObject;->messageStatus:Ljava/lang/Integer;

    .line 182
    invoke-virtual {p3, v4}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 183
    const-class v5, Lmobisocial/omlib/db/entity/OMFeed;

    iget-object v8, v4, Lmobisocial/omlib/db/entity/OMObject;->feedId:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {p3, v5, v8, v9}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v2

    check-cast v2, Lmobisocial/omlib/db/entity/OMFeed;

    .line 184
    .local v2, "f":Lmobisocial/omlib/db/entity/OMFeed;
    if-eqz v2, :cond_92

    .line 185
    iget-object v5, v4, Lmobisocial/omlib/db/entity/OMObject;->serverTimestamp:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-wide v10, v2, Lmobisocial/omlib/db/entity/OMFeed;->renderableTime:J

    cmp-long v5, v8, v10

    if-lez v5, :cond_92

    .line 186
    iget-object v5, v4, Lmobisocial/omlib/db/entity/OMObject;->id:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v2, Lmobisocial/omlib/db/entity/OMFeed;->renderableObjId:J

    .line 187
    iget-object v5, v4, Lmobisocial/omlib/db/entity/OMObject;->serverTimestamp:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v2, Lmobisocial/omlib/db/entity/OMFeed;->renderableTime:J

    .line 188
    invoke-virtual {p3, v2}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 194
    .end local v2    # "f":Lmobisocial/omlib/db/entity/OMFeed;
    .end local v4    # "o":Lmobisocial/omlib/db/entity/OMObject;
    .end local v6    # "timestamp":J
    :cond_92
    invoke-virtual {p1}, Lmobisocial/omlib/client/LongdanClient;->getMessageProcessor()Lmobisocial/omlib/client/LongdanMessageProcessor;

    move-result-object v5

    iget-object v8, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->localMsgId:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v10, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->hashForSend:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v5, v8, v9, v10, v11}, Lmobisocial/omlib/client/LongdanMessageProcessor;->removePendingMessage(JJ)Z

    .line 195
    iget-object v5, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->localObjId:Ljava/lang/Long;

    if-eqz v5, :cond_17

    .line 196
    iget-object v5, p1, Lmobisocial/omlib/client/LongdanClient;->Messaging:Lmobisocial/omlib/client/ClientMessagingUtils;

    iget-object v5, v5, Lmobisocial/omlib/client/ClientMessagingUtils;->notification:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;

    iget-object v8, p0, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->localObjId:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->notifyObjectSent(J)V

    goto/16 :goto_17

    .line 171
    .restart local p2    # "result":Ljava/lang/Object;
    :cond_b8
    check-cast p2, Lmobisocial/longdan/LDProtocols$LDSimpleResponse;

    .end local p2    # "result":Ljava/lang/Object;
    iget-object v0, p2, Lmobisocial/longdan/LDProtocols$LDSimpleResponse;->Value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    .line 172
    .local v0, "d":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    move-result-wide v6

    .line 173
    .restart local v6    # "timestamp":J
    iput-wide v6, v3, Lmobisocial/omlib/db/entity/OMMessage;->timestamp:J

    .line 174
    invoke-virtual {p3, v3}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    goto/16 :goto_36

    .line 181
    .end local v0    # "d":Ljava/lang/Double;
    .restart local v4    # "o":Lmobisocial/omlib/db/entity/OMObject;
    :cond_c9
    const/4 v5, 0x2

    goto :goto_5a
.end method
