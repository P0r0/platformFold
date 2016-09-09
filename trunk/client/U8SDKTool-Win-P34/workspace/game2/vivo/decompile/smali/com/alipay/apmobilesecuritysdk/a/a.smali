.class public final Lcom/alipay/apmobilesecuritysdk/a/a;
.super Ljava/lang/Object;


# static fields
.field private static b:Z


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/apmobilesecuritysdk/a/a;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    :try_start_2
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/e/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/e/a;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/b;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v2, v1, Lcom/alipay/apmobilesecuritysdk/e/b;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v0, v1, Lcom/alipay/apmobilesecuritysdk/e/b;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/e/f;->a(Lcom/alipay/apmobilesecuritysdk/e/b;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_20} :catch_21

    goto :goto_c

    :catch_21
    move-exception v1

    goto :goto_c
.end method

.method static synthetic a(Lcom/alipay/apmobilesecuritysdk/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v3, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/d;->a(Landroid/content/Context;)Lcom/alipay/security/mobile/module/a/c/a;

    move-result-object v0

    const-string v1, "android"

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/alipay/security/mobile/module/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/security/mobile/module/a/b/a;

    move-result-object v0

    iget-boolean v1, v0, Lcom/alipay/security/mobile/module/a/b/a;->c:Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_f} :catch_22
    .catchall {:try_start_1 .. :try_end_f} :catchall_2a

    if-nez v1, :cond_15

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Z)V

    :goto_14
    return-void

    :cond_15
    :try_start_15
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    iget-object v2, v0, Lcom/alipay/security/mobile/module/a/b/a;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/alipay/security/mobile/module/a/b/a;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/alipay/apmobilesecuritysdk/e/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1e} :catch_22
    .catchall {:try_start_15 .. :try_end_1e} :catchall_2a

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Z)V

    goto :goto_14

    :catch_22
    move-exception v0

    :try_start_23
    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/d;->a(Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2a

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Z)V

    goto :goto_14

    :catchall_2a
    move-exception v0

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Z)V

    throw v0
.end method

