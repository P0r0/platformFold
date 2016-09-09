.class public Lmobisocial/omlib/processors/SmsParticipationProcessor;
.super Ljava/lang/Object;
.source "SmsParticipationProcessor.java"

# interfaces
.implements Lmobisocial/omlib/client/interfaces/DurableMessageProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlib/processors/SmsParticipationProcessor$SmsParticipationObj;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
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
    .line 46
    return-void
.end method

.method public processDelete(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/longdan/LDProtocols$LDMessage;Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;)V
    .registers 9
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;
    .param p4, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;
    .param p5, "msg"    # Lmobisocial/longdan/LDProtocols$LDMessage;
    .param p6, "record"    # Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;

    .prologue
    .line 38
    iget-object v0, p1, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    iget-object v1, p5, Lmobisocial/longdan/LDProtocols$LDMessage;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    invoke-virtual {v0, v1}, Lmobisocial/omlib/client/ClientFeedUtils;->isFeaturesFeed(Lmobisocial/longdan/LDProtocols$LDFeed;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 42
    :goto_a
    return-void

    .line 41
    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lmobisocial/omlib/processors/SmsParticipationProcessor;->setSmsAvailability(Lmobisocial/omlib/db/OMSQLiteHelper;Z)V

    goto :goto_a
.end method

.method public processMessage(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/omlib/db/entity/OMAccount;Lmobisocial/longdan/LDProtocols$LDMessage;Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;)V
    .registers 11
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;
    .param p4, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;
    .param p5, "sender"    # Lmobisocial/omlib/db/entity/OMAccount;
    .param p6, "msg"    # Lmobisocial/longdan/LDProtocols$LDMessage;
    .param p7, "receipt"    # Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;

    .prologue
    .line 29
    iget-object v1, p1, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    iget-object v2, p6, Lmobisocial/longdan/LDProtocols$LDMessage;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    invoke-virtual {v1, v2}, Lmobisocial/omlib/client/ClientFeedUtils;->isFeaturesFeed(Lmobisocial/longdan/LDProtocols$LDFeed;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 34
    :goto_a
    return-void

    .line 32
    :cond_b
    iget-object v1, p6, Lmobisocial/longdan/LDProtocols$LDMessage;->Body:[B

    const-class v2, Lmobisocial/omlib/processors/SmsParticipationProcessor$SmsParticipationObj;

    invoke-static {v1, v2}, Lmobisocial/serialization/SerializationUtils;->fromJson([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/processors/SmsParticipationProcessor$SmsParticipationObj;

    .line 33
    .local v0, "obj":Lmobisocial/omlib/processors/SmsParticipationProcessor$SmsParticipationObj;
    iget-boolean v1, v0, Lmobisocial/omlib/processors/SmsParticipationProcessor$SmsParticipationObj;->optOut:Z

    if-nez v1, :cond_1e

    const/4 v1, 0x1

    :goto_1a
    invoke-virtual {p0, p2, v1}, Lmobisocial/omlib/processors/SmsParticipationProcessor;->setSmsAvailability(Lmobisocial/omlib/db/OMSQLiteHelper;Z)V

    goto :goto_a

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method setSmsAvailability(Lmobisocial/omlib/db/OMSQLiteHelper;Z)V
    .registers 6
    .param p1, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "available"    # Z

    .prologue
    .line 49
    const-class v1, Lmobisocial/omlib/db/entity/OMSetting;

    const-string v2, "sms_available"

    invoke-virtual {p1, v1, v2}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMSetting;

    .line 50
    .local v0, "setting":Lmobisocial/omlib/db/entity/OMSetting;
    if-nez v0, :cond_1f

    .line 51
    new-instance v0, Lmobisocial/omlib/db/entity/OMSetting;

    .end local v0    # "setting":Lmobisocial/omlib/db/entity/OMSetting;
    invoke-direct {v0}, Lmobisocial/omlib/db/entity/OMSetting;-><init>()V

    .line 52
    .restart local v0    # "setting":Lmobisocial/omlib/db/entity/OMSetting;
    const-string v1, "sms_available"

    iput-object v1, v0, Lmobisocial/omlib/db/entity/OMSetting;->key:Ljava/lang/String;

    .line 53
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lmobisocial/omlib/db/entity/OMSetting;->booleanValue:Ljava/lang/Boolean;

    .line 54
    invoke-virtual {p1, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->insertObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 59
    :goto_1e
    return-void

    .line 56
    :cond_1f
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lmobisocial/omlib/db/entity/OMSetting;->booleanValue:Ljava/lang/Boolean;

    .line 57
    invoke-virtual {p1, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    goto :goto_1e
.end method
