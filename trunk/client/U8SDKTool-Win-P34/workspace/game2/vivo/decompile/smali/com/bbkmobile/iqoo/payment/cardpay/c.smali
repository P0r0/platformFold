.class final Lcom/bbkmobile/iqoo/payment/cardpay/c;
.super Landroid/os/AsyncTask;


# instance fields
.field private synthetic a:Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;


# direct methods
.method private constructor <init>(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/cardpay/c;->a:Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbkmobile/iqoo/payment/cardpay/c;-><init>(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;)V

    return-void
.end method

.method private varargs a()Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/cardpay/c;->a:Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->c(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;)Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/cardpay/c;->a:Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;

    invoke-static {v2}, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->d(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;)Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/bbkmobile/iqoo/payment/cardpay/c;->a:Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;

    invoke-static {v3}, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->e(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;->detectCardPayResult(Lcom/bbkmobile/iqoo/payment/model/OrderInfo;I)Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_2c

    move-result-object v0

    :try_start_17
    const-string v1, "CardPay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "card payment result="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2b} :catch_34

    :goto_2b
    return-object v0

    :catch_2c
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_30
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2b

    :catch_34
    move-exception v1

    goto :goto_30
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0}, Lcom/bbkmobile/iqoo/payment/cardpay/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 6

    check-cast p1, Ljava/lang/String;

    :try_start_2
    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/cardpay/c;->a:Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->f(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;)V

    invoke-static {p1}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/cardpay/c;->a:Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/cardpay/c;->a:Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;

    invoke-static {v1}, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->b(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/cardpay/c;->a:Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;

    invoke-static {v2}, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->b(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "bbk_msg_server_failed"

    invoke-static {v2, v3}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->a(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;Ljava/lang/String;)V

    :goto_2c
    return-void

    :cond_2d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "payResult"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/cardpay/c;->a:Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;

    invoke-static {v0, p1}, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->b(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_45} :catch_46

    goto :goto_2c

    :catch_46
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2c

    :cond_4b
    :try_start_4b
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/cardpay/c;->a:Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;

    invoke-static {v1}, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->g(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2c

    :cond_67
    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/cardpay/c;->a:Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;

    invoke-static {v1}, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->b(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "errorMsg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_7b} :catch_46

    goto :goto_2c
.end method

.method protected final onPreExecute()V
    .registers 8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/cardpay/c;->a:Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->a(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/cardpay/c;->a:Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/cardpay/c;->a:Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;

    invoke-static {v1}, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->b(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/bbkmobile/iqoo/payment/cardpay/c;->a:Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;

    invoke-static {v3}, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->b(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/bbkmobile/iqoo/payment/cardpay/c;->a:Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;

    invoke-static {v4}, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->b(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string v5, "bbk_detect_pay_result"

    invoke-static {v4, v5}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v6, v6}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->showProgress(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->a(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;Landroid/app/ProgressDialog;)V

    :cond_33
    return-void
.end method
