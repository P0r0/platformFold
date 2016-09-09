.class final Lcom/vivo/sdkplugin/activity/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/ah;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 8

    const/4 v5, 0x0

    const-string v0, "BindQuestionActivityLog"

    const-string v1, "answer2_input,afterTextChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ah;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->j(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ah;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->n(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ah;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-static {v0, v5}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ah;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->k(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)I

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ah;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->n(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_35
    :goto_35
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ah;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ah;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/ah;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->n(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;Landroid/widget/EditText;I)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->e(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ah;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->i(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Z

    return-void

    :cond_4c
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ah;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->n(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/ah;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->l(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/ah;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->l(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/ah;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-static {v4}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->k(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ah;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->n(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ah;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->k(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_35
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ah;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->m(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ah;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-static {v0, p4}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->c(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ah;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-static {v0, p2}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->d(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ah;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ah;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->d(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;Z)V

    :cond_1e
    return-void
.end method
