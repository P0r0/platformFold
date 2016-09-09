.class final Lcom/bbk/payment/X;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/bbk/payment/PaymentActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/PaymentActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/X;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    const-string v0, "PaymentActivity"

    const-string v1, "layout_my_ticket onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/bbk/payment/X;->a:Lcom/bbk/payment/PaymentActivity;

    const-string v1, "payorder_click_coupon"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/bbk/payment/provider/PaymentUsageUtils;->saveUsageData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/X;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->b(Lcom/bbk/payment/PaymentActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/X;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v1}, Lcom/bbk/payment/PaymentActivity;->b(Lcom/bbk/payment/PaymentActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bbk_fade_out"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getAnimId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/X;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v1}, Lcom/bbk/payment/PaymentActivity;->A(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/bbk/payment/X;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->A(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbk/payment/X;->a:Lcom/bbk/payment/PaymentActivity;

    const-class v2, Lcom/bbk/payment/TicketActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "orderInfo"

    iget-object v2, p0, Lcom/bbk/payment/X;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v2}, Lcom/bbk/payment/PaymentActivity;->a(Lcom/bbk/payment/PaymentActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbk/payment/X;->a:Lcom/bbk/payment/PaymentActivity;

    sget v2, Lcom/bbk/payment/TicketActivity;->mBackResult:I

    invoke-virtual {v1, v0, v2}, Lcom/bbk/payment/PaymentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
