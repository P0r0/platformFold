.class final Lcom/bbkmobile/iqoo/payment/j;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/bbkmobile/iqoo/payment/PaymentActivity;


# direct methods
.method constructor <init>(Lcom/bbkmobile/iqoo/payment/PaymentActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/j;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 10

    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "PaymentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resultHandler, msg.what="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_108

    :cond_1f
    :goto_1f
    return-void

    :pswitch_20
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "PaymentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "alipay pay failed,what="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",rescode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",resMsg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "6002"

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_82

    const-string v1, "4012"

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_82

    const-string v1, "8000"

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_82

    const-string v1, "66200000"

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_82
    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/j;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivity;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const-string v2, "4006"

    invoke-static {v2}, Lcom/bbkmobile/iqoo/payment/util/Constants;->getErrorMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->failForPay(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_90} :catch_91

    goto :goto_1f

    :catch_91
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f

    :pswitch_96
    :try_start_96
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v0, "transNo"

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/j;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivity;

    invoke-static {v1}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->b(Lcom/bbkmobile/iqoo/payment/PaymentActivity;)Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getTransNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "result_code"

    const-string v1, "9000"

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pay_msg"

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/j;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivity;

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/j;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivity;

    invoke-virtual {v2}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "bbk_pay_succ"

    invoke-static {v2, v3}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pay_result"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/j;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->c(Lcom/bbkmobile/iqoo/payment/PaymentActivity;)Lcom/bbk/payment/payment/VivoPaymentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/j;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivity;

    invoke-static {v1}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->b(Lcom/bbkmobile/iqoo/payment/PaymentActivity;)Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getTransNo()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "9000"

    iget-object v4, p0, Lcom/bbkmobile/iqoo/payment/j;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivity;

    iget-object v5, p0, Lcom/bbkmobile/iqoo/payment/j;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivity;

    invoke-virtual {v5}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    const-string v7, "bbk_pay_succ"

    invoke-static {v5, v7}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/bbkmobile/iqoo/payment/j;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivity;

    invoke-static {v5}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->b(Lcom/bbkmobile/iqoo/payment/PaymentActivity;)Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getPackageN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/bbk/payment/payment/VivoPaymentManager;->singlePayResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/j;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1, v6}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->a(Lcom/bbkmobile/iqoo/payment/PaymentActivity;ILandroid/os/Bundle;)V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_106} :catch_91

    goto/16 :goto_1f

    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_96
        :pswitch_20
    .end packed-switch
.end method