.method private static declared-synchronized a(Z)V
    .registers 3

    const-class v0, Lcom/alipay/apmobilesecuritysdk/a/a;

    monitor-enter v0

    :try_start_3
    sput-boolean p0, Lcom/alipay/apmobilesecuritysdk/a/a;->b:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized a()Z
    .registers 2

    const-class v0, Lcom/alipay/apmobilesecuritysdk/a/a;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/alipay/apmobilesecuritysdk/a/a;->b:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private b(Ljava/util/Map;)Lcom/alipay/security/mobile/module/a/b/c;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/security/mobile/module/a/b/c;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object v5, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    new-instance v6, Lcom/alipay/security/mobile/module/a/b/d;

    invoke-direct {v6}, Lcom/alipay/security/mobile/module/a/b/d;-><init>()V

    const-string v7, "3"

    const-string v4, ""

    const-string v3, ""

    const-string v1, ""

    const-string v2, ""

    const-string v8, "umid"

    const-string v9, ""

    invoke-static {p1, v8, v9}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5}, Lcom/alipay/apmobilesecuritysdk/e/a;->b(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/b;

    move-result-object v9

    if-eqz v9, :cond_6b

    iget-object v4, v9, Lcom/alipay/apmobilesecuritysdk/e/b;->c:Ljava/lang/String;

    iget-object v3, v9, Lcom/alipay/apmobilesecuritysdk/e/b;->a:Ljava/lang/String;

    iget-object v2, v9, Lcom/alipay/apmobilesecuritysdk/e/b;->d:Ljava/lang/String;

    move-object v10, v2

    move-object v2, v3

    move-object v3, v10

    :goto_29
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/e/a;->a()Lcom/alipay/apmobilesecuritysdk/e/b;

    move-result-object v9

    if-eqz v9, :cond_31

    iget-object v1, v9, Lcom/alipay/apmobilesecuritysdk/e/b;->a:Ljava/lang/String;

    :cond_31
    invoke-static {v2}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_45

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_45

    invoke-static {v5}, Lcom/alipay/apmobilesecuritysdk/a/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/a/a/a;->a()Ljava/lang/String;

    move-result-object v1

    :cond_45
    const-string v9, "android"

    iput-object v9, v6, Lcom/alipay/security/mobile/module/a/b/d;->a:Ljava/lang/String;

    iput-object v2, v6, Lcom/alipay/security/mobile/module/a/b/d;->d:Ljava/lang/String;

    iput-object v1, v6, Lcom/alipay/security/mobile/module/a/b/d;->c:Ljava/lang/String;

    iput-object v4, v6, Lcom/alipay/security/mobile/module/a/b/d;->e:Ljava/lang/String;

    iput-object v8, v6, Lcom/alipay/security/mobile/module/a/b/d;->f:Ljava/lang/String;

    iput-object v3, v6, Lcom/alipay/security/mobile/module/a/b/d;->h:Ljava/lang/String;

    iput-object v7, v6, Lcom/alipay/security/mobile/module/a/b/d;->g:Ljava/lang/String;

    invoke-static {v5, p1}, Lcom/alipay/apmobilesecuritysdk/c/e;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v6, Lcom/alipay/security/mobile/module/a/b/d;->i:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/security/mobile/module/a/d;->a(Landroid/content/Context;)Lcom/alipay/security/mobile/module/a/c/a;

    move-result-object v1

    invoke-interface {v1, v6}, Lcom/alipay/security/mobile/module/a/c/a;->a(Lcom/alipay/security/mobile/module/a/b/d;)Lcom/alipay/security/mobile/module/a/b/c;
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_64} :catch_66

    move-result-object v0

    :goto_65
    return-object v0

    :catch_66
    move-exception v1

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/d;->a(Ljava/lang/Throwable;)V

    goto :goto_65

    :cond_6b
    move-object v10, v2

    move-object v2, v3

    move-object v3, v10

    goto :goto_29
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    :try_start_2
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/e/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/e/a;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/b;

    move-result-object v1

    if-eqz v1, :cond_21

    iget-object v2, v1, Lcom/alipay/apmobilesecuritysdk/e/b;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/e/f;->a(Lcom/alipay/apmobilesecuritysdk/e/b;)V

    iget-object v0, v1, Lcom/alipay/apmobilesecuritysdk/e/b;->a:Ljava/lang/String;

    goto :goto_c

    :cond_21
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/a/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/f/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_32} :catch_36

    move-result v1

    if-nez v1, :cond_c

    goto :goto_c

    :catch_36
    move-exception v1

    goto :goto_c
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v8, ""

    if-nez p1, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/log/ap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "security-sdk-token"

    const-string v4, "3.0.2.20151027"

    const-string v0, "tid"

    const-string v5, ""

    invoke-static {p1, v0, v5}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "utdid"

    const-string v6, ""

    invoke-static {p1, v0, v6}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/e/a;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/b;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v7, v0, Lcom/alipay/apmobilesecuritysdk/e/b;->a:Ljava/lang/String;

    :cond_52
    new-instance v0, Lcom/alipay/apmobilesecuritysdk/b/a;

    invoke-direct/range {v0 .. v7}, Lcom/alipay/apmobilesecuritysdk/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/b/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v1, v0}, Lcom/alipay/security/mobile/module/commonutils/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "userId"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    new-instance v0, Ljava/util/Date;

    const/16 v1, 0x73

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    new-instance v1, Ljava/util/Date;

    const/16 v2, 0x73

    const/16 v3, 0xa

    const/16 v4, 0xb

    const/16 v5, 0x17

    const/16 v6, 0x3b

    const/16 v7, 0x3b

    invoke-direct/range {v1 .. v7}, Ljava/util/Date;-><init>(IIIIII)V

    invoke-virtual {v11, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1b9

    invoke-virtual {v11, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1b9

    const/4 v0, 0x1

    :goto_bd
    if-eqz v0, :cond_1bc

    const/4 v0, 0x1

    :goto_c0
    if-eqz v0, :cond_1fb

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/e/a;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/b;

    move-result-object v0

    if-nez v0, :cond_1ed

    const/4 v0, 0x1

    :goto_cb
    if-eqz v0, :cond_279

    invoke-direct {p0, p1}, Lcom/alipay/apmobilesecuritysdk/a/a;->b(Ljava/util/Map;)Lcom/alipay/security/mobile/module/a/b/c;

    move-result-object v1

    if-eqz v1, :cond_263

    iget-object v0, v1, Lcom/alipay/security/mobile/module/a/b/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_254

    iget-boolean v0, v1, Lcom/alipay/security/mobile/module/a/b/c;->c:Z

    :goto_dd
    if-eqz v0, :cond_263

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    const-string v2, "1"

    iget-object v3, v1, Lcom/alipay/security/mobile/module/a/b/c;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_e8
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_e8} :catch_287

    move-result v2

    :try_start_e9
    const-string v3, "vkeyid_settings"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    if-eqz v3, :cond_10a

    const-string v4, "log_switch"

    if-eqz v2, :cond_257

    invoke-static {}, Lcom/alipay/security/mobile/module/commonutils/crypto/i;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-static {v0, v2}, Lcom/alipay/security/mobile/module/commonutils/crypto/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_104
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_10a
    .catch Ljava/lang/Throwable; {:try_start_e9 .. :try_end_10a} :catch_2a3

    :cond_10a
    :goto_10a
    :try_start_10a
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/e/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/alipay/security/mobile/module/a/b/c;->i:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_136

    iget-object v2, v1, Lcom/alipay/security/mobile/module/a/b/c;->i:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_136

    iget-object v0, v1, Lcom/alipay/security/mobile/module/a/b/c;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/a/a;->a()Z

    move-result v3

    if-nez v3, :cond_136

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Z)V
    :try_end_12e
    .catch Ljava/lang/Throwable; {:try_start_10a .. :try_end_12e} :catch_287

    :try_start_12e
    new-instance v3, Lcom/alipay/apmobilesecuritysdk/a/b;

    invoke-direct {v3, p0, v10, v0, v2}, Lcom/alipay/apmobilesecuritysdk/a/b;-><init>(Lcom/alipay/apmobilesecuritysdk/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_136
    .catch Ljava/lang/Throwable; {:try_start_12e .. :try_end_136} :catch_2a0

    :cond_136
    :goto_136
    :try_start_136
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/alipay/apmobilesecuritysdk/c/e;->b(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_177

    new-instance v2, Lcom/alipay/apmobilesecuritysdk/e/b;

    invoke-direct {v2, v1, v0}, Lcom/alipay/apmobilesecuritysdk/e/b;-><init>(Lcom/alipay/security/mobile/module/a/b/c;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/alipay/apmobilesecuritysdk/e/a;->a(Landroid/content/Context;Lcom/alipay/apmobilesecuritysdk/e/b;)V

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/e/f;->a(Lcom/alipay/apmobilesecuritysdk/e/b;)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/a/a/a;->a(Lcom/alipay/apmobilesecuritysdk/e/b;)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_155
    .catch Ljava/lang/Throwable; {:try_start_136 .. :try_end_155} :catch_287

    move-result-wide v2

    :try_start_156
    const-string v4, "vkeyid_settings"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_177

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/alipay/security/mobile/module/commonutils/crypto/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/alipay/security/mobile/module/commonutils/crypto/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vkey_valid"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_177
    .catch Ljava/lang/Throwable; {:try_start_156 .. :try_end_177} :catch_29d

    :cond_177
    :goto_177
    :try_start_177
    iget-object v1, v1, Lcom/alipay/security/mobile/module/a/b/c;->b:Ljava/lang/String;
    :try_end_179
    .catch Ljava/lang/Throwable; {:try_start_177 .. :try_end_179} :catch_287

    :goto_179
    :try_start_179
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/d;->a(Landroid/content/Context;)Lcom/alipay/security/mobile/module/a/c/a;

    move-result-object v0

    new-instance v2, Lcom/alipay/apmobilesecuritysdk/b/b;

    invoke-direct {v2, v9, v0}, Lcom/alipay/apmobilesecuritysdk/b/b;-><init>(Ljava/lang/String;Lcom/alipay/security/mobile/module/a/c/a;)V

    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_28f

    const/4 v0, 0x0

    :goto_191
    if-eqz v0, :cond_295

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_295

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_295

    const/4 v0, 0x1

    :goto_1a1
    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/e/e;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v0, :cond_1b6

    if-eqz v3, :cond_1b6

    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/b/c;

    invoke-direct {v3, v2}, Lcom/alipay/apmobilesecuritysdk/b/c;-><init>(Lcom/alipay/apmobilesecuritysdk/b/b;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1b6
    .catch Ljava/lang/Throwable; {:try_start_179 .. :try_end_1b6} :catch_298

    :cond_1b6
    move-object v0, v1

    goto/16 :goto_6

    :cond_1b9
    const/4 v0, 0x0

    goto/16 :goto_bd

    :cond_1bc
    :try_start_1bc
    new-instance v0, Ljava/util/Date;

    const/16 v1, 0x73

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    new-instance v1, Ljava/util/Date;

    const/16 v2, 0x73

    const/16 v3, 0xb

    const/16 v4, 0xc

    const/16 v5, 0x17

    const/16 v6, 0x3b

    const/16 v7, 0x3b

    invoke-direct/range {v1 .. v7}, Ljava/util/Date;-><init>(IIIIII)V

    invoke-virtual {v11, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1ea

    invoke-virtual {v11, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1ea

    const/4 v0, 0x1

    goto/16 :goto_c0

    :cond_1ea
    const/4 v0, 0x0

    goto/16 :goto_c0

    :cond_1ed
    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/e/b;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f8

    const/4 v0, 0x1

    goto/16 :goto_cb

    :cond_1f8
    const/4 v0, 0x0

    goto/16 :goto_cb

    :cond_1fb
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/c/e;->a()V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/alipay/apmobilesecuritysdk/c/e;->b(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[*]currentDeviceInfoHash = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/e/a;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/b;

    move-result-object v1

    if-nez v1, :cond_21d

    const/4 v0, 0x1

    goto/16 :goto_cb

    :cond_21d
    iget-object v2, v1, Lcom/alipay/apmobilesecuritysdk/e/b;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[*]storedDeviceInfoHash = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_239

    const/4 v0, 0x1

    :goto_234
    if-eqz v0, :cond_23b

    const/4 v0, 0x1

    goto/16 :goto_cb

    :cond_239
    const/4 v0, 0x0

    goto :goto_234

    :cond_23b
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/e/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_246

    const/4 v0, 0x1

    goto/16 :goto_cb

    :cond_246
    iget-object v0, v1, Lcom/alipay/apmobilesecuritysdk/e/b;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z
    :try_end_24b
    .catch Ljava/lang/Throwable; {:try_start_1bc .. :try_end_24b} :catch_287

    move-result v0

    if-eqz v0, :cond_251

    const/4 v0, 0x1

    goto/16 :goto_cb

    :cond_251
    const/4 v0, 0x0

    goto/16 :goto_cb

    :cond_254
    const/4 v0, 0x0

    goto/16 :goto_dd

    :cond_257
    :try_start_257
    invoke-static {}, Lcom/alipay/security/mobile/module/commonutils/crypto/i;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-static {v0, v2}, Lcom/alipay/security/mobile/module/commonutils/crypto/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_260
    .catch Ljava/lang/Throwable; {:try_start_257 .. :try_end_260} :catch_2a3

    move-result-object v0

    goto/16 :goto_104

    :cond_263
    if-eqz v1, :cond_281

    :try_start_265
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Server error, result:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/alipay/security/mobile/module/a/b/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/d;->a(Ljava/lang/String;)V

    :cond_279
    :goto_279
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_179

    :cond_281
    const-string v0, "Server error, response is null"

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/d;->a(Ljava/lang/String;)V
    :try_end_286
    .catch Ljava/lang/Throwable; {:try_start_265 .. :try_end_286} :catch_287

    goto :goto_279

    :catch_287
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    :goto_28a
    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/d;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :cond_28f
    :try_start_28f
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_292
    .catch Ljava/lang/Throwable; {:try_start_28f .. :try_end_292} :catch_298

    move-result-object v0

    goto/16 :goto_191

    :cond_295
    const/4 v0, 0x0

    goto/16 :goto_1a1

    :catch_298
    move-exception v0

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto :goto_28a

    :catch_29d
    move-exception v0

    goto/16 :goto_177

    :catch_2a0
    move-exception v0

    goto/16 :goto_136

    :catch_2a3
    move-exception v0

    goto/16 :goto_10a
.end method
