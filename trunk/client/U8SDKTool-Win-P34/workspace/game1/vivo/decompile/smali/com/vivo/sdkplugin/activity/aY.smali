.class final Lcom/vivo/sdkplugin/activity/aY;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/aY;->a:Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 5

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-le v0, v1, :cond_38

    invoke-interface {p1, v2, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/aY;->a:Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;->a(Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/aY;->a:Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;->a(Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/aY;->a:Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;

    const-string v1, "IMEI\u7801\u683c\u5f0f\u9519\u8bef"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_38
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/aY;->a:Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;->b(Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/aY;->a:Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;->c(Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_4a
    return-void

    :cond_4b
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/aY;->a:Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;->c(Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4a
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
