.class final Lcom/vivo/sdkplugin/activity/cO;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/LoginDialogActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/LoginDialogActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/cO;->a:Lcom/vivo/sdkplugin/activity/LoginDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    sget-boolean v0, Lcom/vivo/sdkplugin/activity/LoginActivity;->loginFromUI:Z

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/vivo/sdkplugin/activity/LoginActivity;->loginFromSp:Z

    if-nez v0, :cond_c

    :cond_8
    sget-boolean v0, Lcom/vivo/sdkplugin/activity/LoginActivity;->loginFromUI:Z

    if-nez v0, :cond_21

    :cond_c
    const-string v0, "008"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cO;->a:Lcom/vivo/sdkplugin/activity/LoginDialogActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->a(Lcom/vivo/sdkplugin/activity/LoginDialogActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getOpenId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/cO;->a:Lcom/vivo/sdkplugin/activity/LoginDialogActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->b(Lcom/vivo/sdkplugin/activity/LoginDialogActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_21
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cO;->a:Lcom/vivo/sdkplugin/activity/LoginDialogActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->c(Lcom/vivo/sdkplugin/activity/LoginDialogActivity;)Lcom/vivo/sdkplugin/activity/cP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/cP;->cancel()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cO;->a:Lcom/vivo/sdkplugin/activity/LoginDialogActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->b(Lcom/vivo/sdkplugin/activity/LoginDialogActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cO;->a:Lcom/vivo/sdkplugin/activity/LoginDialogActivity;

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cO;->a:Lcom/vivo/sdkplugin/activity/LoginDialogActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->finish()V

    return-void
.end method
