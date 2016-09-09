.class public Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bbkmobile/iqoo/payment/network/TransportAgent;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Lcom/bbkmobile/iqoo/payment/network/HttpConnectionAgent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/bbkmobile/iqoo/payment/network/ProxyConfig;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;->c:Z

    new-instance v0, Lcom/bbkmobile/iqoo/payment/network/HttpConnectionAgent;

    invoke-direct {v0}, Lcom/bbkmobile/iqoo/payment/network/HttpConnectionAgent;-><init>()V

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;->d:Lcom/bbkmobile/iqoo/payment/network/HttpConnectionAgent;

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;->d:Lcom/bbkmobile/iqoo/payment/network/HttpConnectionAgent;

    invoke-virtual {v0, p6}, Lcom/bbkmobile/iqoo/payment/network/HttpConnectionAgent;->setProxyConfig(Lcom/bbkmobile/iqoo/payment/network/ProxyConfig;)V

    return-void
.end method

.method private static a(Ljava/io/InputStream;I)[B
    .registers 6

    const/16 v0, 0x400

    if-gez p1, :cond_5

    move p1, v0

    :cond_5
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array v0, v0, [B

    :goto_c
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_17

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_17
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_c
.end method

.method private static a([B)[B
    .registers 5

    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_1e
    .catchall {:try_start_1 .. :try_end_6} :catchall_2e

    :try_start_6
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_37
    .catchall {:try_start_6 .. :try_end_b} :catchall_32

    const/4 v0, 0x0

    :try_start_c
    array-length v2, p0

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_16} :catch_3b
    .catchall {:try_start_c .. :try_end_16} :catchall_35

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object v0

    :catch_1e
    move-exception v0

    move-object v1, v2

    :goto_20
    :try_start_20
    throw v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception v0

    move-object v3, v2

    :goto_23
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_28
    if-eqz v3, :cond_2d

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_2d
    throw v0

    :catchall_2e
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_23

    :catchall_32
    move-exception v0

    move-object v1, v2

    goto :goto_23

    :catchall_35
    move-exception v0

    goto :goto_23

    :catch_37
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_20

    :catch_3b
    move-exception v0

    move-object v2, v3

    goto :goto_20
.end method


# virtual methods
.method public getResponseData()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public sendRequest(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;->sendRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p2, :cond_14

    :try_start_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_12

    move-result-object v0

    :goto_6
    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;->sendRequest([B)[B

    move-result-object v1

    if-nez v1, :cond_19

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_12
    move-exception v0

    const/4 p2, 0x0

    :cond_14
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_6

    :cond_19
    if-eqz p2, :cond_28

    :try_start_1b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_21

    :goto_20
    return-object v0

    :catch_21
    move-exception v0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_20

    :cond_28
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_20
.end method

.method public varargs sendRequest([Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;->d:Lcom/bbkmobile/iqoo/payment/network/HttpConnectionAgent;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lcom/bbkmobile/iqoo/payment/network/HttpConnectionAgent;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;->d:Lcom/bbkmobile/iqoo/payment/network/HttpConnectionAgent;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/bbkmobile/iqoo/payment/network/HttpConnectionAgent;->executeRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)V

    :goto_10
    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;->d:Lcom/bbkmobile/iqoo/payment/network/HttpConnectionAgent;

    invoke-virtual {v0}, Lcom/bbkmobile/iqoo/payment/network/HttpConnectionAgent;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_17
    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;->d:Lcom/bbkmobile/iqoo/payment/network/HttpConnectionAgent;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbkmobile/iqoo/payment/network/HttpConnectionAgent;->executeRequest(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_10

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    throw v0
.end method

.method public sendRequest([B)[B
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_5f

    :try_start_3
    iget-boolean v1, p0, Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;->c:Z

    if-eqz v1, :cond_36

    invoke-static {p1}, Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;->a([B)[B

    move-result-object v1

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;->d:Lcom/bbkmobile/iqoo/payment/network/HttpConnectionAgent;

    const-string v3, "Content-Length"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/bbkmobile/iqoo/payment/network/HttpConnectionAgent;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;->d:Lcom/bbkmobile/iqoo/payment/network/HttpConnectionAgent;

    const-string v3, "Uncompressed-Content-Length"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/bbkmobile/iqoo/payment/network/HttpConnectionAgent;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v1

    :cond_36
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;->d:Lcom/bbkmobile/iqoo/payment/network/HttpConnectionAgent;

    iget-object v3, p0, Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;->a:Ljava/lang/String;

    array-length v4, p1

    int-to-long v4, v4

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/bbkmobile/iqoo/payment/network/HttpConnectionAgent;->executeRequest(Ljava/lang/String;Ljava/io/InputStream;J)V

    :goto_44
    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;->d:Lcom/bbkmobile/iqoo/payment/network/HttpConnectionAgent;

    invoke-virtual {v1}, Lcom/bbkmobile/iqoo/payment/network/HttpConnectionAgent;->getResponseLength()I

    move-result v1

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;->d:Lcom/bbkmobile/iqoo/payment/network/HttpConnectionAgent;

    const-string v3, "Content-Encoding"

    invoke-virtual {v2, v3}, Lcom/bbkmobile/iqoo/payment/network/HttpConnectionAgent;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-ne v1, v3, :cond_6c

    if-nez v2, :cond_6c

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "response is null"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5e
    :goto_5e
    return-object v0

    :cond_5f
    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;->d:Lcom/bbkmobile/iqoo/payment/network/HttpConnectionAgent;

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;->a:Ljava/lang/String;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/bbkmobile/iqoo/payment/network/HttpConnectionAgent;->executeRequest(Ljava/lang/String;Ljava/io/InputStream;J)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_69} :catch_6a

    goto :goto_44

    :catch_6a
    move-exception v0

    throw v0

    :cond_6c
    :try_start_6c
    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;->d:Lcom/bbkmobile/iqoo/payment/network/HttpConnectionAgent;

    invoke-virtual {v2}, Lcom/bbkmobile/iqoo/payment/network/HttpConnectionAgent;->openInputStream()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_5e

    invoke-static {v2, v1}, Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;->a(Ljava/io/InputStream;I)[B
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_77} :catch_6a

    move-result-object v0

    goto :goto_5e
.end method

.method public setCustomHeaders(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;->d:Lcom/bbkmobile/iqoo/payment/network/HttpConnectionAgent;

    invoke-virtual {v0, p1, p2}, Lcom/bbkmobile/iqoo/payment/network/HttpConnectionAgent;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public setCustomHeaders(Ljava/util/Hashtable;)V
    .registers 6

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    return-void

    :cond_d
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;->d:Lcom/bbkmobile/iqoo/payment/network/HttpConnectionAgent;

    invoke-virtual {v3, v0, v1}, Lcom/bbkmobile/iqoo/payment/network/HttpConnectionAgent;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public setRequestContentType(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setRequestURL(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/network/HttpTransportAgent;->a:Ljava/lang/String;

    return-void
.end method
