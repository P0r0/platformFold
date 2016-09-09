.class public final Lcom/alipay/mobilesecuritysdk/face/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-class v1, Lcom/alipay/mobilesecuritysdk/face/a;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "utdid"

    const-string v3, "utdid"

    const-string v4, ""

    invoke-static {p1, v3, v4}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tid"

    const-string v3, "tid"

    const-string v4, ""

    invoke-static {p1, v3, v4}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "userId"

    const-string v3, "userId"

    const-string v4, ""

    invoke-static {p1, v3, v4}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/face/a;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/apmobilesecuritysdk/face/a;->a(Ljava/util/Map;)V

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/e/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_62

    move-result v2

    if-nez v2, :cond_42

    :cond_40
    :goto_40
    monitor-exit v1

    return-object v0

    :cond_42
    :try_start_42
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/e/a;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/b;

    move-result-object v0

    if-eqz v0, :cond_53

    iget-object v2, v0, Lcom/alipay/apmobilesecuritysdk/e/b;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_53

    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/e/b;->a:Ljava/lang/String;

    goto :goto_40

    :cond_53
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/a/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/f/b;->a(Landroid/content/Context;)Ljava/lang/String;
    :try_end_60
    .catchall {:try_start_42 .. :try_end_60} :catchall_62

    move-result-object v0

    goto :goto_40

    :catchall_62
    move-exception v0

    monitor-exit v1

    throw v0
.end method
