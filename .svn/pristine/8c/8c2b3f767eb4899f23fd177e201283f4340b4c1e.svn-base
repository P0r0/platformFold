.class Lmobisocial/omlib/client/LongdanMessageConsumer$13;
.super Ljava/lang/Object;
.source "LongdanMessageConsumer.java"

# interfaces
.implements Lmobisocial/omlib/db/DatabaseRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/LongdanMessageConsumer;->fetchDirtyFeeds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

.field final synthetic val$deviceLastSyncTime:J

.field final synthetic val$response:Lmobisocial/longdan/LDProtocols$LDDirtyFeedsResponse;

.field final synthetic val$wasCaughtUp:Z


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanMessageConsumer;ZJLmobisocial/longdan/LDProtocols$LDDirtyFeedsResponse;)V
    .registers 7
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanMessageConsumer;

    .prologue
    .line 416
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$13;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    iput-boolean p2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$13;->val$wasCaughtUp:Z

    iput-wide p3, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$13;->val$deviceLastSyncTime:J

    iput-object p5, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$13;->val$response:Lmobisocial/longdan/LDProtocols$LDDirtyFeedsResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 9
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 420
    const-class v1, Lmobisocial/omlib/db/entity/OMDevice;

    const-wide/16 v2, 0x1

    invoke-virtual {p1, v1, v2, v3}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMDevice;

    .line 421
    .local v0, "device":Lmobisocial/omlib/db/entity/OMDevice;
    iget-boolean v1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$13;->val$wasCaughtUp:Z

    if-nez v1, :cond_1e

    .line 423
    iget-wide v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$13;->val$deviceLastSyncTime:J

    iget-wide v4, v0, Lmobisocial/omlib/db/entity/OMDevice;->feedSyncSplit:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1a

    .line 424
    iget-wide v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$13;->val$deviceLastSyncTime:J

    iput-wide v2, v0, Lmobisocial/omlib/db/entity/OMDevice;->feedSyncEnd:J

    .line 434
    :cond_1a
    :goto_1a
    invoke-virtual {p1, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 435
    return-void

    .line 428
    :cond_1e
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$13;->val$response:Lmobisocial/longdan/LDProtocols$LDDirtyFeedsResponse;

    iget-object v2, v2, Lmobisocial/longdan/LDProtocols$LDDirtyFeedsResponse;->Partial:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 429
    iget-wide v2, v0, Lmobisocial/omlib/db/entity/OMDevice;->feedSyncSplit:J

    iput-wide v2, v0, Lmobisocial/omlib/db/entity/OMDevice;->feedSyncStart:J

    goto :goto_1a

    .line 431
    :cond_2f
    iget-wide v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$13;->val$deviceLastSyncTime:J

    iput-wide v2, v0, Lmobisocial/omlib/db/entity/OMDevice;->feedSyncStart:J

    goto :goto_1a
.end method
