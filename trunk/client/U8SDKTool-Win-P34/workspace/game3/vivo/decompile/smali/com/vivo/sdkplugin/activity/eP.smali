.class final Lcom/vivo/sdkplugin/activity/eP;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/eP;->a:Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    const/16 v1, 0xa

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-le v0, v1, :cond_27

    const/4 v0, 0x0

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/eP;->a:Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->b(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/eP;->a:Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->b(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_27
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
