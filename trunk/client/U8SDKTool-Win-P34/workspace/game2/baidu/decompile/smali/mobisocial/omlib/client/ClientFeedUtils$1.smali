.class Lmobisocial/omlib/client/ClientFeedUtils$1;
.super Ljava/lang/Object;
.source "ClientFeedUtils.java"

# interfaces
.implements Lmobisocial/omlib/db/DatabaseRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientFeedUtils;->getFixedMembershipFeed(Lmobisocial/omlib/api/OmletFeedApi$FeedKind;Ljava/util/List;)Lmobisocial/omlib/db/entity/OMFeed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/ClientFeedUtils;

.field final synthetic val$canonical:Lmobisocial/longdan/LDProtocols$LDFeed;

.field final synthetic val$feedKind:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

.field final synthetic val$ldRecipients:Ljava/util/List;

.field final synthetic val$myAccount:Ljava/lang/String;

.field final synthetic val$res:[Lmobisocial/omlib/db/entity/OMFeed;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientFeedUtils;Ljava/util/List;[Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/longdan/LDProtocols$LDFeed;Ljava/lang/String;Lmobisocial/omlib/api/OmletFeedApi$FeedKind;)V
    .registers 7
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientFeedUtils;

    .prologue
    .line 192
    iput-object p1, p0, Lmobisocial/omlib/client/ClientFeedUtils$1;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    iput-object p2, p0, Lmobisocial/omlib/client/ClientFeedUtils$1;->val$ldRecipients:Ljava/util/List;

    iput-object p3, p0, Lmobisocial/omlib/client/ClientFeedUtils$1;->val$res:[Lmobisocial/omlib/db/entity/OMFeed;

    iput-object p4, p0, Lmobisocial/omlib/client/ClientFeedUtils$1;->val$canonical:Lmobisocial/longdan/LDProtocols$LDFeed;

    iput-object p5, p0, Lmobisocial/omlib/client/ClientFeedUtils$1;->val$myAccount:Ljava/lang/String;

    iput-object p6, p0, Lmobisocial/omlib/client/ClientFeedUtils$1;->val$feedKind:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 11
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 196
    iget-object v4, p0, Lmobisocial/omlib/client/ClientFeedUtils$1;->val$ldRecipients:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobisocial/longdan/LDProtocols$LDIdentity;

    .line 197
    .local v2, "ld":Lmobisocial/longdan/LDProtocols$LDIdentity;
    iget-object v0, v2, Lmobisocial/longdan/LDProtocols$LDIdentity;->Principal:Ljava/lang/String;

    .line 198
    .local v0, "acc":Ljava/lang/String;
    iget-object v5, p0, Lmobisocial/omlib/client/ClientFeedUtils$1;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    # getter for: Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v5}, Lmobisocial/omlib/client/ClientFeedUtils;->access$100(Lmobisocial/omlib/client/ClientFeedUtils;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v5

    iget-object v5, v5, Lmobisocial/omlib/client/LongdanClient;->Identity:Lmobisocial/omlib/client/ClientIdentityUtils;

    const/4 v6, 0x1

    invoke-virtual {v5, v0, p1, p2, v6}, Lmobisocial/omlib/client/ClientIdentityUtils;->ensureAccountInTransaction(Ljava/lang/String;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Z)Lmobisocial/omlib/db/entity/OMAccount;

    goto :goto_6

    .line 200
    .end local v0    # "acc":Ljava/lang/String;
    .end local v2    # "ld":Lmobisocial/longdan/LDProtocols$LDIdentity;
    :cond_21
    iget-object v4, p0, Lmobisocial/omlib/client/ClientFeedUtils$1;->val$res:[Lmobisocial/omlib/db/entity/OMFeed;

    const/4 v5, 0x0

    iget-object v6, p0, Lmobisocial/omlib/client/ClientFeedUtils$1;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    # getter for: Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v6}, Lmobisocial/omlib/client/ClientFeedUtils;->access$100(Lmobisocial/omlib/client/ClientFeedUtils;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v6

    iget-object v6, v6, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    iget-object v7, p0, Lmobisocial/omlib/client/ClientFeedUtils$1;->val$canonical:Lmobisocial/longdan/LDProtocols$LDFeed;

    invoke-virtual {v6, p1, p2, v7}, Lmobisocial/omlib/client/ClientFeedUtils;->getOrCreateFeed(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/longdan/LDProtocols$LDFeed;)Lmobisocial/omlib/db/entity/OMFeed;

    move-result-object v6

    aput-object v6, v4, v5

    .line 201
    new-instance v3, Lmobisocial/longdan/LDProtocols$LDGetDirectFeedRequest;

    invoke-direct {v3}, Lmobisocial/longdan/LDProtocols$LDGetDirectFeedRequest;-><init>()V

    .line 202
    .local v3, "req":Lmobisocial/longdan/LDProtocols$LDGetDirectFeedRequest;
    iget-object v4, p0, Lmobisocial/omlib/client/ClientFeedUtils$1;->val$ldRecipients:Ljava/util/List;

    iput-object v4, v3, Lmobisocial/longdan/LDProtocols$LDGetDirectFeedRequest;->Recipients:Ljava/util/List;

    .line 203
    new-instance v4, Lmobisocial/longdan/LDProtocols$LDIdentity;

    invoke-direct {v4}, Lmobisocial/longdan/LDProtocols$LDIdentity;-><init>()V

    iput-object v4, v3, Lmobisocial/longdan/LDProtocols$LDGetDirectFeedRequest;->Sender:Lmobisocial/longdan/LDProtocols$LDIdentity;

    .line 204
    iget-object v4, v3, Lmobisocial/longdan/LDProtocols$LDGetDirectFeedRequest;->Sender:Lmobisocial/longdan/LDProtocols$LDIdentity;

    const-string v5, "account"

    iput-object v5, v4, Lmobisocial/longdan/LDProtocols$LDIdentity;->Type:Ljava/lang/String;

    .line 205
    iget-object v4, v3, Lmobisocial/longdan/LDProtocols$LDGetDirectFeedRequest;->Sender:Lmobisocial/longdan/LDProtocols$LDIdentity;

    iget-object v5, p0, Lmobisocial/omlib/client/ClientFeedUtils$1;->val$myAccount:Ljava/lang/String;

    iput-object v5, v4, Lmobisocial/longdan/LDProtocols$LDIdentity;->Principal:Ljava/lang/String;

    .line 206
    iget-object v4, p0, Lmobisocial/omlib/client/ClientFeedUtils$1;->val$feedKind:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

    invoke-virtual {v4}, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->getValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lmobisocial/longdan/LDProtocols$LDGetDirectFeedRequest;->FeedKind:Ljava/lang/String;

    .line 207
    new-instance v1, Lmobisocial/omlib/jobs/ControlMessageJobHandler;

    iget-object v4, p0, Lmobisocial/omlib/client/ClientFeedUtils$1;->val$canonical:Lmobisocial/longdan/LDProtocols$LDFeed;

    invoke-direct {v1, v3, v4}, Lmobisocial/omlib/jobs/ControlMessageJobHandler;-><init>(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Lmobisocial/longdan/LDProtocols$LDFeed;)V

    .line 208
    .local v1, "job":Lmobisocial/omlib/jobs/ControlMessageJobHandler;
    iget-object v4, p0, Lmobisocial/omlib/client/ClientFeedUtils$1;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    # getter for: Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v4}, Lmobisocial/omlib/client/ClientFeedUtils;->access$100(Lmobisocial/omlib/client/ClientFeedUtils;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v4

    invoke-virtual {v4}, Lmobisocial/omlib/client/LongdanClient;->getDurableJobProcessor()Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    move-result-object v4

    invoke-virtual {v4, v1, p1, p2}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->scheduleFromDbThread(Lmobisocial/omlib/client/interfaces/DurableJobHandler;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V

    .line 209
    return-void
.end method
