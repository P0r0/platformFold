.class public Lcom/vivo/sdkplugin/net/NetworkUtilities;
.super Ljava/lang/Object;


# static fields
.field public static final CONNECTION_TYPE_BLUETOOTH:I = 0x7

.field public static final CONNECTION_TYPE_MOBILE:I = 0x1

.field public static final CONNECTION_TYPE_NULL:I = 0x0

.field public static final CONNECTION_TYPE_WIFI:I = 0x2

.field public static final SEND_DATA_METHOD_GET:I = 0x0

.field public static final SEND_DATA_METHOD_POST:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DownloadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v2, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->openConnection(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_11

    move-result-object v1

    if-eqz v1, :cond_b

    :try_start_7
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_23

    move-result-object v2

    :cond_b
    if-eqz v1, :cond_10

    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_1e

    :cond_10
    :goto_10
    return-object v2

    :catchall_11
    move-exception v0

    move-object v1, v2

    :goto_13
    if-eqz v1, :cond_18

    :try_start_15
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_19

    :cond_18
    :goto_18
    throw v0

    :catch_19
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    :catchall_23
    move-exception v0

    goto :goto_13
.end method

.method private static a()Lorg/apache/http/client/HttpClient;
    .registers 2

    const/16 v1, 0x4e20

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    const-string v1, "Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv:1.9.2) Gecko/20100115 Firefox/3.6"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    return-object v1
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_f
    :try_start_f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_34
    .catchall {:try_start_f .. :try_end_12} :catchall_41

    move-result-object v2

    if-nez v2, :cond_1d

    :try_start_15
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_4b

    :goto_18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1d
    :try_start_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_33} :catch_34
    .catchall {:try_start_1d .. :try_end_33} :catchall_41

    goto :goto_f

    :catch_34
    move-exception v0

    :try_start_35
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_41

    :try_start_38
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_18

    :catch_3c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18

    :catchall_41
    move-exception v0

    :try_start_42
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    :goto_45
    throw v0

    :catch_46
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_45

    :catch_4b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18
.end method

.method public static doGet(Ljava/lang/String;Ljava/util/HashMap;)Ljava/io/InputStream;
    .registers 11

    const/4 v3, 0x0

    invoke-static {}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->a()Lorg/apache/http/client/HttpClient;

    move-result-object v4

    const-string v0, "NetworkUtilities"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doGet the url before encode is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    :try_start_1b
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_26
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1b .. :try_end_26} :catch_ca

    move-result v0

    if-nez v0, :cond_80

    move-object v0, v2

    :goto_2a
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    const-string v1, "&"

    const-string v2, "?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4b
    const-string v0, "NetworkUtilities"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doGet the url after encode is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_5f
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_64
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5f .. :try_end_64} :catch_d2

    :try_start_64
    invoke-interface {v4, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_67
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_64 .. :try_end_67} :catch_db
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_e4
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_ee

    move-result-object v0

    :goto_68
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_103

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    :try_start_7b
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_7e
    .catch Ljava/lang/IllegalStateException; {:try_start_7b .. :try_end_7e} :catch_f8
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_fd

    move-result-object v3

    :goto_7f
    return-object v3

    :cond_80
    :try_start_80
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v1, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v0, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "&"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_80 .. :try_end_c7} :catch_ca

    move-result-object v2

    goto/16 :goto_23

    :catch_ca
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_2a

    :catch_d2
    move-exception v0

    const-string v0, "NetworkUtilities"

    const-string v1, "uri argument error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    :catch_db
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    move-object v0, v3

    goto :goto_68

    :catch_e4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v3

    goto/16 :goto_68

    :catch_ee
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v3

    goto/16 :goto_68

    :catch_f8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_7f

    :catch_fd
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7f

    :cond_103
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error Response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7f
.end method

.method public static doPost(Ljava/lang/String;Ljava/util/HashMap;)Ljava/io/InputStream;
    .registers 10

    const/4 v2, 0x0

    const-string v0, "NetworkUtilities"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "doPost url is "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->a()Lorg/apache/http/client/HttpClient;

    move-result-object v3

    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6b

    :try_start_31
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v1, "UTF-8"

    invoke-direct {v0, v5, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_3b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_31 .. :try_end_3b} :catch_c6

    :goto_3b
    :try_start_3b
    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_3e
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3b .. :try_end_3e} :catch_86
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_95

    move-result-object v0

    move-object v1, v2

    :goto_40
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_ae

    :try_start_4c
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_53
    .catch Ljava/lang/IllegalStateException; {:try_start_4c .. :try_end_53} :catch_a4
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_53} :catch_a9

    move-result-object v2

    :goto_54
    if-eqz v1, :cond_6a

    const-string v0, "NetworkUtilities"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doPost error, error message is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    return-object v2

    :cond_6b
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v7, v1, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :catch_86
    move-exception v1

    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    move-object v1, v0

    move-object v0, v2

    goto :goto_40

    :catch_95
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v0

    move-object v0, v2

    goto :goto_40

    :catch_a4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_54

    :catch_a9
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_54

    :cond_ae
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Error Response: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_54

    :catch_c6
    move-exception v0

    goto/16 :goto_3b
