.class Lmobisocial/omlib/service/util/ServiceBindingHelper$2;
.super Ljava/lang/Object;
.source "ServiceBindingHelper.java"

# interfaces
.implements Lmobisocial/omlib/service/util/ServiceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/service/util/ServiceBindingHelper;->callAndWait(Lmobisocial/omlib/service/util/ServiceCallable;)Ljava/lang/Object;
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

.field final synthetic val$cb:Lmobisocial/omlib/service/util/ServiceCallable;

.field final synthetic val$failed:[Ljava/lang/Throwable;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$result:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lmobisocial/omlib/service/util/ServiceBindingHelper;[Ljava/lang/Object;Lmobisocial/omlib/service/util/ServiceCallable;[Ljava/lang/Throwable;Ljava/util/concurrent/CountDownLatch;)V
    .registers 6
    .param p1, "this$0"    # Lmobisocial/omlib/service/util/ServiceBindingHelper;

    .prologue
    .line 180
    .local p0, "this":Lmobisocial/omlib/service/util/ServiceBindingHelper$2;, "Lmobisocial/omlib/service/util/ServiceBindingHelper$2;"
    iput-object p1, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$2;->this$0:Lmobisocial/omlib/service/util/ServiceBindingHelper;

    iput-object p2, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$2;->val$result:[Ljava/lang/Object;

    iput-object p3, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$2;->val$cb:Lmobisocial/omlib/service/util/ServiceCallable;

    iput-object p4, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$2;->val$failed:[Ljava/lang/Throwable;

    iput-object p5, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTService;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lmobisocial/omlib/service/util/ServiceBindingHelper$2;, "Lmobisocial/omlib/service/util/ServiceBindingHelper$2;"
    .local p1, "tService":Ljava/lang/Object;, "TTService;"
    const/4 v4, 0x0

    .line 185
    :try_start_1
    iget-object v1, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$2;->val$result:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$2;->val$cb:Lmobisocial/omlib/service/util/ServiceCallable;

    invoke-interface {v3, p1}, Lmobisocial/omlib/service/util/ServiceCallable;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c} :catch_12

    .line 189
    :goto_c
    iget-object v1, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 190
    return-void

    .line 186
    :catch_12
    move-exception v0

    .line 187
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$2;->val$failed:[Ljava/lang/Throwable;

    aput-object v0, v1, v4

    goto :goto_c
.end method
