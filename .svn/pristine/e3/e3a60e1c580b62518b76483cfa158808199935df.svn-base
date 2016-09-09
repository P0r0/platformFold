.class public Lcom/youju/statistics/c/f/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(JI)Lcom/youju/statistics/c/f/b;
    .registers 5

    int-to-long v0, p2

    cmp-long v0, p0, v0

    if-ltz v0, :cond_8

    sget-object v0, Lcom/youju/statistics/c/f/b;->b:Lcom/youju/statistics/c/f/b;

    :goto_7
    return-object v0

    :cond_8
    sget-object v0, Lcom/youju/statistics/c/f/b;->a:Lcom/youju/statistics/c/f/b;

    goto :goto_7
.end method

.method public static a(Landroid/content/Context;JLandroid/content/ContentValues;)Lcom/youju/statistics/c/f/b;
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/youju/statistics/c/f/a;->e(Landroid/content/Context;JLandroid/content/ContentValues;)Lcom/youju/statistics/c/f/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/youju/statistics/c/f/a;->c(Landroid/content/Context;)Lcom/youju/statistics/c/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youju/statistics/c/c/d;->j()Z

    move-result v0

    return v0
.end method

.method private static a(Landroid/content/Context;Landroid/content/ContentValues;)Z
    .registers 14

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-string v0, "short_hash_code"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {p0}, Lcom/youju/statistics/e/c;->a(Landroid/content/Context;)Lcom/youju/statistics/e/c;

    move-result-object v0

    const-string v3, "short_hash_code = ?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object v11, v4, v8

    :try_start_13
    const-string v1, "error_report"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/youju/statistics/e/c;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_4d

    move-result-object v1

    :try_start_1d
    invoke-static {v1}, Lcom/youju/statistics/a/g;->c(Landroid/database/Cursor;)Z
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_53

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {v1}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    move v0, v8

    :goto_27
    return v0

    :cond_28
    :try_start_28
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "repeat"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/ContentValues;->clear()V

    const-string v2, "repeat"

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "short_hash_code"

    invoke-virtual {p1, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_28 .. :try_end_48} :catchall_53

    invoke-static {v1}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    move v0, v9

    goto :goto_27

    :catchall_4d
    move-exception v0

    move-object v1, v10

    :goto_4f
    invoke-static {v1}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_53
    move-exception v0

    goto :goto_4f
.end method

.method public static b(Landroid/content/Context;JLandroid/content/ContentValues;)Lcom/youju/statistics/c/f/b;
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/youju/statistics/c/f/a;->e(Landroid/content/Context;JLandroid/content/ContentValues;)Lcom/youju/statistics/c/f/b;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/youju/statistics/c/f/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static c(Landroid/content/Context;)Lcom/youju/statistics/c/c/d;
    .registers 2

    invoke-static {p0}, Lcom/youju/statistics/c/c/c;->a(Landroid/content/Context;)Lcom/youju/statistics/c/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youju/statistics/c/c/c;->c()Lcom/youju/statistics/c/c/d;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;JLandroid/content/ContentValues;)Lcom/youju/statistics/c/f/b;
    .registers 5

    invoke-static {p0, p3}, Lcom/youju/statistics/c/f/a;->a(Landroid/content/Context;Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/youju/statistics/c/f/b;->d:Lcom/youju/statistics/c/f/b;

    :goto_8
    return-object v0

    :cond_9
    invoke-static {p0}, Lcom/youju/statistics/c/f/a;->c(Landroid/content/Context;)Lcom/youju/statistics/c/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youju/statistics/c/c/d;->h()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/youju/statistics/c/f/a;->a(JI)Lcom/youju/statistics/c/f/b;

    move-result-object v0

    goto :goto_8
.end method

.method public static d(Landroid/content/Context;JLandroid/content/ContentValues;)Lcom/youju/statistics/c/f/b;
    .registers 5

    invoke-static {p0}, Lcom/youju/statistics/c/f/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/youju/statistics/c/f/b;->c:Lcom/youju/statistics/c/f/b;

    :goto_8
    return-object v0

    :cond_9
    invoke-static {p0, p1, p2, p3}, Lcom/youju/statistics/c/f/a;->e(Landroid/content/Context;JLandroid/content/ContentValues;)Lcom/youju/statistics/c/f/b;

    move-result-object v0

    goto :goto_8
.end method

.method private static e(Landroid/content/Context;JLandroid/content/ContentValues;)Lcom/youju/statistics/c/f/b;
    .registers 5

    invoke-static {p0}, Lcom/youju/statistics/c/f/a;->c(Landroid/content/Context;)Lcom/youju/statistics/c/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youju/statistics/c/c/d;->g()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/youju/statistics/c/f/a;->a(JI)Lcom/youju/statistics/c/f/b;

    move-result-object v0

    return-object v0
.end method
