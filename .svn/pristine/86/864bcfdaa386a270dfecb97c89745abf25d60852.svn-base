.class Lmobisocial/omlib/client/LongdanMessageConsumer$15;
.super Ljava/lang/Object;
.source "LongdanMessageConsumer.java"

# interfaces
.implements Lmobisocial/omlib/db/DatabaseRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/LongdanMessageConsumer;->fetchFeedState(Lmobisocial/omlib/db/entity/OMFeed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

.field final synthetic val$feedIdentifier:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanMessageConsumer;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanMessageConsumer;

    .prologue
    .line 511
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$15;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    iput-object p2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$15;->val$feedIdentifier:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 6
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 515
    const-class v1, Lmobisocial/omlib/db/entity/OMFeed;

    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$15;->val$feedIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMFeed;

    .line 516
    .local v0, "dbfeed":Lmobisocial/omlib/db/entity/OMFeed;
    if-eqz v0, :cond_1f

    .line 517
    iget v1, v0, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    .line 518
    const/4 v1, 0x0

    iput-boolean v1, v0, Lmobisocial/omlib/db/entity/OMFeed;->hasWriteAccess:Z

    .line 519
    invoke-virtual {p1, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 520
    const-string v1, "LongdanMessageConsumer"

    const-string v2, "updated state"

    invoke-static {v1, v2}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :cond_1f
    return-void
.end method
