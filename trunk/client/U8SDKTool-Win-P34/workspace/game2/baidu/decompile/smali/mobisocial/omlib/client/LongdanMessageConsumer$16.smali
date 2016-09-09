.class Lmobisocial/omlib/client/LongdanMessageConsumer$16;
.super Ljava/lang/Object;
.source "LongdanMessageConsumer.java"

# interfaces
.implements Lmobisocial/omlib/db/DatabaseRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/LongdanMessageConsumer;->syncMessages(Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/longdan/LDProtocols$LDTypedId;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

.field final synthetic val$feed:Lmobisocial/omlib/db/entity/OMFeed;

.field final synthetic val$finalGetMessagesResponse:Lmobisocial/longdan/LDProtocols$LDGetMessageResponse;

.field final synthetic val$finalRequestComplete:Z

.field final synthetic val$maskToRemove:I


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanMessageConsumer;Lmobisocial/omlib/db/entity/OMFeed;ZILmobisocial/longdan/LDProtocols$LDGetMessageResponse;)V
    .registers 6
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanMessageConsumer;

    .prologue
    .line 548
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$16;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    iput-object p2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$16;->val$feed:Lmobisocial/omlib/db/entity/OMFeed;

    iput-boolean p3, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$16;->val$finalRequestComplete:Z

    iput p4, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$16;->val$maskToRemove:I

    iput-object p5, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$16;->val$finalGetMessagesResponse:Lmobisocial/longdan/LDProtocols$LDGetMessageResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 6
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 552
    const-class v1, Lmobisocial/omlib/db/entity/OMFeed;

    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$16;->val$feed:Lmobisocial/omlib/db/entity/OMFeed;

    iget-object v2, v2, Lmobisocial/omlib/db/entity/OMFeed;->identifier:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMFeed;

    .line 553
    .local v0, "dbfeed":Lmobisocial/omlib/db/entity/OMFeed;
    if-eqz v0, :cond_1e

    iget-boolean v1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$16;->val$finalRequestComplete:Z

    if-eqz v1, :cond_1e

    .line 555
    iget v1, v0, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    iget v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$16;->val$maskToRemove:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    .line 556
    invoke-virtual {p1, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 558
    :cond_1e
    iget-object v1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$16;->val$finalGetMessagesResponse:Lmobisocial/longdan/LDProtocols$LDGetMessageResponse;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$16;->val$finalGetMessagesResponse:Lmobisocial/longdan/LDProtocols$LDGetMessageResponse;

    iget-object v1, v1, Lmobisocial/longdan/LDProtocols$LDGetMessageResponse;->Message:Lmobisocial/longdan/LDProtocols$LDMessage;

    if-eqz v1, :cond_39

    .line 559
    iget-object v1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$16;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    # getter for: Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v1}, Lmobisocial/omlib/client/LongdanMessageConsumer;->access$100(Lmobisocial/omlib/client/LongdanMessageConsumer;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v1

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->getMessageProcessor()Lmobisocial/omlib/client/LongdanMessageProcessor;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$16;->val$finalGetMessagesResponse:Lmobisocial/longdan/LDProtocols$LDGetMessageResponse;

    iget-object v2, v2, Lmobisocial/longdan/LDProtocols$LDGetMessageResponse;->Message:Lmobisocial/longdan/LDProtocols$LDMessage;

    invoke-virtual {v1, v2, p1, p2}, Lmobisocial/omlib/client/LongdanMessageProcessor;->processDurableMessageInTransaction(Lmobisocial/longdan/LDProtocols$LDMessage;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V

    .line 561
    :cond_39
    return-void
.end method
