.class Lmobisocial/omlib/client/LongdanMessageConsumer$18;
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

.field final synthetic val$feed:Lmobisocial/omlib/db/entity/OMFeed;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanMessageConsumer;Lmobisocial/omlib/db/entity/OMFeed;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanMessageConsumer;

    .prologue
    .line 641
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$18;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    iput-object p2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$18;->val$feed:Lmobisocial/omlib/db/entity/OMFeed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 6
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 645
    const-class v1, Lmobisocial/omlib/db/entity/OMFeed;

    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$18;->val$feed:Lmobisocial/omlib/db/entity/OMFeed;

    iget-object v2, v2, Lmobisocial/omlib/db/entity/OMFeed;->identifier:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMFeed;

    .line 646
    .local v0, "dbFeed":Lmobisocial/omlib/db/entity/OMFeed;
    if-eqz v0, :cond_14

    .line 647
    iget v1, v0, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    .line 649
    :cond_14
    invoke-virtual {p1, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 650
    return-void
.end method
