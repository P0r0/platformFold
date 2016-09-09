.class public Lmobisocial/omlib/processors/MembershipProcessor;
.super Ljava/lang/Object;
.source "MembershipProcessor.java"

# interfaces
.implements Lmobisocial/omlib/client/interfaces/DurableMessageProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlib/processors/MembershipProcessor$MembershipACL;
    }
.end annotation


# instance fields
.field mFeedsNeedingNaming:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mFeedsNeedingSync:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    return-void
.end method

.method static synthetic access$000(Lmobisocial/omlib/processors/MembershipProcessor;Lmobisocial/omlib/client/LongdanClient;Ljava/util/Set;)V
    .registers 3
    .param p0, "x0"    # Lmobisocial/omlib/processors/MembershipProcessor;
    .param p1, "x1"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "x2"    # Ljava/util/Set;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lmobisocial/omlib/processors/MembershipProcessor;->refreshFeedNames(Lmobisocial/omlib/client/LongdanClient;Ljava/util/Set;)V

    return-void
.end method

.method private refreshFeedNames(Lmobisocial/omlib/client/LongdanClient;Ljava/util/Set;)V
    .registers 4
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobisocial/omlib/client/LongdanClient;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p2, "feedsNeedingNaming":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v0, Lmobisocial/omlib/processors/MembershipProcessor$2;

    invoke-direct {v0, p0, p2, p1}, Lmobisocial/omlib/processors/MembershipProcessor$2;-><init>(Lmobisocial/omlib/processors/MembershipProcessor;Ljava/util/Set;Lmobisocial/omlib/client/LongdanClient;)V

    invoke-virtual {p1, v0}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThread(Lmobisocial/omlib/db/DatabaseRunnable;)V

    .line 145
    return-void
.end method


# virtual methods
.method public beginBatch(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;)V
    .registers 4
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;

    .prologue
    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/processors/MembershipProcessor;->mFeedsNeedingSync:Ljava/util/Set;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/processors/MembershipProcessor;->mFeedsNeedingNaming:Ljava/util/Set;

    .line 34
    return-void
.end method

