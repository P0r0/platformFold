.class public Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceRunnerThread;
.super Landroid/os/HandlerThread;
.source "ServiceBindingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/service/util/ServiceBindingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ServiceRunnerThread"
.end annotation


# instance fields
.field final handler:Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmobisocial/omlib/service/util/ServiceBindingHelper",
            "<TTService;>.ServiceHandler;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lmobisocial/omlib/service/util/ServiceBindingHelper;


# direct methods
.method public constructor <init>(Lmobisocial/omlib/service/util/ServiceBindingHelper;)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/omlib/service/util/ServiceBindingHelper;

    .prologue
    .line 253
    .local p0, "this":Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceRunnerThread;, "Lmobisocial/omlib/service/util/ServiceBindingHelper<TTService;>.ServiceRunnerThread;"
    iput-object p1, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceRunnerThread;->this$0:Lmobisocial/omlib/service/util/ServiceBindingHelper;

    .line 254
    const-string v0, "SERVICE-HELPER"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 255
    invoke-virtual {p0}, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceRunnerThread;->start()V

    .line 256
    new-instance v0, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;

    invoke-virtual {p0}, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceRunnerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;-><init>(Lmobisocial/omlib/service/util/ServiceBindingHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceRunnerThread;->handler:Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;

    .line 257
    return-void
.end method
