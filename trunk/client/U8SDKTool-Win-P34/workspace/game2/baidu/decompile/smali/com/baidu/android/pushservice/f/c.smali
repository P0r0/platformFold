.class public Lcom/baidu/android/pushservice/f/c;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_d

    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_d
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/baidu/android/pushservice/f/b;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/baidu/android/pushservice/f/b;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Lcom/baidu/android/pushservice/f/b;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/f/b;-><init>()V

    const/4 v1, 0x0

    :try_start_7
    invoke-static {p0, p1, v1}, Lcom/baidu/android/pushservice/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-static {p1, p2, v2}, Lcom/baidu/android/pushservice/f/c;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/net/HttpURLConnection;)V

    invoke-static {v2}, Lcom/baidu/android/pushservice/f/c;->a(Ljava/net/HttpURLConnection;)Lcom/baidu/android/pushservice/f/b;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_18
    .catchall {:try_start_7 .. :try_end_11} :catchall_26

    move-result-object v0

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_17
    :goto_17
    return-object v0

    :catch_18
    move-exception v1

    :try_start_19
    const-string v3, "HttpUtil"

    const-string v4, "execRequest>>"

    invoke-static {v3, v4, v1}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_26

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_17

    :catchall_26
    move-exception v0

    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2c
    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Lcom/baidu/android/pushservice/f/b;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/baidu/android/pushservice/f/b;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Lcom/baidu/android/pushservice/f/b;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/f/b;-><init>()V

    :try_start_6
    invoke-static {p0, p1, p3}, Lcom/baidu/android/pushservice/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-static {p1, p2, v2}, Lcom/baidu/android/pushservice/f/c;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/net/HttpURLConnection;)V

    invoke-static {v2}, Lcom/baidu/android/pushservice/f/c;->a(Ljava/net/HttpURLConnection;)Lcom/baidu/android/pushservice/f/b;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_17
    .catchall {:try_start_6 .. :try_end_10} :catchall_25

    move-result-object v0

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_16
    :goto_16
    return-object v0

    :catch_17
    move-exception v1

    :try_start_18
    const-string v3, "HttpUtil"

    const-string v4, "execRequest>>"

    invoke-static {v3, v4, v1}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_25

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_16

    :catchall_25
    move-exception v0

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2b
    throw v0
.end method

