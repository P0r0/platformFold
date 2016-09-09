.class public Lcom/bbk/payment/vcoinpay/VcoinPay;
.super Lcom/bbk/payment/payment/PaymentType;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Lcom/bbk/payment/payment/PaymentType;-><init>()V

    iput-object p1, p0, Lcom/bbk/payment/vcoinpay/VcoinPay;->context:Landroid/app/Activity;

    new-instance v0, Lcom/bbk/payment/vcoinpay/VcoinPayHelper;

    invoke-direct {v0, p1}, Lcom/bbk/payment/vcoinpay/VcoinPayHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/bbk/payment/vcoinpay/VcoinPay;->paymentHelper:Lcom/bbk/payment/payment/PaymentHelper;

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/vcoinpay/VcoinPay;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/vcoinpay/VcoinPay;->rogressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/bbk/payment/vcoinpay/VcoinPay;Landroid/app/ProgressDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/vcoinpay/VcoinPay;->rogressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic b(Lcom/bbk/payment/vcoinpay/VcoinPay;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/vcoinpay/VcoinPay;->context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/bbk/payment/vcoinpay/VcoinPay;)Lcom/bbk/payment/model/OrderInfo;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/vcoinpay/VcoinPay;->orderInfo:Lcom/bbk/payment/model/OrderInfo;

    return-object v0
.end method

.method static synthetic d(Lcom/bbk/payment/vcoinpay/VcoinPay;)I
    .registers 2

    iget v0, p0, Lcom/bbk/payment/vcoinpay/VcoinPay;->paymentType:I

    return v0
.end method

.method static synthetic e(Lcom/bbk/payment/vcoinpay/VcoinPay;)Lcom/bbk/payment/payment/PaymentHelper;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/vcoinpay/VcoinPay;->paymentHelper:Lcom/bbk/payment/payment/PaymentHelper;

    return-object v0
.end method

.method static synthetic f(Lcom/bbk/payment/vcoinpay/VcoinPay;)V
    .registers 1

    invoke-virtual {p0}, Lcom/bbk/payment/vcoinpay/VcoinPay;->closeDialog()V

    return-void
.end method

.method static synthetic g(Lcom/bbk/payment/vcoinpay/VcoinPay;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/vcoinpay/VcoinPay;->callback:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public doPayment(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public startRecharge(Landroid/app/Activity;Landroid/os/Handler;Lcom/bbk/payment/model/OrderInfo;)V
    .registers 8

    iput-object p1, p0, Lcom/bbk/payment/vcoinpay/VcoinPay;->context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bbk/payment/vcoinpay/VcoinPay;->callback:Landroid/os/Handler;

    iput-object p3, p0, Lcom/bbk/payment/vcoinpay/VcoinPay;->orderInfo:Lcom/bbk/payment/model/OrderInfo;

    const/4 v0, 0x6

    :try_start_7
    iput v0, p0, Lcom/bbk/payment/vcoinpay/VcoinPay;->paymentType:I

    invoke-virtual {p0}, Lcom/bbk/payment/vcoinpay/VcoinPay;->prepareForPayment()V
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

    iput-object p1, p0, Lcom/bbk/payment/vcoinpay/VcoinPay;->context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bbk/payment/vcoinpay/VcoinPay;->callback:Landroid/os/Handler;

    iput-object p3, p0, Lcom/bbk/payment/vcoinpay/VcoinPay;->orderInfo:Lcom/bbk/payment/model/OrderInfo;

    const/4 v0, 0x6

    :try_start_7
    iput v0, p0, Lcom/bbk/payment/vcoinpay/VcoinPay;->paymentType:I

    invoke-static {p1}, Lcom/bbk/payment/util/UtilTool;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Lcom/bbk/payment/vcoinpay/VcoinPay$VcoinPayTask;

    invoke-direct {v0, p0}, Lcom/bbk/payment/vcoinpay/VcoinPay$VcoinPayTask;-><init>(Lcom/bbk/payment/vcoinpay/VcoinPay;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/net/URL;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/bbk/payment/vcoinpay/VcoinPay$VcoinPayTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1e
    return-void

    :cond_1f
    invoke-virtual {p0}, Lcom/bbk/payment/vcoinpay/VcoinPay;->closeDialog()V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_invalid_net_work"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_34} :catch_35

    goto :goto_1e

    :catch_35
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

    goto :goto_1e
.end method
