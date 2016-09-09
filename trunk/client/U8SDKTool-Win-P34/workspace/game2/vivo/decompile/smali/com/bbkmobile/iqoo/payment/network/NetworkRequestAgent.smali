.class public Lcom/bbkmobile/iqoo/payment/network/NetworkRequestAgent;
.super Ljava/lang/Object;


# static fields
.field public static final ACCOUNT_COMMIT_URL:Ljava/lang/String; = "http://comm.inner.bbk.com/usrsys/reportUsrsys"

.field public static final CONNECTION_TYPE_BLUETOOTH:I = 0x7

.field public static final CONNECTION_TYPE_MOBILE:I = 0x1

.field public static final CONNECTION_TYPE_NULL:I = 0x0

.field public static final CONNECTION_TYPE_WIFI:I = 0x2

.field public static final URL_CANCEL_PAYMENT:Ljava/lang/String; = "https://pay.vivo.com.cn/vivoPay/voidOrder"

.field public static final URL_DETECTEXCHANGE:Ljava/lang/String; = "http://192.168.4.45:8051/BBKPaymentServer/vcoin/findExchange.action"

.field public static final URL_DETECT_CARD_PAYMENT_RESULT:Ljava/lang/String; = "https://pay.vivo.com.cn/vivoPay/card/queryStatus"

.field public static final URL_DETECT_MINPAYAMOUNT:Ljava/lang/String; = "https://pay.vivo.com.cn/vivoPay/queryMinFee"

.field public static final URL_INITIAL_CARD_PAYMENT:Ljava/lang/String; = "https://pay.vivo.com.cn/vivoPay/card/submitOrder"

.field public static final URL_INITIAL_PAYMENT:Ljava/lang/String; = "https://pay.vivo.com.cn/vivoPay/submitOrder"

.field public static final URL_INITIAL_PAYMENT_TENPAY:Ljava/lang/String; = "https://pay.vivo.com.cn/vivoPay/tenpay/submitOrder"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/network/NetworkRequestAgent;->a:Landroid/content/Context;

    return-void
.end method

.method public static getConnectionType(Landroid/content/Context;)I
    .registers 7

    const/4 v3, 0x7

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_13

    move v0, v1

    :goto_12
    return v0

    :cond_13
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v5, :cond_1d

    move v0, v1

    goto :goto_12

    :cond_1d
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v2, :cond_25

    const/4 v0, 0x2

    goto :goto_12

    :cond_25
    if-nez v0, :cond_29

    move v0, v2

    goto :goto_12

    :cond_29
    if-ne v0, v3, :cond_2d

    move v0, v3

    goto :goto_12

    :cond_2d
    move v0, v1

    goto :goto_12
.end method


# virtual methods
.method public checkForPayAppUpdate(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/bbkmobile/iqoo/payment/network/NetworkRequestAgent;->sendRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v0

    :goto_5
    return-object v0

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public detectExchange()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "http://192.168.4.45:8051/BBKPaymentServer/vcoin/findExchange.action"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/bbkmobile/iqoo/payment/network/NetworkRequestAgent;->sendRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method public requestByUrlOnly(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v1}, Lcom/bbkmobile/iqoo/payment/network/NetworkRequestAgent;->sendRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public retrieveFromServer(Ljava/lang/String;)[B
    .registers 9

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;

    const-string v2, "UTF-8"

    move-object v1, p1

    move v5, v4

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/bbkmobile/iqoo/payment/network/ProxyConfig;)V

    invoke-virtual {v0, v3}, Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;->sendRequest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public varargs sendRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    .registers 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/network/NetworkRequestAgent;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->detectNetworkProxy(Landroid/content/Context;)Lcom/bbkmobile/iqoo/payment/network/ProxyConfig;

    move-result-object v6

    new-instance v0, Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;

    const-string v2, "UTF-8"

    move-object v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/bbkmobile/iqoo/payment/network/ProxyConfig;)V

    if-eqz p1, :cond_2c

    invoke-virtual {v0, p2}, Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;->sendRequest([Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "NetworkRequestAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "send request to server done,result="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b
    return-object v3

    :cond_2c
    const-string v0, "NetworkRequestAgent"

    const-string v1, "request url is null in send request method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method
