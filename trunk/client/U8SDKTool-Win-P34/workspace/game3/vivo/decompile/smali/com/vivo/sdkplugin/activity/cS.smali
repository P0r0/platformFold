.class final Lcom/vivo/sdkplugin/activity/cS;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

.field private final synthetic b:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;Landroid/widget/TextView;)V
    .registers 3

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/cS;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    iput-object p2, p0, Lcom/vivo/sdkplugin/activity/cS;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 7

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_22

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cS;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cS;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/cS;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    iget-object v2, v2, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a:Landroid/content/Context;

    const-string v3, "color"

    const-string v4, "card_amount_item_bg"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cS;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cS;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/cS;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    iget-object v2, v2, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a:Landroid/content/Context;

    const-string v3, "color"

    const-string v4, "vivo_regist_commit_left"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_21
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
