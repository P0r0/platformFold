.class final Lcom/vivo/sdkplugin/activity/eU;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/eU;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eU;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->f(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/eU;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->g(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)I

    move-result v1

    if-lt v0, v1, :cond_23

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eU;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->c(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u60a8\u6bcf\u6b21\u6700\u591a\u80fd\u6dfb\u52a04\u5f20\u56fe\u7247\uff01"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_22
    return-void

    :cond_23
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/eU;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/eU;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    iget v2, v2, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->KITKAT_VALUE:I

    invoke-virtual {v1, v0, v2}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_22
.end method
