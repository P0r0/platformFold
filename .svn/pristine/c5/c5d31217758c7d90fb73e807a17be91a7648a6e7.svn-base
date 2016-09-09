.class final Lcom/vivo/sdkplugin/activity/dh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/RegisterActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/dh;->a:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 7

    const/16 v4, 0xb

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dh;->a:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->j(Lcom/vivo/sdkplugin/activity/RegisterActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dh;->a:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->e(Lcom/vivo/sdkplugin/activity/RegisterActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "vivo_phone_register_icon"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1f
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-le v0, v4, :cond_44

    const/4 v0, 0x0

    invoke-interface {p1, v0, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dh;->a:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->g(Lcom/vivo/sdkplugin/activity/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dh;->a:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->g(Lcom/vivo/sdkplugin/activity/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_44
    return-void

    :cond_45
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dh;->a:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->j(Lcom/vivo/sdkplugin/activity/RegisterActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dh;->a:Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->e(Lcom/vivo/sdkplugin/activity/RegisterActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "vivo_phone_register_icon_select"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1f
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
