.class Lmobisocial/omlib/client/ClientFeedUtils$9;
.super Ljava/lang/Object;
.source "ClientFeedUtils.java"

# interfaces
.implements Lmobisocial/omlib/db/DatabaseRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientFeedUtils;->enablePushNotifications(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/ClientFeedUtils;

.field final synthetic val$enabled:Z

.field final synthetic val$feedId:J


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientFeedUtils;JZ)V
    .registers 5
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientFeedUtils;

    .prologue
    .line 702
    iput-object p1, p0, Lmobisocial/omlib/client/ClientFeedUtils$9;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    iput-wide p2, p0, Lmobisocial/omlib/client/ClientFeedUtils$9;->val$feedId:J

    iput-boolean p4, p0, Lmobisocial/omlib/client/ClientFeedUtils$9;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 13
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 706
    const-class v5, Lmobisocial/omlib/db/entity/OMFeed;

    iget-wide v6, p0, Lmobisocial/omlib/client/ClientFeedUtils$9;->val$feedId:J

    invoke-virtual {p1, v5, v6, v7}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMFeed;

    .line 707
    .local v0, "feed":Lmobisocial/omlib/db/entity/OMFeed;
    iget-wide v2, v0, Lmobisocial/omlib/db/entity/OMFeed;->acceptance:J

    .line 708
    .local v2, "previousAcceptance":J
    iget-wide v6, v0, Lmobisocial/omlib/db/entity/OMFeed;->acceptance:J

    sget-object v5, Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;->RestrictedPush:Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;

    invoke-virtual {v5}, Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;->ordinal()I

    move-result v5

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-eqz v5, :cond_26

    iget-wide v6, v0, Lmobisocial/omlib/db/entity/OMFeed;->acceptance:J

    sget-object v5, Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;->Restricted:Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;

    invoke-virtual {v5}, Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;->ordinal()I

    move-result v5

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-nez v5, :cond_76

    .line 709
    :cond_26
    iget-boolean v5, p0, Lmobisocial/omlib/client/ClientFeedUtils$9;->val$enabled:Z

    if-eqz v5, :cond_6e

    sget-object v5, Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;->RestrictedPush:Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;

    invoke-virtual {v5}, Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;->ordinal()I

    move-result v5

    int-to-long v6, v5

    :goto_31
    iput-wide v6, v0, Lmobisocial/omlib/db/entity/OMFeed;->acceptance:J

    .line 713
    :goto_33
    iget-wide v6, v0, Lmobisocial/omlib/db/entity/OMFeed;->acceptance:J

    cmp-long v5, v2, v6

    if-eqz v5, :cond_6d

    .line 714
    invoke-virtual {p1, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 715
    new-instance v4, Lmobisocial/longdan/LDProtocols$LDSetFeedAcceptanceRequest;

    invoke-direct {v4}, Lmobisocial/longdan/LDProtocols$LDSetFeedAcceptanceRequest;-><init>()V

    .line 716
    .local v4, "req":Lmobisocial/longdan/LDProtocols$LDSetFeedAcceptanceRequest;
    invoke-virtual {v0}, Lmobisocial/omlib/db/entity/OMFeed;->getLdFeed()Lmobisocial/longdan/LDProtocols$LDFeed;

    move-result-object v5

    iput-object v5, v4, Lmobisocial/longdan/LDProtocols$LDSetFeedAcceptanceRequest;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    .line 717
    iget-object v5, p0, Lmobisocial/omlib/client/ClientFeedUtils$9;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    invoke-static {}, Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;->values()[Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;

    move-result-object v6

    iget-wide v8, v0, Lmobisocial/omlib/db/entity/OMFeed;->acceptance:J

    long-to-int v7, v8

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lmobisocial/omlib/client/ClientFeedUtils;->getStringFromAcceptance(Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lmobisocial/longdan/LDProtocols$LDSetFeedAcceptanceRequest;->Acceptance:Ljava/lang/String;

    .line 718
    new-instance v1, Lmobisocial/omlib/jobs/ControlMessageJobHandler;

    iget-object v5, v4, Lmobisocial/longdan/LDProtocols$LDSetFeedAcceptanceRequest;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    invoke-direct {v1, v4, v5}, Lmobisocial/omlib/jobs/ControlMessageJobHandler;-><init>(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Lmobisocial/longdan/LDProtocols$LDFeed;)V

    .line 719
    .local v1, "job":Lmobisocial/omlib/jobs/ControlMessageJobHandler;
    iget-object v5, p0, Lmobisocial/omlib/client/ClientFeedUtils$9;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    # getter for: Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v5}, Lmobisocial/omlib/client/ClientFeedUtils;->access$100(Lmobisocial/omlib/client/ClientFeedUtils;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v5

    invoke-virtual {v5}, Lmobisocial/omlib/client/LongdanClient;->getDurableJobProcessor()Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6, p1, p2}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->scheduleFromDbThread(Lmobisocial/omlib/client/interfaces/DurableJobHandler;ZLmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V

    .line 721
    .end local v1    # "job":Lmobisocial/omlib/jobs/ControlMessageJobHandler;
    .end local v4    # "req":Lmobisocial/longdan/LDProtocols$LDSetFeedAcceptanceRequest;
    :cond_6d
    return-void

    .line 709
    :cond_6e
    sget-object v5, Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;->Restricted:Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;

    invoke-virtual {v5}, Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;->ordinal()I

    move-result v5

    int-to-long v6, v5

    goto :goto_31

    .line 711
    :cond_76
    iget-boolean v5, p0, Lmobisocial/omlib/client/ClientFeedUtils$9;->val$enabled:Z

    if-eqz v5, :cond_84

    sget-object v5, Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;->PushEnabled:Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;

    invoke-virtual {v5}, Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;->ordinal()I

    move-result v5

    int-to-long v6, v5

    :goto_81
    iput-wide v6, v0, Lmobisocial/omlib/db/entity/OMFeed;->acceptance:J

    goto :goto_33

    :cond_84
    sget-object v5, Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;->Accepted:Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;

    invoke-virtual {v5}, Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;->ordinal()I

    move-result v5

    int-to-long v6, v5

    goto :goto_81
.end method
