.class public final Lcom/alipay/apmobilesecuritysdk/c/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/b;->a()Lcom/alipay/security/mobile/module/deviceinfo/b;

    move-result-object v6

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/e/c;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/d;

    move-result-object v5

    invoke-static {p0}, Lcom/alipay/security/mobile/module/deviceinfo/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/alipay/security/mobile/module/deviceinfo/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/alipay/security/mobile/module/deviceinfo/b;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/b;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/alipay/security/mobile/module/deviceinfo/b;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_177

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2f

    iget-object v0, v5, Lcom/alipay/apmobilesecuritysdk/e/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2f
    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3b

    iget-object v1, v5, Lcom/alipay/apmobilesecuritysdk/e/d;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3b
    invoke-static {v2}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_47

    iget-object v2, v5, Lcom/alipay/apmobilesecuritysdk/e/d;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/security/mobile/module/commonutils/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_47
    invoke-static {v3}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_53

    iget-object v3, v5, Lcom/alipay/apmobilesecuritysdk/e/d;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/security/mobile/module/commonutils/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_53
    invoke-static {v4}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5f

    iget-object v4, v5, Lcom/alipay/apmobilesecuritysdk/e/d;->e:Ljava/lang/String;

    invoke-static {v4}, Lcom/alipay/security/mobile/module/commonutils/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_5f
    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    :goto_64
    new-instance v0, Lcom/alipay/apmobilesecuritysdk/e/d;

    invoke-direct/range {v0 .. v5}, Lcom/alipay/apmobilesecuritysdk/e/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_b9

    :try_start_6b
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "imei"

    iget-object v10, v0, Lcom/alipay/apmobilesecuritysdk/e/d;->a:Ljava/lang/String;

    invoke-static {v10}, Lcom/alipay/security/mobile/module/commonutils/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "imsi"

    iget-object v10, v0, Lcom/alipay/apmobilesecuritysdk/e/d;->b:Ljava/lang/String;

    invoke-static {v10}, Lcom/alipay/security/mobile/module/commonutils/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "mac"

    iget-object v10, v0, Lcom/alipay/apmobilesecuritysdk/e/d;->c:Ljava/lang/String;

    invoke-static {v10}, Lcom/alipay/security/mobile/module/commonutils/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "bluetoothmac"

    iget-object v10, v0, Lcom/alipay/apmobilesecuritysdk/e/d;->d:Ljava/lang/String;

    invoke-static {v10}, Lcom/alipay/security/mobile/module/commonutils/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "gsi"

    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/e/d;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "device_feature_file_name"

    const-string v9, "device_feature_file_key"

    invoke-static {v8, v9, v0}, Lcom/alipay/apmobilesecuritysdk/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "device_feature_prefs_name"

    const-string v9, "device_feature_prefs_key"

    invoke-static {p0, v8, v9, v0}, Lcom/alipay/apmobilesecuritysdk/f/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_b9} :catch_171

    :cond_b9
    :goto_b9
    const-string v0, "AD1"

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD2"

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD3"

    invoke-static {p0}, Lcom/alipay/security/mobile/module/deviceinfo/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD5"

    invoke-static {p0}, Lcom/alipay/security/mobile/module/deviceinfo/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD6"

    invoke-static {p0}, Lcom/alipay/security/mobile/module/deviceinfo/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD7"

    invoke-static {p0}, Lcom/alipay/security/mobile/module/deviceinfo/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD8"

    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD9"

    invoke-static {p0}, Lcom/alipay/security/mobile/module/deviceinfo/b;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD10"

    invoke-interface {v7, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD11"

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD12"

    invoke-virtual {v6}, Lcom/alipay/security/mobile/module/deviceinfo/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD13"

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD14"

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD15"

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD16"

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD17"

    const-string v1, ""

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD18"

    invoke-interface {v7, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD19"

    invoke-static {p0}, Lcom/alipay/security/mobile/module/deviceinfo/b;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD20"

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/b;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD21"

    invoke-static {p0}, Lcom/alipay/security/mobile/module/deviceinfo/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD22"

    const-string v1, ""

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD23"

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AL3"

    invoke-static {p0}, Lcom/alipay/security/mobile/module/deviceinfo/b;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v7

    :catch_171
    move-exception v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/d;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_b9

    :cond_177
    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_64
.end method