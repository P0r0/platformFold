.class public Lcom/bbk/payment/vcoinpay/VcoinPay$VcoinPayTask;
.super Landroid/os/AsyncTask;


# instance fields
.field private synthetic a:Lcom/bbk/payment/vcoinpay/VcoinPay;


# direct methods
.method protected constructor <init>(Lcom/bbk/payment/vcoinpay/VcoinPay;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/vcoinpay/VcoinPay$VcoinPayTask;->a:Lcom/bbk/payment/vcoinpay/VcoinPay;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/net/URL;

    invoke-virtual {p0, p1}, Lcom/bbk/payment/vcoinpay/VcoinPay$VcoinPayTask;->doInBackground([Ljava/net/URL;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/net/URL;)Lorg/json/JSONObject;
    .registers 6

    const/4 v0, 0x0

    sget-boolean v1, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v1, :cond_2f

    const-string v1, "VcoinPay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "InitialAlipayTask orderInfo="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bbk/payment/vcoinpay/VcoinPay$VcoinPayTask;->a:Lcom/bbk/payment/vcoinpay/VcoinPay;

    invoke-static {v3}, Lcom/bbk/payment/vcoinpay/VcoinPay;->c(Lcom/bbk/payment/vcoinpay/VcoinPay;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",paymentType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/vcoinpay/VcoinPay$VcoinPayTask;->a:Lcom/bbk/payment/vcoinpay/VcoinPay;

    invoke-static {v3}, Lcom/bbk/payment/vcoinpay/VcoinPay;->d(Lcom/bbk/payment/vcoinpay/VcoinPay;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    :try_start_2f
    iget-object v1, p0, Lcom/bbk/payment/vcoinpay/VcoinPay$VcoinPayTask;->a:Lcom/bbk/payment/vcoinpay/VcoinPay;

    invoke-static {v1}, Lcom/bbk/payment/vcoinpay/VcoinPay;->e(Lcom/bbk/payment/vcoinpay/VcoinPay;)Lcom/bbk/payment/payment/PaymentHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/vcoinpay/VcoinPay$VcoinPayTask;->a:Lcom/bbk/payment/vcoinpay/VcoinPay;

    invoke-static {v2}, Lcom/bbk/payment/vcoinpay/VcoinPay;->c(Lcom/bbk/payment/vcoinpay/VcoinPay;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbk/payment/payment/PaymentHelper;->doVcoinPay(Lcom/bbk/payment/model/OrderInfo;)Lorg/json/JSONObject;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3e} :catch_40

    move-result-object v0

    :goto_3f
    return-object v0

    :catch_40
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3f
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bbk/payment/vcoinpay/VcoinPay$VcoinPayTask;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .registers 9

    const/4 v6, 0x3

    :try_start_1
    iget-object v0, p0, Lcom/bbk/payment/vcoinpay/VcoinPay$VcoinPayTask;->a:Lcom/bbk/payment/vcoinpay/VcoinPay;

    invoke-static {v0}, Lcom/bbk/payment/vcoinpay/VcoinPay;->f(Lcom/bbk/payment/vcoinpay/VcoinPay;)V

    if-eqz p1, :cond_143

    const-string v0, "respCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VcoinPay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPostExecute result="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "200"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    const-string v0, "deductAmount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ticketAmount"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/vcoinpay/VcoinPay$VcoinPayTask;->a:Lcom/bbk/payment/vcoinpay/VcoinPay;

    invoke-static {v2}, Lcom/bbk/payment/vcoinpay/VcoinPay;->c(Lcom/bbk/payment/vcoinpay/VcoinPay;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/bbk/payment/model/OrderInfo;->setDeductAmount(J)V

    iget-object v0, p0, Lcom/bbk/payment/vcoinpay/VcoinPay$VcoinPayTask;->a:Lcom/bbk/payment/vcoinpay/VcoinPay;

    invoke-static {v0}, Lcom/bbk/payment/vcoinpay/VcoinPay;->c(Lcom/bbk/payment/vcoinpay/VcoinPay;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v2

    if-eqz v1, :cond_ad

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_57
    invoke-virtual {v2, v0, v1}, Lcom/bbk/payment/model/OrderInfo;->setTicketAmount(J)V

    iget-object v0, p0, Lcom/bbk/payment/vcoinpay/VcoinPay$VcoinPayTask;->a:Lcom/bbk/payment/vcoinpay/VcoinPay;

    invoke-static {v0}, Lcom/bbk/payment/vcoinpay/VcoinPay;->c(Lcom/bbk/payment/vcoinpay/VcoinPay;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v0

    const-string v1, "blance"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bbk/payment/model/OrderInfo;->setBlance(J)V

    iget-object v0, p0, Lcom/bbk/payment/vcoinpay/VcoinPay$VcoinPayTask;->a:Lcom/bbk/payment/vcoinpay/VcoinPay;

    invoke-static {v0}, Lcom/bbk/payment/vcoinpay/VcoinPay;->g(Lcom/bbk/payment/vcoinpay/VcoinPay;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bbk/payment/vcoinpay/VcoinPay$VcoinPayTask;->a:Lcom/bbk/payment/vcoinpay/VcoinPay;

    invoke-static {v3}, Lcom/bbk/payment/vcoinpay/VcoinPay;->b(Lcom/bbk/payment/vcoinpay/VcoinPay;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/bbk/payment/vcoinpay/VcoinPay$VcoinPayTask;->a:Lcom/bbk/payment/vcoinpay/VcoinPay;

    invoke-static {v4}, Lcom/bbk/payment/vcoinpay/VcoinPay;->b(Lcom/bbk/payment/vcoinpay/VcoinPay;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string v5, "bbk_pay_succ"

    invoke-static {v4, v5}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "#9000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bbk/payment/util/UtilTool;->handlerMessage(Landroid/os/Handler;ILjava/lang/String;)V

    :goto_ac
    return-void

    :cond_ad
    const-wide/16 v0, 0x0

    goto :goto_57

    :cond_b0
    const-string v0, "VcoinPay"

    const-string v1, "onPostExecute else=============="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/bbk/payment/vcoinpay/VcoinPay$VcoinPayTask;->a:Lcom/bbk/payment/vcoinpay/VcoinPay;

    invoke-static {v0}, Lcom/bbk/payment/vcoinpay/VcoinPay;->g(Lcom/bbk/payment/vcoinpay/VcoinPay;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bbk/payment/vcoinpay/VcoinPay$VcoinPayTask;->a:Lcom/bbk/payment/vcoinpay/VcoinPay;

    invoke-static {v3}, Lcom/bbk/payment/vcoinpay/VcoinPay;->b(Lcom/bbk/payment/vcoinpay/VcoinPay;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/bbk/payment/vcoinpay/VcoinPay$VcoinPayTask;->a:Lcom/bbk/payment/vcoinpay/VcoinPay;

    invoke-static {v4}, Lcom/bbk/payment/vcoinpay/VcoinPay;->b(Lcom/bbk/payment/vcoinpay/VcoinPay;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string v5, "bbk_pay_inipay_fail"

    invoke-static {v4, v5}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ",\u539f\u56e0="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "respMsg"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#9999"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bbk/payment/util/UtilTool;->handlerMessage(Landroid/os/Handler;ILjava/lang/String;)V
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_102} :catch_103

    goto :goto_ac

    :catch_103
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/bbk/payment/vcoinpay/VcoinPay$VcoinPayTask;->a:Lcom/bbk/payment/vcoinpay/VcoinPay;

    invoke-static {v0}, Lcom/bbk/payment/vcoinpay/VcoinPay;->g(Lcom/bbk/payment/vcoinpay/VcoinPay;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bbk/payment/vcoinpay/VcoinPay$VcoinPayTask;->a:Lcom/bbk/payment/vcoinpay/VcoinPay;

    invoke-static {v2}, Lcom/bbk/payment/vcoinpay/VcoinPay;->b(Lcom/bbk/payment/vcoinpay/VcoinPay;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/vcoinpay/VcoinPay$VcoinPayTask;->a:Lcom/bbk/payment/vcoinpay/VcoinPay;

    invoke-static {v3}, Lcom/bbk/payment/vcoinpay/VcoinPay;->b(Lcom/bbk/payment/vcoinpay/VcoinPay;)Landroid/app/Activity;

    move-result-object v3

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

    invoke-static {v0, v6, v1}, Lcom/bbk/payment/util/UtilTool;->handlerMessage(Landroid/os/Handler;ILjava/lang/String;)V

    goto/16 :goto_ac

    :cond_143
    :try_start_143
    iget-object v0, p0, Lcom/bbk/payment/vcoinpay/VcoinPay$VcoinPayTask;->a:Lcom/bbk/payment/vcoinpay/VcoinPay;

    invoke-static {v0}, Lcom/bbk/payment/vcoinpay/VcoinPay;->g(Lcom/bbk/payment/vcoinpay/VcoinPay;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bbk/payment/vcoinpay/VcoinPay$VcoinPayTask;->a:Lcom/bbk/payment/vcoinpay/VcoinPay;

    invoke-static {v3}, Lcom/bbk/payment/vcoinpay/VcoinPay;->b(Lcom/bbk/payment/vcoinpay/VcoinPay;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/bbk/payment/vcoinpay/VcoinPay$VcoinPayTask;->a:Lcom/bbk/payment/vcoinpay/VcoinPay;

    invoke-static {v4}, Lcom/bbk/payment/vcoinpay/VcoinPay;->b(Lcom/bbk/payment/vcoinpay/VcoinPay;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string v5, "bbk_pay_inipay_fail"

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
    :try_end_17e
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_17e} :catch_103

    goto/16 :goto_ac
.end method

.method protected onPreExecute()V
    .registers 8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/bbk/payment/vcoinpay/VcoinPay$VcoinPayTask;->a:Lcom/bbk/payment/vcoinpay/VcoinPay;

    invoke-static {v0}, Lcom/bbk/payment/vcoinpay/VcoinPay;->a(Lcom/bbk/payment/vcoinpay/VcoinPay;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/bbk/payment/vcoinpay/VcoinPay$VcoinPayTask;->a:Lcom/bbk/payment/vcoinpay/VcoinPay;

    iget-object v1, p0, Lcom/bbk/payment/vcoinpay/VcoinPay$VcoinPayTask;->a:Lcom/bbk/payment/vcoinpay/VcoinPay;

    invoke-static {v1}, Lcom/bbk/payment/vcoinpay/VcoinPay;->b(Lcom/bbk/payment/vcoinpay/VcoinPay;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/bbk/payment/vcoinpay/VcoinPay$VcoinPayTask;->a:Lcom/bbk/payment/vcoinpay/VcoinPay;

    invoke-static {v3}, Lcom/bbk/payment/vcoinpay/VcoinPay;->b(Lcom/bbk/payment/vcoinpay/VcoinPay;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/bbk/payment/vcoinpay/VcoinPay$VcoinPayTask;->a:Lcom/bbk/payment/vcoinpay/VcoinPay;

    invoke-static {v4}, Lcom/bbk/payment/vcoinpay/VcoinPay;->b(Lcom/bbk/payment/vcoinpay/VcoinPay;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string v5, "bbk_initail_paying"

    invoke-static {v4, v5}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v6, v6}, Lcom/bbk/payment/util/UtilTool;->showProgress(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbk/payment/vcoinpay/VcoinPay;->a(Lcom/bbk/payment/vcoinpay/VcoinPay;Landroid/app/ProgressDialog;)V

    :cond_33
    return-void
.end method
