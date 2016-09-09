.class Lmobisocial/omlib/processors/MembershipProcessor$1;
.super Ljava/lang/Object;
.source "MembershipProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/processors/MembershipProcessor;->endBatch(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/processors/MembershipProcessor;

.field final synthetic val$client:Lmobisocial/omlib/client/LongdanClient;

.field final synthetic val$feedsNeedingNaming:Ljava/util/Set;

.field final synthetic val$feedsToSync:Ljava/util/Set;


# direct methods
.method constructor <init>(Lmobisocial/omlib/processors/MembershipProcessor;Lmobisocial/omlib/client/LongdanClient;Ljava/util/Set;Ljava/util/Set;)V
    .registers 5
    .param p1, "this$0"    # Lmobisocial/omlib/processors/MembershipProcessor;

    .prologue
    .line 111
    iput-object p1, p0, Lmobisocial/omlib/processors/MembershipProcessor$1;->this$0:Lmobisocial/omlib/processors/MembershipProcessor;

    iput-object p2, p0, Lmobisocial/omlib/processors/MembershipProcessor$1;->val$client:Lmobisocial/omlib/client/LongdanClient;

    iput-object p3, p0, Lmobisocial/omlib/processors/MembershipProcessor$1;->val$feedsNeedingNaming:Ljava/util/Set;

    iput-object p4, p0, Lmobisocial/omlib/processors/MembershipProcessor$1;->val$feedsToSync:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 115
    iget-object v3, p0, Lmobisocial/omlib/processors/MembershipProcessor$1;->this$0:Lmobisocial/omlib/processors/MembershipProcessor;

    iget-object v6, p0, Lmobisocial/omlib/processors/MembershipProcessor$1;->val$client:Lmobisocial/omlib/client/LongdanClient;

    iget-object v7, p0, Lmobisocial/omlib/processors/MembershipProcessor$1;->val$feedsNeedingNaming:Ljava/util/Set;

    # invokes: Lmobisocial/omlib/processors/MembershipProcessor;->refreshFeedNames(Lmobisocial/omlib/client/LongdanClient;Ljava/util/Set;)V
    invoke-static {v3, v6, v7}, Lmobisocial/omlib/processors/MembershipProcessor;->access$000(Lmobisocial/omlib/processors/MembershipProcessor;Lmobisocial/omlib/client/LongdanClient;Ljava/util/Set;)V

    .line 117
    :try_start_9
    iget-object v3, p0, Lmobisocial/omlib/processors/MembershipProcessor$1;->val$client:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v3}, Lmobisocial/omlib/client/LongdanClient;->getDbHelper()Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v0

    .line 118
    .local v0, "dbh":Lmobisocial/omlib/db/OMSQLiteHelper;
    iget-object v3, p0, Lmobisocial/omlib/processors/MembershipProcessor$1;->val$feedsToSync:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 119
    .local v4, "feedId":J
    const-class v3, Lmobisocial/omlib/db/entity/OMFeed;

    invoke-virtual {v0, v3, v4, v5}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v2

    check-cast v2, Lmobisocial/omlib/db/entity/OMFeed;

    .line 120
    .local v2, "feed":Lmobisocial/omlib/db/entity/OMFeed;
    iget-object v3, p0, Lmobisocial/omlib/processors/MembershipProcessor$1;->val$client:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v3}, Lmobisocial/omlib/client/LongdanClient;->getMessageConsumer()Lmobisocial/omlib/client/LongdanMessageConsumer;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v3, v2, v7}, Lmobisocial/omlib/client/LongdanMessageConsumer;->enqueueFeedForFetch(Lmobisocial/omlib/db/entity/OMFeed;Z)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_37} :catch_38

    goto :goto_15

    .line 122
    .end local v0    # "dbh":Lmobisocial/omlib/db/OMSQLiteHelper;
    .end local v2    # "feed":Lmobisocial/omlib/db/entity/OMFeed;
    .end local v4    # "feedId":J
    :catch_38
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Omlib-processor"

    const-string v6, "Error finalizing memberships"

    invoke-static {v3, v6, v1}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_40
    return-void
.end method
