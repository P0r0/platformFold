.class public final Lcom/alipay/apmobilesecuritysdk/f/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_f

    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {p2}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    :goto_f
    return-object v0

    :cond_10
    :try_start_10
    const-string v1, ""

    invoke-static {p0, p1, p2, v1}, Lcom/alipay/security/mobile/module/localstorage/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-static {}, Lcom/alipay/security/mobile/module/commonutils/crypto/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/security/mobile/module/commonutils/crypto/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_23} :catch_25

    move-result-object v0

    goto :goto_f

    :catch_25
    move-exception v1

    goto :goto_f
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    :goto_d
    return-object v0

    :cond_e
    :try_start_e
    invoke-static {p0}, Lcom/alipay/security/mobile/module/localstorage/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {}, Lcom/alipay/security/mobile/module/commonutils/crypto/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/security/mobile/module/commonutils/crypto/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2e} :catch_30

    move-result-object v0

    goto :goto_d

    :catch_30
    move-exception v1

    goto :goto_d
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p2}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    if-eqz p0, :cond_14

    invoke-static {p3}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    :try_start_15
    invoke-static {}, Lcom/alipay/security/mobile/module/commonutils/crypto/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/alipay/security/mobile/module/commonutils/crypto/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/alipay/security/mobile/module/localstorage/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_28} :catch_29

    goto :goto_14

    :catch_29
    move-exception v0

    goto :goto_14
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {p0}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p2}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    :try_start_13
    invoke-static {}, Lcom/alipay/security/mobile/module/commonutils/crypto/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/alipay/security/mobile/module/commonutils/crypto/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/security/mobile/module/localstorage/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2a} :catch_2b

    goto :goto_12

    :catch_2b
    move-exception v0

    goto :goto_12
.end method
