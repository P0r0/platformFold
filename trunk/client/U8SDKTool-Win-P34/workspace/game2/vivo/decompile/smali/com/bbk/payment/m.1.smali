.class final Lcom/bbk/payment/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/bbk/payment/CardActivity;


# direct methods
.method private constructor <init>(Lcom/bbk/payment/CardActivity;I)V
    .registers 6

    iput-object p1, p0, Lcom/bbk/payment/m;->a:Lcom/bbk/payment/CardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CardActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "------------index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bbk/payment/CardActivity;IB)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/bbk/payment/m;-><init>(Lcom/bbk/payment/CardActivity;I)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v0, "CardActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "------------id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_19
    iget-object v2, p0, Lcom/bbk/payment/m;->a:Lcom/bbk/payment/CardActivity;

    invoke-static {v2}, Lcom/bbk/payment/CardActivity;->f(Lcom/bbk/payment/CardActivity;)[Landroid/widget/LinearLayout;

    move-result-object v2

    array-length v2, v2

    if-lt v0, v2, :cond_23

    return-void

    :cond_23
    iget-object v2, p0, Lcom/bbk/payment/m;->a:Lcom/bbk/payment/CardActivity;

    invoke-static {v2}, Lcom/bbk/payment/CardActivity;->g(Lcom/bbk/payment/CardActivity;)[I

    move-result-object v2

    aget v2, v2, v0

    if-ne v1, v2, :cond_77

    const-string v2, "CardActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "----------\u9009\u4e2d\u7684---i: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbk/payment/m;->a:Lcom/bbk/payment/CardActivity;

    iget-object v3, p0, Lcom/bbk/payment/m;->a:Lcom/bbk/payment/CardActivity;

    invoke-static {v3}, Lcom/bbk/payment/CardActivity;->h(Lcom/bbk/payment/CardActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Lcom/bbk/payment/CardActivity;->a(Lcom/bbk/payment/CardActivity;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbk/payment/m;->a:Lcom/bbk/payment/CardActivity;

    invoke-static {v2}, Lcom/bbk/payment/CardActivity;->f(Lcom/bbk/payment/CardActivity;)[Landroid/widget/LinearLayout;

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/bbk/payment/m;->a:Lcom/bbk/payment/CardActivity;

    const-string v4, "card_amount_item_bg"

    invoke-static {v3, v4}, Lcom/bbk/payment/CardActivity;->b(Lcom/bbk/payment/CardActivity;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/bbk/payment/m;->a:Lcom/bbk/payment/CardActivity;

    invoke-static {v2}, Lcom/bbk/payment/CardActivity;->i(Lcom/bbk/payment/CardActivity;)[Landroid/widget/TextView;

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/bbk/payment/m;->a:Lcom/bbk/payment/CardActivity;

    const-string v4, "vivo_white"

    invoke-static {v3, v4}, Lcom/bbk/payment/CardActivity;->b(Lcom/bbk/payment/CardActivity;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_74
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_77
    const-string v2, "CardActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "----------\u672a\u9009\u4e2d\u7684---i: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbk/payment/m;->a:Lcom/bbk/payment/CardActivity;

    invoke-static {v2}, Lcom/bbk/payment/CardActivity;->f(Lcom/bbk/payment/CardActivity;)[Landroid/widget/LinearLayout;

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/bbk/payment/m;->a:Lcom/bbk/payment/CardActivity;

    const-string v4, "vivo_white"

    invoke-static {v3, v4}, Lcom/bbk/payment/CardActivity;->b(Lcom/bbk/payment/CardActivity;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/bbk/payment/m;->a:Lcom/bbk/payment/CardActivity;

    invoke-static {v2}, Lcom/bbk/payment/CardActivity;->i(Lcom/bbk/payment/CardActivity;)[Landroid/widget/TextView;

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/bbk/payment/m;->a:Lcom/bbk/payment/CardActivity;

    const-string v4, "vivo_black"

    invoke-static {v3, v4}, Lcom/bbk/payment/CardActivity;->b(Lcom/bbk/payment/CardActivity;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_74
.end method
