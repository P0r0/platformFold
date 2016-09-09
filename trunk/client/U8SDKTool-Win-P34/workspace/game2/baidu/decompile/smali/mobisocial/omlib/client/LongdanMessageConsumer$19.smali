.class Lmobisocial/omlib/client/LongdanMessageConsumer$19;
.super Ljava/lang/Object;
.source "LongdanMessageConsumer.java"

# interfaces
.implements Lmobisocial/omlib/db/DatabaseRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/LongdanMessageConsumer;->fetchOlderFeedMessagesInternal(Lmobisocial/omlib/db/entity/OMFeed;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

.field final synthetic val$chunks:Ljava/util/List;

.field final synthetic val$feed:Lmobisocial/omlib/db/entity/OMFeed;

.field final synthetic val$finalLast:J

.field final synthetic val$finalPartial:Z


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanMessageConsumer;Lmobisocial/omlib/db/entity/OMFeed;Ljava/util/List;JZ)V
    .registers 7
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanMessageConsumer;

    .prologue
    .line 664
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$19;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    iput-object p2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$19;->val$feed:Lmobisocial/omlib/db/entity/OMFeed;

    iput-object p3, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$19;->val$chunks:Ljava/util/List;

    iput-wide p4, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$19;->val$finalLast:J

    iput-boolean p6, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$19;->val$finalPartial:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 9
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    const-wide/16 v4, 0x0

    .line 668
    const-class v1, Lmobisocial/omlib/db/entity/OMFeed;

    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$19;->val$feed:Lmobisocial/omlib/db/entity/OMFeed;

    iget-object v2, v2, Lmobisocial/omlib/db/entity/OMFeed;->identifier:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMFeed;

    .line 669
    .local v0, "dbFeed":Lmobisocial/omlib/db/entity/OMFeed;
    if-eqz v0, :cond_40

    .line 670
    iget-object v1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$19;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$19;->val$chunks:Ljava/util/List;

    # invokes: Lmobisocial/omlib/client/LongdanMessageConsumer;->processMessageChunksInTransaction(Ljava/util/List;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    invoke-static {v1, v2, p1, p2}, Lmobisocial/omlib/client/LongdanMessageConsumer;->access$1300(Lmobisocial/omlib/client/LongdanMessageConsumer;Ljava/util/List;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V

    .line 671
    const-class v1, Lmobisocial/omlib/db/entity/OMFeed;

    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$19;->val$feed:Lmobisocial/omlib/db/entity/OMFeed;

    iget-object v2, v2, Lmobisocial/omlib/db/entity/OMFeed;->identifier:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    .end local v0    # "dbFeed":Lmobisocial/omlib/db/entity/OMFeed;
    check-cast v0, Lmobisocial/omlib/db/entity/OMFeed;

    .line 672
    .restart local v0    # "dbFeed":Lmobisocial/omlib/db/entity/OMFeed;
    iget-wide v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$19;->val$finalLast:J

    iput-wide v2, v0, Lmobisocial/omlib/db/entity/OMFeed;->oldestFromService:J

    .line 673
    iget-boolean v1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$19;->val$finalPartial:Z

    if-nez v1, :cond_37

    .line 674
    iget-object v1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$19;->val$feed:Lmobisocial/omlib/db/entity/OMFeed;

    iput-wide v4, v1, Lmobisocial/omlib/db/entity/OMFeed;->oldestFromService:J

    .line 675
    iput-wide v4, v0, Lmobisocial/omlib/db/entity/OMFeed;->oldestFromService:J

    .line 676
    iget v1, v0, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    .line 678
    :cond_37
    const/4 v1, 0x1

    iput-boolean v1, v0, Lmobisocial/omlib/db/entity/OMFeed;->hasWriteAccess:Z

    .line 679
    const/4 v1, 0x0

    iput-boolean v1, v0, Lmobisocial/omlib/db/entity/OMFeed;->expired:Z

    .line 680
    invoke-virtual {p1, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 682
    :cond_40
    return-void
.end method
