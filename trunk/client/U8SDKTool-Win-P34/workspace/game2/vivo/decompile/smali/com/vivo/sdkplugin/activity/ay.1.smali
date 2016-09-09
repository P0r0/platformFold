.class final Lcom/vivo/sdkplugin/activity/ay;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/ay;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 7

    const/16 v1, 0x10

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-le v0, v1, :cond_27

    const/4 v0, 0x0

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ay;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->m(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ay;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->m(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_27
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ay;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ay;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->k(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->c(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ay;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ay;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->m(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->d(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ay;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->l(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_a2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ay;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->n(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ay;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->d(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_a3

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ay;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ay;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/ay;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->d(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/ay;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v4}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->n(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->a(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;ZLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->e(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ay;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ay;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->o(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/ay;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->m(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->a(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;ILandroid/widget/EditText;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ay;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->j(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)V

    :cond_a2
    :goto_a2
    return-void

    :cond_a3
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ay;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/ay;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->m(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->a(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;ILandroid/widget/EditText;)V

    goto :goto_a2
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
