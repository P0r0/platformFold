.class final Lcom/bbk/payment/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I

.field private synthetic b:Lcom/bbk/payment/CardActivity;


# direct methods
.method private constructor <init>(Lcom/bbk/payment/CardActivity;I)V
    .registers 4

    iput-object p1, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bbk/payment/n;->a:I

    iput p2, p0, Lcom/bbk/payment/n;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/bbk/payment/CardActivity;IB)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/bbk/payment/n;-><init>(Lcom/bbk/payment/CardActivity;I)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 10

    const/16 v5, 0x13

    const/16 v3, 0x12

    const/4 v2, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    invoke-static {v0}, Lcom/bbk/payment/CardActivity;->n(Lcom/bbk/payment/CardActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    invoke-static {v0}, Lcom/bbk/payment/CardActivity;->o(Lcom/bbk/payment/CardActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/bbk/payment/n;->a:I

    if-nez v0, :cond_a9

    iget-object v0, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    invoke-static {v0, v4}, Lcom/bbk/payment/CardActivity;->a(Lcom/bbk/payment/CardActivity;I)V

    iget-object v0, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    const-string v1, "100001"

    invoke-static {v0, v1}, Lcom/bbk/payment/CardActivity;->c(Lcom/bbk/payment/CardActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lcom/bbk/payment/CardActivity;->b(Lcom/bbk/payment/CardActivity;I)V

    iget-object v0, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    invoke-static {v0, v3}, Lcom/bbk/payment/CardActivity;->c(Lcom/bbk/payment/CardActivity;I)V

    iget-object v0, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    invoke-static {v0}, Lcom/bbk/payment/CardActivity;->p(Lcom/bbk/payment/CardActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    iget-object v2, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    invoke-virtual {v2}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "bbk_card_tip4"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    new-array v3, v4, [Ljava/lang/String;

    iget-object v4, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    iget-object v5, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    invoke-virtual {v5}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    const-string v6, "bbk_client_server_yd"

    invoke-static {v5, v6}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/bbk/payment/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/bbk/payment/CardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    invoke-static {v0}, Lcom/bbk/payment/CardActivity;->q(Lcom/bbk/payment/CardActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    const-string v2, "drawable"

    const-string v3, "bbk_logo_yd_selected"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    invoke-static {v0}, Lcom/bbk/payment/CardActivity;->r(Lcom/bbk/payment/CardActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    const-string v2, "drawable"

    const-string v3, "bbk_logo_lt_unselect"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    invoke-static {v0}, Lcom/bbk/payment/CardActivity;->s(Lcom/bbk/payment/CardActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    const-string v2, "drawable"

    const-string v3, "bbk_logo_dx_unselect"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_a3
    :goto_a3
    iget-object v0, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    invoke-static {v0}, Lcom/bbk/payment/CardActivity;->t(Lcom/bbk/payment/CardActivity;)V

    return-void

    :cond_a9
    iget v0, p0, Lcom/bbk/payment/n;->a:I

    if-ne v0, v4, :cond_131

    iget-object v0, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    invoke-static {v0, v2}, Lcom/bbk/payment/CardActivity;->a(Lcom/bbk/payment/CardActivity;I)V

    iget-object v0, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    const-string v1, "100002"

    invoke-static {v0, v1}, Lcom/bbk/payment/CardActivity;->c(Lcom/bbk/payment/CardActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/bbk/payment/CardActivity;->b(Lcom/bbk/payment/CardActivity;I)V

    iget-object v0, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    invoke-static {v0, v5}, Lcom/bbk/payment/CardActivity;->c(Lcom/bbk/payment/CardActivity;I)V

    iget-object v0, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    invoke-static {v0}, Lcom/bbk/payment/CardActivity;->p(Lcom/bbk/payment/CardActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    iget-object v2, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    invoke-virtual {v2}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "bbk_card_tip4"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    new-array v3, v4, [Ljava/lang/String;

    iget-object v4, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    iget-object v5, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    invoke-virtual {v5}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    const-string v6, "bbk_client_server_lt"

    invoke-static {v5, v6}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/bbk/payment/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/bbk/payment/CardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    invoke-static {v0}, Lcom/bbk/payment/CardActivity;->q(Lcom/bbk/payment/CardActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    const-string v2, "drawable"

    const-string v3, "bbk_logo_yd_unselect"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    invoke-static {v0}, Lcom/bbk/payment/CardActivity;->r(Lcom/bbk/payment/CardActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    const-string v2, "drawable"

    const-string v3, "bbk_logo_lt_selected"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    invoke-static {v0}, Lcom/bbk/payment/CardActivity;->s(Lcom/bbk/payment/CardActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    const-string v2, "drawable"

    const-string v3, "bbk_logo_dx_unselect"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_a3

    :cond_131
    iget v0, p0, Lcom/bbk/payment/n;->a:I

    if-ne v0, v2, :cond_a3

    iget-object v0, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/bbk/payment/CardActivity;->a(Lcom/bbk/payment/CardActivity;I)V

    iget-object v0, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    const-string v1, "100003"

    invoke-static {v0, v1}, Lcom/bbk/payment/CardActivity;->c(Lcom/bbk/payment/CardActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    invoke-static {v0, v5}, Lcom/bbk/payment/CardActivity;->b(Lcom/bbk/payment/CardActivity;I)V

    iget-object v0, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    invoke-static {v0, v3}, Lcom/bbk/payment/CardActivity;->c(Lcom/bbk/payment/CardActivity;I)V

    iget-object v0, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    invoke-static {v0}, Lcom/bbk/payment/CardActivity;->p(Lcom/bbk/payment/CardActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    iget-object v2, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    invoke-virtual {v2}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "bbk_card_tip4"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    new-array v3, v4, [Ljava/lang/String;

    iget-object v4, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    iget-object v5, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    invoke-virtual {v5}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    const-string v6, "bbk_client_server_dx"

    invoke-static {v5, v6}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/bbk/payment/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/bbk/payment/CardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    invoke-static {v0}, Lcom/bbk/payment/CardActivity;->q(Lcom/bbk/payment/CardActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    const-string v2, "drawable"

    const-string v3, "bbk_logo_yd_unselect"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    invoke-static {v0}, Lcom/bbk/payment/CardActivity;->r(Lcom/bbk/payment/CardActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    const-string v2, "drawable"

    const-string v3, "bbk_logo_lt_unselect"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    invoke-static {v0}, Lcom/bbk/payment/CardActivity;->s(Lcom/bbk/payment/CardActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/n;->b:Lcom/bbk/payment/CardActivity;

    const-string v2, "drawable"

    const-string v3, "bbk_logo_dx_selected"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_a3
.end method
