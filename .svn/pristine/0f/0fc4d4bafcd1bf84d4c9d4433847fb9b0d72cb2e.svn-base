.class Lmobisocial/omlib/client/ClientOobUtils$1;
.super Ljava/lang/Object;
.source "ClientOobUtils.java"

# interfaces
.implements Lmobisocial/omlib/db/DatabaseRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientOobUtils;->isMessagingAvailable(Lmobisocial/omlib/model/RawIdentity;Ljava/util/Collection;Lmobisocial/omlib/api/OmletFeedApi$FeedKind;ZLandroid/os/CancellationSignal;)Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/ClientOobUtils;

.field final synthetic val$feedKind:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

.field final synthetic val$ldRecipients:Ljava/util/List;

.field final synthetic val$resp:Lmobisocial/longdan/LDProtocols$LDGetDirectFeedResponse;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientOobUtils;Lmobisocial/longdan/LDProtocols$LDGetDirectFeedResponse;Ljava/util/List;Lmobisocial/omlib/api/OmletFeedApi$FeedKind;)V
    .registers 5
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientOobUtils;

    .prologue
    .line 147
    iput-object p1, p0, Lmobisocial/omlib/client/ClientOobUtils$1;->this$0:Lmobisocial/omlib/client/ClientOobUtils;

    iput-object p2, p0, Lmobisocial/omlib/client/ClientOobUtils$1;->val$resp:Lmobisocial/longdan/LDProtocols$LDGetDirectFeedResponse;

    iput-object p3, p0, Lmobisocial/omlib/client/ClientOobUtils$1;->val$ldRecipients:Ljava/util/List;

    iput-object p4, p0, Lmobisocial/omlib/client/ClientOobUtils$1;->val$feedKind:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 14
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 151
    iget-object v8, p0, Lmobisocial/omlib/client/ClientOobUtils$1;->val$resp:Lmobisocial/longdan/LDProtocols$LDGetDirectFeedResponse;

    iget-object v8, v8, Lmobisocial/longdan/LDProtocols$LDGetDirectFeedResponse;->Accounts:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    .line 152
    .local v6, "len":I
    const/4 v2, 0x1

    .line 153
    .local v2, "accountIdx":I
    iget-object v8, p0, Lmobisocial/omlib/client/ClientOobUtils$1;->val$ldRecipients:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_45

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmobisocial/longdan/LDProtocols$LDIdentity;

    .line 154
    .local v5, "ld":Lmobisocial/longdan/LDProtocols$LDIdentity;
    iget-object v9, p0, Lmobisocial/omlib/client/ClientOobUtils$1;->val$resp:Lmobisocial/longdan/LDProtocols$LDGetDirectFeedResponse;

    iget-object v9, v9, Lmobisocial/longdan/LDProtocols$LDGetDirectFeedResponse;->Accounts:Ljava/util/List;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "accountIdx":I
    .local v3, "accountIdx":I
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    .local v0, "acc":Ljava/lang/String;
    invoke-static {v5}, Lmobisocial/omlib/model/RawIdentity;->create(Lmobisocial/longdan/LDProtocols$LDIdentity;)Lmobisocial/omlib/model/RawIdentity;

    move-result-object v7

    .line 156
    .local v7, "raw":Lmobisocial/omlib/model/RawIdentity;
    iget-object v9, p0, Lmobisocial/omlib/client/ClientOobUtils$1;->this$0:Lmobisocial/omlib/client/ClientOobUtils;

    # getter for: Lmobisocial/omlib/client/ClientOobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v9}, Lmobisocial/omlib/client/ClientOobUtils;->access$000(Lmobisocial/omlib/client/ClientOobUtils;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v9

    iget-object v9, v9, Lmobisocial/omlib/client/LongdanClient;->Identity:Lmobisocial/omlib/client/ClientIdentityUtils;

    const/4 v10, 0x1

    invoke-virtual {v9, v0, p1, p2, v10}, Lmobisocial/omlib/client/ClientIdentityUtils;->ensureAccountInTransaction(Ljava/lang/String;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Z)Lmobisocial/omlib/db/entity/OMAccount;

    move-result-object v1

    .line 157
    .local v1, "account":Lmobisocial/omlib/db/entity/OMAccount;
    iget-object v9, p0, Lmobisocial/omlib/client/ClientOobUtils$1;->this$0:Lmobisocial/omlib/client/ClientOobUtils;

    # getter for: Lmobisocial/omlib/client/ClientOobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v9}, Lmobisocial/omlib/client/ClientOobUtils;->access$000(Lmobisocial/omlib/client/ClientOobUtils;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v9

    iget-object v9, v9, Lmobisocial/omlib/client/LongdanClient;->Identity:Lmobisocial/omlib/client/ClientIdentityUtils;

    invoke-virtual {v9, p1, p2, v7, v1}, Lmobisocial/omlib/client/ClientIdentityUtils;->ensureIdentity(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/model/RawIdentity;Lmobisocial/omlib/db/entity/OMAccount;)Lmobisocial/omlib/db/entity/OMIdentity;

    move v2, v3

    .line 158
    .end local v3    # "accountIdx":I
    .restart local v2    # "accountIdx":I
    goto :goto_f

    .line 159
    .end local v0    # "acc":Ljava/lang/String;
    .end local v1    # "account":Lmobisocial/omlib/db/entity/OMAccount;
    .end local v5    # "ld":Lmobisocial/longdan/LDProtocols$LDIdentity;
    .end local v7    # "raw":Lmobisocial/omlib/model/RawIdentity;
    :cond_45
    iget-object v8, p0, Lmobisocial/omlib/client/ClientOobUtils$1;->this$0:Lmobisocial/omlib/client/ClientOobUtils;

    # getter for: Lmobisocial/omlib/client/ClientOobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v8}, Lmobisocial/omlib/client/ClientOobUtils;->access$000(Lmobisocial/omlib/client/ClientOobUtils;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v8

    iget-object v8, v8, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    iget-object v9, p0, Lmobisocial/omlib/client/ClientOobUtils$1;->val$resp:Lmobisocial/longdan/LDProtocols$LDGetDirectFeedResponse;

    iget-object v9, v9, Lmobisocial/longdan/LDProtocols$LDGetDirectFeedResponse;->Accounts:Ljava/util/List;

    iget-object v10, p0, Lmobisocial/omlib/client/ClientOobUtils$1;->val$feedKind:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

    invoke-virtual {v10}, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lmobisocial/omlib/client/ClientFeedUtils;->makeCanonicalFeedKey(Ljava/util/List;Ljava/lang/String;)Lmobisocial/longdan/LDProtocols$LDFeed;

    move-result-object v4

    .line 160
    .local v4, "canonical":Lmobisocial/longdan/LDProtocols$LDFeed;
    iget-object v8, p0, Lmobisocial/omlib/client/ClientOobUtils$1;->this$0:Lmobisocial/omlib/client/ClientOobUtils;

    iget-object v9, p0, Lmobisocial/omlib/client/ClientOobUtils$1;->this$0:Lmobisocial/omlib/client/ClientOobUtils;

    # getter for: Lmobisocial/omlib/client/ClientOobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v9}, Lmobisocial/omlib/client/ClientOobUtils;->access$000(Lmobisocial/omlib/client/ClientOobUtils;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v9

    iget-object v9, v9, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    invoke-virtual {v9, p1, p2, v4}, Lmobisocial/omlib/client/ClientFeedUtils;->getOrCreateFeed(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/longdan/LDProtocols$LDFeed;)Lmobisocial/omlib/db/entity/OMFeed;

    move-result-object v9

    # setter for: Lmobisocial/omlib/client/ClientOobUtils;->mAvailableFeed:Lmobisocial/omlib/db/entity/OMFeed;
    invoke-static {v8, v9}, Lmobisocial/omlib/client/ClientOobUtils;->access$102(Lmobisocial/omlib/client/ClientOobUtils;Lmobisocial/omlib/db/entity/OMFeed;)Lmobisocial/omlib/db/entity/OMFeed;

    .line 161
    return-void
.end method
