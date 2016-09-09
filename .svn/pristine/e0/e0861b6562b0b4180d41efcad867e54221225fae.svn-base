.class public Lcom/youju/statistics/c/a/q;
.super Lcom/youju/statistics/c/a/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    const-string v0, "activity"

    invoke-direct {p0, p1, v0, p2}, Lcom/youju/statistics/c/a/n;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private g()Landroid/database/Cursor;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/youju/statistics/c/a/q;->a:Landroid/content/Context;

    const-string v2, "activity"

    invoke-static {v1, v2}, Lcom/youju/statistics/a/g;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_8
    .catch Lcom/youju/statistics/d/e; {:try_start_1 .. :try_end_8} :catch_17
    .catchall {:try_start_1 .. :try_end_8} :catchall_1d

    move-result-object v1

    :try_start_9
    const-string v2, "_id"

    invoke-static {v1, v2}, Lcom/youju/statistics/a/g;->c(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/youju/statistics/c/a/q;->a(J)Landroid/database/Cursor;
    :try_end_12
    .catch Lcom/youju/statistics/d/e; {:try_start_9 .. :try_end_12} :catch_27
    .catchall {:try_start_9 .. :try_end_12} :catchall_25

    move-result-object v0

    invoke-static {v1}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    :goto_16
    return-object v0

    :catch_17
    move-exception v1

    move-object v1, v0

    :goto_19
    invoke-static {v1}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    goto :goto_16

    :catchall_1d
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_21
    invoke-static {v1}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_25
    move-exception v0

    goto :goto_21

    :catch_27
    move-exception v2

    goto :goto_19
.end method


# virtual methods
.method protected a(Landroid/database/Cursor;)Lcom/youju/statistics/c/a/d;
    .registers 3

    invoke-static {p1}, Lcom/youju/statistics/c/a/p;->a(Landroid/database/Cursor;)Lcom/youju/statistics/c/a/p;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/util/HashMap;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    const-string v0, "activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected c()I
    .registers 3

    iget-object v0, p0, Lcom/youju/statistics/c/a/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/c/g;->a(Landroid/content/Context;)Lcom/youju/statistics/c/g;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/g;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected d()Landroid/database/Cursor;
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/youju/statistics/c/r;->e()Lcom/youju/statistics/c/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youju/statistics/c/r;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/youju/statistics/c/a/q;->g()Landroid/database/Cursor;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/youju/statistics/c/a/q;->f()Landroid/database/Cursor;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_14

    move-result-object v0

    goto :goto_e

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_e
.end method
