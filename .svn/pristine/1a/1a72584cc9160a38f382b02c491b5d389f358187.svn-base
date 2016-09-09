.class public Lcom/youju/statistics/a/d;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;
    .registers 5

    invoke-static {p0}, Lcom/youju/statistics/a/d;->b(Lorg/apache/http/HttpResponse;)I

    move-result v0

    invoke-static {v0}, Lcom/youju/statistics/a/d;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/io/IOException;

    const-string v1, "httpEntity is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v0}, Lcom/youju/statistics/a/d;->a(Lorg/apache/http/HttpEntity;)Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_2c
    return-object v0

    :cond_2d
    move-object v0, v1

    goto :goto_2c

    :cond_2f
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error httpStatusCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a()Lorg/apache/http/impl/client/DefaultHttpClient;
    .registers 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/youju/statistics/a/n;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youju/statistics/a/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    const/16 v2, 0x2710

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v2, 0x3a98

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v2, 0x800

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v1, v3}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method public static a(Lorg/apache/http/client/methods/HttpRequestBase;)V
    .registers 2

    invoke-static {p0}, Lcom/youju/statistics/a/n;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->isAborted()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    goto :goto_6
.end method

.method public static a(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/youju/statistics/c/d/a;)V
    .registers 7

    invoke-static {}, Lcom/youju/statistics/a/d;->a()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v1

    :try_start_4
    invoke-virtual {v1, p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/youju/statistics/a/d;->b(Lorg/apache/http/HttpResponse;)I

    move-result v2

    invoke-static {v2}, Lcom/youju/statistics/a/d;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {p1, v0}, Lcom/youju/statistics/c/d/a;->a(Lorg/apache/http/HttpResponse;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_38
    .catchall {:try_start_4 .. :try_end_15} :catchall_43

    :goto_15
    invoke-static {p0}, Lcom/youju/statistics/a/d;->a(Lorg/apache/http/client/methods/HttpRequestBase;)V

    invoke-static {v1}, Lcom/youju/statistics/a/d;->a(Lorg/apache/http/impl/client/DefaultHttpClient;)V

    :goto_1b
    return-void

    :cond_1c
    :try_start_1c
    new-instance v0, Lcom/youju/statistics/d/g;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "httpStatusCode is wrong "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/youju/statistics/d/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/youju/statistics/c/d/a;->a(Ljava/lang/Exception;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_37} :catch_38
    .catchall {:try_start_1c .. :try_end_37} :catchall_43

    goto :goto_15

    :catch_38
    move-exception v0

    :try_start_39
    invoke-virtual {p1, v0}, Lcom/youju/statistics/c/d/a;->a(Ljava/lang/Exception;)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_43

    invoke-static {p0}, Lcom/youju/statistics/a/d;->a(Lorg/apache/http/client/methods/HttpRequestBase;)V

    invoke-static {v1}, Lcom/youju/statistics/a/d;->a(Lorg/apache/http/impl/client/DefaultHttpClient;)V

    goto :goto_1b

    :catchall_43
    move-exception v0

    invoke-static {p0}, Lcom/youju/statistics/a/d;->a(Lorg/apache/http/client/methods/HttpRequestBase;)V

    invoke-static {v1}, Lcom/youju/statistics/a/d;->a(Lorg/apache/http/impl/client/DefaultHttpClient;)V

    throw v0
.end method

.method public static a(Lorg/apache/http/impl/client/DefaultHttpClient;)V
    .registers 2

    invoke-static {p0}, Lcom/youju/statistics/a/n;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_6
.end method

.method public static a(I)Z
    .registers 2

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static a(Lorg/apache/http/HttpEntity;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gzip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    return v0
.end method

.method public static a(Ljava/io/InputStream;)[B
    .registers 7

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_8
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1e

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_13

    goto :goto_8

    :catchall_13
    move-exception v0

    new-array v2, v5, [Ljava/io/Closeable;

    aput-object p0, v2, v3

    aput-object v1, v2, v4

    invoke-static {v2}, Lcom/youju/statistics/a/n;->a([Ljava/io/Closeable;)V

    throw v0

    :cond_1e
    :try_start_1e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_13

    move-result-object v0

    new-array v2, v5, [Ljava/io/Closeable;

    aput-object p0, v2, v3

    aput-object v1, v2, v4

    invoke-static {v2}, Lcom/youju/statistics/a/n;->a([Ljava/io/Closeable;)V

    return-object v0
.end method

.method public static b(Lorg/apache/http/HttpResponse;)I
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, -0x1

    :goto_3
    return v0

    :cond_4
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    goto :goto_3
.end method

.method public static c(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .registers 2

    const-string v0, "status"

    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method
