.class final Lcom/vivo/sdkplugin/activity/dt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/dt;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dt;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    const-class v2, Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "visitor"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dt;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    const/16 v2, 0x9

    invoke-virtual {v1, v0, v2}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dt;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->a(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
