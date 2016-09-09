.class final Lcom/vivo/sdkplugin/activity/bj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

.field private final synthetic b:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;Landroid/widget/EditText;)V
    .registers 3

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/bj;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    iput-object p2, p0, Lcom/vivo/sdkplugin/activity/bj;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bj;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/bj;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->g(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bj;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->q(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    const-string v1, "type"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bj;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    const/4 v2, 0x4

    invoke-static {v1, v2, v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->a(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;ILandroid/os/Bundle;)V

    :goto_30
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_34
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bj;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    const/16 v1, 0x13

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->c(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;I)V

    goto :goto_30
.end method
