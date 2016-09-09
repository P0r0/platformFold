.class final Lcom/vivo/sdkplugin/activity/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/au;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 6

    const/4 v2, 0x0

    const/16 v1, 0x10

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-le v0, v1, :cond_28

    invoke-interface {p1, v3, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/au;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->e(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/au;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->e(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_28
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/au;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/au;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->e(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->b(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/au;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->e(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/au;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/au;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/au;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->h(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->a(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;ZLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->c(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/au;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/au;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->i(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/au;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->e(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->a(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;ILandroid/widget/EditText;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/au;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->j(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
