.class final Lcom/vivo/sdkplugin/activity/dW;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/dW;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 8

    const/4 v5, 0x0

    const-string v0, "SetPassWordActivity"

    const-string v1, "confirm_password_input,afterTextChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dW;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dW;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->f(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->a(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dW;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dW;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->i(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->b(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dW;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dW;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/dW;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->d(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/dW;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-static {v4}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->j(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->a(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;ZLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->d(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dW;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->j(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dW;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->d(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_87

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dW;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->j(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_87

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dW;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dW;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->k(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dW;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->i(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->a(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;ILandroid/widget/EditText;)V

    :goto_81
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dW;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->h(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)V

    return-void

    :cond_87
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dW;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->i(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_81
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
