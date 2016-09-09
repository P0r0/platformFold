.class final Lcom/vivo/sdkplugin/activity/ex;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/ex;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 8

    const/16 v5, 0xf

    const/4 v4, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-le v0, v5, :cond_3e

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ex;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ex;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_subaccount_formatmore_wrong"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-interface {p1, v4, v5}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ex;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->q(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ex;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->q(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_3e
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
