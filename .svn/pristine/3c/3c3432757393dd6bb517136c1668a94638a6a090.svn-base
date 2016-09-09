.class Lmobisocial/omlib/client/LongdanMessageConsumer$17;
.super Ljava/lang/Object;
.source "LongdanMessageConsumer.java"

# interfaces
.implements Lmobisocial/omlib/db/DatabaseRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/LongdanMessageConsumer;->fetchFeedMembers(Lmobisocial/omlib/db/entity/OMFeed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

.field final synthetic val$feed:Lmobisocial/omlib/db/entity/OMFeed;

.field final synthetic val$finalSuccess:Z

.field final synthetic val$returnedMessages:Ljava/util/List;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanMessageConsumer;ZLjava/util/List;Lmobisocial/omlib/db/entity/OMFeed;)V
    .registers 5
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanMessageConsumer;

    .prologue
    .line 591
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$17;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    iput-boolean p2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$17;->val$finalSuccess:Z

    iput-object p3, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$17;->val$returnedMessages:Ljava/util/List;

    iput-object p4, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$17;->val$feed:Lmobisocial/omlib/db/entity/OMFeed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 6
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 595
    iget-boolean v1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$17;->val$finalSuccess:Z

    if-eqz v1, :cond_13

    .line 596
    iget-object v1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$17;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    # getter for: Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v1}, Lmobisocial/omlib/client/LongdanMessageConsumer;->access$100(Lmobisocial/omlib/client/LongdanMessageConsumer;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v1

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->getMessageProcessor()Lmobisocial/omlib/client/LongdanMessageProcessor;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$17;->val$returnedMessages:Ljava/util/List;

    invoke-virtual {v1, v2, p1, p2}, Lmobisocial/omlib/client/LongdanMessageProcessor;->processDurableMessagesInTransaction(Ljava/util/List;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V

    .line 598
    :cond_13
    const-class v1, Lmobisocial/omlib/db/entity/OMFeed;

    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$17;->val$feed:Lmobisocial/omlib/db/entity/OMFeed;

    iget-object v2, v2, Lmobisocial/omlib/db/entity/OMFeed;->identifier:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMFeed;

    .line 599
    .local v0, "dbFeed":Lmobisocial/omlib/db/entity/OMFeed;
    if-eqz v0, :cond_34

    .line 600
    iget-boolean v1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$17;->val$finalSuccess:Z

    if-eqz v1, :cond_2b

    .line 601
    const/4 v1, 0x1

    iput-boolean v1, v0, Lmobisocial/omlib/db/entity/OMFeed;->hasWriteAccess:Z

    .line 602
    const/4 v1, 0x0

    iput-boolean v1, v0, Lmobisocial/omlib/db/entity/OMFeed;->expired:Z

    .line 604
    :cond_2b
    iget v1, v0, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    and-int/lit8 v1, v1, -0x11

    iput v1, v0, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    .line 605
    invoke-virtual {p1, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 607
    :cond_34
    return-void
.end method
