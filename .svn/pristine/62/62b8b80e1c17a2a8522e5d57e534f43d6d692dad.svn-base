.class public final Lcom/alipay/apmobilesecuritysdk/a/a/a;
.super Ljava/lang/Object;


# direct methods
.method public static declared-synchronized a()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const-class v1, Lcom/alipay/apmobilesecuritysdk/a/a/a;

    monitor-enter v1

    :try_start_4
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/a/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_20

    move-result v3

    if-eqz v3, :cond_10

    :cond_e
    :goto_e
    monitor-exit v1

    return-object v0

    :cond_10
    :try_start_10
    const-string v3, "`"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_e

    const/4 v0, 0x0

    aget-object v0, v2, v0
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_20

    goto :goto_e

    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-class v1, Lcom/alipay/apmobilesecuritysdk/a/a/a;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/a/a/a;->b(Landroid/content/Context;)Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_13

    move-result-object v0

    :cond_11
    monitor-exit v1

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Lcom/alipay/apmobilesecuritysdk/e/b;)V
    .registers 5

    const-class v1, Lcom/alipay/apmobilesecuritysdk/a/a/a;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/e/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_54

    move-result v0

    if-eqz v0, :cond_d

    :cond_b
    :goto_b
    monitor-exit v1

    return-void

    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/e/b;->a:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/e/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "`"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/e/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_54

    move-result-object v0

    if-eqz v0, :cond_b

    :try_start_36
    invoke-static {}, Lcom/alipay/security/mobile/module/commonutils/crypto/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/alipay/security/mobile/module/commonutils/crypto/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "device"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "deviceid_v2"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/security/mobile/module/localstorage/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_51} :catch_52
    .catchall {:try_start_36 .. :try_end_51} :catchall_54

    goto :goto_b

    :catch_52
    move-exception v0

    goto :goto_b

    :catchall_54
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b()Ljava/lang/String;
    .registers 2

    const-string v0, "deviceid_v2"

    invoke-static {v0}, Lcom/alipay/security/mobile/module/localstorage/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "device"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/security/mobile/module/commonutils/crypto/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/security/mobile/module/commonutils/crypto/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_18} :catch_1a

    move-result-object v0

    :goto_19
    return-object v0

    :catch_1a
    move-exception v0

    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    const-class v3, Lcom/alipay/apmobilesecuritysdk/a/a/a;

    monitor-enter v3

    :try_start_4
    const-string v1, ""
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_3f

    :try_start_6
    const-string v2, "profiles"

    const-string v4, "deviceid"

    const-string v5, ""

    invoke-static {p0, v2, v4, v5}, Lcom/alipay/security/mobile/module/localstorage/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    move-object v2, v0

    :goto_17
    invoke-static {v2}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1a} :catch_3c
    .catchall {:try_start_6 .. :try_end_1a} :catchall_3f

    move-result v4

    if-eqz v4, :cond_28

    :goto_1d
    monitor-exit v3

    return-object v0

    :cond_1f
    :try_start_1f
    invoke-static {}, Lcom/alipay/security/mobile/module/commonutils/crypto/i;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/alipay/security/mobile/module/commonutils/crypto/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_17

    :cond_28
    new-instance v0, Lcom/alipay/apmobilesecuritysdk/a/a/b;

    invoke-direct {v0}, Lcom/alipay/apmobilesecuritysdk/a/a/b;-><init>()V

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/a/a/b;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3d

    const-string v2, "deviceId"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_3b} :catch_3c
    .catchall {:try_start_1f .. :try_end_3b} :catchall_3f

    goto :goto_1d

    :catch_3c
    move-exception v0

    :cond_3d
    move-object v0, v1

    goto :goto_1d

    :catchall_3f
    move-exception v0

    monitor-exit v3

    throw v0
.end method
