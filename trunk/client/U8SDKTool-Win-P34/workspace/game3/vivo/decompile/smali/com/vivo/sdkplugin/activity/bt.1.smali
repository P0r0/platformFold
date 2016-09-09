.class final Lcom/vivo/sdkplugin/activity/bt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/bt;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 6

    const/4 v3, -0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "account"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/bt;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->p(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bt;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-virtual {v1, v3, v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bt;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0, v3}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->e(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bt;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->finish()V

    return-void
.end method
