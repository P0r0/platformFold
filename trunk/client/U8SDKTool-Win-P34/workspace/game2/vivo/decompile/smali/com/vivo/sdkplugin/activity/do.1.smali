.class final Lcom/vivo/sdkplugin/activity/do;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/do;->a:Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 7

    const/16 v4, 0x28

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/do;->a:Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;->f(Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/do;->a:Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;

    iget-object v1, v1, Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;->a:Landroid/content/Context;

    const-string v2, "drawable"

    const-string v3, "vivo_mail_register_icon"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1d
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-le v0, v4, :cond_42

    const/4 v0, 0x0

    invoke-interface {p1, v0, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/do;->a:Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;->g(Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/do;->a:Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;->g(Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_42
    return-void

    :cond_43
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/do;->a:Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;->f(Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/do;->a:Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;

    iget-object v1, v1, Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;->a:Landroid/content/Context;

    const-string v2, "drawable"

    const-string v3, "vivo_mail_register_icon_select"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1d
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