.method public endBatch(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 7
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    const/4 v2, 0x0

    .line 107
    iget-object v0, p0, Lmobisocial/omlib/processors/MembershipProcessor;->mFeedsNeedingNaming:Ljava/util/Set;

    .line 108
    .local v0, "feedsNeedingNaming":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v1, p0, Lmobisocial/omlib/processors/MembershipProcessor;->mFeedsNeedingSync:Ljava/util/Set;

    .line 109
    .local v1, "feedsToSync":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    iput-object v2, p0, Lmobisocial/omlib/processors/MembershipProcessor;->mFeedsNeedingNaming:Ljava/util/Set;

    .line 110
    iput-object v2, p0, Lmobisocial/omlib/processors/MembershipProcessor;->mFeedsNeedingSync:Ljava/util/Set;

    .line 111
    new-instance v2, Lmobisocial/omlib/processors/MembershipProcessor$1;

    invoke-direct {v2, p0, p1, v0, v1}, Lmobisocial/omlib/processors/MembershipProcessor$1;-><init>(Lmobisocial/omlib/processors/MembershipProcessor;Lmobisocial/omlib/client/LongdanClient;Ljava/util/Set;Ljava/util/Set;)V

    invoke-interface {p3, v2}, Lmobisocial/omlib/db/PostCommit;->add(Ljava/lang/Runnable;)V

    .line 127
    return-void
.end method

.method public processDelete(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/longdan/LDProtocols$LDMessage;Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;)V
    .registers 16
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;
    .param p4, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;
    .param p5, "msg"    # Lmobisocial/longdan/LDProtocols$LDMessage;
    .param p6, "record"    # Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;

    .prologue
    const/4 v8, 0x0

    .line 79
    new-instance v0, Ljava/lang/String;

    iget-object v4, p5, Lmobisocial/longdan/LDProtocols$LDMessage;->Id:Lmobisocial/longdan/LDProtocols$LDTypedId;

    iget-object v4, v4, Lmobisocial/longdan/LDProtocols$LDTypedId;->Id:[B

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .line 80
    .local v0, "accountKey":Ljava/lang/String;
    const-class v4, Lmobisocial/omlib/db/entity/OMAccount;

    invoke-virtual {p2, v4, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v3

    check-cast v3, Lmobisocial/omlib/db/entity/OMAccount;

    .line 81
    .local v3, "person":Lmobisocial/omlib/db/entity/OMAccount;
    if-nez v3, :cond_15

    .line 103
    :goto_14
    return-void

    .line 83
    :cond_15
    iget-object v4, v3, Lmobisocial/omlib/db/entity/OMAccount;->name:Ljava/lang/String;

    if-eqz v4, :cond_54

    .line 84
    invoke-virtual {p1}, Lmobisocial/omlib/client/LongdanClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 85
    .local v1, "ctx":Landroid/content/Context;
    new-instance v2, Lmobisocial/omlib/db/entity/OMObject;

    invoke-direct {v2}, Lmobisocial/omlib/db/entity/OMObject;-><init>()V

    .line 86
    .local v2, "membershipAdd":Lmobisocial/omlib/db/entity/OMObject;
    const-string v4, ":removal"

    iput-object v4, v2, Lmobisocial/omlib/db/entity/OMObject;->type:Ljava/lang/String;

    .line 87
    iget-wide v4, p4, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v2, Lmobisocial/omlib/db/entity/OMObject;->feedId:Ljava/lang/Long;

    .line 88
    iget-object v4, v3, Lmobisocial/omlib/db/entity/OMAccount;->id:Ljava/lang/Long;

    iput-object v4, v2, Lmobisocial/omlib/db/entity/OMObject;->senderId:Ljava/lang/Long;

    .line 89
    iget-boolean v4, v3, Lmobisocial/omlib/db/entity/OMAccount;->owned:Z

    if-eqz v4, :cond_8a

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "oml_you_were_removed"

    invoke-static {v1, v5}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_44
    iput-object v4, v2, Lmobisocial/omlib/db/entity/OMObject;->text:Ljava/lang/String;

    .line 90
    iget-wide v4, p5, Lmobisocial/longdan/LDProtocols$LDMessage;->Timestamp:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v2, Lmobisocial/omlib/db/entity/OMObject;->serverTimestamp:Ljava/lang/Long;

    .line 91
    invoke-virtual {p2, v2}, Lmobisocial/omlib/db/OMSQLiteHelper;->insertObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 93
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v2    # "membershipAdd":Lmobisocial/omlib/db/entity/OMObject;
    :cond_54
    iget-object v4, p1, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    invoke-virtual {v4, p2, p3, p4, v3}, Lmobisocial/omlib/client/ClientFeedUtils;->removeFeedMemberLocal(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/omlib/db/entity/OMAccount;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 94
    iget-wide v4, p4, Lmobisocial/omlib/db/entity/OMFeed;->memberCount:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p4, Lmobisocial/omlib/db/entity/OMFeed;->memberCount:J

    .line 96
    :cond_63
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-boolean v5, v3, Lmobisocial/omlib/db/entity/OMAccount;->owned:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 97
    iput-boolean v8, p4, Lmobisocial/omlib/db/entity/OMFeed;->hasWriteAccess:Z

    .line 99
    :cond_73
    iget-object v4, p1, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    invoke-virtual {v4, p4}, Lmobisocial/omlib/client/ClientFeedUtils;->feedNeedsDetailGenerated(Lmobisocial/omlib/db/entity/OMFeed;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 100
    iget-object v4, p0, Lmobisocial/omlib/processors/MembershipProcessor;->mFeedsNeedingNaming:Ljava/util/Set;

    iget-wide v6, p4, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_86
    invoke-virtual {p2, p4}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    goto :goto_14

    .line 89
    .restart local v1    # "ctx":Landroid/content/Context;
    .restart local v2    # "membershipAdd":Lmobisocial/omlib/db/entity/OMObject;
    :cond_8a
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "oml_was_removed"

    invoke-static {v1, v5}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v3, Lmobisocial/omlib/db/entity/OMAccount;->name:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_44
.end method

.method public processMessage(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/omlib/db/entity/OMAccount;Lmobisocial/longdan/LDProtocols$LDMessage;Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;)V
    .registers 21
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;
    .param p4, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;
    .param p5, "sender"    # Lmobisocial/omlib/db/entity/OMAccount;
    .param p6, "msg"    # Lmobisocial/longdan/LDProtocols$LDMessage;
    .param p7, "receipt"    # Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;

    .prologue
    .line 38
    move-object/from16 v0, p6

    iget-object v8, v0, Lmobisocial/longdan/LDProtocols$LDMessage;->Body:[B

    const-class v9, Lmobisocial/omlib/processors/MembershipProcessor$MembershipACL;

    invoke-static {v8, v9}, Lmobisocial/serialization/SerializationUtils;->fromJson([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobisocial/omlib/processors/MembershipProcessor$MembershipACL;

    .line 39
    .local v3, "membership":Lmobisocial/omlib/processors/MembershipProcessor$MembershipACL;
    sget v8, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v9, 0x2

    if-gt v8, v9, :cond_40

    .line 40
    const-string v8, "Omlib"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Processing member "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, p6

    iget-object v11, v0, Lmobisocial/longdan/LDProtocols$LDMessage;->Id:Lmobisocial/longdan/LDProtocols$LDTypedId;

    iget-object v11, v11, Lmobisocial/longdan/LDProtocols$LDTypedId;->Id:[B

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lmobisocial/omlib/processors/MembershipProcessor$MembershipACL;->adderAccount:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lmobisocial/util/OMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_40
    iget-object v8, v3, Lmobisocial/omlib/processors/MembershipProcessor$MembershipACL;->adderAccount:Ljava/lang/String;

    if-nez v8, :cond_45

    .line 75
    :cond_44
    :goto_44
    return-void

    .line 43
    :cond_45
    iget-object v8, p1, Lmobisocial/omlib/client/LongdanClient;->Identity:Lmobisocial/omlib/client/ClientIdentityUtils;

    iget-object v9, v3, Lmobisocial/omlib/processors/MembershipProcessor$MembershipACL;->adderAccount:Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v8, v9, p2, v0, v10}, Lmobisocial/omlib/client/ClientIdentityUtils;->ensureAccountInTransaction(Ljava/lang/String;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Z)Lmobisocial/omlib/db/entity/OMAccount;

    .line 44
    iget-object v8, p1, Lmobisocial/omlib/client/LongdanClient;->Identity:Lmobisocial/omlib/client/ClientIdentityUtils;

    new-instance v9, Ljava/lang/String;

    move-object/from16 v0, p6

    iget-object v10, v0, Lmobisocial/longdan/LDProtocols$LDMessage;->Id:Lmobisocial/longdan/LDProtocols$LDTypedId;

    iget-object v10, v10, Lmobisocial/longdan/LDProtocols$LDTypedId;->Id:[B

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v8, v9, p2, v0, v10}, Lmobisocial/omlib/client/ClientIdentityUtils;->ensureAccountInTransaction(Ljava/lang/String;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Z)Lmobisocial/omlib/db/entity/OMAccount;

    move-result-object v5

    .line 45
    .local v5, "person":Lmobisocial/omlib/db/entity/OMAccount;
    iget-object v8, p1, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v8, p2, v0, v1, v5}, Lmobisocial/omlib/client/ClientFeedUtils;->ensureFeedMember(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/omlib/db/entity/OMAccount;)Z

    move-result v8

    if-eqz v8, :cond_44

    .line 47
    iget-object v8, v5, Lmobisocial/omlib/db/entity/OMAccount;->name:Ljava/lang/String;

    if-eqz v8, :cond_e2

    .line 48
    invoke-virtual {p1}, Lmobisocial/omlib/client/LongdanClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 49
    .local v2, "ctx":Landroid/content/Context;
    move-object/from16 v0, p6

    iget-wide v8, v0, Lmobisocial/longdan/LDProtocols$LDMessage;->Timestamp:J

    const-wide/16 v10, 0x3e8

    div-long v6, v8, v10

    .line 50
    .local v6, "whenAddedToFeed":J
    new-instance v4, Lmobisocial/omlib/db/entity/OMObject;

    invoke-direct {v4}, Lmobisocial/omlib/db/entity/OMObject;-><init>()V

    .line 51
    .local v4, "membershipAdd":Lmobisocial/omlib/db/entity/OMObject;
    const-string v8, "!member"

    iput-object v8, v4, Lmobisocial/omlib/db/entity/OMObject;->type:Ljava/lang/String;

    .line 52
    move-object/from16 v0, p4

    iget-wide v8, v0, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v4, Lmobisocial/omlib/db/entity/OMObject;->feedId:Ljava/lang/Long;

    .line 53
    iget-object v8, v5, Lmobisocial/omlib/db/entity/OMAccount;->id:Ljava/lang/Long;

    iput-object v8, v4, Lmobisocial/omlib/db/entity/OMObject;->senderId:Ljava/lang/Long;

    .line 54
    iget-boolean v8, v5, Lmobisocial/omlib/db/entity/OMAccount;->owned:Z

    if-eqz v8, :cond_14c

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "oml_you_were_added"

    invoke-static {v2, v9}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_a8
    iput-object v8, v4, Lmobisocial/omlib/db/entity/OMObject;->text:Ljava/lang/String;

    .line 55
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v4, Lmobisocial/omlib/db/entity/OMObject;->serverTimestamp:Ljava/lang/Long;

    .line 56
    invoke-virtual {p2, v4}, Lmobisocial/omlib/db/OMSQLiteHelper;->insertObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 57
    move-object/from16 v0, p4

    iget-wide v8, v0, Lmobisocial/omlib/db/entity/OMFeed;->renderableObjId:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_e2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const-wide/32 v10, 0x48190800

    cmp-long v8, v8, v10

    if-gez v8, :cond_e2

    .line 58
    iget-object v8, v4, Lmobisocial/omlib/db/entity/OMObject;->id:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p4

    iput-wide v8, v0, Lmobisocial/omlib/db/entity/OMFeed;->renderableObjId:J

    .line 59
    iget-object v8, v4, Lmobisocial/omlib/db/entity/OMObject;->serverTimestamp:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p4

    iput-wide v8, v0, Lmobisocial/omlib/db/entity/OMFeed;->renderableTime:J

    .line 60
    move-object/from16 v0, p4

    invoke-virtual {p2, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 63
    .end local v2    # "ctx":Landroid/content/Context;
    .end local v4    # "membershipAdd":Lmobisocial/omlib/db/entity/OMObject;
    .end local v6    # "whenAddedToFeed":J
    :cond_e2
    move-object/from16 v0, p4

    iget-wide v8, v0, Lmobisocial/omlib/db/entity/OMFeed;->memberCount:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    move-object/from16 v0, p4

    iput-wide v8, v0, Lmobisocial/omlib/db/entity/OMFeed;->memberCount:J

    .line 64
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-boolean v9, v5, Lmobisocial/omlib/db/entity/OMAccount;->owned:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_128

    move-object/from16 v0, p4

    iget-boolean v8, v0, Lmobisocial/omlib/db/entity/OMFeed;->expired:Z

    if-nez v8, :cond_107

    move-object/from16 v0, p4

    iget-boolean v8, v0, Lmobisocial/omlib/db/entity/OMFeed;->hasWriteAccess:Z

    if-nez v8, :cond_128

    .line 66
    :cond_107
    const/4 v8, 0x0

    move-object/from16 v0, p4

    iput-boolean v8, v0, Lmobisocial/omlib/db/entity/OMFeed;->expired:Z

    .line 67
    const/4 v8, 0x1

    move-object/from16 v0, p4

    iput-boolean v8, v0, Lmobisocial/omlib/db/entity/OMFeed;->hasWriteAccess:Z

    .line 68
    move-object/from16 v0, p4

    iget v8, v0, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    or-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p4

    iput v8, v0, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    .line 69
    iget-object v8, p0, Lmobisocial/omlib/processors/MembershipProcessor;->mFeedsNeedingSync:Ljava/util/Set;

    move-object/from16 v0, p4

    iget-wide v10, v0, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_128
    move-object/from16 v0, p4

    iget-object v8, v0, Lmobisocial/omlib/db/entity/OMFeed;->specifiedName:Ljava/lang/String;

    if-eqz v8, :cond_138

    move-object/from16 v0, p4

    iget-object v8, v0, Lmobisocial/omlib/db/entity/OMFeed;->specifiedName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_145

    .line 72
    :cond_138
    iget-object v8, p0, Lmobisocial/omlib/processors/MembershipProcessor;->mFeedsNeedingNaming:Ljava/util/Set;

    move-object/from16 v0, p4

    iget-wide v10, v0, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_145
    move-object/from16 v0, p4

    invoke-virtual {p2, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    goto/16 :goto_44

    .line 54
    .restart local v2    # "ctx":Landroid/content/Context;
    .restart local v4    # "membershipAdd":Lmobisocial/omlib/db/entity/OMObject;
    .restart local v6    # "whenAddedToFeed":J
    :cond_14c
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "oml_was_added"

    invoke-static {v2, v9}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v5, Lmobisocial/omlib/db/entity/OMAccount;->name:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_a8
.end method
