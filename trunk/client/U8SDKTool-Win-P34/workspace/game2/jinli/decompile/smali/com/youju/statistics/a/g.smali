.class public Lcom/youju/statistics/a/g;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    .registers 10

    const-wide/16 v0, -0x1

    const/4 v3, 0x0

    :try_start_3
    invoke-static {p0}, Lcom/youju/statistics/e/c;->a(Landroid/content/Context;)Lcom/youju/statistics/e/c;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " SELECT * FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ORDER BY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " DESC LIMIT 1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, p3}, Lcom/youju/statistics/e/c;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-static {v3}, Lcom/youju/statistics/a/g;->b(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "_id"

    invoke-static {v3, v2}, Lcom/youju/statistics/a/g;->c(Landroid/database/Cursor;Ljava/lang/String;)J
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_48} :catch_51
    .catchall {:try_start_3 .. :try_end_48} :catchall_59

    move-result-wide v0

    invoke-static {v3}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    :goto_4c
    return-wide v0

    :cond_4d
    invoke-static {v3}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    goto :goto_4c

    :catch_51
    move-exception v2

    :try_start_52
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_59

    invoke-static {v3}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    goto :goto_4c

    :catchall_59
    move-exception v0

    invoke-static {v3}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/youju/statistics/e/c;->a(Landroid/content/Context;)Lcom/youju/statistics/e/c;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " SELECT * FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  ORDER BY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " DESC LIMIT 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_2b
    invoke-virtual {v1, v2, v3}, Lcom/youju/statistics/e/c;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/youju/statistics/a/g;->b(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_38} :catch_39

    return-object v0

    :catch_39
    move-exception v1

    invoke-static {v0}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    :cond_3d
    new-instance v0, Lcom/youju/statistics/d/e;

    invoke-direct {v0, p1}, Lcom/youju/statistics/d/e;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 5

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " SELECT * FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  ORDER BY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DESC LIMIT 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_27
    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/youju/statistics/a/g;->b(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_34} :catch_35

    return-object v0

    :catch_35
    move-exception v1

    invoke-static {v0}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    :cond_39
    new-instance v0, Lcom/youju/statistics/d/e;

    invoke-direct {v0, p1}, Lcom/youju/statistics/d/e;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Landroid/database/Cursor;
    .registers 8

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Lcom/youju/statistics/a/g;->d(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 8

    :try_start_0
    const-string v0, "_id = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0}, Lcom/youju/statistics/e/c;->a(Landroid/content/Context;)Lcom/youju/statistics/e/c;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3, v0, v1}, Lcom/youju/statistics/e/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    :goto_15
    return-void

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;JLandroid/content/ContentValues;)V
    .registers 9

    :try_start_0
    const-string v0, "_id = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0}, Lcom/youju/statistics/e/c;->a(Landroid/content/Context;)Lcom/youju/statistics/e/c;

    move-result-object v2

    invoke-virtual {v2, p1, p4, v0, v1}, Lcom/youju/statistics/e/c;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    :goto_13
    return-void

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method public static a(Landroid/database/Cursor;)V
    .registers 2

    invoke-static {p0}, Lcom/youju/statistics/a/n;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_9
    return-void
.end method

.method public static b(Landroid/database/Cursor;Ljava/lang/String;)I
    .registers 3

    invoke-static {p0, p1}, Lcom/youju/statistics/a/g;->d(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/database/Cursor;)Z
    .registers 2

    invoke-static {p0}, Lcom/youju/statistics/a/g;->c(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static c(Landroid/database/Cursor;Ljava/lang/String;)J
    .registers 4

    invoke-static {p0, p1}, Lcom/youju/statistics/a/g;->d(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static c(Landroid/database/Cursor;)Z
    .registers 2

    invoke-static {p0}, Lcom/youju/statistics/a/n;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static d(Landroid/database/Cursor;Ljava/lang/String;)I
    .registers 3

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
