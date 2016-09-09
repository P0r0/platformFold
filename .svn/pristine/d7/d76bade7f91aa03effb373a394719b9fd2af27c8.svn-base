.class Lmobisocial/omlib/service/util/ServiceBindingHelper$1;
.super Ljava/lang/Object;
.source "ServiceBindingHelper.java"

# interfaces
.implements Lmobisocial/omlib/service/util/ServiceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/service/util/ServiceBindingHelper;->runAndWait(Lmobisocial/omlib/service/util/ServiceRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmobisocial/omlib/service/util/ServiceRunnable",
        "<TTService;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/service/util/ServiceBindingHelper;

.field final synthetic val$cb:Lmobisocial/omlib/service/util/ServiceRunnable;

.field final synthetic val$failed:[Ljava/lang/Throwable;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lmobisocial/omlib/service/util/ServiceBindingHelper;Lmobisocial/omlib/service/util/ServiceRunnable;[Ljava/lang/Throwable;Ljava/util/concurrent/CountDownLatch;)V
    .registers 5
    .param p1, "this$0"    # Lmobisocial/omlib/service/util/ServiceBindingHelper;

    .prologue
    .line 150
    .local p0, "this":Lmobisocial/omlib/service/util/ServiceBindingHelper$1;, "Lmobisocial/omlib/service/util/ServiceBindingHelper$1;"
    iput-object p1, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$1;->this$0:Lmobisocial/omlib/service/util/ServiceBindingHelper;

    iput-object p2, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$1;->val$cb:Lmobisocial/omlib/service/util/ServiceRunnable;

    iput-object p3, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$1;->val$failed:[Ljava/lang/Throwable;

    iput-object p4, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTService;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lmobisocial/omlib/service/util/ServiceBindingHelper$1;, "Lmobisocial/omlib/service/util/ServiceBindingHelper$1;"
    .local p1, "tService":Ljava/lang/Object;, "TTService;"
    :try_start_0
    iget-object v1, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$1;->val$cb:Lmobisocial/omlib/service/util/ServiceRunnable;

    invoke-interface {v1, p1}, Lmobisocial/omlib/service/util/ServiceRunnable;->run(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_b

    .line 159
    :goto_5
    iget-object v1, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 160
    return-void

    .line 156
    :catch_b
    move-exception v0

    .line 157
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$1;->val$failed:[Ljava/lang/Throwable;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    goto :goto_5
.end method
