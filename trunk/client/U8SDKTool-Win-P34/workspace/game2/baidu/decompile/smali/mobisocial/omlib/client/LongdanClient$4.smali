.class Lmobisocial/omlib/client/LongdanClient$4;
.super Ljava/lang/Object;
.source "LongdanClient.java"

# interfaces
.implements Lmobisocial/omlib/db/DatabaseRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/LongdanClient;->runOnDbThreadAndWait(Lmobisocial/omlib/db/DatabaseRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/LongdanClient;

.field final synthetic val$action:Lmobisocial/omlib/db/DatabaseRunnable;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanClient;Ljava/util/concurrent/CountDownLatch;Lmobisocial/omlib/db/DatabaseRunnable;)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanClient;

    .prologue
    .line 414
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanClient$4;->this$0:Lmobisocial/omlib/client/LongdanClient;

    iput-object p2, p0, Lmobisocial/omlib/client/LongdanClient$4;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lmobisocial/omlib/client/LongdanClient$4;->val$action:Lmobisocial/omlib/db/DatabaseRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 4
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 418
    new-instance v0, Lmobisocial/omlib/client/LongdanClient$4$1;

    invoke-direct {v0, p0}, Lmobisocial/omlib/client/LongdanClient$4$1;-><init>(Lmobisocial/omlib/client/LongdanClient$4;)V

    invoke-interface {p2, v0}, Lmobisocial/omlib/db/PostCommit;->add(Ljava/lang/Runnable;)V

    .line 425
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient$4;->val$action:Lmobisocial/omlib/db/DatabaseRunnable;

    invoke-interface {v0, p1, p2}, Lmobisocial/omlib/db/DatabaseRunnable;->run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V

    .line 426
    return-void
.end method
