.class public Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;
.super Lcom/bbkmobile/iqoo/payment/payment/PaymentType;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Lcom/bbkmobile/iqoo/payment/payment/PaymentType;-><init>()V

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->context:Landroid/app/Activity;

    new-instance v0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPayHelper;

    invoke-direct {v0, p1}, Lcom/bbkmobile/iqoo/payment/cardpay/CardPayHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->paymentHelper:Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;

    return-void
.end method

.method static synthetic a(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->rogressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;Landroid/app/AlertDialog;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->backup_dialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic a(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;Landroid/app/ProgressDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->rogressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic a(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->context:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_alert_dialog_payfail"

    invoke-static {v1, v2}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getLayoutResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/ViewGroup;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "pf_submit"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "pay_fail_msg"

    invoke-static {v1, v3}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/bbkmobile/iqoo/payment/cardpay/b;

    invoke-direct {v1, p0}, Lcom/bbkmobile/iqoo/payment/cardpay/b;-><init>(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->backup_dialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->backup_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic b(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;Ljava/lang/String;)V
    .registers 8

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "balanceAmt"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v0, "0"

    :cond_1b
    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->context:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "bbk_card_succ_balance"

    invoke-static {v2, v3}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "###"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->context:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "bbk_alert_dialog_payfail"

    invoke-static {v1, v3}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getLayoutResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/view/ViewGroup;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "pf_submit"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v4, "pay_dialog_title"

    invoke-static {v1, v4}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->context:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string v5, "bbk_card_succ"

    invoke-static {v4, v5}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v4, "pay_fail_msg"

    invoke-static {v1, v4}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/bbkmobile/iqoo/payment/cardpay/a;

    invoke-direct {v1, p0, p1}, Lcom/bbkmobile/iqoo/payment/cardpay/a;-><init>(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->backup_dialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->backup_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_af
    return-void

    :cond_b0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->callback:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_bf} :catch_c0

    goto :goto_af

    :catch_c0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_af
.end method

.method static synthetic c(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;)Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->paymentHelper:Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;

    return-object v0
.end method

.method static synthetic d(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;)Lcom/bbkmobile/iqoo/payment/model/OrderInfo;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->orderInfo:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    return-object v0
.end method

.method static synthetic e(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;)I
    .registers 2

    iget v0, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->paymentType:I

    return v0
.end method

.method static synthetic f(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;)V
    .registers 1

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->closeDialog()V

    return-void
.end method

.method static synthetic g(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->callback:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;)Landroid/app/AlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->backup_dialog:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method public doPayment(Ljava/lang/String;)Z
    .registers 9

    const/4 v6, 0x0

    :try_start_1
    const-string v0, "CardPay"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initial card pay result="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v0, Lcom/bbkmobile/iqoo/payment/cardpay/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bbkmobile/iqoo/payment/cardpay/c;-><init>(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/net/URL;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/bbkmobile/iqoo/payment/cardpay/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_2d
    return v6

    :cond_2e
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->context:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_card_service_refuse"

    invoke-static {v1, v2}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->a(Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4b} :catch_4c

    goto :goto_2d

    :catch_4c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->callback:Landroid/os/Handler;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->context:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->context:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string v5, "bbk_pay_sys_error"

    invoke-static {v4, v5}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

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

    invoke-static {v0, v1, v2}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->handlerMessage(Landroid/os/Handler;ILjava/lang/String;)V

    goto :goto_2d

    :cond_80
    :try_start_80
    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->context:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_balance_invalid"

    invoke-static {v1, v2}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->a(Ljava/lang/String;)V

    goto :goto_2d

    :cond_9e
    invoke-direct {p0, p1}, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->a(Ljava/lang/String;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_a1} :catch_4c

    goto :goto_2d
.end method

.method public startpayment(Landroid/app/Activity;Landroid/os/Handler;Lcom/bbkmobile/iqoo/payment/model/OrderInfo;)V
    .registers 9

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->callback:Landroid/os/Handler;

    iput-object p3, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->orderInfo:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    const/4 v0, 0x4

    :try_start_7
    iput v0, p0, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->paymentType:I

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->prepareForPayment()V
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

    invoke-static {v3, v4}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

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

    invoke-static {p2, v0, v1}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->handlerMessage(Landroid/os/Handler;ILjava/lang/String;)V

    goto :goto_c
.end method
