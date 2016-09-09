.class public final Lcom/ipaynow/plugin/utils/b;
.super Ljava/lang/Object;


# direct methods
.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_6
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_11
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_11} :catch_d9
    .catch Ljava/net/ProtocolException; {:try_start_6 .. :try_end_11} :catch_af
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_11} :catch_bd
    .catchall {:try_start_6 .. :try_end_11} :catchall_cb

    const/16 v3, 0x7530

    :try_start_13
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v3, 0x7530

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Accept-Charset"

    const-string v4, "UTF-8"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "POST"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_8f

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_70
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_73
    .catch Ljava/net/MalformedURLException; {:try_start_13 .. :try_end_73} :catch_82
    .catch Ljava/net/ProtocolException; {:try_start_13 .. :try_end_73} :catch_d7
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_73} :catch_d5
    .catchall {:try_start_13 .. :try_end_73} :catchall_d0

    move-result-object v4

    if-nez v4, :cond_7e

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7d
    return-object v0

    :cond_7e
    :try_start_7e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_81
    .catch Ljava/net/MalformedURLException; {:try_start_7e .. :try_end_81} :catch_82
    .catch Ljava/net/ProtocolException; {:try_start_7e .. :try_end_81} :catch_d7
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_d5
    .catchall {:try_start_7e .. :try_end_81} :catchall_d0

    goto :goto_70

    :catch_82
    move-exception v2

    :goto_83
    :try_start_83
    const-string v2, "net error"

    const-string v3, "\u7f51\u7edc\u5730\u5740\u89e3\u6790\u9519\u8bef"

    invoke-static {v2, v3}, Lcom/ipaynow/plugin/utils/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8a
    .catchall {:try_start_83 .. :try_end_8a} :catchall_d0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    goto :goto_7d

    :cond_8f
    :try_start_8f
    const-string v2, "\u7f51\u7edc\u5f02\u5e38"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u54cd\u5e94\u7801:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_aa
    .catch Ljava/net/MalformedURLException; {:try_start_8f .. :try_end_aa} :catch_82
    .catch Ljava/net/ProtocolException; {:try_start_8f .. :try_end_aa} :catch_d7
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_aa} :catch_d5
    .catchall {:try_start_8f .. :try_end_aa} :catchall_d0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    goto :goto_7d

    :catch_af
    move-exception v0

    move-object v0, v1

    :goto_b1
    :try_start_b1
    const-string v2, "net error"

    const-string v3, "HTTP\u65b9\u6cd5\u540d\u8bbe\u7f6e\u9519\u8bef"

    invoke-static {v2, v3}, Lcom/ipaynow/plugin/utils/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b8
    .catchall {:try_start_b1 .. :try_end_b8} :catchall_d0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    goto :goto_7d

    :catch_bd
    move-exception v0

    move-object v0, v1

    :goto_bf
    :try_start_bf
    const-string v2, "net error"

    const-string v3, "\u7f51\u7edc\u8f93\u51fa\u6d41\u6253\u5f00\u5931\u8d25"

    invoke-static {v2, v3}, Lcom/ipaynow/plugin/utils/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c6
    .catchall {:try_start_bf .. :try_end_c6} :catchall_d0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    goto :goto_7d

    :catchall_cb
    move-exception v0

    :goto_cc
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    :catchall_d0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_cc

    :catch_d5
    move-exception v2

    goto :goto_bf

    :catch_d7
    move-exception v2

    goto :goto_b1

    :catch_d9
    move-exception v0

    move-object v0, v1

    goto :goto_83
.end method
