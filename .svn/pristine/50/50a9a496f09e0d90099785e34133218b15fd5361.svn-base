.class public Lcom/bbk/payment/uppay/Uppay;
.super Lcom/bbk/payment/payment/PaymentType;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Lcom/bbk/payment/payment/PaymentType;-><init>()V

    iput-object p1, p0, Lcom/bbk/payment/uppay/Uppay;->context:Landroid/app/Activity;

    new-instance v0, Lcom/bbk/payment/uppay/UppayHelper;

    invoke-direct {v0, p1}, Lcom/bbk/payment/uppay/UppayHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/bbk/payment/uppay/Uppay;->paymentHelper:Lcom/bbk/payment/payment/PaymentHelper;

    return-void
.end method


# virtual methods
.method public doPayment(Ljava/lang/String;)Z
    .registers 8

    :try_start_0
    const-string v0, "Uppay"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "order_sign="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",useMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/uppay/Uppay;->orderInfo:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v2}, Lcom/bbk/payment/model/OrderInfo;->getUseMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/bbk/payment/uppay/Uppay;->context:Landroid/app/Activity;

    const-class v1, Lcom/unionpay/uppay/PayActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bbk/payment/uppay/Uppay;->orderInfo:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v4}, Lcom/bbk/payment/model/OrderInfo;->getUseMode()Ljava/lang/String;

    move-result-object v5

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/unionpay/UPPayAssistEx;->startPayByJAR(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_36

    :goto_34
    const/4 v0, 0x0

    return v0

    :catch_36
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/bbk/payment/uppay/Uppay;->callback:Landroid/os/Handler;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bbk/payment/uppay/Uppay;->context:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/bbk/payment/uppay/Uppay;->context:Landroid/app/Activity;

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

    goto :goto_34
.end method

.method public startRecharge(Landroid/app/Activity;Landroid/os/Handler;Lcom/bbk/payment/model/OrderInfo;)V
    .registers 8

    iput-object p1, p0, Lcom/bbk/payment/uppay/Uppay;->context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bbk/payment/uppay/Uppay;->callback:Landroid/os/Handler;

    iput-object p3, p0, Lcom/bbk/payment/uppay/Uppay;->orderInfo:Lcom/bbk/payment/model/OrderInfo;

    const/4 v0, 0x2

    :try_start_7
    iput v0, p0, Lcom/bbk/payment/uppay/Uppay;->paymentType:I

    invoke-virtual {p0}, Lcom/bbk/payment/uppay/Uppay;->prepareForPayment()V
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
    .registers 8

    iput-object p1, p0, Lcom/bbk/payment/uppay/Uppay;->context:Landroid/app/Activity;

    iput-object p3, p0, Lcom/bbk/payment/uppay/Uppay;->orderInfo:Lcom/bbk/payment/model/OrderInfo;

    iput-object p2, p0, Lcom/bbk/payment/uppay/Uppay;->callback:Landroid/os/Handler;

    const/4 v0, 0x2

    :try_start_7
    iput v0, p0, Lcom/bbk/payment/uppay/Uppay;->paymentType:I

    invoke-virtual {p0}, Lcom/bbk/payment/uppay/Uppay;->prepareForPayment()V
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
