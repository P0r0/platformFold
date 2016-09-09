.class final Lcom/bbk/payment/a;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/bbk/payment/CardActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/CardActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/a;->a:Lcom/bbk/payment/CardActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    const-string v0, "cardPay"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_16
    iget-object v0, p0, Lcom/bbk/payment/a;->a:Lcom/bbk/payment/CardActivity;

    const-string v1, "cardpay_result"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bbk/payment/provider/PaymentUsageUtils;->saveUsageData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_9c

    :goto_31
    return-void

    :pswitch_32
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbk/payment/a;->a:Lcom/bbk/payment/CardActivity;

    const-class v2, Lcom/bbk/payment/DetectPayResultActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "orderInfo"

    iget-object v2, p0, Lcom/bbk/payment/a;->a:Lcom/bbk/payment/CardActivity;

    invoke-static {v2}, Lcom/bbk/payment/CardActivity;->a(Lcom/bbk/payment/CardActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbk/payment/a;->a:Lcom/bbk/payment/CardActivity;

    invoke-virtual {v1, v0}, Lcom/bbk/payment/CardActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/bbk/payment/a;->a:Lcom/bbk/payment/CardActivity;

    invoke-virtual {v0}, Lcom/bbk/payment/CardActivity;->finish()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_50} :catch_51

    goto :goto_31

    :catch_51
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_31

    :pswitch_56
    :try_start_56
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/a;->a:Lcom/bbk/payment/CardActivity;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_31

    :pswitch_6e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pay_result"

    const-string v3, "fail"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "orderInfo"

    iget-object v3, p0, Lcom/bbk/payment/a;->a:Lcom/bbk/payment/CardActivity;

    invoke-static {v3}, Lcom/bbk/payment/CardActivity;->a(Lcom/bbk/payment/CardActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "pay_result"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbk/payment/a;->a:Lcom/bbk/payment/CardActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/bbk/payment/CardActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/bbk/payment/a;->a:Lcom/bbk/payment/CardActivity;

    invoke-virtual {v0}, Lcom/bbk/payment/CardActivity;->finish()V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_9a} :catch_51

    goto :goto_31

    nop

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_32
        :pswitch_6e
        :pswitch_56
    .end packed-switch
.end method
