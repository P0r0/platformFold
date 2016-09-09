.class final Lcom/vivo/sdkplugin/activity/ep;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/ep;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ep;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    iget-object v1, v1, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    const-class v2, Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "visitor"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ep;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    const/16 v2, 0x9

    invoke-virtual {v1, v0, v2}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
