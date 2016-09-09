.class public Lcom/baidu/android/pushservice/e/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/baidu/android/pushservice/e/ac;->b:I

    iput v1, p0, Lcom/baidu/android/pushservice/e/ac;->c:I

    iput-boolean v1, p0, Lcom/baidu/android/pushservice/e/ac;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/e/ac;->e:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/ac;->a:Landroid/content/Context;

    return-void
.end method

.method private b()Z
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/baidu/android/pushservice/ah;->d()Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lcom/baidu/android/pushservice/e/ac;->c:I

    const/4 v4, 0x2

    if-le v3, v4, :cond_4e

    iget-object v3, p0, Lcom/baidu/android/pushservice/e/ac;->a:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/baidu/android/pushservice/e/ac;->e:Z

    invoke-static {v3, v4}, Lcom/baidu/android/pushservice/ah;->b(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "TokenRequester"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " --- token request use httpIp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/baidu/android/pushservice/e/ac;->e:Z

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4e

    invoke-static {}, Lcom/baidu/android/pushservice/ah;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_4e
    const-string v3, "TokenRequester"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>> token request:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_67
    invoke-direct {p0}, Lcom/baidu/android/pushservice/e/ac;->c()Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "POST"

    invoke-static {v0, v5, v4}, Lcom/baidu/android/pushservice/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/baidu/android/pushservice/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/f/b;->b()I

    move-result v5

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/f/b;->a()Ljava/io/InputStream;
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_78} :catch_1db
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_78} :catch_1a1
    .catchall {:try_start_67 .. :try_end_78} :catchall_1c9

    move-result-object v4

    const/16 v0, 0xc8

    if-ne v5, v0, :cond_134

    :try_start_7d
    invoke-static {v4}, Lcom/baidu/android/pushservice/i/a/b;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "TokenRequester"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<<< RequestToken return string :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "response_params"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_11a

    const-string v0, "channel_id"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "rsa_channel_token"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "expires_time"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "TokenRequester"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RequestToken channelId :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "TokenRequester"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RequestToken rsaChannelToken :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "TokenRequester"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RequestToken expiresTime :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/baidu/android/pushservice/e/ac;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/android/pushservice/al;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/al;

    move-result-object v3

    invoke-virtual {v3, v0, v5}, Lcom/baidu/android/pushservice/al;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_109
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_109} :catch_169
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_109} :catch_1d5
    .catchall {:try_start_7d .. :try_end_109} :catchall_1d3

    move v0, v1

    :goto_10a
    const/4 v3, 0x0

    :try_start_10b
    iput v3, p0, Lcom/baidu/android/pushservice/e/ac;->c:I

    if-nez v4, :cond_19a

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/baidu/android/pushservice/e/ac;->d:Z
    :try_end_112
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_112} :catch_19f
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_112} :catch_1d9
    .catchall {:try_start_10b .. :try_end_112} :catchall_1d3

    :goto_112
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/baidu/android/pushservice/f/c;->a([Ljava/io/Closeable;)V

    :goto_119
    return v0

    :cond_11a
    :try_start_11a
    const-string v3, "TokenRequester"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RequestToken failed :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_132
    move v0, v2

    goto :goto_10a

    :cond_134
    invoke-static {v4}, Lcom/baidu/android/pushservice/i/a/b;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "TokenRequester"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RequestToken request failed  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "TokenRequester"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<<< RequestToken return string :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_168
    .catch Ljava/io/IOException; {:try_start_11a .. :try_end_168} :catch_169
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_168} :catch_1d5
    .catchall {:try_start_11a .. :try_end_168} :catchall_1d3

    goto :goto_132

    :catch_169
    move-exception v0

    move-object v3, v0

    move v0, v2

    :goto_16c
    :try_start_16c
    const-string v5, "TokenRequester"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "TokenRequester"

    const-string v5, "io exception, schedule retry"

    invoke-static {v3, v5}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/baidu/android/pushservice/e/ac;->d:Z
    :try_end_192
    .catchall {:try_start_16c .. :try_end_192} :catchall_1d3

    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/baidu/android/pushservice/f/c;->a([Ljava/io/Closeable;)V

    goto :goto_119

    :cond_19a
    const/4 v3, 0x0

    :try_start_19b
    iput-boolean v3, p0, Lcom/baidu/android/pushservice/e/ac;->d:Z
    :try_end_19d
    .catch Ljava/io/IOException; {:try_start_19b .. :try_end_19d} :catch_19f
    .catch Ljava/lang/Exception; {:try_start_19b .. :try_end_19d} :catch_1d9
    .catchall {:try_start_19b .. :try_end_19d} :catchall_1d3

    goto/16 :goto_112

    :catch_19f
    move-exception v3

    goto :goto_16c

    :catch_1a1
    move-exception v0

    move-object v4, v3

    move-object v3, v0

    move v0, v2

    :goto_1a5
    :try_start_1a5
    const-string v5, "TokenRequester"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connect Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/baidu/android/pushservice/e/ac;->d:Z
    :try_end_1c0
    .catchall {:try_start_1a5 .. :try_end_1c0} :catchall_1d3

    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/baidu/android/pushservice/f/c;->a([Ljava/io/Closeable;)V

    goto/16 :goto_119

    :catchall_1c9
    move-exception v0

    move-object v4, v3

    :goto_1cb
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/baidu/android/pushservice/f/c;->a([Ljava/io/Closeable;)V

    throw v0

    :catchall_1d3
    move-exception v0

    goto :goto_1cb

    :catch_1d5
    move-exception v0

    move-object v3, v0

    move v0, v2

    goto :goto_1a5

    :catch_1d9
    move-exception v3

    goto :goto_1a5

    :catch_1db
    move-exception v0

    move-object v4, v3

    move-object v3, v0

    move v0, v2

    goto :goto_16c
.end method

.method private c()Ljava/util/HashMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "method"

    const-string v4, "token"

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcom/baidu/android/pushservice/e/c;->b(Ljava/util/HashMap;)V

    const-string v0, "device_type"

    const-string v4, "3"

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/ac;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/j/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v4, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC/7VlVn9LIrZ71PL2RZMbK/Yxc\r\ndb046w/cXVylxS7ouPY06namZUFVhdbUnNRJzmGUZlzs3jUbvMO3l+4c9cw/n9aQ\r\nrm/brgaRDeZbeSrQYRZv60xzJIimuFFxsRM+ku6/dAyYmXiQXlRbgvFQ0MsVng4j\r\nv+cXhtTis2Kbwb8mQwIDAQAB\r\n"

    invoke-static {v0, v4}, Lcom/baidu/android/pushservice/j/f;->c([BLjava/lang/String;)[B

    move-result-object v0

    const-string v4, "utf-8"

    invoke-static {v0, v4}, Lcom/baidu/android/pushservice/j/b;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "rsa_device_id"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "device_name"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/ac;->a:Landroid/content/Context;

    const-string v4, "com.baidu.android.pushservice.PushManager.LOGIN_TYPE"

    const/4 v5, -0x1

    invoke-static {v0, v4, v5}, Lcom/baidu/android/pushservice/util/l;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/baidu/android/pushservice/e/ac;->a:Landroid/content/Context;

    const-string v5, "com.baidu.android.pushservice.PushManager.LONGIN_VALUE"

    invoke-static {v4, v5}, Lcom/baidu/android/pushservice/util/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    if-ne v0, v5, :cond_db

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/ac;->a:Landroid/content/Context;

    const-string v5, "com.baidu.android.pushservice.PushManager.BDUSS"

    invoke-static {v0, v5}, Lcom/baidu/android/pushservice/util/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "rsa_bduss"

    invoke-static {v0}, Lcom/baidu/android/pushservice/PushConstants;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "appid"

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_64
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "api_level"

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/ac;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/q;->b(Landroid/content/Context;)[I

    move-result-object v0

    const-string v5, "screen_height"

    aget v6, v0, v2

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "screen_width"

    aget v0, v0, v1

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "model"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "isroot"

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/ac;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_ef

    move v0, v1

    :goto_96
    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "is_baidu_app"

    iget-object v5, p0, Lcom/baidu/android/pushservice/e/ac;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/baidu/android/pushservice/e/ac;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/android/pushservice/util/q;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f1

    :goto_a9
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "push_sdk_version"

    invoke-static {}, Lcom/baidu/android/pushservice/b;->a()S

    move-result v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "info"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TokenRequester"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TOKEN param -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/baidu/android/pushservice/e/c;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_db
    if-ne v0, v1, :cond_e8

    const-string v0, "rsa_access_token"

    invoke-static {v4}, Lcom/baidu/android/pushservice/PushConstants;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_64

    :cond_e8
    const-string v0, "apikey"

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_64

    :cond_ef
    move v0, v2

    goto :goto_96

    :cond_f1
    move v1, v2

    goto :goto_a9
.end method

.method private d()V
    .registers 5

    iget v0, p0, Lcom/baidu/android/pushservice/e/ac;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/android/pushservice/e/ac;->c:I

    iget v0, p0, Lcom/baidu/android/pushservice/e/ac;->c:I

    iget v1, p0, Lcom/baidu/android/pushservice/e/ac;->b:I

    if-ge v0, v1, :cond_5d

    const/4 v0, 0x1

    iget v1, p0, Lcom/baidu/android/pushservice/e/ac;->c:I

    add-int/lit8 v1, v1, -0x1

    shl-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x5

    mul-int/lit16 v0, v0, 0x3e8

    const-string v1, "TokenRequester"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "schedule retry-- retry times: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/baidu/android/pushservice/e/ac;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "time delay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v0, v0

    :try_start_3b
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_3e} :catch_3f

    :goto_3e
    return-void

    :catch_3f
    move-exception v0

    const-string v1, "TokenRequester"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    :cond_5d
    const-string v0, "TokenRequester"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hava reconnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/android/pushservice/e/ac;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times, all failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/e/ac;->d:Z

    goto :goto_3e
.end method


# virtual methods
.method protected a()V
    .registers 5

    :cond_0
    invoke-direct {p0}, Lcom/baidu/android/pushservice/e/ac;->b()Z

    move-result v0

    iget-boolean v1, p0, Lcom/baidu/android/pushservice/e/ac;->d:Z

    if-eqz v1, :cond_b

    invoke-direct {p0}, Lcom/baidu/android/pushservice/e/ac;->d()V

    :cond_b
    iget v1, p0, Lcom/baidu/android/pushservice/e/ac;->b:I

    if-lez v1, :cond_13

    iget-boolean v1, p0, Lcom/baidu/android/pushservice/e/ac;->d:Z

    if-nez v1, :cond_0

    :cond_13
    const-string v1, "TokenRequester"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RequestTokenThread connectResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/ac;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/q;->i(Landroid/content/Context;)V

    :cond_32
    :goto_32
    return-void

    :cond_33
    iget-object v0, p0, Lcom/baidu/android/pushservice/e/ac;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/e/c;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/baidu/android/pushservice/v;->a:Lcom/baidu/android/pushservice/i;

    if-eqz v0, :cond_32

    const-string v0, "TokenRequester"

    const-string v1, "TokenRequester start PushService after Request finish."

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/ac;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/p;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_32
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/android/pushservice/e/ac;->b:I

    return-void
.end method

.method public run()V
    .registers 4

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/e/ac;->a()V

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/ac;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/al;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/al;

    move-result-object v1

    monitor-enter v1

    :try_start_a
    iget-object v0, p0, Lcom/baidu/android/pushservice/e/ac;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/al;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/al;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/baidu/android/pushservice/al;->a(Z)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/ac;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/al;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/al;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_1f

    throw v0
.end method
