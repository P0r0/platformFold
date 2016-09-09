.class public abstract Lcom/youju/statistics/e/h;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/database/sqlite/SQLiteDatabase;

.field private b:Ljava/lang/String;

.field private c:J

.field private final d:Ljava/lang/Object;

.field private e:Landroid/database/sqlite/SQLiteDatabase;

.field private f:Lcom/youju/statistics/c/d/e;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/youju/statistics/e/h;->c:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/youju/statistics/e/h;->d:Ljava/lang/Object;

    iput-object p1, p0, Lcom/youju/statistics/e/h;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/youju/statistics/e/h;->e:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p3, p0, Lcom/youju/statistics/e/h;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/youju/statistics/e/h;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/youju/statistics/e/h;->c:J

    return-void
.end method

.method private b()I
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/youju/statistics/e/h;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select count(*) from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youju/statistics/e/h;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2a

    :try_start_1f
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_29} :catch_2e
    .catchall {:try_start_1f .. :try_end_29} :catchall_36

    move-result v0

    :cond_2a
    invoke-static {v2}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    :goto_2d
    return v0

    :catch_2e
    move-exception v1

    :try_start_2f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_36

    invoke-static {v2}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    goto :goto_2d

    :catchall_36
    move-exception v0

    invoke-static {v2}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    throw v0
.end method

.method private b(Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/youju/statistics/e/h;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-direct {p0}, Lcom/youju/statistics/e/h;->c()V

    iget-object v0, p0, Lcom/youju/statistics/e/h;->e:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/youju/statistics/e/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/youju/statistics/e/h;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_1b

    iget-object v2, p0, Lcom/youju/statistics/e/h;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-wide v0

    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lcom/youju/statistics/e/h;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private b(I)V
    .registers 6

    iget-wide v0, p0, Lcom/youju/statistics/e/h;->c:J

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/youju/statistics/e/h;->c:J

    invoke-direct {p0}, Lcom/youju/statistics/e/h;->e()V

    return-void
.end method

.method private c()V
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " select _id from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/youju/statistics/e/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " LIMIT 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/youju/statistics/e/h;->e:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_40

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_40

    const-string v0, "_id"

    invoke-static {v1, v0}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/youju/statistics/e/h;->e:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/youju/statistics/e/h;->b:Ljava/lang/String;

    const-string v4, "_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_44

    :cond_40
    invoke-static {v1}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    return-void

    :catchall_44
    move-exception v0

    invoke-static {v1}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    throw v0
.end method

.method private d()V
    .registers 5

    iget-object v0, p0, Lcom/youju/statistics/e/h;->f:Lcom/youju/statistics/c/d/e;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/youju/statistics/e/h;->f:Lcom/youju/statistics/c/d/e;

    iget-wide v2, p0, Lcom/youju/statistics/e/h;->c:J

    invoke-virtual {v0, v2, v3}, Lcom/youju/statistics/c/d/e;->a(J)V

    :cond_b
    return-void
.end method

.method private e()V
    .registers 5

    iget-object v0, p0, Lcom/youju/statistics/e/h;->f:Lcom/youju/statistics/c/d/e;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/youju/statistics/e/h;->f:Lcom/youju/statistics/c/d/e;

    iget-wide v2, p0, Lcom/youju/statistics/e/h;->c:J

    invoke-virtual {v0, v2, v3}, Lcom/youju/statistics/c/d/e;->b(J)V

    :cond_b
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    iget-object v0, p0, Lcom/youju/statistics/e/h;->e:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/youju/statistics/e/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    iget-object v1, p0, Lcom/youju/statistics/e/h;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/youju/statistics/e/h;->e:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/youju/statistics/e/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/youju/statistics/e/h;->b(I)V

    monitor-exit v1

    return v0

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method protected a()J
    .registers 7

    iget-object v1, p0, Lcom/youju/statistics/e/h;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-wide v2, p0, Lcom/youju/statistics/e/h;->c:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/youju/statistics/e/h;->b()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/youju/statistics/e/h;->c:J

    :cond_12
    iget-wide v2, p0, Lcom/youju/statistics/e/h;->c:J

    monitor-exit v1

    return-wide v2

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method protected abstract a(Landroid/content/ContentValues;)J
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 9

    iget-object v2, p0, Lcom/youju/statistics/e/h;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    invoke-virtual {p0}, Lcom/youju/statistics/e/h;->a()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/youju/statistics/e/h;->a(Landroid/content/Context;JLandroid/content/ContentValues;)Lcom/youju/statistics/c/f/b;

    move-result-object v3

    const-wide/16 v0, -0x1

    sget-object v4, Lcom/youju/statistics/e/f;->a:[I

    invoke-virtual {v3}, Lcom/youju/statistics/c/f/b;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_32

    :goto_18
    monitor-exit v2

    return-wide v0

    :pswitch_1a
    invoke-virtual {p0, p2, p3}, Lcom/youju/statistics/e/h;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_18

    :pswitch_1f
    invoke-direct {p0, p2, p3}, Lcom/youju/statistics/e/h;->b(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_18

    :pswitch_24
    invoke-virtual {p0, p3}, Lcom/youju/statistics/e/h;->b(Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_18

    :pswitch_29
    invoke-virtual {p0, p3}, Lcom/youju/statistics/e/h;->a(Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_18

    :catchall_2e
    move-exception v0

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v0

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1f
        :pswitch_24
        :pswitch_29
    .end packed-switch
.end method

.method protected a(Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 8

    const-wide/16 v2, -0x1

    iget-object v1, p0, Lcom/youju/statistics/e/h;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/youju/statistics/e/h;->e:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Lcom/youju/statistics/e/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v4, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/youju/statistics/e/h;->a(I)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_11} :catch_13
    .catchall {:try_start_5 .. :try_end_11} :catchall_18

    :goto_11
    :try_start_11
    monitor-exit v1

    return-wide v2

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_11

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method protected abstract a(Landroid/content/Context;JLandroid/content/ContentValues;)Lcom/youju/statistics/c/f/b;
.end method

.method protected a(I)V
    .registers 6

    iget-wide v0, p0, Lcom/youju/statistics/e/h;->c:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/youju/statistics/e/h;->c:J

    invoke-direct {p0}, Lcom/youju/statistics/e/h;->d()V

    return-void
.end method

.method protected a(Lcom/youju/statistics/c/d/e;)V
    .registers 2

    iput-object p1, p0, Lcom/youju/statistics/e/h;->f:Lcom/youju/statistics/c/d/e;

    return-void
.end method

.method protected b(Landroid/content/ContentValues;)J
    .registers 4

    const-wide/16 v0, -0x1

    return-wide v0
.end method
