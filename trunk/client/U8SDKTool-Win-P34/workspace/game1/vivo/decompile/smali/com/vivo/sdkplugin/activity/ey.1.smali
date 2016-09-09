.class final Lcom/vivo/sdkplugin/activity/ey;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

.field private final synthetic b:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;Landroid/app/Dialog;)V
    .registers 3

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/ey;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    iput-object p2, p0, Lcom/vivo/sdkplugin/activity/ey;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ey;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ey;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->q(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->a(Lcom/vivo/sdkplugin/activity/SubAccountActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ey;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->l(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--------mNickname:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/ey;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->l(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "----------length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    if-nez v0, :cond_5e

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ey;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ey;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_subaccount_empty_wrong"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_5d
    return-void

    :cond_5e
    const/16 v1, 0xf

    if-le v0, v1, :cond_7a

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ey;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ey;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_subaccount_formatmore_wrong"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_5d

    :cond_7a
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ey;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->r(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ey;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->q(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ey;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_5d
.end method
