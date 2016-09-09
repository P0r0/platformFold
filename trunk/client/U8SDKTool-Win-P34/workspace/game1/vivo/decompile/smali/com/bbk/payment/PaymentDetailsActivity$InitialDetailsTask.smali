.class public Lcom/bbk/payment/PaymentDetailsActivity$InitialDetailsTask;
.super Landroid/os/AsyncTask;


# instance fields
.field private synthetic a:Lcom/bbk/payment/PaymentDetailsActivity;


# direct methods
.method protected constructor <init>(Lcom/bbk/payment/PaymentDetailsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/PaymentDetailsActivity$InitialDetailsTask;->a:Lcom/bbk/payment/PaymentDetailsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Lorg/apache/http/NameValuePair;

    invoke-virtual {p0, p1}, Lcom/bbk/payment/PaymentDetailsActivity$InitialDetailsTask;->doInBackground([Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    new-instance v0, Lcom/bbk/payment/network/NetworkRequestAgent;

    iget-object v2, p0, Lcom/bbk/payment/PaymentDetailsActivity$InitialDetailsTask;->a:Lcom/bbk/payment/PaymentDetailsActivity;

    invoke-direct {v0, v2}, Lcom/bbk/payment/network/NetworkRequestAgent;-><init>(Landroid/content/Context;)V

    const-string v2, "https://pay.vivo.com.cn/vcoin/queryActivityDetail"

    :try_start_a
    invoke-virtual {v0, v2, p1}, Lcom/bbk/payment/network/NetworkRequestAgent;->sendRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_23

    move-result-object v0

    :try_start_e
    const-string v1, "PaymentDetailsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "----------1-----doInBackground=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_22} :catch_3f

    :goto_22
    return-object v0

    :catch_23
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_27
    const-string v2, "PaymentDetailsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "----------2-----doInBackground=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22

    :catch_3f
    move-exception v1

    goto :goto_27
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bbk/payment/PaymentDetailsActivity$InitialDetailsTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 8

    if-eqz p1, :cond_62

    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "respCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PaymentDetailsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onPostExecute result="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "200"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    const-string v1, "isUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "detail"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/bbk/payment/PaymentDetailsActivity$InitialDetailsTask;->a:Lcom/bbk/payment/PaymentDetailsActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentDetailsActivity;->a(Lcom/bbk/payment/PaymentDetailsActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/PaymentDetailsActivity$InitialDetailsTask;->a:Lcom/bbk/payment/PaymentDetailsActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentDetailsActivity;->a(Lcom/bbk/payment/PaymentDetailsActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5b
    :goto_5b
    const-string v0, "PaymentDetailsActivity"

    const-string v1, "mProtocalContentView.loadDataWithBaseURL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    :goto_62
    return-void

    :cond_63
    const-string v0, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/bbk/payment/PaymentDetailsActivity$InitialDetailsTask;->a:Lcom/bbk/payment/PaymentDetailsActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentDetailsActivity;->a(Lcom/bbk/payment/PaymentDetailsActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/bbk/payment/PaymentDetailsActivity$InitialDetailsTask;->a:Lcom/bbk/payment/PaymentDetailsActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentDetailsActivity;->a(Lcom/bbk/payment/PaymentDetailsActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_82} :catch_83

    goto :goto_5b

    :catch_83
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_62

    :cond_88
    :try_start_88
    iget-object v0, p0, Lcom/bbk/payment/PaymentDetailsActivity$InitialDetailsTask;->a:Lcom/bbk/payment/PaymentDetailsActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentDetailsActivity;->b(Lcom/bbk/payment/PaymentDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_93} :catch_83

    goto :goto_62
.end method

.method protected onPreExecute()V
    .registers 1

    return-void
.end method
