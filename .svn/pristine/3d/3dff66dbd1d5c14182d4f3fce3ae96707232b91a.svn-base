.class public Lcom/baidu/android/pushservice/v;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WorldReadableFiles",
        "InlinedApi"
    }
.end annotation


# static fields
.field public static a:Lcom/baidu/android/pushservice/i;

.field private static b:Ljava/lang/String;

.field private static c:Lcom/baidu/android/pushservice/v;

.field private static d:I

.field private static e:I

.field private static g:Ljava/lang/Object;

.field private static h:Landroid/net/LocalServerSocket;

.field private static l:Ljava/lang/Object;


# instance fields
.field private f:I

.field private i:Lcom/baidu/android/pushservice/ak;

.field private j:Ljava/lang/Boolean;

.field private k:Ljava/lang/Boolean;

.field private m:Landroid/content/Context;

.field private n:Landroid/os/Handler;

.field private o:Ljava/lang/Runnable;

.field private p:Ljava/lang/Runnable;

.field private q:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "PushSDK"

    sput-object v0, Lcom/baidu/android/pushservice/v;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/android/pushservice/v;->c:Lcom/baidu/android/pushservice/v;

    const v0, 0x2bf20

    sput v0, Lcom/baidu/android/pushservice/v;->d:I

    const v0, 0x1b7740

    sput v0, Lcom/baidu/android/pushservice/v;->e:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/android/pushservice/v;->g:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/android/pushservice/v;->l:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/v;->j:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/v;->k:Ljava/lang/Boolean;

    new-instance v0, Lcom/baidu/android/pushservice/x;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/x;-><init>(Lcom/baidu/android/pushservice/v;)V

    iput-object v0, p0, Lcom/baidu/android/pushservice/v;->o:Ljava/lang/Runnable;

    new-instance v0, Lcom/baidu/android/pushservice/y;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/y;-><init>(Lcom/baidu/android/pushservice/v;)V

    iput-object v0, p0, Lcom/baidu/android/pushservice/v;->p:Ljava/lang/Runnable;

    new-instance v0, Lcom/baidu/android/pushservice/z;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/z;-><init>(Lcom/baidu/android/pushservice/v;)V

    iput-object v0, p0, Lcom/baidu/android/pushservice/v;->q:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/android/pushservice/v;->n:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    sget v0, Lcom/baidu/android/pushservice/v;->d:I

    iput v0, p0, Lcom/baidu/android/pushservice/v;->f:I

    iget-object v0, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/q;->h(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/android/pushservice/v;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/baidu/android/pushservice/v;
    .registers 3

    const-class v1, Lcom/baidu/android/pushservice/v;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/android/pushservice/v;->c:Lcom/baidu/android/pushservice/v;

    if-nez v0, :cond_e

    new-instance v0, Lcom/baidu/android/pushservice/v;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/v;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/android/pushservice/v;->c:Lcom/baidu/android/pushservice/v;

    :cond_e
    sget-object v0, Lcom/baidu/android/pushservice/v;->c:Lcom/baidu/android/pushservice/v;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()V
    .registers 1

    sget-object v0, Lcom/baidu/android/pushservice/v;->c:Lcom/baidu/android/pushservice/v;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/baidu/android/pushservice/v;->c:Lcom/baidu/android/pushservice/v;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/v;->h()V

    :cond_9
    return-void
.end method

.method static synthetic b(Lcom/baidu/android/pushservice/v;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/android/pushservice/v;->o()V

    return-void
.end method

.method private b(Landroid/content/Context;)Z
    .registers 7

    invoke-static {p1}, Lcom/baidu/android/pushservice/util/q;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    sget-object v0, Lcom/baidu/android/pushservice/v;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Try use current push service, package name is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const/4 v0, 0x0

    :goto_29
    return v0

    :cond_2a
    sget-object v2, Lcom/baidu/android/pushservice/v;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current push service : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " should stop!!!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " highest priority service is: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const/4 v0, 0x1

    goto :goto_29
.end method

.method static synthetic c(Lcom/baidu/android/pushservice/v;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/android/pushservice/v;->p()V

    return-void
.end method

.method static synthetic e()Lcom/baidu/android/pushservice/v;
    .registers 1

    sget-object v0, Lcom/baidu/android/pushservice/v;->c:Lcom/baidu/android/pushservice/v;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/baidu/android/pushservice/v;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/baidu/android/pushservice/v;->g:Ljava/lang/Object;

    return-object v0
.end method

.method private h()V
    .registers 6

    sget-object v0, Lcom/baidu/android/pushservice/v;->b:Ljava/lang/String;

    const-string v1, "destroy"

    iget-object v2, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    sget-object v1, Lcom/baidu/android/pushservice/v;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_c
    sget-object v0, Lcom/baidu/android/pushservice/v;->h:Landroid/net/LocalServerSocket;

    if-eqz v0, :cond_18

    sget-object v0, Lcom/baidu/android/pushservice/v;->h:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->close()V

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/android/pushservice/v;->h:Landroid/net/LocalServerSocket;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_18} :catch_30
    .catchall {:try_start_c .. :try_end_18} :catchall_4e

    :cond_18
    :goto_18
    :try_start_18
    sget-object v0, Lcom/baidu/android/pushservice/v;->a:Lcom/baidu/android/pushservice/i;

    if-eqz v0, :cond_28

    sget-object v2, Lcom/baidu/android/pushservice/v;->g:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_4e

    :try_start_1f
    sget-object v0, Lcom/baidu/android/pushservice/v;->a:Lcom/baidu/android/pushservice/i;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i;->c()V

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/android/pushservice/v;->a:Lcom/baidu/android/pushservice/i;

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_51

    :cond_28
    :try_start_28
    invoke-static {}, Lcom/baidu/android/pushservice/util/n;->a()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_54
    .catchall {:try_start_28 .. :try_end_2b} :catchall_4e

    :goto_2b
    const/4 v0, 0x0

    :try_start_2c
    sput-object v0, Lcom/baidu/android/pushservice/v;->c:Lcom/baidu/android/pushservice/v;

    monitor-exit v1

    return-void

    :catch_30
    move-exception v0

    sget-object v2, Lcom/baidu/android/pushservice/v;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    :catchall_4e
    move-exception v0

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_2c .. :try_end_50} :catchall_4e

    throw v0

    :catchall_51
    move-exception v0

    :try_start_52
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    :try_start_53
    throw v0

    :catch_54
    move-exception v0

    sget-object v2, Lcom/baidu/android/pushservice/v;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_53 .. :try_end_71} :catchall_4e

    goto :goto_2b
