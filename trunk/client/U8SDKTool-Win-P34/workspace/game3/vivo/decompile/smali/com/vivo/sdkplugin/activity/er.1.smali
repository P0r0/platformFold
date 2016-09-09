.class final Lcom/vivo/sdkplugin/activity/er;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/er;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/er;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    iget-object v1, v1, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    const-class v2, Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "switchAccount"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/er;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/er;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->b(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGameKilled(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/er;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->finish()V

    return-void
.end method
