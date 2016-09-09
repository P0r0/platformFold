.class final Lcom/vivo/sdkplugin/activity/fg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/fg;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fg;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->k(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/fg;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v1, v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->a(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;Ljava/lang/CharSequence;)I

    move-result v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/fg;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->l(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)I

    move-result v2

    if-le v1, v2, :cond_7b

    const-string v1, "feedback"

    const-string v2, "feedback_edit---------has reached the limit input number"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/fg;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->c(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/fg;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    const-string v3, "question_feedback_format_wrong"

    invoke-static {v2, v3}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->a(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0xc8

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ssssssssssssssssssssss:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/fg;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->k(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/fg;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->k(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fg;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->m(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "(200/200)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7a
    return-void

    :cond_7b
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fg;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->m(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/200)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7a
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
