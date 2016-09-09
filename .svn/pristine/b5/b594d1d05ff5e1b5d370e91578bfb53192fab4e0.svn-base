.class public Lcom/nearme/platform/opensdk/pay/download/util/http/MyHttpClient;
.super Ljava/lang/Object;
.source "MyHttpClient.java"


# static fields
.field private static final CHINAMOBILEWAP:Ljava/lang/String; = "cmwap"

.field private static final CHINAUNICOM3GNET:Ljava/lang/String; = "3gwap"

.field private static final CHINAUNICOMWAP:Ljava/lang/String; = "uniwap"

.field protected static final CONNECTION_TIMEOUT_MS:I = 0x7530

.field protected static final RETRIED_TIME:I = 0x3

.field protected static final RETRIEVE_LIMIT:I = 0x14

.field protected static final SOCKET_TIMEOUT_MS:I = 0x7530


# instance fields
.field protected ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/util/http/MyHttpClient;->ctx:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public static getURLConnectioin(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x7530

    .line 69
    new-instance v1, Ljava/net/URL;

    invoke-static {p1}, Lcom/nearme/platform/opensdk/pay/download/util/Util;->Utf8URLencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x0

    .line 72
    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/http/MyHttpClient;->isMobileActive(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 73
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v3

    .line 75
    if-eqz v2, :cond_28

    .line 76
    new-instance v0, Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v4, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 79
    :cond_28
    if-eqz v0, :cond_3e

    .line 80
    invoke-virtual {v1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 84
    :goto_30
    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 85
    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 86
    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv:1.9.2) Gecko/20100115 Firefox/3.6"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-object v0

    .line 82
    :cond_3e
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_30
.end method

.method public static getUrlConnecttion(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v2, Ljava/net/URL;

    invoke-static {p1}, Lcom/nearme/platform/opensdk/pay/download/util/Util;->Utf8URLencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x0

    .line 96
    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/http/MyHttpClient;->isChinaMobileWap(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://10.0.0.172"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v3

    .line 100
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 103
    const/4 v4, -0x1

    if-eq v3, v4, :cond_50

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    :cond_50
    const-string v3, "X-Online-Host"

    invoke-virtual {v0, v3, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_55
    :goto_55
    if-nez v0, :cond_5d

    .line 120
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 121
    :cond_5d
    return-object v0

    .line 108
    :cond_5e
    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/http/MyHttpClient;->isMobileNotChinaUniocomWap(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 109
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v3

    .line 111
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_55

    .line 112
    new-instance v0, Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v5, Ljava/net/InetSocketAddress;

    .line 113
    invoke-direct {v5, v1, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 112
    invoke-direct {v0, v4, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 114
    invoke-virtual {v2, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_55
.end method

.method public static isChinaMobileWap(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    if-eqz p0, :cond_2e

    .line 146
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 145
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 147
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_2e

    .line 149
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v1, v3, :cond_2e

    .line 150
    const-string v3, "cmwap"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    move v0, v1

    .line 158
    :goto_2b
    return v0

    :cond_2c
    move v0, v2

    .line 153
    goto :goto_2b

    :cond_2e
    move v0, v2

    .line 158
    goto :goto_2b
.end method

.method public static isMobileActive(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 57
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 58
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_16

    .line 60
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_16

    .line 61
    const/4 v0, 0x1

    .line 63
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static isMobileNotChinaUniocomWap(Landroid/content/Context;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 125
    if-eqz p0, :cond_3a

    .line 127
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 126
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 128
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_3a

    .line 130
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v1, v3, :cond_3a

    .line 131
    const-string v3, "uniwap"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 132
    const-string v3, "3gwap"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_36
    move v0, v2

    .line 140
    :goto_37
    return v0

    :cond_38
    move v0, v1

    .line 135
    goto :goto_37

    :cond_3a
    move v0, v2

    .line 140
    goto :goto_37
.end method

.method public static openConnection(Ljava/lang/String;[BLjava/util/Map;ILjava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 162
    .line 164
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_54

    .line 166
    const/4 v1, 0x1

    :try_start_d
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 167
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 168
    invoke-virtual {v0, p3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 169
    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 170
    invoke-virtual {v0, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 171
    const-string v1, "POST"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 172
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 174
    if-eqz p2, :cond_3b

    .line 175
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 187
    :cond_3b
    :goto_3b
    return-object v0

    .line 175
    :cond_3c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 176
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_4b} :catch_4c

    goto :goto_35

    .line 181
    :catch_4c
    move-exception v1

    :goto_4d
    if-eqz v0, :cond_3b

    .line 182
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v3

    .line 183
    goto :goto_3b

    .line 181
    :catch_54
    move-exception v0

    move-object v0, v3

    goto :goto_4d
.end method


# virtual methods
.method protected createURI(Ljava/lang/String;)Ljava/net/URI;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_5} :catch_6

    .line 46
    return-object v0

    .line 44
    :catch_6
    move-exception v0

    throw v0
.end method
