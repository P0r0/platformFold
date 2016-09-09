.class final Lcom/vivo/sdkplugin/activity/v;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/v;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "android.intent.action.FORCE_STOP_PACKAGE."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/v;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGamePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AccountPersonalCenterActivity"

    const-string v3, "-------killPocsReceiver()-------:"

    invoke-static {v2, v3}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "AccountPersonalCenterActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "action:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "AccountPersonalCenterActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tempAction:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "AccountPersonalCenterActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "switchKill:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/v;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v4}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->c(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/v;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->c(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Z

    move-result v0

    if-eqz v0, :cond_92

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/v;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGameKilled(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/v;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/v;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGamePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/v;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->d(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V

    :cond_92
    return-void
.end method
