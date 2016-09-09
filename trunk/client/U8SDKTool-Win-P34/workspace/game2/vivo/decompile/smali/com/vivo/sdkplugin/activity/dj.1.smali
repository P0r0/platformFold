.class final Lcom/vivo/sdkplugin/activity/dj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/RegisterActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/dj;->a:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dj;->a:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->e(Lcom/vivo/sdkplugin/activity/RegisterActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dj;->a:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
