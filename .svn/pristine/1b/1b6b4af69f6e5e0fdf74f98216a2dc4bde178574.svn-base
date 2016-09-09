.class final Lcom/vivo/sdkplugin/activity/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

.field private final synthetic b:Landroid/widget/EditText;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;Landroid/widget/EditText;I)V
    .registers 4

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/q;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    iput-object p2, p0, Lcom/vivo/sdkplugin/activity/q;->b:Landroid/widget/EditText;

    iput p3, p0, Lcom/vivo/sdkplugin/activity/q;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/q;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/q;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->e(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/q;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->q(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/q;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->q(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    :cond_2a
    const-string v1, "type"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/q;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    iget v2, p0, Lcom/vivo/sdkplugin/activity/q;->c:I

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->e(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;I)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/q;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;ILandroid/os/Bundle;)V

    :goto_40
    return-void

    :cond_41
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/q;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    const/16 v1, 0x13

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->d(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;I)V

    goto :goto_40
.end method
