.class Lcom/youju/statistics/c/f;
.super Lcom/youju/statistics/b/n;


# instance fields
.field final synthetic a:Lcom/youju/statistics/c/t;


# direct methods
.method private constructor <init>(Lcom/youju/statistics/c/t;)V
    .registers 2

    iput-object p1, p0, Lcom/youju/statistics/c/f;->a:Lcom/youju/statistics/c/t;

    invoke-direct {p0}, Lcom/youju/statistics/b/n;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/youju/statistics/c/t;Lcom/youju/statistics/c/c;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/youju/statistics/c/f;-><init>(Lcom/youju/statistics/c/t;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/youju/statistics/c/f;->a:Lcom/youju/statistics/c/t;

    invoke-static {v0}, Lcom/youju/statistics/c/t;->h(Lcom/youju/statistics/c/t;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/youju/statistics/c/f;->a:Lcom/youju/statistics/c/t;

    invoke-static {v1, v0}, Lcom/youju/statistics/c/t;->a(Lcom/youju/statistics/c/t;Landroid/app/ActivityManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/youju/statistics/c/f;->a:Lcom/youju/statistics/c/t;

    invoke-static {v0, p1}, Lcom/youju/statistics/c/t;->a(Lcom/youju/statistics/c/t;Ljava/lang/String;)J

    move-result-wide v0

    :try_start_6
    invoke-static {}, Lcom/youju/statistics/c/r;->e()Lcom/youju/statistics/c/r;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/youju/statistics/c/r;->b(J)V
    :try_end_d
    .catch Lcom/youju/statistics/d/d; {:try_start_6 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Lcom/youju/statistics/d/d;->printStackTrace()V

    goto :goto_d
.end method

.method private c()V
    .registers 7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/youju/statistics/c/f;->a:Lcom/youju/statistics/c/t;

    invoke-static {v0}, Lcom/youju/statistics/c/t;->a(Lcom/youju/statistics/c/t;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_b
    iget-object v0, p0, Lcom/youju/statistics/c/f;->a:Lcom/youju/statistics/c/t;

    invoke-static {v0}, Lcom/youju/statistics/c/t;->e(Lcom/youju/statistics/c/t;)Lcom/youju/statistics/c/d;

    move-result-object v0

    if-nez v0, :cond_15

    monitor-exit v2

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/youju/statistics/c/f;->a:Lcom/youju/statistics/c/t;

    invoke-static {v0}, Lcom/youju/statistics/c/t;->e(Lcom/youju/statistics/c/t;)Lcom/youju/statistics/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youju/statistics/c/d;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/youju/statistics/c/f;->a:Lcom/youju/statistics/c/t;

    invoke-static {v0}, Lcom/youju/statistics/c/t;->e(Lcom/youju/statistics/c/t;)Lcom/youju/statistics/c/d;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/youju/statistics/c/d;->b(J)V

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_38

    :try_start_29
    iget-object v0, p0, Lcom/youju/statistics/c/f;->a:Lcom/youju/statistics/c/t;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual/range {v0 .. v5}, Lcom/youju/statistics/c/t;->a(Ljava/lang/String;JJ)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_32} :catch_33

    goto :goto_14

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14

    :catchall_38
    move-exception v0

    :try_start_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method private d()V
    .registers 7

    iget-object v0, p0, Lcom/youju/statistics/c/f;->a:Lcom/youju/statistics/c/t;

    invoke-static {v0}, Lcom/youju/statistics/c/t;->a(Lcom/youju/statistics/c/t;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/youju/statistics/c/f;->a:Lcom/youju/statistics/c/t;

    invoke-static {v0}, Lcom/youju/statistics/c/t;->f(Lcom/youju/statistics/c/t;)Lcom/youju/statistics/c/s;

    move-result-object v0

    if-nez v0, :cond_11

    monitor-exit v1

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/youju/statistics/c/f;->a:Lcom/youju/statistics/c/t;

    invoke-static {v0}, Lcom/youju/statistics/c/t;->f(Lcom/youju/statistics/c/t;)Lcom/youju/statistics/c/s;

    move-result-object v2

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_31

    :try_start_18
    invoke-static {}, Lcom/youju/statistics/c/r;->e()Lcom/youju/statistics/c/r;

    move-result-object v0

    invoke-virtual {v2}, Lcom/youju/statistics/c/s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/youju/statistics/c/r;->a(Ljava/lang/String;JJ)V
    :try_end_2b
    .catch Lcom/youju/statistics/d/d; {:try_start_18 .. :try_end_2b} :catch_2c

    goto :goto_10

    :catch_2c
    move-exception v0

    invoke-virtual {v0}, Lcom/youju/statistics/d/d;->printStackTrace()V

    goto :goto_10

    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0
.end method

.method private e()V
    .registers 5

    const-string v0, ""

    iget-object v0, p0, Lcom/youju/statistics/c/f;->a:Lcom/youju/statistics/c/t;

    invoke-static {v0}, Lcom/youju/statistics/c/t;->a(Lcom/youju/statistics/c/t;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lcom/youju/statistics/c/f;->a:Lcom/youju/statistics/c/t;

    invoke-static {v0}, Lcom/youju/statistics/c/t;->g(Lcom/youju/statistics/c/t;)Lcom/youju/statistics/c/a;

    move-result-object v0

    if-nez v0, :cond_13

    monitor-exit v1

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/youju/statistics/c/f;->a:Lcom/youju/statistics/c/t;

    invoke-static {v0}, Lcom/youju/statistics/c/t;->g(Lcom/youju/statistics/c/t;)Lcom/youju/statistics/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youju/statistics/c/a;->a()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_4c

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    :try_start_22
    iget-object v1, p0, Lcom/youju/statistics/c/f;->a:Lcom/youju/statistics/c/t;

    invoke-virtual {v1, v0, v2, v3}, Lcom/youju/statistics/c/t;->d(Ljava/lang/String;J)V
    :try_end_27
    .catch Lcom/youju/statistics/d/c; {:try_start_22 .. :try_end_27} :catch_28

    goto :goto_12

    :catch_28
    move-exception v0

    invoke-static {}, Lcom/youju/statistics/c/t;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePageDuration"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/youju/statistics/d/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/youju/statistics/a/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :catchall_4c
    move-exception v0

    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v0
.end method

.method private f()V
    .registers 5

    iget-object v0, p0, Lcom/youju/statistics/c/f;->a:Lcom/youju/statistics/c/t;

    invoke-static {v0}, Lcom/youju/statistics/c/t;->a(Lcom/youju/statistics/c/t;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/youju/statistics/c/f;->a:Lcom/youju/statistics/c/t;

    invoke-static {v0}, Lcom/youju/statistics/c/t;->f(Lcom/youju/statistics/c/t;)Lcom/youju/statistics/c/s;

    move-result-object v0

    if-nez v0, :cond_11

    monitor-exit v1

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/youju/statistics/c/f;->a:Lcom/youju/statistics/c/t;

    invoke-static {v0}, Lcom/youju/statistics/c/t;->f(Lcom/youju/statistics/c/t;)Lcom/youju/statistics/c/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youju/statistics/c/s;->a()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_4e

    iget-object v1, p0, Lcom/youju/statistics/c/f;->a:Lcom/youju/statistics/c/t;

    invoke-static {v1}, Lcom/youju/statistics/c/t;->c(Lcom/youju/statistics/c/t;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-direct {p0, v0}, Lcom/youju/statistics/c/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_51

    invoke-static {}, Lcom/youju/statistics/c/t;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateActivityDuration"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "not same as top"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youju/statistics/a/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/youju/statistics/c/f;->b(Ljava/lang/String;)V

    goto :goto_10

    :catchall_4e
    move-exception v0

    :try_start_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v0

    :cond_51
    :try_start_51
    iget-object v1, p0, Lcom/youju/statistics/c/f;->a:Lcom/youju/statistics/c/t;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/youju/statistics/c/t;->c(Ljava/lang/String;J)V
    :try_end_5a
    .catch Lcom/youju/statistics/d/c; {:try_start_51 .. :try_end_5a} :catch_5b

    goto :goto_10

    :catch_5b
    move-exception v0

    invoke-static {}, Lcom/youju/statistics/c/t;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateActivityDuration"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/youju/statistics/d/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/youju/statistics/a/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method


# virtual methods
.method protected a()V
    .registers 4

    iget-object v0, p0, Lcom/youju/statistics/c/f;->a:Lcom/youju/statistics/c/t;

    invoke-static {v0}, Lcom/youju/statistics/c/t;->a(Lcom/youju/statistics/c/t;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/youju/statistics/c/f;->a:Lcom/youju/statistics/c/t;

    invoke-static {v0}, Lcom/youju/statistics/c/t;->b(Lcom/youju/statistics/c/t;)Z

    move-result v0

    if-eqz v0, :cond_11

    monitor-exit v1

    :cond_10
    :goto_10
    return-void

    :cond_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_4c

    invoke-direct {p0}, Lcom/youju/statistics/c/f;->c()V

    invoke-direct {p0}, Lcom/youju/statistics/c/f;->f()V

    invoke-direct {p0}, Lcom/youju/statistics/c/f;->e()V

    iget-object v0, p0, Lcom/youju/statistics/c/f;->a:Lcom/youju/statistics/c/t;

    invoke-static {v0}, Lcom/youju/statistics/c/t;->c(Lcom/youju/statistics/c/t;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/youju/statistics/c/t;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefresh"

    invoke-static {v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not in foreground"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/youju/statistics/c/f;->d()V

    iget-object v0, p0, Lcom/youju/statistics/c/f;->a:Lcom/youju/statistics/c/t;

    invoke-static {v0}, Lcom/youju/statistics/c/t;->d(Lcom/youju/statistics/c/t;)V

    goto :goto_10

    :catchall_4c
    move-exception v0

    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v0
.end method

.method protected b()V
    .registers 1

    return-void
.end method