.end method

.method private i()V
    .registers 3

    sget-object v1, Lcom/baidu/android/pushservice/v;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/i;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/i;

    move-result-object v0

    sput-object v0, Lcom/baidu/android/pushservice/v;->a:Lcom/baidu/android/pushservice/i;

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method private j()V
    .registers 8

    invoke-direct {p0}, Lcom/baidu/android/pushservice/v;->k()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/baidu/android/pushservice/v;->f:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    const-wide/32 v0, 0xea60

    div-long v0, v2, v0

    const-wide/16 v4, 0x5

    rem-long/2addr v0, v4

    long-to-int v0, v0

    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    long-to-int v1, v4

    rem-int/lit8 v1, v1, 0x3c

    if-nez v0, :cond_30

    const/16 v0, 0xf

    if-ge v1, v0, :cond_30

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget v4, p0, Lcom/baidu/android/pushservice/v;->f:I

    add-int/lit16 v4, v4, -0x4e20

    int-to-double v4, v4

    mul-double/2addr v0, v4

    double-to-long v0, v0

    const-wide/16 v4, 0x3a98

    add-long/2addr v0, v4

    add-long/2addr v2, v0

    :cond_30
    iget-object v0, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v1, 0x0

    :try_start_3b
    iget v4, p0, Lcom/baidu/android/pushservice/v;->f:I

    int-to-long v4, v4

    invoke-direct {p0}, Lcom/baidu/android/pushservice/v;->r()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_45} :catch_46

    :goto_45
    return-void

    :catch_46
    move-exception v0

    sget-object v1, Lcom/baidu/android/pushservice/v;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_45
.end method

