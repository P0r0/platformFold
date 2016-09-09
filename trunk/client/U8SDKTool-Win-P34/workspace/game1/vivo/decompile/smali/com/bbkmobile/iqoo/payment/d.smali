.class final Lcom/bbkmobile/iqoo/payment/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/bbkmobile/iqoo/payment/CardActivity;

.field private final synthetic b:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bbkmobile/iqoo/payment/CardActivity;[Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/d;->a:Lcom/bbkmobile/iqoo/payment/CardActivity;

    iput-object p2, p0, Lcom/bbkmobile/iqoo/payment/d;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/d;->b:[Ljava/lang/String;

    aget-object v0, v0, p2

    const-string v1, "\u5143"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/d;->a:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v2}, Lcom/bbkmobile/iqoo/payment/CardActivity;->j(Lcom/bbkmobile/iqoo/payment/CardActivity;)Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getPrice()D

    move-result-wide v2

    cmpl-double v0, v2, v0

    if-lez v0, :cond_83

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/d;->a:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->e(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/d;->a:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-virtual {v1}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_card_le_price_s"

    invoke-static {v1, v2}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/d;->a:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->e(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/d;->a:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-virtual {v1}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/d;->a:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-virtual {v2}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "TextColorRed_s"

    invoke-static {v2, v3}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getColorResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/d;->a:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->b(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/d;->b:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/d;->a:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->k(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/d;->a:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-virtual {v1}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_btn_disable"

    invoke-static {v1, v2}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getDrawableResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/d;->a:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->k(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    :goto_82
    return-void

    :cond_83
    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/d;->a:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->e(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/d;->a:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-virtual {v1}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_card_tip_s"

    invoke-static {v1, v2}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/d;->a:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->e(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/d;->a:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-virtual {v1}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/d;->a:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-virtual {v2}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "card_text_tip_s"

    invoke-static {v2, v3}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getColorResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/d;->a:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->k(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/d;->a:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->k(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/d;->a:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-virtual {v1}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_btn_default_s"

    invoke-static {v1, v2}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getDrawableResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/d;->a:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->b(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/d;->b:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_82
.end method
