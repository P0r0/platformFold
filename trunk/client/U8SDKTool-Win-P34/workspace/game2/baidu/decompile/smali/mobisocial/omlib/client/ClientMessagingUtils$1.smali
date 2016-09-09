.class Lmobisocial/omlib/client/ClientMessagingUtils$1;
.super Ljava/lang/Object;
.source "ClientMessagingUtils.java"

# interfaces
.implements Lmobisocial/omlib/db/DatabaseRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientMessagingUtils;->delete(JZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/ClientMessagingUtils;

.field final synthetic val$localOnly:Z

.field final synthetic val$objectId:J

.field final synthetic val$result:[Z


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientMessagingUtils;JZ[Z)V
    .registers 6
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientMessagingUtils;

    .prologue
    .line 90
    iput-object p1, p0, Lmobisocial/omlib/client/ClientMessagingUtils$1;->this$0:Lmobisocial/omlib/client/ClientMessagingUtils;

    iput-wide p2, p0, Lmobisocial/omlib/client/ClientMessagingUtils$1;->val$objectId:J

    iput-boolean p4, p0, Lmobisocial/omlib/client/ClientMessagingUtils$1;->val$localOnly:Z

    iput-object p5, p0, Lmobisocial/omlib/client/ClientMessagingUtils$1;->val$result:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 15
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 94
    const-class v8, Lmobisocial/omlib/db/entity/OMObject;

    iget-wide v10, p0, Lmobisocial/omlib/client/ClientMessagingUtils$1;->val$objectId:J

    invoke-virtual {p1, v8, v10, v11}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v5

    check-cast v5, Lmobisocial/omlib/db/entity/OMObject;

    .line 95
    .local v5, "objToDelete":Lmobisocial/omlib/db/entity/OMObject;
    const-class v8, Lmobisocial/omlib/db/entity/OMMessage;

    iget-object v9, v5, Lmobisocial/omlib/db/entity/OMObject;->messageId:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {p1, v8, v10, v11}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v3

    check-cast v3, Lmobisocial/omlib/db/entity/OMMessage;

    .line 96
    .local v3, "messageToDelete":Lmobisocial/omlib/db/entity/OMMessage;
    const-class v8, Lmobisocial/omlib/db/entity/OMFeed;

    iget-object v9, v5, Lmobisocial/omlib/db/entity/OMObject;->feedId:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {p1, v8, v10, v11}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v4

    check-cast v4, Lmobisocial/omlib/db/entity/OMFeed;

    .line 97
    .local v4, "objFeed":Lmobisocial/omlib/db/entity/OMFeed;
    iget-boolean v8, p0, Lmobisocial/omlib/client/ClientMessagingUtils$1;->val$localOnly:Z

    if-nez v8, :cond_7f

    .line 98
    if-eqz v5, :cond_7f

    if-eqz v3, :cond_7f

    .line 99
    iget-object v8, v3, Lmobisocial/omlib/db/entity/OMMessage;->feedIdTypedId:[B

    invoke-static {v8}, Lmobisocial/omlib/client/ClientFeedUtils;->decodeTypedIdFromMessageKey([B)Lmobisocial/longdan/LDProtocols$LDTypedId;

    move-result-object v6

    .line 100
    .local v6, "refId":Lmobisocial/longdan/LDProtocols$LDTypedId;
    const-class v8, Lmobisocial/omlib/db/entity/OMAccount;

    iget-object v9, v5, Lmobisocial/omlib/db/entity/OMObject;->senderId:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {p1, v8, v10, v11}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v7

    check-cast v7, Lmobisocial/omlib/db/entity/OMAccount;

    .line 101
    .local v7, "sender":Lmobisocial/omlib/db/entity/OMAccount;
    if-eqz v4, :cond_7f

    if-eqz v7, :cond_7f

    .line 102
    iget-boolean v8, v7, Lmobisocial/omlib/db/entity/OMAccount;->owned:Z

    if-eqz v8, :cond_8d

    .line 103
    iget-object v8, p0, Lmobisocial/omlib/client/ClientMessagingUtils$1;->this$0:Lmobisocial/omlib/client/ClientMessagingUtils;

    # getter for: Lmobisocial/omlib/client/ClientMessagingUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v8}, Lmobisocial/omlib/client/ClientMessagingUtils;->access$000(Lmobisocial/omlib/client/ClientMessagingUtils;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v8

    invoke-virtual {v8}, Lmobisocial/omlib/client/LongdanClient;->getDurableJobProcessor()Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    move-result-object v8

    iget-wide v10, p0, Lmobisocial/omlib/client/ClientMessagingUtils$1;->val$objectId:J

    invoke-virtual {v8, p1, p2, v10, v11}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->cancelSendJobIfExists(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;J)V

    .line 104
    new-instance v0, Lmobisocial/longdan/LDProtocols$LDDeleteMessageRequest;

    invoke-direct {v0}, Lmobisocial/longdan/LDProtocols$LDDeleteMessageRequest;-><init>()V

    .line 105
    .local v0, "deleteMessageRequest":Lmobisocial/longdan/LDProtocols$LDDeleteMessageRequest;
    invoke-virtual {v4}, Lmobisocial/omlib/db/entity/OMFeed;->getLdFeed()Lmobisocial/longdan/LDProtocols$LDFeed;

    move-result-object v8

    iput-object v8, v0, Lmobisocial/longdan/LDProtocols$LDDeleteMessageRequest;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    .line 106
    iput-object v6, v0, Lmobisocial/longdan/LDProtocols$LDDeleteMessageRequest;->Id:Lmobisocial/longdan/LDProtocols$LDTypedId;

    .line 107
    new-instance v2, Lmobisocial/omlib/jobs/ControlMessageJobHandler;

    invoke-direct {v2, v0}, Lmobisocial/omlib/jobs/ControlMessageJobHandler;-><init>(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V

    .line 108
    .local v2, "job":Lmobisocial/omlib/jobs/ControlMessageJobHandler;
    iget-object v8, p0, Lmobisocial/omlib/client/ClientMessagingUtils$1;->this$0:Lmobisocial/omlib/client/ClientMessagingUtils;

    # getter for: Lmobisocial/omlib/client/ClientMessagingUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v8}, Lmobisocial/omlib/client/ClientMessagingUtils;->access$000(Lmobisocial/omlib/client/ClientMessagingUtils;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v8

    invoke-virtual {v8}, Lmobisocial/omlib/client/LongdanClient;->getDurableJobProcessor()Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v2, v9, p1, p2}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->scheduleFromDbThread(Lmobisocial/omlib/client/interfaces/DurableJobHandler;ZLmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V

    .line 114
    .end local v0    # "deleteMessageRequest":Lmobisocial/longdan/LDProtocols$LDDeleteMessageRequest;
    .end local v2    # "job":Lmobisocial/omlib/jobs/ControlMessageJobHandler;
    :goto_79
    iget-object v8, p0, Lmobisocial/omlib/client/ClientMessagingUtils$1;->val$result:[Z

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 118
    .end local v6    # "refId":Lmobisocial/longdan/LDProtocols$LDTypedId;
    .end local v7    # "sender":Lmobisocial/omlib/db/entity/OMAccount;
    :cond_7f
    if-eqz v5, :cond_8c

    if-eqz v3, :cond_8c

    .line 119
    invoke-static {p1, p2, v4, v5}, Lmobisocial/omlib/processors/DeleteProcessor;->performDelete(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/omlib/db/entity/OMObject;)V

    .line 120
    iget-object v8, p0, Lmobisocial/omlib/client/ClientMessagingUtils$1;->val$result:[Z

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 122
    :cond_8c
    return-void

    .line 110
    .restart local v6    # "refId":Lmobisocial/longdan/LDProtocols$LDTypedId;
    .restart local v7    # "sender":Lmobisocial/omlib/db/entity/OMAccount;
    :cond_8d
    new-instance v1, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;

    iget-object v8, p0, Lmobisocial/omlib/client/ClientMessagingUtils$1;->this$0:Lmobisocial/omlib/client/ClientMessagingUtils;

    const-string v9, "delete"

    invoke-direct {v1, v8, v9}, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;-><init>(Lmobisocial/omlib/client/ClientMessagingUtils;Ljava/lang/String;)V

    .line 111
    .local v1, "deleteReq":Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;
    iget-object v8, v1, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    invoke-virtual {v6}, Lmobisocial/longdan/LDProtocols$LDTypedId;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    iput-object v9, v8, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->referenceId:[B

    .line 112
    iget-object v8, p0, Lmobisocial/omlib/client/ClientMessagingUtils$1;->this$0:Lmobisocial/omlib/client/ClientMessagingUtils;

    invoke-virtual {v4}, Lmobisocial/omlib/db/entity/OMFeed;->getLdFeed()Lmobisocial/longdan/LDProtocols$LDFeed;

    move-result-object v9

    invoke-virtual {v8, v9, v1}, Lmobisocial/omlib/client/ClientMessagingUtils;->send(Lmobisocial/longdan/LDProtocols$LDFeed;Lmobisocial/omlib/interfaces/Sendable;)V

    goto :goto_79
.end method
