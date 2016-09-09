.class public Lcom/youju/statistics/c/a/l;
.super Lcom/youju/statistics/c/a/n;


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "session"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/youju/statistics/c/a/n;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youju/statistics/c/a/l;->b:Z

    return-void
.end method


# virtual methods
.method protected a(Landroid/database/Cursor;)Lcom/youju/statistics/c/a/d;
    .registers 4

    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/youju/statistics/c/a/l;->b:Z

    if-eqz v0, :cond_13

    invoke-static {p1}, Lcom/youju/statistics/c/a/j;->a(Landroid/database/Cursor;)Lcom/youju/statistics/c/a/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/a/j;->a(I)V

    :goto_12
    return-object v0

    :cond_13
    invoke-static {p1}, Lcom/youju/statistics/c/a/j;->a(Landroid/database/Cursor;)Lcom/youju/statistics/c/a/j;

    move-result-object v0

    goto :goto_12
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

    const-string v0, "session"

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

    iget-object v0, p0, Lcom/youju/statistics/c/a/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/c/g;->a(Landroid/content/Context;)Lcom/youju/statistics/c/g;

    move-result-object v0

    const-string v1, "session"

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/g;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected d()Landroid/database/Cursor;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/youju/statistics/c/a/l;->a:Landroid/content/Context;

    const-string v2, "session"

    invoke-static {v1, v2}, Lcom/youju/statistics/a/g;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_8
    .catch Lcom/youju/statistics/d/e; {:try_start_1 .. :try_end_8} :catch_2b
    .catchall {:try_start_1 .. :try_end_8} :catchall_51

    move-result-object v2

    const/4 v1, 0x0

    :try_start_a
    const-string v3, "has_uploaded"

    invoke-static {v2, v3}, Lcom/youju/statistics/a/g;->b(Landroid/database/Cursor;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_5c
    .catch Lcom/youju/statistics/d/e; {:try_start_a .. :try_end_f} :catch_5a
    .catchall {:try_start_a .. :try_end_f} :catchall_58

    move-result v1

    :goto_10
    if-nez v1, :cond_1d

    const/4 v1, 0x1

    :try_start_13
    iput-boolean v1, p0, Lcom/youju/statistics/c/a/l;->b:Z

    invoke-virtual {p0}, Lcom/youju/statistics/c/a/l;->f()Landroid/database/Cursor;
    :try_end_18
    .catch Lcom/youju/statistics/d/e; {:try_start_13 .. :try_end_18} :catch_5a
    .catchall {:try_start_13 .. :try_end_18} :catchall_58

    move-result-object v0

    invoke-static {v2}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    :goto_1c
    return-object v0

    :cond_1d
    :try_start_1d
    const-string v1, "_id"

    invoke-static {v2, v1}, Lcom/youju/statistics/a/g;->c(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/youju/statistics/c/a/l;->a(J)Landroid/database/Cursor;
    :try_end_26
    .catch Lcom/youju/statistics/d/e; {:try_start_1d .. :try_end_26} :catch_5a
    .catchall {:try_start_1d .. :try_end_26} :catchall_58

    move-result-object v0

    invoke-static {v2}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    goto :goto_1c

    :catch_2b
    move-exception v1

    move-object v2, v0

    :goto_2d
    :try_start_2d
    const-string v3, "session"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getEventCursor"

    invoke-static {v5}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/youju/statistics/d/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_2d .. :try_end_4d} :catchall_58

    invoke-static {v2}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    goto :goto_1c

    :catchall_51
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_54
    invoke-static {v2}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_58
    move-exception v0

    goto :goto_54

    :catch_5a
    move-exception v1

    goto :goto_2d

    :catch_5c
    move-exception v3

    goto :goto_10
.end method
