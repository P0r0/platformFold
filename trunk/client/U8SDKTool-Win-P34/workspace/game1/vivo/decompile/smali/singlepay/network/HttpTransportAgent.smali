.class public Lsinglepay/network/HttpTransportAgent;
.super Ljava/lang/Object;
.source "HttpTransportAgent.java"

# interfaces
.implements Lsinglepay/network/TransportAgent;


# instance fields
.field private charset:Ljava/lang/String;

.field private httpConnection:Lsinglepay/network/HttpConnectionAgent;

.field private isForceCookie:Z

.field private iscompression:Z

.field private proxyConfig:Lsinglepay/network/ProxyConfig;

.field private requestURL:Ljava/lang/String;

.field private useragent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLsinglepay/network/ProxyConfig;)V
    .registers 8
    .param p1, "requestURL"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .param p3, "useragent"    # Ljava/lang/String;
    .param p4, "iscompression"    # Z
    .param p5, "isForceCookie"    # Z
    .param p6, "proxyConfig"    # Lsinglepay/network/ProxyConfig;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lsinglepay/network/HttpTransportAgent;->requestURL:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lsinglepay/network/HttpTransportAgent;->charset:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lsinglepay/network/HttpTransportAgent;->useragent:Ljava/lang/String;

    .line 28
    iput-boolean p4, p0, Lsinglepay/network/HttpTransportAgent;->iscompression:Z

    .line 29
    iput-boolean p5, p0, Lsinglepay/network/HttpTransportAgent;->isForceCookie:Z

    .line 30
    iput-object p6, p0, Lsinglepay/network/HttpTransportAgent;->proxyConfig:Lsinglepay/network/ProxyConfig;

    .line 32
    new-instance v0, Lsinglepay/network/HttpConnectionAgent;

    invoke-direct {v0}, Lsinglepay/network/HttpConnectionAgent;-><init>()V

    iput-object v0, p0, Lsinglepay/network/HttpTransportAgent;->httpConnection:Lsinglepay/network/HttpConnectionAgent;

    .line 33
    iget-object v0, p0, Lsinglepay/network/HttpTransportAgent;->httpConnection:Lsinglepay/network/HttpConnectionAgent;

    invoke-virtual {v0, p6}, Lsinglepay/network/HttpConnectionAgent;->setProxyConfig(Lsinglepay/network/ProxyConfig;)V

    .line 34
    return-void
.end method

