.class public Lsinglepay/network/NetworkRequestAgent;
.super Ljava/lang/Object;
.source "NetworkRequestAgent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkRequestAgent"

.field public static final URL_INITIAL_PAYMENT:Ljava/lang/String; = "https://pay.vivo.com.cn/vivoPay/getVivoOrderNum"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkForPayAppUpdate(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "nameValuePairs"    # [Lorg/apache/http/NameValuePair;

    .prologue
    .line 14
    const/4 v1, 0x0

    .line 16
    .local v1, "response_msg":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lsinglepay/network/NetworkRequestAgent;->sendRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v1

    .line 20
    :goto_5
    return-object v1

    .line 17
    :catch_6
    move-exception v0

    .line 18
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public initialPayment([Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    .registers 6
    .param p1, "nameValuePairs"    # [Lorg/apache/http/NameValuePair;

    .prologue
    .line 24
    const-string v1, "dfsfsdfsafd"

    .line 26
    .local v1, "response_msg":Ljava/lang/String;
    :try_start_2
    const-string v2, "NetworkRequestAgent"

    const-string v3, "URL_INITIAL_PAYMENT=https://pay.vivo.com.cn/vivoPay/getVivoOrderNum"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const-string v2, "https://pay.vivo.com.cn/vivoPay/getVivoOrderNum"

    invoke-virtual {p0, v2, p1}, Lsinglepay/network/NetworkRequestAgent;->sendRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_10

    move-result-object v1

    .line 31
    :goto_f
    return-object v1

    .line 28
    :catch_10
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public requestByUrlOnly(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "request_url"    # Ljava/lang/String;

    .prologue
    .line 45
    const/4 v2, 0x0

    .line 47
    .local v2, "response_msg":Ljava/lang/String;
    const/4 v1, 0x0

    .line 48
    .local v1, "nameValuePairs":[Lorg/apache/http/NameValuePair;
    :try_start_2
    invoke-virtual {p0, p1, v1}, Lsinglepay/network/NetworkRequestAgent;->sendRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_7

    move-result-object v2

    .line 52
    :goto_6
    return-object v2

    .line 49
    :catch_7
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public retrieveFromServer(Ljava/lang/String;)[B
    .registers 11
    .param p1, "newAppUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 35
    new-instance v0, Lsinglepay/network/HttpTransportAgent;

    .line 36
    const-string v2, "UTF-8"

    move-object v1, p1

    move v5, v4

    move-object v6, v3

    .line 35
    invoke-direct/range {v0 .. v6}, Lsinglepay/network/HttpTransportAgent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLsinglepay/network/ProxyConfig;)V

    .line 37
    .local v0, "httpTransportAgent":Lsinglepay/network/HttpTransportAgent;
    const/4 v8, 0x0

    .line 38
    .local v8, "reqestData":[B
    invoke-virtual {v0, v8}, Lsinglepay/network/HttpTransportAgent;->sendRequest([B)[B

    move-result-object v7

    .line 40
    .local v7, "outData":[B
    return-object v7
.end method

.method public varargs sendRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    .registers 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "nameValuePairs"    # [Lorg/apache/http/NameValuePair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 57
    const/4 v7, 0x0

    .line 58
    .local v7, "response_msg":Ljava/lang/String;
    new-instance v0, Lsinglepay/network/HttpTransportAgent;

    .line 59
    const-string v2, "UTF-8"

    move-object v1, p1

    move v5, v4

    move-object v6, v3

    .line 58
    invoke-direct/range {v0 .. v6}, Lsinglepay/network/HttpTransportAgent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLsinglepay/network/ProxyConfig;)V

    .line 61
    .local v0, "httpTransportAgent":Lsinglepay/network/HttpTransportAgent;
    if-eqz p1, :cond_28

    .line 62
    invoke-virtual {v0, p2}, Lsinglepay/network/HttpTransportAgent;->sendRequest([Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v7

    .line 64
    const-string v1, "PaymentTypeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send request to server done,result="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :goto_27
    return-object v7

    .line 67
    :cond_28
    const-string v1, "PaymentTypeActivity"

    .line 68
    const-string v2, "request url is null in send request method"

    .line 67
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method
