.class public abstract Lcom/bbk/payment/payment/PaymentType;
.super Ljava/lang/Object;


# static fields
.field protected static final USE_MODE_PRODUCT:Ljava/lang/String; = "00"

.field protected static final USE_MODE_TEST:Ljava/lang/String; = "01"


# instance fields
.field protected callback:Landroid/os/Handler;

.field protected context:Landroid/app/Activity;

.field protected install_result:Z

.field protected orderInfo:Lcom/bbk/payment/model/OrderInfo;

.field protected paymentHelper:Lcom/bbk/payment/payment/PaymentHelper;

.field protected paymentType:I

.field protected rogressDialog:Landroid/app/ProgressDialog;

.field protected trade_no:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bbk/payment/payment/PaymentType;->paymentType:I

    return-void
.end method

.method private a()V
    .registers 5

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/bbk/payment/payment/PaymentType;->context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bbk/payment/util/UtilTool;->generatePluginCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bbk/payment/util/UtilTool;->delete(Ljava/io/File;)V

    const-string v0, "00"

    iget-object v1, p0, Lcom/bbk/payment/payment/PaymentType;->orderInfo:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getUseMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "01"

    iget-object v1, p0, Lcom/bbk/payment/payment/PaymentType;->orderInfo:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getUseMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/bbk/payment/payment/PaymentType;->orderInfo:Lcom/bbk/payment/model/OrderInfo;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Lcom/bbk/payment/model/OrderInfo;->setUseMode(Ljava/lang/String;)V

    :cond_32
    iget-object v0, p0, Lcom/bbk/payment/payment/PaymentType;->orderInfo:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0}, Lcom/bbk/payment/model/OrderInfo;->getTransNo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/payment/payment/PaymentType;->trade_no:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbk/payment/payment/PaymentType;->orderInfo:Lcom/bbk/payment/model/OrderInfo;

    iget v1, p0, Lcom/bbk/payment/payment/PaymentType;->paymentType:I

    invoke-virtual {v0, v1}, Lcom/bbk/payment/model/OrderInfo;->setPaymentType(I)V

    iget-object v0, p0, Lcom/bbk/payment/payment/PaymentType;->context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bbk/payment/util/UtilTool;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_58

    new-instance v0, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;

    invoke-direct {v0, p0}, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;-><init>(Lcom/bbk/payment/payment/PaymentType;)V

    new-array v1, v3, [Ljava/net/URL;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_57
    return-void

    :cond_58
    invoke-virtual {p0}, Lcom/bbk/payment/payment/PaymentType;->closeDialog()V

    iget-object v0, p0, Lcom/bbk/payment/payment/PaymentType;->context:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bbk/payment/payment/PaymentType;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_invalid_net_work"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_57
.end method

.method static synthetic a(Lcom/bbk/payment/payment/PaymentType;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbk/payment/payment/PaymentType;->a()V

    return-void
.end method


# virtual methods
.method protected closeDialog()V
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/payment/PaymentType;->rogressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bbk/payment/payment/PaymentType;->rogressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbk/payment/payment/PaymentType;->rogressDialog:Landroid/app/ProgressDialog;

    :cond_c
    return-void
.end method

.method public dealWithPayFailed(Lcom/bbk/payment/model/OrderInfo;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/bbk/payment/payment/PaymentType;->context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bbk/payment/util/UtilTool;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lcom/bbk/payment/payment/PaymentType$PayFailedTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/bbk/payment/payment/PaymentType$PayFailedTask;-><init>(Lcom/bbk/payment/payment/PaymentType;Lcom/bbk/payment/model/OrderInfo;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbk/payment/payment/PaymentType$PayFailedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    :cond_11
    :goto_11
    return-void

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public abstract doPayment(Ljava/lang/String;)Z
.end method

.method protected prepareForPayment()V
    .registers 7

    const/4 v5, 0x1

    :try_start_1
    iget v0, p0, Lcom/bbk/payment/payment/PaymentType;->paymentType:I

    iget-object v1, p0, Lcom/bbk/payment/payment/PaymentType;->orderInfo:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getPrice()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v0, v2, v3}, Lcom/bbk/payment/PaymentActivityController;->detectMinPayAmount(ID)Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/bbk/payment/payment/PaymentType;->paymentHelper:Lcom/bbk/payment/payment/PaymentHelper;

    iget-object v1, p0, Lcom/bbk/payment/payment/PaymentType;->context:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/bbk/payment/payment/PaymentHelper;->isMobileInstallApp(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "PaymentType"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "is payment plugin exist="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_3e

    new-instance v0, Lcom/bbk/payment/payment/PaymentType$InstallPluginTask;

    invoke-direct {v0, p0}, Lcom/bbk/payment/payment/PaymentType$InstallPluginTask;-><init>(Lcom/bbk/payment/payment/PaymentType;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/net/URL;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/bbk/payment/payment/PaymentType$InstallPluginTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_3d
    return-void

    :cond_3e
    invoke-direct {p0}, Lcom/bbk/payment/payment/PaymentType;->a()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_41} :catch_42

    goto :goto_3d

    :catch_42
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/bbk/payment/payment/PaymentType;->callback:Landroid/os/Handler;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bbk/payment/payment/PaymentType;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/payment/PaymentType;->context:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

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

    invoke-static {v0, v5, v1}, Lcom/bbk/payment/util/UtilTool;->handlerMessage(Landroid/os/Handler;ILjava/lang/String;)V

    goto :goto_3d

    :cond_75
    :try_start_75
    iget-object v0, p0, Lcom/bbk/payment/payment/PaymentType;->context:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bbk/payment/payment/PaymentType;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_limit_pay_amount"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_8b} :catch_42

    goto :goto_3d
.end method

.method public abstract startRecharge(Landroid/app/Activity;Landroid/os/Handler;Lcom/bbk/payment/model/OrderInfo;)V
.end method

.method public abstract startpayment(Landroid/app/Activity;Landroid/os/Handler;Lcom/bbk/payment/model/OrderInfo;)V
.end method
