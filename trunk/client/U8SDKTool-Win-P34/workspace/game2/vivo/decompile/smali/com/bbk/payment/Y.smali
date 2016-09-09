.class final Lcom/bbk/payment/Y;
.super Landroid/os/AsyncTask;


# instance fields
.field private synthetic a:Lcom/bbk/payment/PaymentActivity;


# direct methods
.method private constructor <init>(Lcom/bbk/payment/PaymentActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/Y;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bbk/payment/PaymentActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbk/payment/Y;-><init>(Lcom/bbk/payment/PaymentActivity;)V

    return-void
.end method

.method private varargs a([Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    .registers 6

    new-instance v1, Lcom/bbk/payment/network/NetworkRequestAgent;

    iget-object v0, p0, Lcom/bbk/payment/Y;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-direct {v1, v0}, Lcom/bbk/payment/network/NetworkRequestAgent;-><init>(Landroid/content/Context;)V

    const-string v2, "https://pay.vivo.com.cn/vcoin/paytips"

    const/4 v0, 0x0

    :try_start_a
    invoke-virtual {v1, v2, p1}, Lcom/bbk/payment/network/NetworkRequestAgent;->sendRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_27

    move-result-object v0

    :goto_e
    sget-boolean v1, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v1, :cond_26

    const-string v1, "PaymentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doInBackground, resultInfo="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    return-object v0

    :catch_27
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Lorg/apache/http/NameValuePair;

    invoke-direct {p0, p1}, Lcom/bbk/payment/Y;->a([Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 7

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_73

    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "respCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "respMsg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "200"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    const-string v1, "tips"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_47

    iget-object v1, p0, Lcom/bbk/payment/Y;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v1}, Lcom/bbk/payment/PaymentActivity;->u(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbk/payment/Y;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->v(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/Y;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->i(Lcom/bbk/payment/PaymentActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setPaytipsLastCloseTime(J)V

    :cond_47
    :goto_47
    return-void

    :cond_48
    const-string v0, "PaymentActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error, respCode="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", respMsg="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_66} :catch_67

    goto :goto_47

    :catch_67
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "PaymentActivity"

    const-string v1, "error, get tips error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    :cond_73
    :try_start_73
    const-string v0, "PaymentActivity"

    const-string v1, "error, result is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_7a} :catch_67

    goto :goto_47
.end method

.method protected final onPreExecute()V
    .registers 1

    return-void
.end method
