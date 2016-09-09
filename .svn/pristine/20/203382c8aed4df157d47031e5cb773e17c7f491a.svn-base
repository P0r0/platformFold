.class public Lmobisocial/omlib/processors/AcceptanceChangeProcessor;
.super Ljava/lang/Object;
.source "AcceptanceChangeProcessor.java"

# interfaces
.implements Lmobisocial/omlib/client/interfaces/DurableMessageProcessor;


# instance fields
.field mFeedsForFetch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmobisocial/omlib/db/entity/OMFeed;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginBatch(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;)V
    .registers 4
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;

    .prologue
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/processors/AcceptanceChangeProcessor;->mFeedsForFetch:Ljava/util/List;

    .line 23
    return-void
.end method

.method public endBatch(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 6
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 46
    iget-object v0, p0, Lmobisocial/omlib/processors/AcceptanceChangeProcessor;->mFeedsForFetch:Ljava/util/List;

    .line 47
    .local v0, "feeds":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/db/entity/OMFeed;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lmobisocial/omlib/processors/AcceptanceChangeProcessor;->mFeedsForFetch:Ljava/util/List;

    .line 48
    new-instance v1, Lmobisocial/omlib/processors/AcceptanceChangeProcessor$1;

    invoke-direct {v1, p0, p1, v0}, Lmobisocial/omlib/processors/AcceptanceChangeProcessor$1;-><init>(Lmobisocial/omlib/processors/AcceptanceChangeProcessor;Lmobisocial/omlib/client/LongdanClient;Ljava/util/List;)V

    invoke-interface {p3, v1}, Lmobisocial/omlib/db/PostCommit;->add(Ljava/lang/Runnable;)V

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
    .line 42
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
    .param p7, "receipt"    # Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;

    .prologue
    .line 27
    iget-object v2, p6, Lmobisocial/longdan/LDProtocols$LDMessage;->Body:[B

    const-class v3, Lmobisocial/longdan/LDProtocols$LDAcceptanceChange;

    invoke-static {v2, v3}, Lmobisocial/serialization/SerializationUtils;->fromJson([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/longdan/LDProtocols$LDAcceptanceChange;

    .line 28
    .local v0, "acceptance":Lmobisocial/longdan/LDProtocols$LDAcceptanceChange;
    iget-object v2, p1, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    iget-object v3, v0, Lmobisocial/longdan/LDProtocols$LDAcceptanceChange;->Acceptance:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmobisocial/omlib/client/ClientFeedUtils;->getAcceptanceFromString(Ljava/lang/String;)Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;

    move-result-object v1

    .line 29
    .local v1, "newAcceptance":Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;
    sget-object v2, Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;->Blocked:Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;

    if-eq v1, v2, :cond_1b

    .line 30
    iget-object v2, p0, Lmobisocial/omlib/processors/AcceptanceChangeProcessor;->mFeedsForFetch:Ljava/util/List;

    invoke-interface {v2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_1b
    sget-object v2, Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;->Removed:Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;

    if-ne v1, v2, :cond_25

    .line 33
    iget-object v2, p1, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    invoke-virtual {v2, p2, p3, p4}, Lmobisocial/omlib/client/ClientFeedUtils;->deleteFeedAndContents(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/db/entity/OMFeed;)V

    .line 38
    :cond_24
    :goto_24
    return-void

    .line 34
    :cond_25
    iget-wide v2, p4, Lmobisocial/omlib/db/entity/OMFeed;->acceptance:J

    invoke-virtual {v1}, Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;->ordinal()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    .line 35
    invoke-virtual {v1}, Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;->ordinal()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p4, Lmobisocial/omlib/db/entity/OMFeed;->acceptance:J

    .line 36
    invoke-virtual {p2, p4}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    goto :goto_24
.end method
