.class final Lcom/vivo/sdkplugin/activity/et;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/et;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/et;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/et;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    iget-boolean v0, v0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->e:Z

    if-eqz v0, :cond_30

    const/4 v0, 0x0

    :goto_a
    iput-boolean v0, v2, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->e:Z

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/et;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    const-class v3, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "subAccountList"

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/et;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->d(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/et;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->e(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/et;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-virtual {v2, v0, v1}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_30
    move v0, v1

    goto :goto_a
.end method