.method private k()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    :try_start_a
    invoke-direct {p0}, Lcom/baidu/android/pushservice/v;->r()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_12

    :goto_11
    return-void

    :catch_12
    move-exception v0

    sget-object v1, Lcom/baidu/android/pushservice/v;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method private l()V
    .registers 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/android/pushservice/w;

    invoke-direct {v1, p0}, Lcom/baidu/android/pushservice/w;-><init>(Lcom/baidu/android/pushservice/v;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private m()Z
    .registers 4

    sget-object v0, Lcom/baidu/android/pushservice/v;->h:Landroid/net/LocalServerSocket;

    if-nez v0, :cond_14

    :try_start_4
    new-instance v0, Landroid/net/LocalServerSocket;

    iget-object v1, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/util/q;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/android/pushservice/v;->h:Landroid/net/LocalServerSocket;

    invoke-direct {p0}, Lcom/baidu/android/pushservice/v;->q()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :catch_16
    move-exception v0

    sget-object v0, Lcom/baidu/android/pushservice/v;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- Socket Adress ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/android/pushservice/util/q;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in use --- @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/p;->b(Landroid/content/Context;)V

    const/4 v0, 0x0

    goto :goto_15
.end method

.method private n()Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/android/pushservice/message/a/d;->a(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/android/pushservice/f/a;->a(Landroid/content/Context;)Z

    move-result v2

    sget-object v3, Lcom/baidu/android/pushservice/v;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "heartbeat networkConnected :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-static {v3, v4, v5}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v3, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/android/pushservice/util/q;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/baidu/android/pushservice/util/q;->n(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_49

    iget-object v4, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    invoke-direct {p0}, Lcom/baidu/android/pushservice/v;->k()V

    :goto_48
    return v0

    :cond_49
    if-nez v2, :cond_67

    iget v0, p0, Lcom/baidu/android/pushservice/v;->f:I

    sget v2, Lcom/baidu/android/pushservice/v;->e:I

    if-eq v0, v2, :cond_58

    sget v0, Lcom/baidu/android/pushservice/v;->e:I

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/v;->a(I)V

    :cond_58
    invoke-static {}, Lcom/baidu/android/pushservice/b;->b()I

    move-result v0

    if-lez v0, :cond_65

    iget-object v0, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    const-string v2, "039912"

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/i/v;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_65
    move v0, v1

    goto :goto_48

    :cond_67
    invoke-static {}, Lcom/baidu/android/pushservice/b;->b()I

    move-result v0

    if-lez v0, :cond_74

    iget-object v0, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    const-string v2, "039914"

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/i/v;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_74
    sget-object v0, Lcom/baidu/android/pushservice/v;->a:Lcom/baidu/android/pushservice/i;

    if-eqz v0, :cond_c8

    sget-object v0, Lcom/baidu/android/pushservice/v;->a:Lcom/baidu/android/pushservice/i;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i;->a()Z

    move-result v0

    if-nez v0, :cond_10f

    iget-object v0, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/al;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/al;->d()Z

    move-result v0

    if-nez v0, :cond_10b

    sget-object v0, Lcom/baidu/android/pushservice/v;->b:Ljava/lang/String;

    const-string v2, "Channel token is not available, start NETWORK REGISTER SERVICE ."

    iget-object v3, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/baidu/android/pushservice/h/b;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/baidu/android/pushservice/v;->o()V

    :goto_98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "heartbeat PushConnection isConnected "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/baidu/android/pushservice/v;->a:Lcom/baidu/android/pushservice/i;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/i;->a()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " at Time "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    :cond_c8
    :try_start_c8
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Xiaomi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_108

    iget-object v0, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.miui.networkassistant"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    invoke-static {}, Lcom/baidu/android/pushservice/util/q;->d()Z

    move-result v0

    if-eqz v0, :cond_108

    sget-object v0, Lcom/baidu/android/pushservice/v;->b:Ljava/lang/String;

    const-string v2, "to start PushKeepAlive------------"

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    const-string v3, "com.baidu.android.pushservice.PushKeepAlive"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/baidu/android/pushservice/v;->b:Ljava/lang/String;

    const-string v2, "PushKeepAlive started------------"

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_108
    .catch Ljava/lang/Throwable; {:try_start_c8 .. :try_end_108} :catch_130

    :cond_108
    :goto_108
    move v0, v1

    goto/16 :goto_48

    :cond_10b
    invoke-direct {p0}, Lcom/baidu/android/pushservice/v;->p()V

    goto :goto_98

    :cond_10f
    sget-object v0, Lcom/baidu/android/pushservice/v;->a:Lcom/baidu/android/pushservice/i;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i;->d()V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.baidu.android.pushservice.action.METHOD"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "method"

    const-string v3, "com.baidu.android.pushservice.action.SEND_APPSTAT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    const-class v3, Lcom/baidu/android/pushservice/PushService;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/baidu/android/pushservice/v;->i:Lcom/baidu/android/pushservice/ak;

    invoke-virtual {v2, v0}, Lcom/baidu/android/pushservice/ak;->a(Landroid/content/Intent;)Z

    goto/16 :goto_98

    :catch_130
    move-exception v0

    sget-object v2, Lcom/baidu/android/pushservice/v;->b:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_108
.end method

.method private o()V
    .registers 5

    iget-object v0, p0, Lcom/baidu/android/pushservice/v;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/android/pushservice/v;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/v;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/android/pushservice/v;->p:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private p()V
    .registers 5

    sget-object v0, Lcom/baidu/android/pushservice/v;->h:Landroid/net/LocalServerSocket;

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/baidu/android/pushservice/v;->m()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_a
    iget-object v0, p0, Lcom/baidu/android/pushservice/v;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/android/pushservice/v;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/v;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/android/pushservice/v;->q:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1a
    return-void
.end method

.method private q()V
    .registers 4

    iget-object v0, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    const-string v1, "com.baidu.push.cur_prio"

    invoke-static {}, Lcom/baidu/android/pushservice/b;->a()S

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/util/e;->a(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    const-string v1, "com.baidu.push.cur_pkg"

    iget-object v2, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/util/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private r()Landroid/app/PendingIntent;
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "AlarmAlert"

    const-string v2, "OK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    const-class v2, Lcom/baidu/android/pushservice/PushService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .registers 5

    sget-object v0, Lcom/baidu/android/pushservice/v;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "heartbeat set : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " secs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    if-lez p1, :cond_26

    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lcom/baidu/android/pushservice/v;->f:I

    :cond_26
    invoke-direct {p0}, Lcom/baidu/android/pushservice/v;->j()V

    return-void
.end method

.method public a()Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/baidu/android/pushservice/v;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create PushSDK from : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/baidu/android/pushservice/v;->k()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/android/pushservice/v;->k:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/android/pushservice/util/q;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3f

    iget-object v2, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/baidu/android/pushservice/v;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_49

    :cond_3f
    sget-object v1, Lcom/baidu/android/pushservice/v;->b:Ljava/lang/String;

    const-string v2, "onCreate shouldStopSelf"

    iget-object v3, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :goto_48
    return v0

    :cond_49
    sget-object v2, Lcom/baidu/android/pushservice/v;->l:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4c
    sget-boolean v3, Lcom/baidu/android/pushservice/jni/PushSocket;->a:Z

    if-nez v3, :cond_55

    monitor-exit v2

    goto :goto_48

    :catchall_52
    move-exception v0

    monitor-exit v2
    :try_end_54
    .catchall {:try_start_4c .. :try_end_54} :catchall_52

    throw v0

    :cond_55
    :try_start_55
    invoke-direct {p0}, Lcom/baidu/android/pushservice/v;->m()Z

    move-result v3

    if-nez v3, :cond_75

    iget-object v3, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/android/pushservice/util/q;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/baidu/android/pushservice/util/q;->n(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_75

    monitor-exit v2

    goto :goto_48

    :cond_75
    iget-object v0, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/ah;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/baidu/android/pushservice/c;

    iget-object v3, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/baidu/android/pushservice/c;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-direct {p0}, Lcom/baidu/android/pushservice/v;->i()V

    new-instance v0, Lcom/baidu/android/pushservice/ak;

    iget-object v3, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/baidu/android/pushservice/ak;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/android/pushservice/v;->i:Lcom/baidu/android/pushservice/ak;

    iget-object v0, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/PushSettings;->l(Landroid/content/Context;)V

    sget-object v0, Lcom/baidu/android/pushservice/v;->h:Landroid/net/LocalServerSocket;

    if-eqz v0, :cond_a9

    iget-object v0, p0, Lcom/baidu/android/pushservice/v;->n:Landroid/os/Handler;

    iget-object v3, p0, Lcom/baidu/android/pushservice/v;->o:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lcom/baidu/android/pushservice/v;->l()V

    :cond_a9
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/v;->j:Ljava/lang/Boolean;

    monitor-exit v2
    :try_end_b1
    .catchall {:try_start_55 .. :try_end_b1} :catchall_52

    move v0, v1

    goto :goto_48
.end method

.method public a(Landroid/content/Intent;)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/baidu/android/pushservice/v;->b:Ljava/lang/String;

    const-string v3, "PushSDK handleOnStart go"

    iget-object v4, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-static {v0, v3, v4}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    sget-object v3, Lcom/baidu/android/pushservice/v;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleOnStart intent action = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_74

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_39
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_54

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    sget-object v0, Lcom/baidu/android/pushservice/v;->b:Ljava/lang/String;

    const-string v3, "--- handleOnStart by null intent!"

    iget-object v4, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-static {v0, v3, v4}, Lcom/baidu/android/pushservice/h/b;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_54
    iget-object v0, p0, Lcom/baidu/android/pushservice/v;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_62

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/v;->a()Z

    move-result v0

    if-eqz v0, :cond_72

    :cond_62
    iget-object v0, p0, Lcom/baidu/android/pushservice/v;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/baidu/android/pushservice/v;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_77

    :cond_72
    move v0, v2

    :goto_73
    return v0

    :cond_74
    const-string v0, ""

    goto :goto_39

    :cond_77
    sget-object v3, Lcom/baidu/android/pushservice/v;->l:Ljava/lang/Object;

    monitor-enter v3

    :try_start_7a
    iget-object v0, p0, Lcom/baidu/android/pushservice/v;->n:Landroid/os/Handler;

    iget-object v4, p0, Lcom/baidu/android/pushservice/v;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/baidu/android/pushservice/v;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-- handleOnStart -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/android/pushservice/v;->h:Landroid/net/LocalServerSocket;

    if-nez v0, :cond_b7

    const-string v0, "com.baidu.android.pushservice.action.METHOD"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcom/baidu/android/pushservice/v;->i:Lcom/baidu/android/pushservice/ak;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/ak;->a(Landroid/content/Intent;)Z

    move-result v0

    monitor-exit v3

    goto :goto_73

    :catchall_b1
    move-exception v0

    monitor-exit v3
    :try_end_b3
    .catchall {:try_start_7a .. :try_end_b3} :catchall_b1

    throw v0

    :cond_b4
    :try_start_b4
    monitor-exit v3

    move v0, v1

    goto :goto_73

    :cond_b7
    const-string v0, "AlarmAlert"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c5

    invoke-direct {p0}, Lcom/baidu/android/pushservice/v;->n()Z

    move-result v0

    monitor-exit v3

    goto :goto_73

    :cond_c5
    if-eqz p1, :cond_126

    const-string v0, "pushservice_restart_v2"

    const-string v4, "method"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_111

    iget-object v0, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/q;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10d

    const-string v0, "priority2"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iget-object v0, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/q;->k(Landroid/content/Context;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gtz v0, :cond_102

    sget-object v0, Lcom/baidu/android/pushservice/v;->a:Lcom/baidu/android/pushservice/i;

    if-eqz v0, :cond_fe

    sget-object v0, Lcom/baidu/android/pushservice/v;->a:Lcom/baidu/android/pushservice/i;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i;->a()Z

    move-result v0

    if-nez v0, :cond_fe

    invoke-direct {p0}, Lcom/baidu/android/pushservice/v;->l()V

    :cond_fe
    monitor-exit v3

    move v0, v1

    goto/16 :goto_73

    :cond_102
    iget-object v0, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    const-wide/16 v4, 0xbb8

    invoke-static {v0, v4, v5}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;J)V

    monitor-exit v3

    move v0, v2

    goto/16 :goto_73

    :cond_10d
    monitor-exit v3

    move v0, v2

    goto/16 :goto_73

    :cond_111
    iget-object v0, p0, Lcom/baidu/android/pushservice/v;->i:Lcom/baidu/android/pushservice/ak;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/ak;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_126

    sget-object v0, Lcom/baidu/android/pushservice/v;->b:Ljava/lang/String;

    const-string v2, "-- handleOnStart -- intent handled  by mRegistrationService "

    iget-object v4, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-static {v0, v2, v4}, Lcom/baidu/android/pushservice/h/b;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    monitor-exit v3

    move v0, v1

    goto/16 :goto_73

    :cond_126
    invoke-direct {p0}, Lcom/baidu/android/pushservice/v;->l()V

    monitor-exit v3
    :try_end_12a
    .catchall {:try_start_b4 .. :try_end_12a} :catchall_b1

    move v0, v1

    goto/16 :goto_73
.end method

.method public c()Lcom/baidu/android/pushservice/ak;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/v;->i:Lcom/baidu/android/pushservice/ak;

    return-object v0
.end method

.method d()V
    .registers 4

    sget-object v0, Lcom/baidu/android/pushservice/v;->b:Ljava/lang/String;

    const-string v1, ">> sendRequestTokenIntent"

    iget-object v2, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.pushservice.action.TOKEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/android/pushservice/v;->m:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/util/p;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
