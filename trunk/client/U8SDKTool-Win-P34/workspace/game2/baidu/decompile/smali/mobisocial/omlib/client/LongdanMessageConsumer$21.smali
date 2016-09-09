.class Lmobisocial/omlib/client/LongdanMessageConsumer$21;
.super Ljava/lang/Object;
.source "LongdanMessageConsumer.java"

# interfaces
.implements Lmobisocial/omlib/db/DatabaseRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/LongdanMessageConsumer;->fetchFeedMessagesInternal(Lmobisocial/omlib/db/entity/OMFeed;)V
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
.method constructor <init>(Lmobisocial/omlib/client/LongdanMessageConsumer;Ljava/util/List;Lmobisocial/omlib/db/entity/OMFeed;JZ)V
    .registers 7
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanMessageConsumer;

    .prologue
    .line 739
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$21;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    iput-object p2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$21;->val$chunks:Ljava/util/List;

    iput-object p3, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$21;->val$feed:Lmobisocial/omlib/db/entity/OMFeed;

    iput-wide p4, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$21;->val$finalLast:J

    iput-boolean p6, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$21;->val$finalPartial:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 10
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    const/4 v6, 0x3

    .line 743
    iget-object v1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$21;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$21;->val$chunks:Ljava/util/List;

    # invokes: Lmobisocial/omlib/client/LongdanMessageConsumer;->processMessageChunksInTransaction(Ljava/util/List;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    invoke-static {v1, v2, p1, p2}, Lmobisocial/omlib/client/LongdanMessageConsumer;->access$1300(Lmobisocial/omlib/client/LongdanMessageConsumer;Ljava/util/List;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V

    .line 744
    const-class v1, Lmobisocial/omlib/db/entity/OMFeed;

    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$21;->val$feed:Lmobisocial/omlib/db/entity/OMFeed;

    iget-object v2, v2, Lmobisocial/omlib/db/entity/OMFeed;->identifier:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMFeed;

    .line 745
    .local v0, "dbFeed":Lmobisocial/omlib/db/entity/OMFeed;
    if-eqz v0, :cond_67

    .line 746
    iget-wide v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$21;->val$finalLast:J

    iput-wide v2, v0, Lmobisocial/omlib/db/entity/OMFeed;->newestFromService:J

    .line 747
    iget-boolean v1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$21;->val$finalPartial:Z

    if-nez v1, :cond_68

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$21;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    # getter for: Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v1}, Lmobisocial/omlib/client/LongdanMessageConsumer;->access$100(Lmobisocial/omlib/client/LongdanMessageConsumer;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v1

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v1

    invoke-virtual {v1}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->getServerTimeDelta()J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iget-wide v4, v0, Lmobisocial/omlib/db/entity/OMFeed;->approximateDirtyTime:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_68

    .line 748
    sget v1, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    if-gt v1, v6, :cond_58

    .line 749
    const-string v1, "LongdanMessageConsumer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removing newer flag from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lmobisocial/omlib/db/entity/OMFeed;->identifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    :cond_58
    iget v1, v0, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    .line 755
    :cond_5e
    :goto_5e
    const/4 v1, 0x1

    iput-boolean v1, v0, Lmobisocial/omlib/db/entity/OMFeed;->hasWriteAccess:Z

    .line 756
    const/4 v1, 0x0

    iput-boolean v1, v0, Lmobisocial/omlib/db/entity/OMFeed;->expired:Z

    .line 757
    invoke-virtual {p1, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 759
    :cond_67
    return-void

    .line 752
    :cond_68
    sget v1, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    if-gt v1, v6, :cond_5e

    .line 753
    const-string v2, "LongdanMessageConsumer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not removing newer flag from: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lmobisocial/omlib/db/entity/OMFeed;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " because "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$21;->val$finalPartial:Z

    if-eqz v1, :cond_97

    const-string v1, "was partial sync"

    :goto_8b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    :cond_97
    const-string v1, " feed dirty time is in the future"

    goto :goto_8b
.end method
