.class public final Lcom/alipay/apmobilesecuritysdk/e/a;
.super Ljava/lang/Object;


# direct methods
.method public static declared-synchronized a()Lcom/alipay/apmobilesecuritysdk/e/b;
    .registers 8

    const/4 v0, 0x0

    const-class v2, Lcom/alipay/apmobilesecuritysdk/e/a;

    monitor-enter v2

    :try_start_4
    const-string v1, "wxcasxx_v3"

    const-string v3, "wxcasxx"

    invoke-static {v1, v3}, Lcom/alipay/apmobilesecuritysdk/f/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_3d

    move-result v3

    if-eqz v3, :cond_14

    :goto_12
    monitor-exit v2

    return-object v0

    :cond_14
    :try_start_14
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/e/b;

    const-string v4, "apdid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "deviceInfoHash"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "token"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "timestamp"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v5, v6, v3}, Lcom/alipay/apmobilesecuritysdk/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_36} :catch_38
    .catchall {:try_start_14 .. :try_end_36} :catchall_3d

    move-object v0, v1

    goto :goto_12

    :catch_38
    move-exception v1

    :try_start_39
    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/d;->a(Ljava/lang/Throwable;)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_12

    :catchall_3d
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/b;
    .registers 9

    const/4 v0, 0x0

    const-class v2, Lcom/alipay/apmobilesecuritysdk/e/a;

    monitor-enter v2

    :try_start_4
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/e/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v1, "wxcasxx_v3"

    const-string v3, "wxcasxx"

    invoke-static {v1, v3}, Lcom/alipay/apmobilesecuritysdk/f/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_16
    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_47

    move-result v3

    if-eqz v3, :cond_1e

    :goto_1c
    monitor-exit v2

    return-object v0

    :cond_1e
    :try_start_1e
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/e/b;

    const-string v4, "apdid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "deviceInfoHash"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "token"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "timestamp"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v5, v6, v3}, Lcom/alipay/apmobilesecuritysdk/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_40} :catch_42
    .catchall {:try_start_1e .. :try_end_40} :catchall_47

    move-object v0, v1

    goto :goto_1c

    :catch_42
    move-exception v1

    :try_start_43
    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/d;->a(Ljava/lang/Throwable;)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    goto :goto_1c

    :catchall_47
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/alipay/apmobilesecuritysdk/e/b;)V
    .registers 6

    const-class v1, Lcom/alipay/apmobilesecuritysdk/e/a;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "apdid"

    iget-object v3, p1, Lcom/alipay/apmobilesecuritysdk/e/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "deviceInfoHash"

    iget-object v3, p1, Lcom/alipay/apmobilesecuritysdk/e/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "token"

    iget-object v3, p1, Lcom/alipay/apmobilesecuritysdk/e/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "timestamp"

    iget-object v3, p1, Lcom/alipay/apmobilesecuritysdk/e/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "vkeyid_profiles_v3"

    const-string v3, "deviceid"

    invoke-static {p0, v2, v3, v0}, Lcom/alipay/apmobilesecuritysdk/f/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "wxcasxx_v3"

    const-string v3, "wxcasxx"

    invoke-static {v2, v3, v0}, Lcom/alipay/apmobilesecuritysdk/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_36} :catch_38
    .catchall {:try_start_3 .. :try_end_36} :catchall_3d

    :goto_36
    monitor-exit v1

    return-void

    :catch_38
    move-exception v0

    :try_start_39
    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/d;->a(Ljava/lang/Throwable;)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_36

    :catchall_3d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/b;
    .registers 9

    const/4 v0, 0x0

    const-class v2, Lcom/alipay/apmobilesecuritysdk/e/a;

    monitor-enter v2

    :try_start_4
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/e/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_39

    move-result v3

    if-eqz v3, :cond_10

    :goto_e
    monitor-exit v2

    return-object v0

    :cond_10
    :try_start_10
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/e/b;

    const-string v4, "apdid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "deviceInfoHash"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "token"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "timestamp"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v5, v6, v3}, Lcom/alipay/apmobilesecuritysdk/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_32} :catch_34
    .catchall {:try_start_10 .. :try_end_32} :catchall_39

    move-object v0, v1

    goto :goto_e

    :catch_34
    move-exception v1

    :try_start_35
    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/d;->a(Ljava/lang/Throwable;)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_e

    :catchall_39
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "vkeyid_profiles_v3"

    const-string v1, "deviceid"

    invoke-static {p0, v0, v1}, Lcom/alipay/apmobilesecuritysdk/f/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
