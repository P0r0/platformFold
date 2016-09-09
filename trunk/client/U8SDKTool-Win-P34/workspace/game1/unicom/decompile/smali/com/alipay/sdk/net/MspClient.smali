.class public Lcom/alipay/sdk/net/MspClient;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/sdk/net/MspClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/alipay/sdk/net/MspClient;->a:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/alipay/sdk/net/MspClient;->b:Ljava/lang/String;

    .line 57
    return-void
.end method

.method private static a(Lcom/alipay/sdk/data/InteractionData;Ljava/lang/String;Z)Lorg/apache/http/entity/ByteArrayEntity;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    if-eqz p0, :cond_2c

    .line 84
    invoke-virtual {p0}, Lcom/alipay/sdk/data/InteractionData;->c()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Lcom/alipay/sdk/data/InteractionData;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/sdk/data/InteractionData;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 89
    :cond_2c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 90
    const-string v0, "application/octet-stream;binary/octet-stream"

    .line 92
    :cond_34
    const-string v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 93
    if-eqz p2, :cond_62

    .line 94
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 96
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 97
    invoke-virtual {v1, v2}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 98
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 99
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 100
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 101
    invoke-virtual {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 102
    const-string v0, "gzip"

    invoke-virtual {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;->setContentEncoding(Ljava/lang/String;)V

    move-object v0, v1

    .line 107
    :goto_61
    return-object v0

    .line 105
    :cond_62
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 106
    invoke-virtual {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    move-object v0, v1

    .line 107
    goto :goto_61
.end method

.method private e()Lorg/apache/http/HttpHost;
    .registers 5

    .prologue
    .line 251
    const/4 v2, 0x0

    .line 253
    invoke-virtual {p0}, Lcom/alipay/sdk/net/MspClient;->b()Ljava/net/URL;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_3d

    .line 255
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 260
    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 261
    const-string v0, "https.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 262
    const-string v0, "https.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    :goto_1f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 269
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v2, v1, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object v0, v2

    .line 273
    :goto_2f
    return-object v0

    .line 264
    :cond_30
    const-string v0, "https.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    const-string v0, "https.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :cond_3d
    move-object v0, v2

    goto :goto_2f
.end method

.method private f()Landroid/net/NetworkInfo;
    .registers 4

    .prologue
    .line 282
    const/4 v1, 0x0

    .line 284
    :try_start_1
    iget-object v0, p0, Lcom/alipay/sdk/net/MspClient;->a:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 286
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_10

    move-result-object v0

    .line 291
    :goto_f
    return-object v0

    .line 287
    :catch_10
    move-exception v0

    .line 288
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_f
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/sdk/net/MspClient;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/alipay/sdk/data/InteractionData;)Lorg/apache/http/HttpResponse;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/sdk/exception/NetErrorException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v1, p0, Lcom/alipay/sdk/net/MspClient;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/sdk/util/DeviceInfo;->b(Landroid/content/Context;)Lcom/alipay/sdk/util/NetConnectionType;

    move-result-object v1

    .line 127
    sget-object v2, Lcom/alipay/sdk/util/NetConnectionType;->o:Lcom/alipay/sdk/util/NetConnectionType;

    if-ne v1, v2, :cond_10

    .line 128
    new-instance v1, Lcom/alipay/sdk/exception/NetErrorException;

    invoke-direct {v1}, Lcom/alipay/sdk/exception/NetErrorException;-><init>()V

    throw v1

    .line 136
    :cond_10
    invoke-static {}, Lcom/alipay/sdk/net/MspHttpClient;->a()Lcom/alipay/sdk/net/MspHttpClient;

    move-result-object v3

    .line 140
    :try_start_14
    invoke-virtual {v3}, Lcom/alipay/sdk/net/MspHttpClient;->d()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 141
    invoke-virtual {p0}, Lcom/alipay/sdk/net/MspClient;->c()Lorg/apache/http/HttpHost;

    move-result-object v2

    .line 142
    if-eqz v2, :cond_23

    .line 143
    const-string v4, "http.route.default-proxy"

    invoke-interface {v1, v4, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 145
    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestUrl : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/sdk/net/MspClient;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/sdk/util/LogUtils;->e(Ljava/lang/String;)V

    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 148
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/alipay/sdk/net/MspClient;->b:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 164
    :goto_48
    if-eqz p2, :cond_a5

    .line 165
    invoke-virtual {p2}, Lcom/alipay/sdk/data/InteractionData;->b()Ljava/util/ArrayList;

    move-result-object v1

    .line 166
    if-eqz v1, :cond_a5

    .line 167
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_54
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/message/BasicHeader;

    .line 168
    invoke-interface {v2, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_63
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_14 .. :try_end_63} :catch_64
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_14 .. :try_end_63} :catch_96
    .catch Ljava/net/SocketException; {:try_start_14 .. :try_end_63} :catch_fb
    .catch Ljava/net/SocketTimeoutException; {:try_start_14 .. :try_end_63} :catch_105
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_63} :catch_10f

    goto :goto_54

    .line 191
    :catch_64
    move-exception v1

    .line 192
    throw v1

    .line 150
    :cond_66
    :try_start_66
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lcom/alipay/sdk/net/MspClient;->b:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 152
    const/4 v1, 0x0

    invoke-static {p2, p1, v1}, Lcom/alipay/sdk/net/MspClient;->a(Lcom/alipay/sdk/data/InteractionData;Ljava/lang/String;Z)Lorg/apache/http/entity/ByteArrayEntity;

    move-result-object v4

    .line 154
    move-object v0, v2

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object v1, v0

    invoke-virtual {v1, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 155
    const-string v1, "Accept-Charset"

    const-string v4, "UTF-8"

    invoke-interface {v2, v1, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v1, "Accept-Encoding"

    const-string v4, "gzip"

    invoke-interface {v2, v1, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v1, "Connection"

    const-string v4, "Keep-Alive"

    invoke-interface {v2, v1, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v1, "Keep-Alive"

    const-string v4, "timeout=180, max=100"

    invoke-interface {v2, v1, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_95
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_66 .. :try_end_95} :catch_64
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_66 .. :try_end_95} :catch_96
    .catch Ljava/net/SocketException; {:try_start_66 .. :try_end_95} :catch_fb
    .catch Ljava/net/SocketTimeoutException; {:try_start_66 .. :try_end_95} :catch_105
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_95} :catch_10f

    goto :goto_48

    .line 193
    :catch_96
    move-exception v1

    .line 194
    if-eqz v3, :cond_9c

    .line 195
    invoke-virtual {v3}, Lcom/alipay/sdk/net/MspHttpClient;->c()V

    .line 196
    :cond_9c
    invoke-static {v1}, Lcom/alipay/sdk/util/LogUtils;->a(Ljava/lang/Object;)V

    .line 197
    new-instance v1, Lcom/alipay/sdk/exception/NetErrorException;

    invoke-direct {v1}, Lcom/alipay/sdk/exception/NetErrorException;-><init>()V

    throw v1

    .line 171
    :cond_a5
    :try_start_a5
    invoke-static {}, Lcom/alipay/sdk/sys/GlobalContext;->a()Lcom/alipay/sdk/sys/GlobalContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/sdk/sys/GlobalContext;->d()Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 172
    const-string v1, "OS"

    const-string v4, "Android"

    invoke-interface {v2, v1, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_b6
    invoke-virtual {v3, v2}, Lcom/alipay/sdk/net/MspHttpClient;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 178
    const-string v2, "X-Hostname"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    .line 179
    if-eqz v2, :cond_da

    array-length v4, v2

    if-lez v4, :cond_da

    const/4 v4, 0x0

    aget-object v2, v2, v4

    if-eqz v2, :cond_da

    .line 181
    const-string v2, "X-Hostname"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/sdk/util/LogUtils;->b(Ljava/lang/String;)V

    .line 184
    :cond_da
    const-string v2, "X-ExecuteTime"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    .line 186
    if-eqz v2, :cond_fa

    array-length v4, v2

    if-lez v4, :cond_fa

    const/4 v4, 0x0

    aget-object v2, v2, v4

    if-eqz v2, :cond_fa

    .line 188
    const-string v2, "X-ExecuteTime"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/sdk/util/LogUtils;->b(Ljava/lang/String;)V
    :try_end_fa
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_a5 .. :try_end_fa} :catch_64
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_a5 .. :try_end_fa} :catch_96
    .catch Ljava/net/SocketException; {:try_start_a5 .. :try_end_fa} :catch_fb
    .catch Ljava/net/SocketTimeoutException; {:try_start_a5 .. :try_end_fa} :catch_105
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_fa} :catch_10f

    .line 209
    :cond_fa
    return-object v1

    .line 198
    :catch_fb
    move-exception v1

    .line 199
    invoke-static {v1}, Lcom/alipay/sdk/util/LogUtils;->a(Ljava/lang/Object;)V

    .line 200
    new-instance v1, Lcom/alipay/sdk/exception/NetErrorException;

    invoke-direct {v1}, Lcom/alipay/sdk/exception/NetErrorException;-><init>()V

    throw v1

    .line 201
    :catch_105
    move-exception v1

    .line 202
    invoke-static {v1}, Lcom/alipay/sdk/util/LogUtils;->a(Ljava/lang/Object;)V

    .line 203
    new-instance v1, Lcom/alipay/sdk/exception/NetErrorException;

    invoke-direct {v1}, Lcom/alipay/sdk/exception/NetErrorException;-><init>()V

    throw v1

    .line 204
    :catch_10f
    move-exception v1

    .line 205
    invoke-static {v1}, Lcom/alipay/sdk/util/LogUtils;->a(Ljava/lang/Object;)V

    .line 206
    new-instance v1, Lcom/alipay/sdk/exception/NetErrorException;

    invoke-direct {v1}, Lcom/alipay/sdk/exception/NetErrorException;-><init>()V

    throw v1
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alipay/sdk/net/MspClient;->b:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public b()Ljava/net/URL;
    .registers 4

    .prologue
    .line 68
    const/4 v1, 0x0

    .line 71
    :try_start_1
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/alipay/sdk/net/MspClient;->b:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_9

    .line 76
    :goto_8
    return-object v0

    .line 72
    :catch_9
    move-exception v0

    .line 73
    invoke-static {v0}, Lcom/alipay/sdk/util/LogUtils;->a(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_8
.end method

.method public b(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/sdk/exception/NetErrorException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/sdk/net/MspClient;->a(Ljava/lang/String;Lcom/alipay/sdk/data/InteractionData;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public c()Lorg/apache/http/HttpHost;
    .registers 3

    .prologue
    .line 218
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_b

    .line 219
    invoke-direct {p0}, Lcom/alipay/sdk/net/MspClient;->e()Lorg/apache/http/HttpHost;

    move-result-object v0

    .line 221
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Lcom/alipay/sdk/net/MspClient;->d()Lorg/apache/http/HttpHost;

    move-result-object v0

    goto :goto_a
.end method

.method public d()Lorg/apache/http/HttpHost;
    .registers 4

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 233
    invoke-direct {p0}, Lcom/alipay/sdk/net/MspClient;->f()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 234
    if-eqz v1, :cond_22

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_22

    .line 236
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    .line 238
    if-eqz v1, :cond_22

    .line 239
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 242
    :cond_22
    return-object v0
.end method
