.class Lmobisocial/omlib/client/LongdanMessageConsumer$14;
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

.field final synthetic val$feedstate:Lmobisocial/longdan/LDProtocols$LDFeedStateResponse;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanMessageConsumer;Ljava/lang/String;Lmobisocial/longdan/LDProtocols$LDFeedStateResponse;)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanMessageConsumer;

    .prologue
    .line 493
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$14;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    iput-object p2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$14;->val$feedIdentifier:Ljava/lang/String;

    iput-object p3, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$14;->val$feedstate:Lmobisocial/longdan/LDProtocols$LDFeedStateResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 7
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 497
    const-class v1, Lmobisocial/omlib/db/entity/OMFeed;

    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$14;->val$feedIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMFeed;

    .line 498
    .local v0, "dbfeed":Lmobisocial/omlib/db/entity/OMFeed;
    if-eqz v0, :cond_36

    .line 499
    iget-object v1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$14;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    # getter for: Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v1}, Lmobisocial/omlib/client/LongdanMessageConsumer;->access$100(Lmobisocial/omlib/client/LongdanMessageConsumer;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v1

    iget-object v1, v1, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$14;->val$feedstate:Lmobisocial/longdan/LDProtocols$LDFeedStateResponse;

    iget-object v2, v2, Lmobisocial/longdan/LDProtocols$LDFeedStateResponse;->AcceptanceState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmobisocial/omlib/client/ClientFeedUtils;->getAcceptanceFromString(Ljava/lang/String;)Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;

    move-result-object v1

    invoke-virtual {v1}, Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;->ordinal()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lmobisocial/omlib/db/entity/OMFeed;->acceptance:J

    .line 501
    iget v1, v0, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    .line 502
    const/4 v1, 0x1

    iput-boolean v1, v0, Lmobisocial/omlib/db/entity/OMFeed;->hasWriteAccess:Z

    .line 503
    invoke-virtual {p1, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 504
    const-string v1, "LongdanMessageConsumer"

    const-string v2, "updated state"

    invoke-static {v1, v2}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :cond_36
    return-void
.end method
