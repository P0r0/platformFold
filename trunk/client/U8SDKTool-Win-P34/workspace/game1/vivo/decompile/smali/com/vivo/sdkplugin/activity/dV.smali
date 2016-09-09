.class final Lcom/vivo/sdkplugin/activity/dV;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/dV;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 8

    const-string v0, "SetPassWordActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "confirm_password_input,hasFocus="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_72

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dV;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dV;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->f(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->a(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dV;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dV;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->i(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->b(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dV;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dV;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/dV;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->d(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/dV;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-static {v4}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->j(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->a(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;ZLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->d(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dV;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dV;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->k(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dV;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->i(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->a(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;ILandroid/widget/EditText;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dV;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->h(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)V

    :cond_72
    return-void
.end method
