.class Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask$1;
.super Ljava/lang/Object;
.source "LongdanMessageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;

.field final synthetic val$reprocess:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "this$1"    # Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;

    .prologue
    .line 526
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask$1;->this$1:Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;

    iput-object p2, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask$1;->val$reprocess:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 530
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask$1;->this$1:Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;

    new-instance v1, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;

    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask$1;->this$1:Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;

    iget-object v2, v2, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;

    iget-object v3, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask$1;->val$reprocess:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4, v4}, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;-><init>(Lmobisocial/omlib/client/LongdanMessageProcessor;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/client/LongdanMessageProcessor;->processDatabaseAction(Lmobisocial/omlib/db/DatabaseRunnable;)V

    .line 531
    return-void
.end method
