.class public final Lcom/alipay/sdk/net/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/sdk/net/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/alipay/sdk/net/a;->b:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/alipay/sdk/net/a;->a:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/sdk/net/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Lcom/alipay/sdk/data/c;Ljava/lang/String;)Lorg/apache/http/entity/ByteArrayEntity;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 77
    if-eqz p0, :cond_26

    .line 78
    iget-object v0, p0, Lcom/alipay/sdk/data/c;->c:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/alipay/sdk/data/c;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/sdk/data/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 83
    :cond_26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 84
    const-string v0, "application/octet-stream;binary/octet-stream"

    .line 86
    :cond_2e
    const-string v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 87
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v2, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 100
    invoke-virtual {v2, v0}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 101
    return-object v2
.end method

.method private a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alipay/sdk/net/a;->a:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private b()Ljava/net/URL;
    .registers 4

    .prologue
    .line 62
    const/4 v1, 0x0

    .line 65
    :try_start_1
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/alipay/sdk/net/a;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_9

    .line 67
    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    move-object v0, v1

    goto :goto_8
.end method

.method private b(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/sdk/exception/NetErrorException;
        }
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/sdk/net/a;->a(Ljava/lang/String;Lcom/alipay/sdk/data/c;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method private c()Lorg/apache/http/HttpHost;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 212
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_41

    .line 213
    invoke-direct {p0}, Lcom/alipay/sdk/net/a;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    const-string v2, "wap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 215
    :cond_15
    :goto_15
    return-object v0

    .line 213
    :cond_16
    invoke-direct {p0}, Lcom/alipay/sdk/net/a;->b()Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    const-string v1, "https.proxyHost"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "https.proxyPort"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    goto :goto_15

    .line 215
    :cond_41
    invoke-direct {p0}, Lcom/alipay/sdk/net/a;->f()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_15

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    if-eqz v1, :cond_15

    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    goto :goto_15
.end method

.method private d()Lorg/apache/http/HttpHost;
    .registers 4

    .prologue
    .line 225
    const/4 v0, 0x0

    .line 226
    invoke-direct {p0}, Lcom/alipay/sdk/net/a;->f()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 227
    if-eqz v1, :cond_22

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 228
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_22

    .line 229
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    .line 231
    if-eqz v1, :cond_22

    .line 232
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 235
    :cond_22
    return-object v0
.end method

.method private e()Lorg/apache/http/HttpHost;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 244
    .line 246
    invoke-direct {p0}, Lcom/alipay/sdk/net/a;->g()Ljava/lang/String;

    move-result-object v1

    .line 247
    if-eqz v1, :cond_10

    const-string v2, "wap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 271
    :cond_f
    :goto_f
    return-object v0

    .line 251
    :cond_10
    invoke-direct {p0}, Lcom/alipay/sdk/net/a;->b()Ljava/net/URL;

    move-result-object v1

    .line 252
    if-eqz v1, :cond_f

    .line 253
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 258
    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 259
    const-string v1, "https.proxyHost"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 263
    const-string v2, "https.proxyPort"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 266
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 267
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    goto :goto_f
.end method

.method private f()Landroid/net/NetworkInfo;
    .registers 4

    .prologue
    .line 280
    const/4 v1, 0x0

    .line 282
    :try_start_1
    iget-object v0, p0, Lcom/alipay/sdk/net/a;->b:Landroid/content/Context;

    const-string v2, "connectivity"

    .line 283
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 284
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_10

    move-result-object v0

    .line 287
    :goto_f
    return-object v0

    :catch_10
    move-exception v0

    move-object v0, v1

    goto :goto_f
.end method

.method private g()Ljava/lang/String;
    .registers 4

    .prologue
    .line 292
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/sdk/net/a;->f()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 294
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 295
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 296
    const-string v0, "wifi"

    .line 306
    :goto_15
    return-object v0

    .line 298
    :cond_16
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_22

    move-result-object v0

    goto :goto_15

    .line 301
    :cond_1f
    const-string v0, "none"

    goto :goto_15

    .line 306
    :catch_22
    move-exception v0

    const-string v0, "none"

    goto :goto_15
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/alipay/sdk/data/c;)Lorg/apache/http/HttpResponse;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/sdk/exception/NetErrorException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 125
    .line 126
    invoke-static {}, Lcom/alipay/sdk/net/b;->a()Lcom/alipay/sdk/net/b;

    move-result-object v4

    .line 129
    if-nez v4, :cond_8

    .line 203
    :cond_7
    :goto_7
    return-object v3

    .line 134
    :cond_8
    :try_start_8
    iget-object v1, v4, Lcom/alipay/sdk/net/b;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 135
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v1, v5, :cond_9c

    invoke-direct {p0}, Lcom/alipay/sdk/net/a;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_65

    const-string v5, "wap"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_65

    move-object v1, v3

    .line 136
    :goto_23
    if-eqz v1, :cond_2a

    .line 137
    const-string v5, "http.route.default-proxy"

    invoke-interface {v2, v5, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 139
    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestUrl : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/sdk/net/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 142
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/alipay/sdk/net/a;->a:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 158
    :goto_47
    if-eqz p2, :cond_139

    .line 159
    invoke-virtual {p2}, Lcom/alipay/sdk/data/c;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 160
    if-eqz v1, :cond_139

    .line 161
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_53
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_139

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/Header;

    .line 162
    invoke-interface {v2, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_62
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_8 .. :try_end_62} :catch_63
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_8 .. :try_end_62} :catch_90
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_62} :catch_bf
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_62} :catch_12d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_62} :catch_177

    goto :goto_53

    .line 183
    :catch_63
    move-exception v1

    throw v1

    .line 135
    :cond_65
    :try_start_65
    invoke-direct {p0}, Lcom/alipay/sdk/net/a;->b()Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_184

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v5, "https"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    const-string v1, "https.proxyHost"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "https.proxyPort"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_184

    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v1, v5, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V
    :try_end_8f
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_65 .. :try_end_8f} :catch_63
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_65 .. :try_end_8f} :catch_90
    .catch Ljava/net/SocketException; {:try_start_65 .. :try_end_8f} :catch_bf
    .catch Ljava/net/SocketTimeoutException; {:try_start_65 .. :try_end_8f} :catch_12d
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_8f} :catch_177

    goto :goto_23

    .line 186
    :catch_90
    move-exception v1

    if-eqz v4, :cond_96

    .line 187
    invoke-virtual {v4}, Lcom/alipay/sdk/net/b;->b()V

    .line 188
    :cond_96
    new-instance v1, Lcom/alipay/sdk/exception/NetErrorException;

    invoke-direct {v1}, Lcom/alipay/sdk/exception/NetErrorException;-><init>()V

    throw v1

    .line 135
    :cond_9c
    :try_start_9c
    invoke-direct {p0}, Lcom/alipay/sdk/net/a;->f()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_181

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_181

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_181

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v6

    if-eqz v5, :cond_181

    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-direct {v1, v5, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V
    :try_end_bd
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_9c .. :try_end_bd} :catch_63
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_9c .. :try_end_bd} :catch_90
    .catch Ljava/net/SocketException; {:try_start_9c .. :try_end_bd} :catch_bf
    .catch Ljava/net/SocketTimeoutException; {:try_start_9c .. :try_end_bd} :catch_12d
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_bd} :catch_177

    goto/16 :goto_23

    .line 191
    :catch_bf
    move-exception v1

    new-instance v1, Lcom/alipay/sdk/exception/NetErrorException;

    invoke-direct {v1}, Lcom/alipay/sdk/exception/NetErrorException;-><init>()V

    throw v1

    .line 144
    :cond_c6
    :try_start_c6
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lcom/alipay/sdk/net/a;->a:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 146
    if-eqz p2, :cond_17e

    iget-object v1, p2, Lcom/alipay/sdk/data/c;->c:Ljava/lang/String;

    iget-object v3, p2, Lcom/alipay/sdk/data/c;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Lcom/alipay/sdk/data/c;->d:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_f2
    :goto_f2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_fa

    const-string v1, "application/octet-stream;binary/octet-stream"

    :cond_fa
    const-string v3, "utf-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    new-instance v5, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v5, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v5, v1}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 148
    move-object v0, v2

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object v1, v0

    invoke-virtual {v1, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 149
    const-string v1, "Accept-Charset"

    const-string v3, "UTF-8"

    invoke-interface {v2, v1, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v1, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-interface {v2, v1, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v1, "Connection"

    const-string v3, "Keep-Alive"

    invoke-interface {v2, v1, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v1, "Keep-Alive"

    const-string v3, "timeout=180, max=100"

    invoke-interface {v2, v1, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12b
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_c6 .. :try_end_12b} :catch_63
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_c6 .. :try_end_12b} :catch_90
    .catch Ljava/net/SocketException; {:try_start_c6 .. :try_end_12b} :catch_bf
    .catch Ljava/net/SocketTimeoutException; {:try_start_c6 .. :try_end_12b} :catch_12d
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_12b} :catch_177

    goto/16 :goto_47

    .line 194
    :catch_12d
    move-exception v1

    if-eqz v4, :cond_133

    .line 195
    invoke-virtual {v4}, Lcom/alipay/sdk/net/b;->b()V

    .line 196
    :cond_133
    new-instance v1, Lcom/alipay/sdk/exception/NetErrorException;

    invoke-direct {v1}, Lcom/alipay/sdk/exception/NetErrorException;-><init>()V

    throw v1

    .line 166
    :cond_139
    :try_start_139
    invoke-virtual {v4, v2}, Lcom/alipay/sdk/net/b;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 169
    const-string v1, "X-Hostname"

    invoke-interface {v3, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    .line 170
    if-eqz v1, :cond_159

    array-length v2, v1

    if-lez v2, :cond_159

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_159

    .line 172
    const-string v1, "X-Hostname"

    .line 173
    invoke-interface {v3, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 172
    :cond_159
    const-string v1, "X-ExecuteTime"

    .line 177
    invoke-interface {v3, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    .line 178
    if-eqz v1, :cond_7

    array-length v2, v1

    if-lez v2, :cond_7

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_7

    .line 180
    const-string v1, "X-ExecuteTime"

    .line 181
    invoke-interface {v3, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_175
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_139 .. :try_end_175} :catch_63
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_139 .. :try_end_175} :catch_90
    .catch Ljava/net/SocketException; {:try_start_139 .. :try_end_175} :catch_bf
    .catch Ljava/net/SocketTimeoutException; {:try_start_139 .. :try_end_175} :catch_12d
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_175} :catch_177

    goto/16 :goto_7

    .line 199
    :catch_177
    move-exception v1

    new-instance v1, Lcom/alipay/sdk/exception/NetErrorException;

    invoke-direct {v1}, Lcom/alipay/sdk/exception/NetErrorException;-><init>()V

    throw v1

    :cond_17e
    move-object v1, v3

    goto/16 :goto_f2

    :cond_181
    move-object v1, v3

    goto/16 :goto_23

    :cond_184
    move-object v1, v3

    goto/16 :goto_23
.end method
