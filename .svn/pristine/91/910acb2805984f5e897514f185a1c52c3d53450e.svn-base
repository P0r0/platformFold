.class public final Lcom/youju/statistics/YouJuAgent;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/youju/statistics/YouJuAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youju/statistics/YouJuAgent;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/youju/statistics/YouJuAgent;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/youju/statistics/YouJuAgent;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/youju/statistics/c/r;->a(Landroid/content/Context;)V

    return-void
.end method

.method private static a()Z
    .registers 1

    sget-object v0, Lcom/youju/statistics/YouJuAgent;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private static b()Z
    .registers 1

    invoke-static {}, Lcom/youju/statistics/YouJuAgent;->a()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static c()V
    .registers 2

    sget-object v0, Lcom/youju/statistics/YouJuAgent;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static getAppID()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/youju/statistics/c/r;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChannelID()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/youju/statistics/c/r;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/youju/statistics/c/r;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .registers 4

    const-class v1, Lcom/youju/statistics/YouJuAgent;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/youju/statistics/YouJuAgent;->a()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_13
    .catchall {:try_start_3 .. :try_end_6} :catchall_18

    move-result v0

    if-eqz v0, :cond_b

    :goto_9
    monitor-exit v1

    return-void

    :cond_b
    :try_start_b
    const-string v0, ""

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/youju/statistics/YouJuAgent;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_13
    .catchall {:try_start_b .. :try_end_12} :catchall_18

    goto :goto_9

    :catch_13
    move-exception v0

    :try_start_14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_9

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-class v1, Lcom/youju/statistics/YouJuAgent;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/youju/statistics/YouJuAgent;->a()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_19
    .catchall {:try_start_3 .. :try_end_6} :catchall_1e

    move-result v0

    if-eqz v0, :cond_b

    :goto_9
    monitor-exit v1

    return-void

    :cond_b
    :try_start_b
    invoke-static {p0}, Lcom/youju/statistics/a/n;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/youju/statistics/YouJuAgent;->a:Ljava/lang/String;

    const-string v2, "init , context is null"

    invoke-static {v0, v2}, Lcom/youju/statistics/a/s;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_18} :catch_19
    .catchall {:try_start_b .. :try_end_18} :catchall_1e

    goto :goto_9

    :catch_19
    move-exception v0

    :try_start_1a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_9

    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_21
    :try_start_21
    invoke-static {p1}, Lcom/youju/statistics/c/r;->d(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/youju/statistics/c/r;->e(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/youju/statistics/YouJuAgent;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/youju/statistics/YouJuAgent;->c()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2d} :catch_19
    .catchall {:try_start_21 .. :try_end_2d} :catchall_1e

    goto :goto_9
.end method

.method public static isUploadEnabled()Z
    .registers 1

    sget-object v0, Lcom/youju/statistics/YouJuAgent;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static onError(Landroid/content/Context;Ljava/lang/Throwable;)V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/youju/statistics/YouJuAgent;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/youju/statistics/YouJuAgent;->a:Ljava/lang/String;

    const-string v1, "onError , SDK not initialized"

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    invoke-static {}, Lcom/youju/statistics/c/r;->e()Lcom/youju/statistics/c/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/youju/statistics/c/r;->a(Ljava/lang/Throwable;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_d

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/youju/statistics/YouJuAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/youju/statistics/YouJuAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/youju/statistics/a/n;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/youju/statistics/YouJuAgent;->a:Ljava/lang/String;

    const-string v1, "onEvent , eventId is null"

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    invoke-static {}, Lcom/youju/statistics/YouJuAgent;->b()Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/youju/statistics/YouJuAgent;->a:Ljava/lang/String;

    const-string v1, "onEvent , SDK not initialized"

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_d

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    :cond_21
    :try_start_21
    invoke-static {}, Lcom/youju/statistics/c/r;->e()Lcom/youju/statistics/c/r;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/youju/statistics/c/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_28} :catch_1c

    goto :goto_d
.end method

.method public static onPageEnd(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    invoke-static {p1}, Lcom/youju/statistics/a/n;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/youju/statistics/YouJuAgent;->a:Ljava/lang/String;

    const-string v1, "onPageEnd , pageName is null"

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    invoke-static {}, Lcom/youju/statistics/YouJuAgent;->b()Z

    move-result v0

    if-eqz v0, :cond_38

    sget-object v0, Lcom/youju/statistics/YouJuAgent;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageEnd"

    invoke-static {v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SDK not init"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_d

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    :cond_38
    :try_start_38
    invoke-static {}, Lcom/youju/statistics/c/r;->e()Lcom/youju/statistics/c/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/youju/statistics/c/r;->c(Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3f} :catch_33

    goto :goto_d
.end method

.method public static onPageStart(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    invoke-static {p1}, Lcom/youju/statistics/a/n;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/youju/statistics/YouJuAgent;->a:Ljava/lang/String;

    const-string v1, "onPageStart , pageName is null"

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    invoke-static {}, Lcom/youju/statistics/YouJuAgent;->b()Z

    move-result v0

    if-eqz v0, :cond_38

    sget-object v0, Lcom/youju/statistics/YouJuAgent;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageStart"

    invoke-static {v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SDK not init"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_d

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    :cond_38
    :try_start_38
    invoke-static {}, Lcom/youju/statistics/c/r;->e()Lcom/youju/statistics/c/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/youju/statistics/c/r;->b(Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3f} :catch_33

    goto :goto_d
.end method

.method public static onPause(Landroid/content/Context;)V
    .registers 3

    :try_start_0
    invoke-static {p0}, Lcom/youju/statistics/a/n;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/youju/statistics/YouJuAgent;->a:Ljava/lang/String;

    const-string v1, "onPause , context is null"

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    invoke-static {}, Lcom/youju/statistics/YouJuAgent;->b()Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/youju/statistics/YouJuAgent;->a:Ljava/lang/String;

    const-string v1, "onPause , SDK not initialized"

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_d

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    :cond_21
    :try_start_21
    invoke-static {}, Lcom/youju/statistics/c/r;->e()Lcom/youju/statistics/c/r;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/youju/statistics/c/r;->c(Landroid/content/Context;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_28} :catch_1c

    goto :goto_d
.end method

.method public static onResume(Landroid/content/Context;)V
    .registers 3

    :try_start_0
    invoke-static {p0}, Lcom/youju/statistics/a/n;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/youju/statistics/YouJuAgent;->a:Ljava/lang/String;

    const-string v1, "onResume , context is null"

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    invoke-static {p0}, Lcom/youju/statistics/YouJuAgent;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/youju/statistics/c/r;->e()Lcom/youju/statistics/c/r;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/youju/statistics/c/r;->b(Landroid/content/Context;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_d

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method public static setContinueSessionMillis(J)V
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/youju/statistics/YouJuAgent;->b()Z

    move-result v0

    if-eqz v0, :cond_25

    sget-object v0, Lcom/youju/statistics/YouJuAgent;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContinueSessionMillis"

    invoke-static {v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SDK not init"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_24
    return-void

    :cond_25
    invoke-static {}, Lcom/youju/statistics/c/r;->e()Lcom/youju/statistics/c/r;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/youju/statistics/c/r;->a(J)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_24

    :catch_2d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24
.end method

.method public static setLocationEnabled(Z)V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/youju/statistics/YouJuAgent;->b()Z

    move-result v0

    if-eqz v0, :cond_25

    sget-object v0, Lcom/youju/statistics/YouJuAgent;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocationEnabled"

    invoke-static {v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SDK not init"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_24
    return-void

    :cond_25
    invoke-static {}, Lcom/youju/statistics/c/r;->e()Lcom/youju/statistics/c/r;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/youju/statistics/c/r;->b(Z)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_24

    :catch_2d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24
.end method

.method public static setLogEnabled(Z)V
    .registers 1

    invoke-static {p0}, Lcom/youju/statistics/a/s;->a(Z)V

    return-void
.end method

.method public static setReportUncaughtExceptions(Z)V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/youju/statistics/YouJuAgent;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/youju/statistics/YouJuAgent;->a:Ljava/lang/String;

    const-string v1, "setReportUncaughtExceptions , SDK not initialized"

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    sget-object v0, Lcom/youju/statistics/YouJuAgent;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setReportUncaughtExceptions"

    invoke-static {v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/youju/statistics/c/r;->e()Lcom/youju/statistics/c/r;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/youju/statistics/c/r;->c(Z)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    goto :goto_d

    :catch_32
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method public static setUploadEnabled(Z)V
    .registers 2

    sget-object v0, Lcom/youju/statistics/YouJuAgent;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
