.class Lmobisocial/omlib/processors/AcceptanceChangeProcessor$1;
.super Ljava/lang/Object;
.source "AcceptanceChangeProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/processors/AcceptanceChangeProcessor;->endBatch(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/processors/AcceptanceChangeProcessor;

.field final synthetic val$client:Lmobisocial/omlib/client/LongdanClient;

.field final synthetic val$feeds:Ljava/util/List;


# direct methods
.method constructor <init>(Lmobisocial/omlib/processors/AcceptanceChangeProcessor;Lmobisocial/omlib/client/LongdanClient;Ljava/util/List;)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/omlib/processors/AcceptanceChangeProcessor;

    .prologue
    .line 48
    iput-object p1, p0, Lmobisocial/omlib/processors/AcceptanceChangeProcessor$1;->this$0:Lmobisocial/omlib/processors/AcceptanceChangeProcessor;

    iput-object p2, p0, Lmobisocial/omlib/processors/AcceptanceChangeProcessor$1;->val$client:Lmobisocial/omlib/client/LongdanClient;

    iput-object p3, p0, Lmobisocial/omlib/processors/AcceptanceChangeProcessor$1;->val$feeds:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 52
    iget-object v0, p0, Lmobisocial/omlib/processors/AcceptanceChangeProcessor$1;->val$client:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanClient;->getMessageConsumer()Lmobisocial/omlib/client/LongdanMessageConsumer;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlib/processors/AcceptanceChangeProcessor$1;->val$feeds:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmobisocial/omlib/client/LongdanMessageConsumer;->enqueueFeedsForFetch(Ljava/util/List;Z)V

    .line 53
    return-void
.end method
