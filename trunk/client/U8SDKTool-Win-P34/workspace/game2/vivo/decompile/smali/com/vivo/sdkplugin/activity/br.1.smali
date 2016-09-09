.class final Lcom/vivo/sdkplugin/activity/br;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/br;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 5

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/br;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/br;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->n(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->f(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/br;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->e(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/br;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->n(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->checkAccountNum(Landroid/content/Context;Landroid/widget/EditText;Z)Z

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
