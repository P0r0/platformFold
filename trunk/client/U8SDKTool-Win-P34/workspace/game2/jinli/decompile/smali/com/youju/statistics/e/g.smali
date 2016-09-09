.class public Lcom/youju/statistics/e/g;
.super Lcom/youju/statistics/e/h;


# direct methods
.method protected constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    const-string v0, "activity"

    invoke-direct {p0, v0, p1, p2}, Lcom/youju/statistics/e/h;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/ContentValues;)J
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/youju/statistics/e/g;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "activity"

    invoke-static {v1, v2}, Lcom/youju/statistics/a/g;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_31
    .catchall {:try_start_1 .. :try_end_8} :catchall_5a

    move-result-object v2

    :try_start_9
    const-string v0, "_id"

    invoke-static {v2, v0}, Lcom/youju/statistics/a/g;->c(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, p1, v3, v4}, Lcom/youju/statistics/e/g;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2d} :catch_63
    .catchall {:try_start_9 .. :try_end_2d} :catchall_61

    invoke-static {v2}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    :goto_30
    return-wide v0

    :catch_31
    move-exception v1

    move-object v2, v0

    :goto_33
    :try_start_33
    const-string v0, "ActivityTableOperator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNotAllowedInsert"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " has no record "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/youju/statistics/e/g;->a(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_55
    .catchall {:try_start_33 .. :try_end_55} :catchall_61

    move-result-wide v0

    invoke-static {v2}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    goto :goto_30

    :catchall_5a
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_5d
    invoke-static {v2}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_61
    move-exception v0

    goto :goto_5d

    :catch_63
    move-exception v0

    goto :goto_33
.end method

.method protected a(Landroid/content/Context;JLandroid/content/ContentValues;)Lcom/youju/statistics/c/f/b;
    .registers 7

    invoke-static {p1, p2, p3, p4}, Lcom/youju/statistics/c/f/a;->d(Landroid/content/Context;JLandroid/content/ContentValues;)Lcom/youju/statistics/c/f/b;

    move-result-object v0

    return-object v0
.end method
