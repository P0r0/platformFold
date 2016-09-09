.class public Lcom/bbkmobile/iqoo/payment/payment/PaymentGW;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/bbkmobile/iqoo/payment/payment/PaymentType;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PaymentGW"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PaymentGW, payment_type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_alipay"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance v0, Lcom/bbkmobile/iqoo/payment/alipay/Alipay;

    invoke-direct {v0, p1}, Lcom/bbkmobile/iqoo/payment/alipay/Alipay;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/payment/PaymentGW;->a:Lcom/bbkmobile/iqoo/payment/payment/PaymentType;

    :cond_32
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_uppay"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    new-instance v0, Lcom/bbkmobile/iqoo/payment/uppay/Uppay;

    invoke-direct {v0, p1}, Lcom/bbkmobile/iqoo/payment/uppay/Uppay;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/payment/PaymentGW;->a:Lcom/bbkmobile/iqoo/payment/payment/PaymentType;

    :cond_4d
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_tencent"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    new-instance v0, Lcom/bbkmobile/iqoo/payment/tenpay/TencentPay;

    invoke-direct {v0, p1}, Lcom/bbkmobile/iqoo/payment/tenpay/TencentPay;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/payment/PaymentGW;->a:Lcom/bbkmobile/iqoo/payment/payment/PaymentType;

    :cond_68
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_card_s"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_83

    new-instance v0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;

    invoke-direct {v0, p1}, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/payment/PaymentGW;->a:Lcom/bbkmobile/iqoo/payment/payment/PaymentType;

    :cond_83
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_weixin"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9e

    new-instance v0, Lcom/bbkmobile/iqoo/payment/weixin/WinxinPay;

    invoke-direct {v0, p1}, Lcom/bbkmobile/iqoo/payment/weixin/WinxinPay;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/payment/PaymentGW;->a:Lcom/bbkmobile/iqoo/payment/payment/PaymentType;

    :cond_9e
    return-void
.end method


# virtual methods
.method public failPayment(Lcom/bbkmobile/iqoo/payment/model/OrderInfo;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/payment/PaymentGW;->a:Lcom/bbkmobile/iqoo/payment/payment/PaymentType;

    invoke-virtual {v0, p1, p2}, Lcom/bbkmobile/iqoo/payment/payment/PaymentType;->dealWithPayFailed(Lcom/bbkmobile/iqoo/payment/model/OrderInfo;Ljava/lang/String;)V

    return-void
.end method

.method public payment(Landroid/app/Activity;Landroid/os/Handler;Lcom/bbkmobile/iqoo/payment/model/OrderInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/payment/PaymentGW;->a:Lcom/bbkmobile/iqoo/payment/payment/PaymentType;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bbkmobile/iqoo/payment/payment/PaymentType;->startpayment(Landroid/app/Activity;Landroid/os/Handler;Lcom/bbkmobile/iqoo/payment/model/OrderInfo;)V

    return-void
.end method
