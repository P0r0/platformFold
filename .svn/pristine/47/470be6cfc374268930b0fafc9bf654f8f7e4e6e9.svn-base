.class Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$3;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->updateDataIfNecessary(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;

.field private final synthetic b:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$3;->a:Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;

    iput-object p2, p0, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$3;->b:Landroid/content/Intent;

    .line 312
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 316
    iget-object v0, p0, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$3;->a:Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;

    # getter for: Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->access$0(Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/BroadcaseSender;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/BroadcaseSender;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$3;->b:Landroid/content/Intent;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$3;->b:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    .line 337
    :cond_16
    :goto_16
    return-void

    .line 319
    :cond_17
    iget-object v1, p0, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$3;->b:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 321
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 323
    iget-object v1, p0, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$3;->a:Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;

    iget-object v2, p0, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$3;->a:Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;

    # getter for: Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->access$0(Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$3;->b:Landroid/content/Intent;

    # invokes: Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->onPackageAdded(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v1, v2, v3}, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->access$1(Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 324
    iget-object v1, p0, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$3;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/utils/BroadcaseSender;->notifyPackageAdded(Landroid/content/Intent;)V

    goto :goto_16

    .line 327
    :cond_38
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 329
    iget-object v1, p0, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$3;->a:Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;

    iget-object v2, p0, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$3;->a:Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;

    # getter for: Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->access$0(Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$3;->b:Landroid/content/Intent;

    # invokes: Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->onPackageRemoved(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v1, v2, v3}, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->access$2(Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 330
    iget-object v1, p0, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$3;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/utils/BroadcaseSender;->notifyPackageRemoved(Landroid/content/Intent;)V

    goto :goto_16

    .line 333
    :cond_53
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 335
    iget-object v0, p0, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$3;->a:Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;

    iget-object v1, p0, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$3;->a:Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;

    # getter for: Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->access$0(Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$3;->b:Landroid/content/Intent;

    # invokes: Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->onPackageReplaced(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->access$3(Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_16
.end method
