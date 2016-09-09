.class final Lcom/bbk/payment/V;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/bbk/payment/PaymentActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/PaymentActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/V;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/bbk/payment/V;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->a(Lcom/bbk/payment/PaymentActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbk/payment/model/OrderInfo;->getBlance()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bbk/payment/V;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v2}, Lcom/bbk/payment/PaymentActivity;->a(Lcom/bbk/payment/PaymentActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bbk/payment/model/OrderInfo;->getTicketAmount()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/bbk/payment/V;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v2}, Lcom/bbk/payment/PaymentActivity;->a(Lcom/bbk/payment/PaymentActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bbk/payment/model/OrderInfo;->getPrice()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_48

    iget-object v0, p0, Lcom/bbk/payment/V;->a:Lcom/bbk/payment/PaymentActivity;

    iget-object v1, p0, Lcom/bbk/payment/V;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v1}, Lcom/bbk/payment/PaymentActivity;->b(Lcom/bbk/payment/PaymentActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/V;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-virtual {v2}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "bbk_vcoin_title"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbk/payment/PaymentActivity;->f(Lcom/bbk/payment/PaymentActivity;Ljava/lang/String;)V

    :goto_42
    iget-object v0, p0, Lcom/bbk/payment/V;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->w(Lcom/bbk/payment/PaymentActivity;)V

    return-void

    :cond_48
    iget-object v0, p0, Lcom/bbk/payment/V;->a:Lcom/bbk/payment/PaymentActivity;

    iget-object v1, p0, Lcom/bbk/payment/V;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v1}, Lcom/bbk/payment/PaymentActivity;->n(Lcom/bbk/payment/PaymentActivity;)Lcom/bbk/payment/action/ChannelAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbk/payment/action/ChannelAdapter;->getSelectChannel()I

    move-result v1

    invoke-static {v0, v1}, Lcom/bbk/payment/PaymentActivity;->b(Lcom/bbk/payment/PaymentActivity;I)V

    iget-object v0, p0, Lcom/bbk/payment/V;->a:Lcom/bbk/payment/PaymentActivity;

    iget-object v1, p0, Lcom/bbk/payment/V;->a:Lcom/bbk/payment/PaymentActivity;

    iget-object v2, p0, Lcom/bbk/payment/V;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v2}, Lcom/bbk/payment/PaymentActivity;->x(Lcom/bbk/payment/PaymentActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/bbk/payment/PaymentActivity;->c(Lcom/bbk/payment/PaymentActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbk/payment/PaymentActivity;->f(Lcom/bbk/payment/PaymentActivity;Ljava/lang/String;)V

    goto :goto_42
.end method
