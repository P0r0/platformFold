.class public Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;
.super Landroid/os/AsyncTask;


# instance fields
.field private synthetic a:Lcom/bbk/payment/payment/PaymentType;


# direct methods
.method protected constructor <init>(Lcom/bbk/payment/payment/PaymentType;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;->a:Lcom/bbk/payment/payment/PaymentType;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/net/URL;

    invoke-virtual {p0, p1}, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;->doInBackground([Ljava/net/URL;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/net/URL;)Lorg/json/JSONObject;
    .registers 6

    const/4 v0, 0x0

    sget-boolean v1, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v1, :cond_2b

    const-string v1, "PaymentType"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "InitialAlipayTask orderInfo="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v3, v3, Lcom/bbk/payment/payment/PaymentType;->orderInfo:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",paymentType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget v3, v3, Lcom/bbk/payment/payment/PaymentType;->paymentType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    :try_start_2b
    sget-boolean v1, Lcom/bbk/payment/model/OrderInfo;->mIsRecharge:Z

    if-nez v1, :cond_40

    iget-object v1, p0, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v1, v1, Lcom/bbk/payment/payment/PaymentType;->paymentHelper:Lcom/bbk/payment/payment/PaymentHelper;

    iget-object v2, p0, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v2, v2, Lcom/bbk/payment/payment/PaymentType;->orderInfo:Lcom/bbk/payment/model/OrderInfo;

    iget-object v3, p0, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget v3, v3, Lcom/bbk/payment/payment/PaymentType;->paymentType:I

    invoke-virtual {v1, v2, v3}, Lcom/bbk/payment/payment/PaymentHelper;->initialPay(Lcom/bbk/payment/model/OrderInfo;I)Lorg/json/JSONObject;

    move-result-object v0

    :goto_3f
    return-object v0

    :cond_40
    iget-object v1, p0, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v1, v1, Lcom/bbk/payment/payment/PaymentType;->paymentHelper:Lcom/bbk/payment/payment/PaymentHelper;

    iget-object v2, p0, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v2, v2, Lcom/bbk/payment/payment/PaymentType;->orderInfo:Lcom/bbk/payment/model/OrderInfo;

    iget-object v3, p0, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget v3, v3, Lcom/bbk/payment/payment/PaymentType;->paymentType:I

    invoke-virtual {v1, v2, v3}, Lcom/bbk/payment/payment/PaymentHelper;->initialRecharge(Lcom/bbk/payment/model/OrderInfo;I)Lorg/json/JSONObject;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_4f} :catch_51

    move-result-object v0

    goto :goto_3f

    :catch_51
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3f
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .registers 9

    const/4 v6, 0x2

    :try_start_1
    iget-object v0, p0, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;->a:Lcom/bbk/payment/payment/PaymentType;

    invoke-virtual {v0}, Lcom/bbk/payment/payment/PaymentType;->closeDialog()V

    if-eqz p1, :cond_146

    const-string v0, "respCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v1, :cond_26

    const-string v1, "PaymentType"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPostExecute result="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    const-string v1, "200"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e4

    const-string v0, "adtInitParam"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    const-string v0, "adtInitParam"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3c
    const-string v1, "PaymentType"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPostExecute order_sign="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v1, v1, Lcom/bbk/payment/payment/PaymentType;->orderInfo:Lcom/bbk/payment/model/OrderInfo;

    const-string v2, "rechargeOrderNumber"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbk/payment/model/OrderInfo;->setRechargeOrderNumber(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v1, v1, Lcom/bbk/payment/payment/PaymentType;->orderInfo:Lcom/bbk/payment/model/OrderInfo;

    const-string v2, "rechargeOrderAmount"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbk/payment/model/OrderInfo;->setRechargeOrderAmount(Ljava/lang/String;)V

    if-eqz v0, :cond_75

    iget-object v1, p0, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;->a:Lcom/bbk/payment/payment/PaymentType;

    invoke-virtual {v1, v0}, Lcom/bbk/payment/payment/PaymentType;->doPayment(Ljava/lang/String;)Z

    :goto_71
    return-void

    :cond_72
    const-string v0, "0"

    goto :goto_3c

    :cond_75
    iget-object v0, p0, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v0, v0, Lcom/bbk/payment/payment/PaymentType;->callback:Landroid/os/Handler;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v3, v3, Lcom/bbk/payment/payment/PaymentType;->context:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v4, v4, Lcom/bbk/payment/payment/PaymentType;->context:Landroid/app/Activity;

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
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_aa} :catch_ab

    goto :goto_71

    :catch_ab
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v0, v0, Lcom/bbk/payment/payment/PaymentType;->callback:Landroid/os/Handler;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v2, v2, Lcom/bbk/payment/payment/PaymentType;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v3, v3, Lcom/bbk/payment/payment/PaymentType;->context:Landroid/app/Activity;

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

    goto :goto_71

    :cond_e4
    :try_start_e4
    const-string v1, "201"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10f

    iget-object v0, p0, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v0, v0, Lcom/bbk/payment/payment/PaymentType;->callback:Landroid/os/Handler;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "respMsg"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

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

    goto/16 :goto_71

    :cond_10f
    iget-object v0, p0, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v0, v0, Lcom/bbk/payment/payment/PaymentType;->callback:Landroid/os/Handler;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v3, v3, Lcom/bbk/payment/payment/PaymentType;->context:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v4, v4, Lcom/bbk/payment/payment/PaymentType;->context:Landroid/app/Activity;

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

    const-string v3, "#4012"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bbk/payment/util/UtilTool;->handlerMessage(Landroid/os/Handler;ILjava/lang/String;)V

    goto/16 :goto_71

    :cond_146
    iget-object v0, p0, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v0, v0, Lcom/bbk/payment/payment/PaymentType;->callback:Landroid/os/Handler;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v3, v3, Lcom/bbk/payment/payment/PaymentType;->context:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v4, v4, Lcom/bbk/payment/payment/PaymentType;->context:Landroid/app/Activity;

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
    :try_end_17b
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_17b} :catch_ab

    goto/16 :goto_71
.end method

.method protected onPreExecute()V
    .registers 8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v0, v0, Lcom/bbk/payment/payment/PaymentType;->rogressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v1, p0, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v1, v1, Lcom/bbk/payment/payment/PaymentType;->context:Landroid/app/Activity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v3, v3, Lcom/bbk/payment/payment/PaymentType;->context:Landroid/app/Activity;

    iget-object v4, p0, Lcom/bbk/payment/payment/PaymentType$InitialAlipayTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v4, v4, Lcom/bbk/payment/payment/PaymentType;->context:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string v5, "bbk_initail_paying"

    invoke-static {v4, v5}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v6, v6}, Lcom/bbk/payment/util/UtilTool;->showProgress(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/bbk/payment/payment/PaymentType;->rogressDialog:Landroid/app/ProgressDialog;

    :cond_2a
    return-void
.end method
