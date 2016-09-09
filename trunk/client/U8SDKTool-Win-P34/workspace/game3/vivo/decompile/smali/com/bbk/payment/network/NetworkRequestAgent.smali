.class public Lcom/bbk/payment/network/NetworkRequestAgent;
.super Ljava/lang/Object;


# static fields
.field public static final URL_ADT_RECHARGE:Ljava/lang/String; = "https://pay.vivo.com.cn/vcoin/recharge/channelparams"

.field public static final URL_CANCEL_PAYMENT:Ljava/lang/String; = "https://pay.vivo.com.cn/vivopay/vivoPay/voidOrder"

.field public static final URL_COLLECT_MSG:Ljava/lang/String; = "http://comm.inner.bbk.com/vcoineventpoint/app/collect"

.field public static final URL_CZK_RECHARGE:Ljava/lang/String; = "https://pay.vivo.com.cn/vcoin/recharge/submitczk"

.field public static final URL_DEAL_RECORD_URL:Ljava/lang/String; = "https://pay.vivo.com.cn/vcoin/transaction/query"

.field public static final URL_DETECTEXCHANGE:Ljava/lang/String; = "https://pay.vivo.com.cn/BBKPaymentServer/vcoin/findExchange.action"

.field public static final URL_DETECT_CARD_PAYMENT_RESULT:Ljava/lang/String; = "https://pay.vivo.com.cn/vcoin/queryPayResult"

.field public static final URL_DETECT_MINPAYAMOUNT:Ljava/lang/String; = "https://pay.vivo.com.cn/vivopay/vivoPay/queryMinFee"

.field public static final URL_GAME_NOTICE_COMMIT_URL:Ljava/lang/String; = "https://pay.vivo.com.cn/vcoin/game/follow"

.field public static final URL_GAME_NOTICE_QUERY_URL:Ljava/lang/String; = "https://pay.vivo.com.cn//vcoin/game/follow/query"

.field public static final URL_GET_PAY_TIPS_URL:Ljava/lang/String; = "https://pay.vivo.com.cn/vcoin/paytips"

.field public static final URL_INITIAL_ACTION:Ljava/lang/String; = "https://pay.vivo.com.cn/vcoin/queryActivity"

.field public static final URL_INITIAL_CARD_PAYMENT:Ljava/lang/String; = "https://pay.vivo.com.cn/vcoin/submitCZK"

.field public static final URL_INITIAL_DETAIL:Ljava/lang/String; = "https://pay.vivo.com.cn/vcoin/queryActivityDetail"

.field public static final URL_INITIAL_GIFT:Ljava/lang/String; = "https://pay.vivo.com.cn/vcoin/queryActivityGift"

.field public static final URL_INITIAL_PAYMENT:Ljava/lang/String; = "https://pay.vivo.com.cn/vcoin/getChannelParams"

.field public static final URL_INITIAL_PAYMENT_INIT:Ljava/lang/String; = "https://pay.vivo.com.cn/vcoin/init"

.field public static final URL_INITIAL_PAYMENT_TENPAY:Ljava/lang/String; = "https://pay.vivo.com.cn/vivopay/vivoPay/tenpay/submitOrder"

.field public static final URL_INITIAL_PAY_CHANNELS:Ljava/lang/String; = "https://pay.vivo.com.cn/vcoin/paychannels"

.field public static final URL_INITIAL_TICKET:Ljava/lang/String; = "https://pay.vivo.com.cn/vcoin/queryUserTickets"

.field public static final URL_RECHARTE_RESULT:Ljava/lang/String; = "https://pay.vivo.com.cn/vcoin/recharge/queryresult"

.field public static final URL_VCOIN_PAYMENT:Ljava/lang/String; = "https://pay.vivo.com.cn/vcoin/epay"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bbk/payment/network/NetworkRequestAgent;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public checkForPayAppUpdate(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/bbk/payment/network/NetworkRequestAgent;->sendRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;
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
    const-string v1, "https://pay.vivo.com.cn/BBKPaymentServer/vcoin/findExchange.action"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/bbk/payment/network/NetworkRequestAgent;->sendRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;
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
    invoke-virtual {p0, p1, v1}, Lcom/bbk/payment/network/NetworkRequestAgent;->sendRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;
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

    new-instance v0, Lcom/bbk/payment/network/HttpTransportAgent;

    const-string v2, "UTF-8"

    move-object v1, p1

    move v5, v4

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/bbk/payment/network/HttpTransportAgent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/bbk/payment/network/ProxyConfig;)V

    invoke-virtual {v0, v3}, Lcom/bbk/payment/network/HttpTransportAgent;->sendRequest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public sendCollectMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/bbk/payment/network/NetworkRequestAgent;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bbk/payment/util/UtilTool;->detectNetworkProxy(Landroid/content/Context;)Lcom/bbk/payment/network/ProxyConfig;

    move-result-object v6

    new-instance v0, Lcom/bbk/payment/network/HttpTransportAgent;

    const-string v2, "UTF-8"

    move-object v1, p2

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/bbk/payment/network/HttpTransportAgent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/bbk/payment/network/ProxyConfig;)V

    if-eqz p2, :cond_30

    invoke-virtual {v0, p3}, Lcom/bbk/payment/network/HttpTransportAgent;->sendRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-boolean v0, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v0, :cond_2f

    const-string v0, "NetworkRequestAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "send request to server done,result="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    :goto_2f
    return-object v3

    :cond_30
    const-string v0, "NetworkRequestAgent"

    const-string v1, "request url is null in send request method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method

.method public varargs sendRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    .registers 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/bbk/payment/network/NetworkRequestAgent;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bbk/payment/util/UtilTool;->detectNetworkProxy(Landroid/content/Context;)Lcom/bbk/payment/network/ProxyConfig;

    move-result-object v6

    new-instance v0, Lcom/bbk/payment/network/HttpTransportAgent;

    const-string v2, "UTF-8"

    move-object v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/bbk/payment/network/HttpTransportAgent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/bbk/payment/network/ProxyConfig;)V

    if-eqz p1, :cond_30

    invoke-virtual {v0, p2}, Lcom/bbk/payment/network/HttpTransportAgent;->sendRequest([Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v3

    sget-boolean v0, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v0, :cond_2f

    const-string v0, "NetworkRequestAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "send request to server done,result="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    :goto_2f
    return-object v3

    :cond_30
    const-string v0, "NetworkRequestAgent"

    const-string v1, "request url is null in send request method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method
