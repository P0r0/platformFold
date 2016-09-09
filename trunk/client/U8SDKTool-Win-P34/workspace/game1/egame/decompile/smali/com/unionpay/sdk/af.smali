.class final Lcom/unionpay/sdk/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 6

    const/4 v3, 0x0

    sget-boolean v0, Lcom/unionpay/sdk/r;->a:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Lifecycle callback onActivityPaused: "

    aput-object v1, v0, v3

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unionpay/sdk/al;->b([Ljava/lang/String;)V

    :cond_16
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Lcom/unionpay/sdk/r;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 6

    const/4 v3, 0x0

    sget-boolean v0, Lcom/unionpay/sdk/r;->a:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Lifecycle callback onActivityResumed: "

    aput-object v1, v0, v3

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unionpay/sdk/al;->b([Ljava/lang/String;)V

    :cond_16
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Lcom/unionpay/sdk/r;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
