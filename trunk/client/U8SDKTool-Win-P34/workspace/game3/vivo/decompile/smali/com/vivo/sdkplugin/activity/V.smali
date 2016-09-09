.class final Lcom/vivo/sdkplugin/activity/V;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/V;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 5

    const-string v0, "BindQuestionActivityLog"

    const-string v1, "question2_input_custom.afterTextChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/V;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/V;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->z(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->c(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/V;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->v(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "key_questions2"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/V;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->A(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/V;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->y(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/V;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->i(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Z

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
