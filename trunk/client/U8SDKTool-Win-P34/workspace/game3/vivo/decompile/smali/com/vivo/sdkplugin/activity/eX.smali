.class final Lcom/vivo/sdkplugin/activity/eX;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/eX;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eX;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->t(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eX;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/eX;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    const-string v2, "net_setting_title"

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->b(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/eX;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    const-string v3, "net_setting_tip"

    invoke-static {v2, v3}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->b(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->showNetWorkSettingDialog(II)V

    :goto_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eX;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->u(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eX;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->c(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/eX;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    const-string v2, "vivo_feedback_null"

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->a(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1f

    :cond_3e
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eX;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/eX;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->k(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/eX;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->l(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->a(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;Landroid/widget/EditText;IZ)Z

    move-result v0

    if-nez v0, :cond_69

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eX;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->c(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/eX;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    const-string v2, "toast4"

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->a(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1f

    :cond_69
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eX;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->v(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Z

    move-result v0

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eX;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->c(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/eX;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    const-string v2, "vivo_contact_null"

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->a(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1f

    :cond_87
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eX;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->w(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Z

    move-result v0

    if-nez v0, :cond_a6

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eX;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->c(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/eX;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    const-string v2, "toast4"

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->a(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1f

    :cond_a6
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eX;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->x(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)V

    goto/16 :goto_1f
.end method