.method private compressRequestMsg([B)[B
    .registers 10
    .param p1, "request_msg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "bis":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 179
    .local v4, "gos":Ljava/util/zip/GZIPOutputStream;
    const/4 v2, 0x0

    .line 181
    .local v2, "compress_msg":[B
    :try_start_3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_24
    .catchall {:try_start_3 .. :try_end_8} :catchall_26

    .line 182
    .end local v0    # "bis":Ljava/io/ByteArrayOutputStream;
    .local v1, "bis":Ljava/io/ByteArrayOutputStream;
    :try_start_8
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v5, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_39
    .catchall {:try_start_8 .. :try_end_d} :catchall_32

    .line 183
    .end local v4    # "gos":Ljava/util/zip/GZIPOutputStream;
    .local v5, "gos":Ljava/util/zip/GZIPOutputStream;
    const/4 v6, 0x0

    :try_start_e
    array-length v7, p1

    invoke-virtual {v5, p1, v6, v7}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 184
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 186
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_18} :catch_3c
    .catchall {:try_start_e .. :try_end_18} :catchall_35

    move-result-object v2

    .line 190
    if-eqz v5, :cond_1e

    .line 191
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 193
    :cond_1e
    if-eqz v1, :cond_23

    .line 194
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 197
    :cond_23
    return-object v2

    .line 187
    .end local v1    # "bis":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "gos":Ljava/util/zip/GZIPOutputStream;
    :catch_24
    move-exception v3

    .line 188
    .local v3, "e":Ljava/lang/Exception;
    :goto_25
    :try_start_25
    throw v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    .line 189
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_26
    move-exception v6

    .line 190
    :goto_27
    if-eqz v4, :cond_2c

    .line 191
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 193
    :cond_2c
    if-eqz v0, :cond_31

    .line 194
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 196
    :cond_31
    throw v6

    .line 189
    .end local v0    # "bis":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayOutputStream;
    :catchall_32
    move-exception v6

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayOutputStream;
    goto :goto_27

    .end local v0    # "bis":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "gos":Ljava/util/zip/GZIPOutputStream;
    :catchall_35
    move-exception v6

    move-object v4, v5

    .end local v5    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "gos":Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayOutputStream;
    goto :goto_27

    .line 187
    .end local v0    # "bis":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayOutputStream;
    :catch_39
    move-exception v3

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayOutputStream;
    goto :goto_25

    .end local v0    # "bis":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "gos":Ljava/util/zip/GZIPOutputStream;
    :catch_3c
    move-exception v3

    move-object v4, v5

    .end local v5    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "gos":Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayOutputStream;
    goto :goto_25
.end method

.method private readStream(Ljava/io/InputStream;I)[B
    .registers 7
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    if-gez p2, :cond_4

    .line 163
    const/16 p2, 0x400

    .line 165
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 166
    .local v0, "bis":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v1, v3, [B

    .line 167
    .local v1, "buff":[B
    const/4 v2, 0x0

    .line 169
    .local v2, "n":I
    :goto_e
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_1a

    .line 172
    const/4 v1, 0x0

    .line 173
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 170
    :cond_1a
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_e
.end method


# virtual methods
.method public getResponseData()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public sendRequest(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "requestMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lsinglepay/network/HttpTransportAgent;->charset:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lsinglepay/network/HttpTransportAgent;->sendRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "requestMsg"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    const/4 v1, 0x0

    .line 43
    .local v1, "inData":[B
    const/4 v3, 0x0

    .line 44
    .local v3, "responseMsg":Ljava/lang/String;
    if-eqz p2, :cond_1e

    .line 46
    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_17

    move-result-object v1

    .line 55
    :goto_8
    invoke-virtual {p0, v1}, Lsinglepay/network/HttpTransportAgent;->sendRequest([B)[B

    move-result-object v2

    .line 56
    .local v2, "outDate":[B
    const/4 v1, 0x0

    .line 57
    if-nez v2, :cond_23

    .line 58
    const-string v3, "response data is null"

    .line 59
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 47
    .end local v2    # "outDate":[B
    :catch_17
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    const/4 p2, 0x0

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 51
    goto :goto_8

    .line 52
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1e
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_8

    .line 61
    .restart local v2    # "outDate":[B
    :cond_23
    if-eqz p2, :cond_32

    .line 63
    :try_start_25
    new-instance v3, Ljava/lang/String;

    .end local v3    # "responseMsg":Ljava/lang/String;
    invoke-direct {v3, v2, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2a} :catch_2b

    .line 70
    .restart local v3    # "responseMsg":Ljava/lang/String;
    :goto_2a
    return-object v3

    .line 64
    .end local v3    # "responseMsg":Ljava/lang/String;
    :catch_2b
    move-exception v0

    .line 65
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 67
    .restart local v3    # "responseMsg":Ljava/lang/String;
    goto :goto_2a

    .line 68
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_32
    new-instance v3, Ljava/lang/String;

    .end local v3    # "responseMsg":Ljava/lang/String;
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .restart local v3    # "responseMsg":Ljava/lang/String;
    goto :goto_2a
.end method

.method public varargs sendRequest([Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    .registers 6
    .param p1, "nameValuePairs"    # [Lorg/apache/http/NameValuePair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 117
    .local v1, "responseMsg":Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Lsinglepay/network/HttpTransportAgent;->httpConnection:Lsinglepay/network/HttpConnectionAgent;

    const-string v3, "POST"

    invoke-virtual {v2, v3}, Lsinglepay/network/HttpConnectionAgent;->setRequestMethod(Ljava/lang/String;)V

    .line 118
    if-eqz p1, :cond_18

    .line 119
    iget-object v2, p0, Lsinglepay/network/HttpTransportAgent;->httpConnection:Lsinglepay/network/HttpConnectionAgent;

    iget-object v3, p0, Lsinglepay/network/HttpTransportAgent;->requestURL:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Lsinglepay/network/HttpConnectionAgent;->executeRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)V

    .line 123
    :goto_11
    iget-object v2, p0, Lsinglepay/network/HttpTransportAgent;->httpConnection:Lsinglepay/network/HttpConnectionAgent;

    invoke-virtual {v2}, Lsinglepay/network/HttpConnectionAgent;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    .line 129
    return-object v1

    .line 121
    :cond_18
    iget-object v2, p0, Lsinglepay/network/HttpTransportAgent;->httpConnection:Lsinglepay/network/HttpConnectionAgent;

    iget-object v3, p0, Lsinglepay/network/HttpTransportAgent;->requestURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lsinglepay/network/HttpConnectionAgent;->executeRequest(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_20

    goto :goto_11

    .line 124
    :catch_20
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    throw v0
.end method

.method public sendRequest([B)[B
    .registers 14
    .param p1, "request_msg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v6, 0x0

    .line 75
    .local v6, "outData":[B
    const/4 v3, 0x0

    .line 77
    .local v3, "is":Ljava/io/InputStream;
    if-eqz p1, :cond_61

    .line 78
    move-object v0, p1

    .line 80
    .local v0, "compress_msg":[B
    :try_start_5
    iget-boolean v7, p0, Lsinglepay/network/HttpTransportAgent;->iscompression:Z

    if-eqz v7, :cond_37

    .line 81
    invoke-direct {p0, p1}, Lsinglepay/network/HttpTransportAgent;->compressRequestMsg([B)[B

    move-result-object v0

    .line 83
    iget-object v7, p0, Lsinglepay/network/HttpTransportAgent;->httpConnection:Lsinglepay/network/HttpConnectionAgent;

    const-string v8, "Content-Length"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    array-length v10, p1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 83
    invoke-virtual {v7, v8, v9}, Lsinglepay/network/HttpConnectionAgent;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v7, p0, Lsinglepay/network/HttpTransportAgent;->httpConnection:Lsinglepay/network/HttpConnectionAgent;

    .line 86
    const-string v8, "Uncompressed-Content-Length"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    array-length v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 85
    invoke-virtual {v7, v8, v9}, Lsinglepay/network/HttpConnectionAgent;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_37
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3c} :catch_6b

    .line 90
    .end local v3    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    :try_start_3c
    iget-object v7, p0, Lsinglepay/network/HttpTransportAgent;->httpConnection:Lsinglepay/network/HttpConnectionAgent;

    iget-object v8, p0, Lsinglepay/network/HttpTransportAgent;->requestURL:Ljava/lang/String;

    .line 91
    array-length v9, v0

    int-to-long v10, v9

    .line 90
    invoke-virtual {v7, v8, v4, v10, v11}, Lsinglepay/network/HttpConnectionAgent;->executeRequest(Ljava/lang/String;Ljava/io/InputStream;J)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_45} :catch_7a

    move-object v3, v4

    .line 96
    .end local v0    # "compress_msg":[B
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :goto_46
    :try_start_46
    iget-object v7, p0, Lsinglepay/network/HttpTransportAgent;->httpConnection:Lsinglepay/network/HttpConnectionAgent;

    invoke-virtual {v7}, Lsinglepay/network/HttpConnectionAgent;->getResponseLength()I

    move-result v5

    .line 97
    .local v5, "len":I
    iget-object v7, p0, Lsinglepay/network/HttpTransportAgent;->httpConnection:Lsinglepay/network/HttpConnectionAgent;

    .line 98
    const-string v8, "Content-Encoding"

    invoke-virtual {v7, v8}, Lsinglepay/network/HttpConnectionAgent;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "contentEncoding":Ljava/lang/String;
    const/4 v7, -0x1

    if-ne v5, v7, :cond_6d

    if-nez v1, :cond_6d

    .line 100
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "response is null"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    :cond_60
    :goto_60
    return-object v6

    .line 93
    .end local v1    # "contentEncoding":Ljava/lang/String;
    .end local v5    # "len":I
    :cond_61
    iget-object v7, p0, Lsinglepay/network/HttpTransportAgent;->httpConnection:Lsinglepay/network/HttpConnectionAgent;

    iget-object v8, p0, Lsinglepay/network/HttpTransportAgent;->requestURL:Ljava/lang/String;

    const-wide/16 v10, 0x0

    invoke-virtual {v7, v8, v3, v10, v11}, Lsinglepay/network/HttpConnectionAgent;->executeRequest(Ljava/lang/String;Ljava/io/InputStream;J)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_6a} :catch_6b

    goto :goto_46

    .line 107
    :catch_6b
    move-exception v2

    .line 108
    .local v2, "e":Ljava/lang/Exception;
    :goto_6c
    throw v2

    .line 102
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "contentEncoding":Ljava/lang/String;
    .restart local v5    # "len":I
    :cond_6d
    :try_start_6d
    iget-object v7, p0, Lsinglepay/network/HttpTransportAgent;->httpConnection:Lsinglepay/network/HttpConnectionAgent;

    invoke-virtual {v7}, Lsinglepay/network/HttpConnectionAgent;->openInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 103
    if-eqz v3, :cond_60

    .line 104
    invoke-direct {p0, v3, v5}, Lsinglepay/network/HttpTransportAgent;->readStream(Ljava/io/InputStream;I)[B
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_78} :catch_6b

    move-result-object v6

    goto :goto_60

    .line 107
    .end local v1    # "contentEncoding":Ljava/lang/String;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v5    # "len":I
    .restart local v0    # "compress_msg":[B
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_7a
    move-exception v2

    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_6c
.end method

.method public setCustomHeaders(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 156
    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 157
    iget-object v0, p0, Lsinglepay/network/HttpTransportAgent;->httpConnection:Lsinglepay/network/HttpConnectionAgent;

    invoke-virtual {v0, p1, p2}, Lsinglepay/network/HttpConnectionAgent;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_9
    return-void
.end method

.method public setCustomHeaders(Ljava/util/Hashtable;)V
    .registers 6
    .param p1, "headers"    # Ljava/util/Hashtable;

    .prologue
    .line 145
    if-eqz p1, :cond_c

    .line 146
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 147
    .local v1, "keys":Ljava/util/Enumeration;
    :goto_6
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_d

    .line 153
    .end local v1    # "keys":Ljava/util/Enumeration;
    :cond_c
    return-void

    .line 148
    .restart local v1    # "keys":Ljava/util/Enumeration;
    :cond_d
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 149
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 150
    .local v2, "value":Ljava/lang/String;
    iget-object v3, p0, Lsinglepay/network/HttpTransportAgent;->httpConnection:Lsinglepay/network/HttpConnectionAgent;

    invoke-virtual {v3, v0, v2}, Lsinglepay/network/HttpConnectionAgent;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public setRequestContentType(Ljava/lang/String;)V
    .registers 2
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 142
    return-void
.end method

.method public setRequestURL(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 133
    iput-object p1, p0, Lsinglepay/network/HttpTransportAgent;->requestURL:Ljava/lang/String;

    .line 134
    return-void
.end method
