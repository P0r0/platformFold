.class final Lcom/vivo/sdkplugin/activity/M;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/M;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x6

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-le v0, v2, :cond_26

    invoke-interface {p1, v3, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/M;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->i(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/M;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->i(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_26
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-ne v0, v2, :cond_3f

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/M;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->j(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/M;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->k(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_3e
    return-void

    :cond_3f
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/M;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->k(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3e
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
