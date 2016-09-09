.class final Lcom/bbk/payment/P;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/bbk/payment/PaymentActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/PaymentActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/P;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbk/payment/P;->a:Lcom/bbk/payment/PaymentActivity;

    const-class v2, Lcom/bbk/payment/PaySuccActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "orderInfo"

    iget-object v2, p0, Lcom/bbk/payment/P;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v2}, Lcom/bbk/payment/PaymentActivity;->a(Lcom/bbk/payment/PaymentActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_60

    :goto_19
    :pswitch_19
    return-void

    :pswitch_1a
    const-string v1, "vcoinpay_result"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbk/payment/P;->a:Lcom/bbk/payment/PaymentActivity;

    const-string v2, "payorder_submit"

    const-string v3, "1"

    invoke-static {v1, v2, v3}, Lcom/bbk/payment/provider/PaymentUsageUtils;->saveUsageData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bbk/payment/P;->a:Lcom/bbk/payment/PaymentActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/bbk/payment/PaymentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30

    goto :goto_19

    :catch_30
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19

    :pswitch_35
    :try_start_35
    const-string v1, "vcoinpay_result"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbk/payment/P;->a:Lcom/bbk/payment/PaymentActivity;

    const-string v2, "payorder_submit"

    const-string v3, "2"

    invoke-static {v1, v2, v3}, Lcom/bbk/payment/provider/PaymentUsageUtils;->saveUsageData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bbk/payment/P;->a:Lcom/bbk/payment/PaymentActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/bbk/payment/PaymentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_19

    :pswitch_4b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/P;->a:Lcom/bbk/payment/PaymentActivity;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_5e} :catch_30

    goto :goto_19

    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_4b
        :pswitch_19
        :pswitch_35
    .end packed-switch
.end method
