.class Lmobisocial/omlib/processors/MembershipProcessor$2;
.super Ljava/lang/Object;
.source "MembershipProcessor.java"

# interfaces
.implements Lmobisocial/omlib/db/DatabaseRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/processors/MembershipProcessor;->refreshFeedNames(Lmobisocial/omlib/client/LongdanClient;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/processors/MembershipProcessor;

.field final synthetic val$client:Lmobisocial/omlib/client/LongdanClient;

.field final synthetic val$feedsNeedingNaming:Ljava/util/Set;


# direct methods
.method constructor <init>(Lmobisocial/omlib/processors/MembershipProcessor;Ljava/util/Set;Lmobisocial/omlib/client/LongdanClient;)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/omlib/processors/MembershipProcessor;

    .prologue
    .line 130
    iput-object p1, p0, Lmobisocial/omlib/processors/MembershipProcessor$2;->this$0:Lmobisocial/omlib/processors/MembershipProcessor;

    iput-object p2, p0, Lmobisocial/omlib/processors/MembershipProcessor$2;->val$feedsNeedingNaming:Ljava/util/Set;

    iput-object p3, p0, Lmobisocial/omlib/processors/MembershipProcessor$2;->val$client:Lmobisocial/omlib/client/LongdanClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 9
    .param p1, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 135
    :try_start_0
    iget-object v4, p0, Lmobisocial/omlib/processors/MembershipProcessor$2;->val$feedsNeedingNaming:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 136
    .local v2, "feedId":J
    const-class v4, Lmobisocial/omlib/db/entity/OMFeed;

    invoke-virtual {p1, v4, v2, v3}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v1

    check-cast v1, Lmobisocial/omlib/db/entity/OMFeed;

    .line 137
    .local v1, "feed":Lmobisocial/omlib/db/entity/OMFeed;
    iget-object v4, p0, Lmobisocial/omlib/processors/MembershipProcessor$2;->val$client:Lmobisocial/omlib/client/LongdanClient;

    iget-object v4, v4, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    invoke-virtual {v4, p1, p2, v1}, Lmobisocial/omlib/client/ClientFeedUtils;->generateDetailsForFeed(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/db/entity/OMFeed;)V

    .line 138
    invoke-virtual {p1, v1}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    goto :goto_6

    .line 140
    .end local v1    # "feed":Lmobisocial/omlib/db/entity/OMFeed;
    .end local v2    # "feedId":J
    :catch_29
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Omlib-processor"

    const-string v5, "Error refreshing feeds"

    invoke-static {v4, v5, v0}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_31
    return-void
.end method
