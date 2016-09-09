.class public Lmobisocial/omlib/processors/StoreItemProcessor;
.super Ljava/lang/Object;
.source "StoreItemProcessor.java"

# interfaces
.implements Lmobisocial/omlib/client/interfaces/DurableMessageProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlib/processors/StoreItemProcessor$ItemIdObj;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public beginBatch(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;)V
    .registers 3
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;

    .prologue
    .line 25
    return-void
.end method

.method public endBatch(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 4
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 56
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
    .line 52
    return-void
.end method

.method public processMessage(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/omlib/db/entity/OMAccount;Lmobisocial/longdan/LDProtocols$LDMessage;Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;)V
    .registers 14
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;
    .param p4, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;
    .param p5, "sender"    # Lmobisocial/omlib/db/entity/OMAccount;
    .param p6, "msg"    # Lmobisocial/longdan/LDProtocols$LDMessage;
    .param p7, "record"    # Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;

    .prologue
    .line 29
    iget-object v3, p6, Lmobisocial/longdan/LDProtocols$LDMessage;->Id:Lmobisocial/longdan/LDProtocols$LDTypedId;

    iget-object v1, v3, Lmobisocial/longdan/LDProtocols$LDTypedId;->Id:[B

    .line 30
    .local v1, "itemIdKey":[B
    iget-object v3, p6, Lmobisocial/longdan/LDProtocols$LDMessage;->Id:Lmobisocial/longdan/LDProtocols$LDTypedId;

    iget-object v3, v3, Lmobisocial/longdan/LDProtocols$LDTypedId;->Id:[B

    const-class v4, Lmobisocial/longdan/LDProtocols$LDItemId;

    invoke-static {v3, v4}, Lmobisocial/serialization/SerializationUtils;->fromJson([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/longdan/LDProtocols$LDItemId;

    .line 31
    .local v0, "itemId":Lmobisocial/longdan/LDProtocols$LDItemId;
    if-nez v0, :cond_2f

    .line 32
    const-string v3, "Omlib-processor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received StoreItem message with invalid id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p6}, Lmobisocial/longdan/LDProtocols$LDMessage;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_2e
    :goto_2e
    return-void

    .line 35
    :cond_2f
    iget-object v3, p6, Lmobisocial/longdan/LDProtocols$LDMessage;->Owner:Ljava/lang/String;

    const-string v4, "system"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    .line 36
    const-string v3, "Omlib-processor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not processing StoreItem Message because owner is not system: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p6}, Lmobisocial/longdan/LDProtocols$LDMessage;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    .line 40
    :cond_56
    const-string v3, "StickerPack"

    iget-object v4, v0, Lmobisocial/longdan/LDProtocols$LDItemId;->ItemType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 41
    new-instance v2, Lmobisocial/omlib/jobs/StoreItemRefreshJobHandler;

    invoke-direct {v2, v0}, Lmobisocial/omlib/jobs/StoreItemRefreshJobHandler;-><init>(Lmobisocial/longdan/LDProtocols$LDItemId;)V

    .line 42
    .local v2, "refreshSticker":Lmobisocial/omlib/jobs/StoreItemRefreshJobHandler;
    invoke-virtual {p1}, Lmobisocial/omlib/client/LongdanClient;->getDurableJobProcessor()Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, p2, p3}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->scheduleFromDbThread(Lmobisocial/omlib/client/interfaces/DurableJobHandler;ZLmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V

    goto :goto_2e
.end method
