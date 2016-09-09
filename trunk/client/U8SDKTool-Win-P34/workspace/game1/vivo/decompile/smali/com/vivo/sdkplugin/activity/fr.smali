.class final Lcom/vivo/sdkplugin/activity/fr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/fr;->a:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fr;->a:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/fr;->a:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->h(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->a(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fr;->a:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->i(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2e

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fr;->a:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->j(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_2d
    return-void

    :cond_2e
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fr;->a:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->j(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2d
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
