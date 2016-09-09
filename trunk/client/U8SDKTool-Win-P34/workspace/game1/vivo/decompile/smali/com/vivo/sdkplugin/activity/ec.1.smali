.class final Lcom/vivo/sdkplugin/activity/ec;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/ec;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ec;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->g(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    move-result-object v1

    const-class v2, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ec;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
