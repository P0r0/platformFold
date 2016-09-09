.class final Lcom/vivo/sdkplugin/activity/di;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/RegisterActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/di;->a:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/di;->a:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->a:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/di;->a:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    const-class v2, Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "visitor"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/di;->a:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->k(Lcom/vivo/sdkplugin/activity/RegisterActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/di;->a:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
