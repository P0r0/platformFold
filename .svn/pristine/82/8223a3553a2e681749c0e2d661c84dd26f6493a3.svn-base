.class public Lcom/bbk/payment/alipay/Alipay;
.super Lcom/bbk/payment/payment/PaymentType;


# instance fields
.field protected payHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Lcom/bbk/payment/payment/PaymentType;-><init>()V

    new-instance v0, Lcom/bbk/payment/alipay/d;

    invoke-direct {v0, p0}, Lcom/bbk/payment/alipay/d;-><init>(Lcom/bbk/payment/alipay/Alipay;)V

    iput-object v0, p0, Lcom/bbk/payment/alipay/Alipay;->payHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/bbk/payment/alipay/Alipay;->context:Landroid/app/Activity;

    new-instance v0, Lcom/bbk/payment/alipay/AlipayHelper;

    invoke-direct {v0, p1}, Lcom/bbk/payment/alipay/AlipayHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/bbk/payment/alipay/Alipay;->paymentHelper:Lcom/bbk/payment/payment/PaymentHelper;

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/alipay/Alipay;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/alipay/Alipay;->callback:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/bbk/payment/alipay/Alipay;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/alipay/Alipay;->context:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public doPayment(Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Lcom/bbk/payment/alipay/e;

    invoke-direct {v2, p0, p1}, Lcom/bbk/payment/alipay/e;-><init>(Lcom/bbk/payment/alipay/Alipay;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_10

    :goto_f
    return v0

    :catch_10
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v2, p0, Lcom/bbk/payment/alipay/Alipay;->callback:Landroid/os/Handler;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bbk/payment/alipay/Alipay;->context:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/bbk/payment/alipay/Alipay;->context:Landroid/app/Activity;

    const-string v6, "bbk_pay_sys_error"

    invoke-static {v5, v6}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "#9999"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/bbk/payment/util/UtilTool;->handlerMessage(Landroid/os/Handler;ILjava/lang/String;)V

    move v0, v1

    goto :goto_f
.end method

.method public startRecharge(Landroid/app/Activity;Landroid/os/Handler;Lcom/bbk/payment/model/OrderInfo;)V
    .registers 8

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/bbk/payment/alipay/Alipay;->context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bbk/payment/alipay/Alipay;->callback:Landroid/os/Handler;

    iput-object p3, p0, Lcom/bbk/payment/alipay/Alipay;->orderInfo:Lcom/bbk/payment/model/OrderInfo;

    const/4 v0, 0x1

    :try_start_8
    iput v0, p0, Lcom/bbk/payment/alipay/Alipay;->paymentType:I

    invoke-virtual {p0}, Lcom/bbk/payment/alipay/Alipay;->prepareForPayment()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "bbk_pay_sys_error"

    invoke-static {p1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "#9999"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v3, v0}, Lcom/bbk/payment/util/UtilTool;->handlerMessage(Landroid/os/Handler;ILjava/lang/String;)V

    goto :goto_d
.end method

.method public startpayment(Landroid/app/Activity;Landroid/os/Handler;Lcom/bbk/payment/model/OrderInfo;)V
    .registers 8

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/bbk/payment/alipay/Alipay;->context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bbk/payment/alipay/Alipay;->callback:Landroid/os/Handler;

    iput-object p3, p0, Lcom/bbk/payment/alipay/Alipay;->orderInfo:Lcom/bbk/payment/model/OrderInfo;

    const/4 v0, 0x1

    :try_start_8
    iput v0, p0, Lcom/bbk/payment/alipay/Alipay;->paymentType:I

    invoke-virtual {p0}, Lcom/bbk/payment/alipay/Alipay;->prepareForPayment()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "bbk_pay_sys_error"

    invoke-static {p1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "#9999"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v3, v0}, Lcom/bbk/payment/util/UtilTool;->handlerMessage(Landroid/os/Handler;ILjava/lang/String;)V

    goto :goto_d
.end method
