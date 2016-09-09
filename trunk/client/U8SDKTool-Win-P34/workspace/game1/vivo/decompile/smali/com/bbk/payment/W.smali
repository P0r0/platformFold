.class final Lcom/bbk/payment/W;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private synthetic a:Lcom/bbk/payment/PaymentActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/PaymentActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/W;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 7

    if-eqz p2, :cond_6e

    iget-object v0, p0, Lcom/bbk/payment/W;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->a(Lcom/bbk/payment/PaymentActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbk/payment/model/OrderInfo;->getTicketCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/bbk/payment/W;->a:Lcom/bbk/payment/PaymentActivity;

    iget-object v1, p0, Lcom/bbk/payment/W;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v1}, Lcom/bbk/payment/PaymentActivity;->y(Lcom/bbk/payment/PaymentActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbk/payment/PaymentActivity;->b(Lcom/bbk/payment/PaymentActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/W;->a:Lcom/bbk/payment/PaymentActivity;

    iget-object v1, p0, Lcom/bbk/payment/W;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v1}, Lcom/bbk/payment/PaymentActivity;->z(Lcom/bbk/payment/PaymentActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbk/payment/PaymentActivity;->c(Lcom/bbk/payment/PaymentActivity;Ljava/lang/String;)V

    :cond_28
    const-string v0, "PaymentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ticketCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbk/payment/W;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v2}, Lcom/bbk/payment/PaymentActivity;->l(Lcom/bbk/payment/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/bbk/payment/W;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->a(Lcom/bbk/payment/PaymentActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/W;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v1}, Lcom/bbk/payment/PaymentActivity;->l(Lcom/bbk/payment/PaymentActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbk/payment/model/OrderInfo;->setTicketCode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/W;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->a(Lcom/bbk/payment/PaymentActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/W;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v1}, Lcom/bbk/payment/PaymentActivity;->k(Lcom/bbk/payment/PaymentActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bbk/payment/model/OrderInfo;->setTicketAmount(J)V

    :goto_68
    iget-object v0, p0, Lcom/bbk/payment/W;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->s(Lcom/bbk/payment/PaymentActivity;)V

    return-void

    :cond_6e
    iget-object v0, p0, Lcom/bbk/payment/W;->a:Lcom/bbk/payment/PaymentActivity;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/bbk/payment/PaymentActivity;->b(Lcom/bbk/payment/PaymentActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/W;->a:Lcom/bbk/payment/PaymentActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/bbk/payment/PaymentActivity;->c(Lcom/bbk/payment/PaymentActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/W;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->a(Lcom/bbk/payment/PaymentActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/bbk/payment/model/OrderInfo;->setTicketCode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/W;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->a(Lcom/bbk/payment/PaymentActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/bbk/payment/model/OrderInfo;->setTicketAmount(J)V

    goto :goto_68
.end method
