.class final Lcom/bbk/payment/s;
.super Landroid/os/AsyncTask;


# instance fields
.field private synthetic a:Lcom/bbk/payment/DetectPayResultActivity;


# direct methods
.method private constructor <init>(Lcom/bbk/payment/DetectPayResultActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/s;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bbk/payment/DetectPayResultActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbk/payment/s;-><init>(Lcom/bbk/payment/DetectPayResultActivity;)V

    return-void
.end method

.method private varargs a()Ljava/lang/String;
    .registers 5

    const-string v0, "DetectPayResultActivity"

    const-string v1, "DetectCardPayResultTask, doInBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_8
    sget-boolean v1, Lcom/bbk/payment/model/OrderInfo;->mIsRecharge:Z

    if-nez v1, :cond_39

    iget-object v1, p0, Lcom/bbk/payment/s;->a:Lcom/bbk/payment/DetectPayResultActivity;

    iget-object v1, v1, Lcom/bbk/payment/DetectPayResultActivity;->paymentHelper:Lcom/bbk/payment/payment/PaymentHelper;

    iget-object v2, p0, Lcom/bbk/payment/s;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v2}, Lcom/bbk/payment/DetectPayResultActivity;->f(Lcom/bbk/payment/DetectPayResultActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/s;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v3}, Lcom/bbk/payment/DetectPayResultActivity;->f(Lcom/bbk/payment/DetectPayResultActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bbk/payment/model/OrderInfo;->getPaymentType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bbk/payment/payment/PaymentHelper;->detectPayResult(Lcom/bbk/payment/model/OrderInfo;I)Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_23} :catch_52

    move-result-object v0

    :goto_24
    const-string v1, "DetectPayResultActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DetectCardPayResultTask, result="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_39
    :try_start_39
    iget-object v1, p0, Lcom/bbk/payment/s;->a:Lcom/bbk/payment/DetectPayResultActivity;

    iget-object v1, v1, Lcom/bbk/payment/DetectPayResultActivity;->paymentHelper:Lcom/bbk/payment/payment/PaymentHelper;

    iget-object v2, p0, Lcom/bbk/payment/s;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v2}, Lcom/bbk/payment/DetectPayResultActivity;->f(Lcom/bbk/payment/DetectPayResultActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/s;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v3}, Lcom/bbk/payment/DetectPayResultActivity;->f(Lcom/bbk/payment/DetectPayResultActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bbk/payment/model/OrderInfo;->getPaymentType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bbk/payment/payment/PaymentHelper;->detectRechargeResult(Lcom/bbk/payment/model/OrderInfo;I)Ljava/lang/String;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_50} :catch_52

    move-result-object v0

    goto :goto_24

    :catch_52
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0}, Lcom/bbk/payment/s;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 8

    const/4 v3, 0x4

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/bbk/payment/s;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v0}, Lcom/bbk/payment/DetectPayResultActivity;->d(Lcom/bbk/payment/DetectPayResultActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/bbk/payment/DetectPayResultActivity;->b(Lcom/bbk/payment/DetectPayResultActivity;I)V

    :try_start_e
    invoke-static {p1}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/bbk/payment/s;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v0}, Lcom/bbk/payment/DetectPayResultActivity;->d(Lcom/bbk/payment/DetectPayResultActivity;)I

    move-result v0

    if-le v0, v3, :cond_23

    iget-object v0, p0, Lcom/bbk/payment/s;->a:Lcom/bbk/payment/DetectPayResultActivity;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bbk/payment/DetectPayResultActivity;->a(Lcom/bbk/payment/DetectPayResultActivity;ILjava/lang/String;)V

    :cond_23
    :goto_23
    return-void

    :cond_24
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "respCode"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "200"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cd

    sget-boolean v0, Lcom/bbk/payment/model/OrderInfo;->mIsRecharge:Z

    if-nez v0, :cond_a6

    const-string v0, "deductAmount"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ticketAmount"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/bbk/payment/s;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v3}, Lcom/bbk/payment/DetectPayResultActivity;->f(Lcom/bbk/payment/DetectPayResultActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/bbk/payment/model/OrderInfo;->setDeductAmount(J)V

    iget-object v0, p0, Lcom/bbk/payment/s;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v0}, Lcom/bbk/payment/DetectPayResultActivity;->f(Lcom/bbk/payment/DetectPayResultActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v3

    if-eqz v1, :cond_a3

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_68
    invoke-virtual {v3, v0, v1}, Lcom/bbk/payment/model/OrderInfo;->setTicketAmount(J)V

    const-string v0, "rechargeOrderAmount"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/s;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v1}, Lcom/bbk/payment/DetectPayResultActivity;->f(Lcom/bbk/payment/DetectPayResultActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bbk/payment/model/OrderInfo;->setRechargeOrderAmount(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/s;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v0}, Lcom/bbk/payment/DetectPayResultActivity;->f(Lcom/bbk/payment/DetectPayResultActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v0

    const-string v1, "blance"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bbk/payment/model/OrderInfo;->setBlance(J)V

    :goto_91
    iget-object v0, p0, Lcom/bbk/payment/s;->a:Lcom/bbk/payment/DetectPayResultActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bbk/payment/DetectPayResultActivity;->a(Lcom/bbk/payment/DetectPayResultActivity;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/s;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v0}, Lcom/bbk/payment/DetectPayResultActivity;->g(Lcom/bbk/payment/DetectPayResultActivity;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_9d} :catch_9e

    goto :goto_23

    :catch_9e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23

    :cond_a3
    const-wide/16 v0, 0x0

    goto :goto_68

    :cond_a6
    :try_start_a6
    const-string v0, "rechargeOrderAmount"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/s;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v1}, Lcom/bbk/payment/DetectPayResultActivity;->f(Lcom/bbk/payment/DetectPayResultActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bbk/payment/model/OrderInfo;->setRechargeOrderAmount(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/s;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v0}, Lcom/bbk/payment/DetectPayResultActivity;->f(Lcom/bbk/payment/DetectPayResultActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v0

    const-string v1, "blance"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bbk/payment/model/OrderInfo;->setBlance(J)V

    goto :goto_91

    :cond_cd
    const-string v1, "201"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e6

    iget-object v0, p0, Lcom/bbk/payment/s;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v0}, Lcom/bbk/payment/DetectPayResultActivity;->d(Lcom/bbk/payment/DetectPayResultActivity;)I

    move-result v0

    if-le v0, v3, :cond_23

    iget-object v0, p0, Lcom/bbk/payment/s;->a:Lcom/bbk/payment/DetectPayResultActivity;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bbk/payment/DetectPayResultActivity;->a(Lcom/bbk/payment/DetectPayResultActivity;ILjava/lang/String;)V

    goto/16 :goto_23

    :cond_e6
    const-string v1, "202"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fc

    const-string v0, "respMsg"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/s;->a:Lcom/bbk/payment/DetectPayResultActivity;

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Lcom/bbk/payment/DetectPayResultActivity;->a(Lcom/bbk/payment/DetectPayResultActivity;ILjava/lang/String;)V

    goto/16 :goto_23

    :cond_fc
    const-string v1, "203"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b5

    const-string v0, "PayContinueActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "blance="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "blance"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "rechargeOrderAmount"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "needAmount"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/bbk/payment/s;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v3}, Lcom/bbk/payment/DetectPayResultActivity;->f(Lcom/bbk/payment/DetectPayResultActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/bbk/payment/model/OrderInfo;->setNeedAmount(J)V

    iget-object v1, p0, Lcom/bbk/payment/s;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v1}, Lcom/bbk/payment/DetectPayResultActivity;->f(Lcom/bbk/payment/DetectPayResultActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bbk/payment/model/OrderInfo;->setRechargeOrderAmount(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/s;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v0}, Lcom/bbk/payment/DetectPayResultActivity;->f(Lcom/bbk/payment/DetectPayResultActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v0

    const-string v1, "blance"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bbk/payment/model/OrderInfo;->setBlance(J)V

    iget-object v0, p0, Lcom/bbk/payment/s;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v0}, Lcom/bbk/payment/DetectPayResultActivity;->f(Lcom/bbk/payment/DetectPayResultActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/s;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v1}, Lcom/bbk/payment/DetectPayResultActivity;->f(Lcom/bbk/payment/DetectPayResultActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getPrice()J

    move-result-wide v2

    iget-object v1, p0, Lcom/bbk/payment/s;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v1}, Lcom/bbk/payment/DetectPayResultActivity;->f(Lcom/bbk/payment/DetectPayResultActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getBlance()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/bbk/payment/model/OrderInfo;->setRemainderBlance(J)V

    iget-object v0, p0, Lcom/bbk/payment/s;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v0}, Lcom/bbk/payment/DetectPayResultActivity;->f(Lcom/bbk/payment/DetectPayResultActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/s;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v1}, Lcom/bbk/payment/DetectPayResultActivity;->f(Lcom/bbk/payment/DetectPayResultActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getPrice()J

    move-result-wide v2

    iget-object v1, p0, Lcom/bbk/payment/s;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v1}, Lcom/bbk/payment/DetectPayResultActivity;->f(Lcom/bbk/payment/DetectPayResultActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getBlance()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/bbk/payment/model/OrderInfo;->setRemainderBlanceY(J)V

    iget-object v0, p0, Lcom/bbk/payment/s;->a:Lcom/bbk/payment/DetectPayResultActivity;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bbk/payment/DetectPayResultActivity;->a(Lcom/bbk/payment/DetectPayResultActivity;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/s;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v0}, Lcom/bbk/payment/DetectPayResultActivity;->g(Lcom/bbk/payment/DetectPayResultActivity;)V

    goto/16 :goto_23

    :cond_1b5
    iget-object v0, p0, Lcom/bbk/payment/s;->a:Lcom/bbk/payment/DetectPayResultActivity;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bbk/payment/DetectPayResultActivity;->a(Lcom/bbk/payment/DetectPayResultActivity;ILjava/lang/String;)V
    :try_end_1bc
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_1bc} :catch_9e

    goto/16 :goto_23
.end method

.method protected final onPreExecute()V
    .registers 1

    return-void
.end method
