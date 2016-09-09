.class public final Lcom/alipay/apmobilesecuritysdk/face/e;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .registers 4
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

    const-class v1, Lcom/alipay/apmobilesecuritysdk/face/e;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lcom/alipay/apmobilesecuritysdk/a/a;

    invoke-direct {v0, p0}, Lcom/alipay/apmobilesecuritysdk/a/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Ljava/util/Map;)Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_e

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method
