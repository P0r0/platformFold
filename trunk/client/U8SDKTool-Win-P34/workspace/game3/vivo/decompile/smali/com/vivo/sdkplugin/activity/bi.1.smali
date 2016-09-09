.class final Lcom/vivo/sdkplugin/activity/bi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/bi;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bi;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->e(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bi;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->n(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->checkAccountNum(Landroid/content/Context;Landroid/widget/EditText;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bi;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->c(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;I)V

    :cond_19
    return-void
.end method
