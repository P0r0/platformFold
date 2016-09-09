.class final Lcom/bbk/payment/ax;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/bbk/payment/TicketActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/TicketActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/ax;->a:Lcom/bbk/payment/TicketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "TicketActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ItemClickListener======ticketCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "ticketCode"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ticketCode"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_36

    const-string v0, "TicketActivity"

    const-string v1, "ticketCode is null ,return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_35
    return-void

    :cond_36
    iget-object v1, p0, Lcom/bbk/payment/ax;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v1}, Lcom/bbk/payment/TicketActivity;->i(Lcom/bbk/payment/TicketActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v1

    const-string v2, "ticket_amount"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bbk/payment/model/OrderInfo;->setTicketAmount(J)V

    iget-object v1, p0, Lcom/bbk/payment/ax;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v1}, Lcom/bbk/payment/TicketActivity;->i(Lcom/bbk/payment/TicketActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ticketCode"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbk/payment/model/OrderInfo;->setTicketCode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bbk/payment/ax;->a:Lcom/bbk/payment/TicketActivity;

    const-string v2, "couponlist_choose"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ticketCode"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/bbk/payment/provider/PaymentUsageUtils;->saveUsageData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/ax;->a:Lcom/bbk/payment/TicketActivity;

    sget v1, Lcom/bbk/payment/TicketActivity;->mBackResult:I

    iget-object v2, p0, Lcom/bbk/payment/ax;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v2}, Lcom/bbk/payment/TicketActivity;->i(Lcom/bbk/payment/TicketActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bbk/payment/TicketActivity;->a(Lcom/bbk/payment/TicketActivity;ILcom/bbk/payment/model/OrderInfo;)V

    goto :goto_35
.end method
