.class Lmobisocial/omlib/service/OmlibService$11$2;
.super Ljava/lang/Object;
.source "OmlibService.java"

# interfaces
.implements Lmobisocial/omlib/db/DatabaseRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/service/OmlibService$11;->addAccountsToFeed(Landroid/net/Uri;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlib/service/OmlibService$11;

.field final synthetic val$accounts:[Ljava/lang/String;

.field final synthetic val$localUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lmobisocial/omlib/service/OmlibService$11;Landroid/net/Uri;[Ljava/lang/String;)V
    .registers 4
    .param p1, "this$1"    # Lmobisocial/omlib/service/OmlibService$11;

    .prologue
    .line 437
    iput-object p1, p0, Lmobisocial/omlib/service/OmlibService$11$2;->this$1:Lmobisocial/omlib/service/OmlibService$11;

    iput-object p2, p0, Lmobisocial/omlib/service/OmlibService$11$2;->val$localUri:Landroid/net/Uri;

    iput-object p3, p0, Lmobisocial/omlib/service/OmlibService$11$2;->val$accounts:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 9
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 441
    const-class v2, Lmobisocial/omlib/db/entity/OMFeed;

    iget-object v3, p0, Lmobisocial/omlib/service/OmlibService$11$2;->val$localUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v1

    check-cast v1, Lmobisocial/omlib/db/entity/OMFeed;

    .line 442
    .local v1, "existingFeed":Lmobisocial/omlib/db/entity/OMFeed;
    if-eqz v1, :cond_48

    .line 443
    sget-object v2, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->Direct:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

    iget-object v3, v1, Lmobisocial/omlib/db/entity/OMFeed;->kind:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->equals(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    sget-object v2, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->SMS:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

    iget-object v3, v1, Lmobisocial/omlib/db/entity/OMFeed;->kind:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->equals(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 444
    :cond_28
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Cannot change membership of this feed"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 446
    :cond_30
    iget-object v3, p0, Lmobisocial/omlib/service/OmlibService$11$2;->val$accounts:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_34
    if-ge v2, v4, :cond_48

    aget-object v0, v3, v2

    .line 447
    .local v0, "account":Ljava/lang/String;
    iget-object v5, p0, Lmobisocial/omlib/service/OmlibService$11$2;->this$1:Lmobisocial/omlib/service/OmlibService$11;

    iget-object v5, v5, Lmobisocial/omlib/service/OmlibService$11;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v5}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v5

    iget-object v5, v5, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    invoke-virtual {v5, v0, v1}, Lmobisocial/omlib/client/ClientFeedUtils;->addAccountToFeed(Ljava/lang/String;Lmobisocial/omlib/db/entity/OMFeed;)V

    .line 446
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 450
    .end local v0    # "account":Ljava/lang/String;
    :cond_48
    return-void
.end method
