.class Lmobisocial/omlib/client/LongdanClient$4$1;
.super Ljava/lang/Object;
.source "LongdanClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/LongdanClient$4;->run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlib/client/LongdanClient$4;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanClient$4;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlib/client/LongdanClient$4;

    .prologue
    .line 418
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanClient$4$1;->this$1:Lmobisocial/omlib/client/LongdanClient$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 422
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient$4$1;->this$1:Lmobisocial/omlib/client/LongdanClient$4;

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient$4;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 423
    return-void
.end method