.method private static a(Ljava/net/HttpURLConnection;)Lcom/baidu/android/pushservice/f/b;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v4, Lcom/baidu/android/pushservice/f/b;

    invoke-direct {v4}, Lcom/baidu/android/pushservice/f/b;-><init>()V

    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_3b

    move-result v0

    :try_start_b
    invoke-static {v0}, Lcom/baidu/android/pushservice/f/c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_48

    move-result-object v3

    :goto_15
    :try_start_15
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_4d

    :try_start_1a
    invoke-static {p0}, Lcom/baidu/android/pushservice/f/c;->b(Ljava/net/HttpURLConnection;)Z

    move-result v1

    if-eqz v1, :cond_26

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_25} :catch_51

    move-object v2, v1

    :cond_26
    :try_start_26
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-static {v2}, Lcom/baidu/android/pushservice/f/c;->a(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_56

    :goto_2f
    invoke-virtual {v4, v0}, Lcom/baidu/android/pushservice/f/b;->a(I)V

    invoke-virtual {v4, v1}, Lcom/baidu/android/pushservice/f/b;->a(Ljava/io/InputStream;)V

    return-object v4

    :cond_36
    :try_start_36
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_48

    move-result-object v3

    goto :goto_15

    :catch_3b
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v2

    move-object v2, v6

    :goto_40
    const-string v3, "HttpUtil"

    const-string v5, "readResponseData>>"

    invoke-static {v3, v5, v2}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2f

    :catch_48
    move-exception v1

    move-object v6, v1

    move-object v1, v2

    move-object v2, v6

    goto :goto_40

    :catch_4d
    move-exception v1

    move-object v2, v1

    move-object v1, v3

    goto :goto_40

    :catch_51
    move-exception v1

    move-object v6, v1

    move-object v1, v2

    move-object v2, v6

    goto :goto_40

    :catch_56
    move-exception v1

    move-object v6, v1

    move-object v1, v2

    move-object v2, v6

    goto :goto_40
.end method

.method private static a(Ljava/util/HashMap;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v2, :cond_24

    const-string v1, "&"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_24
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_11

    :cond_47
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_80

    const/16 v1, 0x7530

    :try_start_e
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "POST"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "PUT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    :cond_26
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    :cond_32
    :goto_32
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Content-type"

    const-string v2, "application/x-www-form-urlencoded;charset=utf-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4e

    const-string v1, "User-Agent"

    invoke-virtual {v0, v1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_59

    const-string v1, "HttpUtil"

    const-string v2, "a https request appear!!!"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_59
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    :goto_5c
    return-object v0

    :cond_5d
    const-string v1, "DELETE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_69} :catch_6a

    goto :goto_32

    :catch_6a
    move-exception v1

    :goto_6b
    const-string v2, "HttpUtil"

    const-string v3, "initConnSet>>"

    invoke-static {v2, v3, v1}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5c

    :cond_73
    :try_start_73
    const-string v1, "GET"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_7f} :catch_6a

    goto :goto_32

    :catch_80
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_6b
.end method

.method private static a(Ljava/lang/String;Ljava/util/HashMap;Ljava/net/HttpURLConnection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/HttpURLConnection;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "POST"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "PUT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "DELETE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_18
    invoke-static {p2, p1}, Lcom/baidu/android/pushservice/f/c;->a(Ljava/net/HttpURLConnection;Ljava/util/HashMap;)Z

    move-result v0

    if-nez v0, :cond_26

    new-instance v0, Ljava/io/IOException;

    const-string v1, "failed to writeRequestParams"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    return-void
.end method

.method public static varargs a([Ljava/io/Closeable;)V
    .registers 4

    if-eqz p0, :cond_19

    array-length v0, p0

    if-lez v0, :cond_19

    :try_start_5
    array-length v1, p0

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_19

    aget-object v2, p0, v0

    if-eqz v2, :cond_10

    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_13

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :catch_13
    move-exception v0

    const-string v1, "HttpUtil"

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_19
    return-void
.end method

.method private static a(I)Z
    .registers 3

    div-int/lit8 v0, p0, 0x64

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    const/4 v1, 0x5

    if-eq v0, v1, :cond_b

    const/4 v1, 0x6

    if-ne v0, v1, :cond_d

    :cond_b
    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private static a(Ljava/net/HttpURLConnection;Ljava/util/HashMap;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_60

    :cond_c
    move v0, v1

    :goto_d
    :try_start_d
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_30
    .catchall {:try_start_d .. :try_end_10} :catchall_44

    move-result-object v4

    :try_start_11
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_59
    .catchall {:try_start_11 .. :try_end_16} :catchall_51

    :try_start_16
    invoke-static {p1}, Lcom/baidu/android/pushservice/f/c;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "UTF-8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_26} :catch_5d
    .catchall {:try_start_16 .. :try_end_26} :catchall_54

    new-array v3, v7, [Ljava/io/Closeable;

    aput-object v2, v3, v1

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/baidu/android/pushservice/f/c;->a([Ljava/io/Closeable;)V

    :goto_2f
    return v0

    :catch_30
    move-exception v0

    move-object v2, v3

    :goto_32
    :try_start_32
    const-string v4, "HttpUtil"

    const-string v6, "writeRequestParams1>>"

    invoke-static {v4, v6, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_56

    new-array v0, v7, [Ljava/io/Closeable;

    aput-object v2, v0, v1

    aput-object v3, v0, v5

    invoke-static {v0}, Lcom/baidu/android/pushservice/f/c;->a([Ljava/io/Closeable;)V

    move v0, v1

    goto :goto_2f

    :catchall_44
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    :goto_47
    new-array v3, v7, [Ljava/io/Closeable;

    aput-object v2, v3, v1

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/baidu/android/pushservice/f/c;->a([Ljava/io/Closeable;)V

    throw v0

    :catchall_51
    move-exception v0

    move-object v2, v3

    goto :goto_47

    :catchall_54
    move-exception v0

    goto :goto_47

    :catchall_56
    move-exception v0

    move-object v4, v3

    goto :goto_47

    :catch_59
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_32

    :catch_5d
    move-exception v0

    move-object v3, v4

    goto :goto_32

    :cond_60
    move v0, v5

    goto :goto_d
.end method

.method public static a(Ljava/io/InputStream;)[B
    .registers 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_c
    :try_start_c
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2c

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_17} :catch_18
    .catchall {:try_start_c .. :try_end_17} :catchall_36

    goto :goto_c

    :catch_18
    move-exception v0

    :try_start_19
    const-string v2, "HttpUtil"

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_36

    new-array v0, v6, [Ljava/io/Closeable;

    aput-object v1, v0, v4

    aput-object p0, v0, v5

    invoke-static {v0}, Lcom/baidu/android/pushservice/f/c;->a([Ljava/io/Closeable;)V

    :goto_27
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_2c
    new-array v0, v6, [Ljava/io/Closeable;

    aput-object v1, v0, v4

    aput-object p0, v0, v5

    invoke-static {v0}, Lcom/baidu/android/pushservice/f/c;->a([Ljava/io/Closeable;)V

    goto :goto_27

    :catchall_36
    move-exception v0

    new-array v2, v6, [Ljava/io/Closeable;

    aput-object v1, v2, v4

    aput-object p0, v2, v5

    invoke-static {v2}, Lcom/baidu/android/pushservice/f/c;->a([Ljava/io/Closeable;)V

    throw v0
.end method

.method private static b(Ljava/net/HttpURLConnection;)Z
    .registers 3

    const-string v0, "Content-Encoding"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
