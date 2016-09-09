.class public final Lcom/alipay/apmobilesecuritysdk/f/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ""

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/f/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-class v1, Lcom/alipay/apmobilesecuritysdk/f/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/f/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    const-string v0, "alipay_vkey_random"

    const-string v2, "random"

    const-string v3, ""

    invoke-static {p0, v0, v2, v3}, Lcom/alipay/security/mobile/module/localstorage/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/f/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/crypto/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/f/b;->a:Ljava/lang/String;

    const-string v0, "alipay_vkey_random"

    const-string v2, "random"

    sget-object v3, Lcom/alipay/apmobilesecuritysdk/f/b;->a:Ljava/lang/String;

    if-eqz v3, :cond_47

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_47

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_47
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/f/b;->a:Ljava/lang/String;
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_4b

    monitor-exit v1

    return-object v0

    :catchall_4b
    move-exception v0

    monitor-exit v1

    throw v0
.end method
