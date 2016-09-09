.class public Lcom/bbk/payment/cardpay/CardPay;
.super Lcom/bbk/payment/payment/PaymentType;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Lcom/bbk/payment/payment/PaymentType;-><init>()V

    iput-object p1, p0, Lcom/bbk/payment/cardpay/CardPay;->context:Landroid/app/Activity;

    new-instance v0, Lcom/bbk/payment/cardpay/CardPayHelper;

    invoke-direct {v0, p1}, Lcom/bbk/payment/cardpay/CardPayHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/bbk/payment/cardpay/CardPay;->paymentHelper:Lcom/bbk/payment/payment/PaymentHelper;

    return-void
.end method


# virtual methods
.method public doPayment(Ljava/lang/String;)Z
    .registers 9

    const/4 v6, 0x0

    :try_start_1
    sget-boolean v0, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v0, :cond_19

    const-string v0, "CardPay"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initial card pay result="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/bbk/payment/cardpay/CardPay;->callback:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_2e
    return v6

    :cond_2f
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/bbk/payment/cardpay/CardPay;->context:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bbk/payment/cardpay/CardPay;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_card_service_refuse"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4d} :catch_4e

    goto :goto_2e

    :catch_4e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/bbk/payment/cardpay/CardPay;->callback:Landroid/os/Handler;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bbk/payment/cardpay/CardPay;->context:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/bbk/payment/cardpay/CardPay;->context:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string v5, "bbk_pay_sys_error"

    invoke-static {v4, v5}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "#9999"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bbk/payment/util/UtilTool;->handlerMessage(Landroid/os/Handler;ILjava/lang/String;)V

    goto :goto_2e

    :cond_82
    :try_start_82
    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/bbk/payment/cardpay/CardPay;->context:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bbk/payment/cardpay/CardPay;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_balance_invalid"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2e

    :cond_a1
    iget-object v0, p0, Lcom/bbk/payment/cardpay/CardPay;->context:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_ab} :catch_4e

    goto :goto_2e
.end method

.method public startRecharge(Landroid/app/Activity;Landroid/os/Handler;Lcom/bbk/payment/model/OrderInfo;)V
    .registers 8

    iput-object p1, p0, Lcom/bbk/payment/cardpay/CardPay;->context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bbk/payment/cardpay/CardPay;->callback:Landroid/os/Handler;

    iput-object p3, p0, Lcom/bbk/payment/cardpay/CardPay;->orderInfo:Lcom/bbk/payment/model/OrderInfo;

    const/4 v0, 0x4

    :try_start_7
    iput v0, p0, Lcom/bbk/payment/cardpay/CardPay;->paymentType:I

    invoke-virtual {p0}, Lcom/bbk/payment/cardpay/CardPay;->prepareForPayment()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "bbk_pay_sys_error"

    invoke-static {p1, v3}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "#9999"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/bbk/payment/util/UtilTool;->handlerMessage(Landroid/os/Handler;ILjava/lang/String;)V

    goto :goto_c
.end method

.method public startpayment(Landroid/app/Activity;Landroid/os/Handler;Lcom/bbk/payment/model/OrderInfo;)V
    .registers 9

    iput-object p1, p0, Lcom/bbk/payment/cardpay/CardPay;->context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bbk/payment/cardpay/CardPay;->callback:Landroid/os/Handler;

    iput-object p3, p0, Lcom/bbk/payment/cardpay/CardPay;->orderInfo:Lcom/bbk/payment/model/OrderInfo;

    const/4 v0, 0x4

    :try_start_7
    iput v0, p0, Lcom/bbk/payment/cardpay/CardPay;->paymentType:I

    invoke-virtual {p0}, Lcom/bbk/payment/cardpay/CardPay;->prepareForPayment()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "bbk_pay_sys_error"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "#9999"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/bbk/payment/util/UtilTool;->handlerMessage(Landroid/os/Handler;ILjava/lang/String;)V

    goto :goto_c
.end method
