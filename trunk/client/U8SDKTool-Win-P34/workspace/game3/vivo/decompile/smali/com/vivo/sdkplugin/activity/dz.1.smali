.class final Lcom/vivo/sdkplugin/activity/dz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/dz;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 10

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dz;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dz;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;I)V

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dz;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->u(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dz;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->v(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dz;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->a(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dz;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->w(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dz;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->x(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/vivo/sdkplugin/activity/dz;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    new-instance v0, Lcom/vivo/sdkplugin/activity/dJ;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dz;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x3e8

    invoke-direct/range {v0 .. v5}, Lcom/vivo/sdkplugin/activity/dJ;-><init>(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;JJ)V

    invoke-static {v6, v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->a(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;Lcom/vivo/sdkplugin/activity/dJ;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dz;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0, v7}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->a(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dz;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->k(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)V

    goto :goto_10

    :cond_58
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dz;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    const-string v1, "\u60a8\u5fc5\u987b\u540c\u610f\u7528\u6237\u534f\u8bae\u65b9\u53ef\u767b\u5f55"

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_10
.end method
