.class final Lcom/bbkmobile/iqoo/payment/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I

.field private synthetic b:Lcom/bbkmobile/iqoo/payment/CardActivity;


# direct methods
.method private constructor <init>(Lcom/bbkmobile/iqoo/payment/CardActivity;I)V
    .registers 4

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bbkmobile/iqoo/payment/h;->a:I

    iput p2, p0, Lcom/bbkmobile/iqoo/payment/h;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/bbkmobile/iqoo/payment/CardActivity;IB)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/bbkmobile/iqoo/payment/h;-><init>(Lcom/bbkmobile/iqoo/payment/CardActivity;I)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 10

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->a(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->b(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->c(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->d(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->e(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-virtual {v1}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_card_tip_s"

    invoke-static {v1, v2}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->e(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-virtual {v1}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-virtual {v2}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "card_text_tip_s"

    invoke-static {v2, v3}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getColorResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget v0, p0, Lcom/bbkmobile/iqoo/payment/h;->a:I

    if-nez v0, :cond_99

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0, v5}, Lcom/bbkmobile/iqoo/payment/CardActivity;->a(Lcom/bbkmobile/iqoo/payment/CardActivity;I)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    const-string v1, "100001"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/CardActivity;->a(Lcom/bbkmobile/iqoo/payment/CardActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->f(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->g(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->h(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->i(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_98
    :goto_98
    return-void

    :cond_99
    iget v0, p0, Lcom/bbkmobile/iqoo/payment/h;->a:I

    if-ne v0, v5, :cond_ce

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0, v6}, Lcom/bbkmobile/iqoo/payment/CardActivity;->a(Lcom/bbkmobile/iqoo/payment/CardActivity;I)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    const-string v1, "100002"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/CardActivity;->a(Lcom/bbkmobile/iqoo/payment/CardActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->f(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->g(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->h(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->i(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_98

    :cond_ce
    iget v0, p0, Lcom/bbkmobile/iqoo/payment/h;->a:I

    if-ne v0, v6, :cond_103

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0, v7}, Lcom/bbkmobile/iqoo/payment/CardActivity;->a(Lcom/bbkmobile/iqoo/payment/CardActivity;I)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    const-string v1, "100003"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/CardActivity;->a(Lcom/bbkmobile/iqoo/payment/CardActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->f(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->g(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->h(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->i(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_98

    :cond_103
    iget v0, p0, Lcom/bbkmobile/iqoo/payment/h;->a:I

    if-ne v0, v7, :cond_98

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/CardActivity;->a(Lcom/bbkmobile/iqoo/payment/CardActivity;I)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    const-string v1, "100004"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/CardActivity;->a(Lcom/bbkmobile/iqoo/payment/CardActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->f(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->g(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->h(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->i(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->a(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/h;->b:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-virtual {v1}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_game_card_support"

    invoke-static {v1, v2}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_98
.end method
