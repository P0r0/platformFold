.class final Lcom/bbk/payment/M;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private synthetic a:Lcom/bbk/payment/PaymentActionActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/PaymentActionActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/M;->a:Lcom/bbk/payment/PaymentActionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 15

    const/4 v4, 0x2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bbk/payment/M;->a:Lcom/bbk/payment/PaymentActionActivity;

    invoke-static {v1}, Lcom/bbk/payment/PaymentActionActivity;->d(Lcom/bbk/payment/PaymentActionActivity;)Lcom/bbk/payment/action/ActionAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbk/payment/action/ActionAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_3d

    iget-object v1, p0, Lcom/bbk/payment/M;->a:Lcom/bbk/payment/PaymentActionActivity;

    invoke-static {v1}, Lcom/bbk/payment/PaymentActionActivity;->d(Lcom/bbk/payment/PaymentActionActivity;)Lcom/bbk/payment/action/ActionAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbk/payment/action/ActionAdapter;->getItemHeightMap()Ljava/util/HashMap;

    move-result-object v3

    iget-object v1, p0, Lcom/bbk/payment/M;->a:Lcom/bbk/payment/PaymentActionActivity;

    invoke-static {v1}, Lcom/bbk/payment/PaymentActionActivity;->a(Lcom/bbk/payment/PaymentActionActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_65

    move v2, v0

    move v1, v0

    :goto_2e
    const/4 v0, 0x3

    if-lt v2, v0, :cond_3e

    iget-object v0, p0, Lcom/bbk/payment/M;->a:Lcom/bbk/payment/PaymentActionActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActionActivity;->e(Lcom/bbk/payment/PaymentActionActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_3d
    :goto_3d
    return-void

    :cond_3e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v1, v0

    if-ne v2, v4, :cond_8c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    :goto_60
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_2e

    :cond_65
    iget-object v0, p0, Lcom/bbk/payment/M;->a:Lcom/bbk/payment/PaymentActionActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActionActivity;->e(Lcom/bbk/payment/PaymentActionActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/M;->a:Lcom/bbk/payment/PaymentActionActivity;

    invoke-static {v1}, Lcom/bbk/payment/PaymentActionActivity;->a(Lcom/bbk/payment/PaymentActionActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/M;->a:Lcom/bbk/payment/PaymentActionActivity;

    invoke-static {v2}, Lcom/bbk/payment/PaymentActionActivity;->a(Lcom/bbk/payment/PaymentActionActivity;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "bbk_action_list_height"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getDimenId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3d

    :cond_8c
    move v0, v1

    goto :goto_60
.end method
