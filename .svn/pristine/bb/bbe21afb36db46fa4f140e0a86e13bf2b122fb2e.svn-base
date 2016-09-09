.class final Lcom/vivo/sdkplugin/activity/cA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/cA;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cA;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->c(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "visitor"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cA;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    const/16 v2, 0x9

    invoke-virtual {v1, v0, v2}, Lcom/vivo/sdkplugin/activity/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
