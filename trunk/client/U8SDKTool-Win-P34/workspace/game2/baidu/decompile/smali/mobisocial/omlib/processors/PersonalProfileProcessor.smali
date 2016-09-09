.class public Lmobisocial/omlib/processors/PersonalProfileProcessor;
.super Ljava/lang/Object;
.source "PersonalProfileProcessor.java"

# interfaces
.implements Lmobisocial/omlib/client/interfaces/DurableMessageProcessor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginBatch(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;)V
    .registers 3
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;

    .prologue
    .line 18
    return-void
.end method

.method public endBatch(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 4
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 37
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
    .line 33
    return-void
.end method

.method public processMessage(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/omlib/db/entity/OMAccount;Lmobisocial/longdan/LDProtocols$LDMessage;Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;)V
    .registers 12
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;
    .param p4, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;
    .param p5, "sender"    # Lmobisocial/omlib/db/entity/OMAccount;
    .param p6, "msg"    # Lmobisocial/longdan/LDProtocols$LDMessage;
    .param p7, "receipt"    # Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;

    .prologue
    .line 22
    invoke-virtual {p4}, Lmobisocial/omlib/db/entity/OMFeed;->getLdFeed()Lmobisocial/longdan/LDProtocols$LDFeed;

    move-result-object v0

    .line 23
    .local v0, "ldfeed":Lmobisocial/longdan/LDProtocols$LDFeed;
    if-eqz v0, :cond_e

    iget-object v2, p1, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    invoke-virtual {v2, v0}, Lmobisocial/omlib/client/ClientFeedUtils;->isMeFeed(Lmobisocial/longdan/LDProtocols$LDFeed;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 29
    :cond_e
    :goto_e
    return-void

    .line 25
    :cond_f
    iget-object v2, p6, Lmobisocial/longdan/LDProtocols$LDMessage;->Body:[B

    const-class v3, Lmobisocial/longdan/LDObjects$ProfileObj;

    invoke-static {v2, v3}, Lmobisocial/serialization/SerializationUtils;->fromJson([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobisocial/longdan/LDObjects$ProfileObj;

    .line 26
    .local v1, "profile":Lmobisocial/longdan/LDObjects$ProfileObj;
    iget-object v2, v1, Lmobisocial/longdan/LDObjects$ProfileObj;->ProfileDetails:Lmobisocial/longdan/LDProtocols$LDProfileDetails;

    if-eqz v2, :cond_e

    .line 28
    iget-object v2, p1, Lmobisocial/omlib/client/LongdanClient;->Identity:Lmobisocial/omlib/client/ClientIdentityUtils;

    iget-object v3, v1, Lmobisocial/longdan/LDObjects$ProfileObj;->ProfileDetails:Lmobisocial/longdan/LDProtocols$LDProfileDetails;

    invoke-virtual {v2, p2, p3, v3}, Lmobisocial/omlib/client/ClientIdentityUtils;->applyProfileDetails(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/longdan/LDProtocols$LDProfileDetails;)V

    goto :goto_e
.end method
