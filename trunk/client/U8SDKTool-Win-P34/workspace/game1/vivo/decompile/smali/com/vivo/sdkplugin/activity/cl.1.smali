.class final Lcom/vivo/sdkplugin/activity/cl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/cl;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-pwd----afterTextChanged--------"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " autoLogin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cl;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->G(Lcom/vivo/sdkplugin/activity/LoginActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cl;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->H(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cl;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->I(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cl;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    const-string v2, "vivo_secret_icon_unselected"

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(Lcom/vivo/sdkplugin/activity/LoginActivity;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_43
    return-void

    :cond_44
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cl;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->I(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cl;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    const-string v2, "vivo_secret_icon_selected"

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(Lcom/vivo/sdkplugin/activity/LoginActivity;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cl;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->H(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_43
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
