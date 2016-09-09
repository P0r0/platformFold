.class final Lcom/bbk/payment/Q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/bbk/payment/PaymentActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/PaymentActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/Q;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/bbk/payment/Q;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->b(Lcom/bbk/payment/PaymentActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/Q;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v1}, Lcom/bbk/payment/PaymentActivity;->b(Lcom/bbk/payment/PaymentActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bbk_fade_out"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getAnimId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/Q;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v1}, Lcom/bbk/payment/PaymentActivity;->A(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/bbk/payment/Q;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->A(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbk/payment/Q;->a:Lcom/bbk/payment/PaymentActivity;

    const-class v2, Lcom/bbk/payment/SelectMoreChannelActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "orderInfo"

    iget-object v2, p0, Lcom/bbk/payment/Q;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v2}, Lcom/bbk/payment/PaymentActivity;->a(Lcom/bbk/payment/PaymentActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "channel"

    iget-object v2, p0, Lcom/bbk/payment/Q;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v2}, Lcom/bbk/payment/PaymentActivity;->h(Lcom/bbk/payment/PaymentActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbk/payment/Q;->a:Lcom/bbk/payment/PaymentActivity;

    const/16 v2, 0x7d1

    invoke-virtual {v1, v0, v2}, Lcom/bbk/payment/PaymentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/bbk/payment/Q;->a:Lcom/bbk/payment/PaymentActivity;

    iget-object v1, p0, Lcom/bbk/payment/Q;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v1}, Lcom/bbk/payment/PaymentActivity;->b(Lcom/bbk/payment/PaymentActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bbk_alpha_scale_vertical"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getAnimId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/bbk/payment/Q;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v2}, Lcom/bbk/payment/PaymentActivity;->b(Lcom/bbk/payment/PaymentActivity;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "bbk_fade_out"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getAnimId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/bbk/payment/PaymentActivity;->overridePendingTransition(II)V

    return-void
.end method