.end method

.method public static getConnectionType(Landroid/content/Context;)I
    .registers 9

    const/4 v3, 0x7

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_13

    move v0, v1

    :goto_12
    return v0

    :cond_13
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v5, :cond_1d

    move v0, v1

    goto :goto_12

    :cond_1d
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const-string v5, "NetworkUtilities"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "network type:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " networkInfo:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v4, v2, :cond_43

    const/4 v0, 0x2

    goto :goto_12

    :cond_43
    if-nez v4, :cond_47

    move v0, v2

    goto :goto_12

    :cond_47
    if-ne v4, v3, :cond_4b

    move v0, v3

    goto :goto_12

    :cond_4b
    move v0, v1

    goto :goto_12
.end method

.method public static getWebImage(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 10

    const/4 v1, 0x0

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    :try_start_9
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_11

    move-object v0, v1

    :cond_10
    :goto_10
    return-object v0

    :cond_11
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_16} :catch_94

    :try_start_16
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_a3

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v3

    if-eqz v0, :cond_9b

    const/4 v4, -0x1

    if-eq v3, v4, :cond_9b

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\nhost["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] port["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NetworkUtilities"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "proxy line is"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v0, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/Proxy$Type;->valueOf(Ljava/lang/String;)Ljava/net/Proxy$Type;

    move-result-object v0

    new-instance v3, Ljava/net/Proxy;

    invoke-direct {v3, v0, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {v2, v3}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_78} :catch_c0
    .catchall {:try_start_16 .. :try_end_78} :catchall_d4

    move-object v3, v0

    :goto_79
    const/4 v0, 0x1

    :try_start_7a
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_83} :catch_e9
    .catchall {:try_start_7a .. :try_end_83} :catchall_e4

    move-result-object v2

    if-eqz v2, :cond_b0

    :try_start_86
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_ec
    .catchall {:try_start_86 .. :try_end_89} :catchall_e6

    move-result-object v0

    if-eqz v2, :cond_10

    :try_start_8c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_ab

    :goto_8f
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_10

    :catch_94
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_10

    :cond_9b
    :try_start_9b
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    goto :goto_79

    :cond_a3
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_a9} :catch_c0
    .catchall {:try_start_9b .. :try_end_a9} :catchall_d4

    move-object v3, v0

    goto :goto_79

    :catch_ab
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8f

    :cond_b0
    if-eqz v2, :cond_b8

    :try_start_b2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b5} :catch_bb

    :goto_b5
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b8
    :goto_b8
    move-object v0, v1

    goto/16 :goto_10

    :catch_bb
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b5

    :catch_c0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_c3
    :try_start_c3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c6
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_e6

    if-eqz v2, :cond_b8

    :try_start_c8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cb} :catch_cf

    :goto_cb
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_b8

    :catch_cf
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_cb

    :catchall_d4
    move-exception v0

    move-object v3, v1

    :goto_d6
    if-eqz v1, :cond_de

    :try_start_d8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_db} :catch_df

    :goto_db
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_de
    throw v0

    :catch_df
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_db

    :catchall_e4
    move-exception v0

    goto :goto_d6

    :catchall_e6
    move-exception v0

    move-object v1, v2

    goto :goto_d6

    :catch_e9
    move-exception v0

    move-object v2, v1

    goto :goto_c3

    :catch_ec
    move-exception v0

    goto :goto_c3
.end method

.method public static openConnection(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_6} :catch_17

    :goto_6
    :try_start_6
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_1d

    move-result-object v0

    :goto_a
    const/16 v2, 0x4e20

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    :try_start_f
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_23

    :goto_12
    :try_start_12
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_28

    move-result-object v1

    :goto_16
    return-object v1

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v0, v1

    goto :goto_6

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_a

    :catch_23
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    :catch_28
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_16
.end method
