.class final Lcom/unionpay/sdk/ar;
.super Lcom/unionpay/sdk/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/sdk/ar$c;,
        Lcom/unionpay/sdk/ar$b;,
        Lcom/unionpay/sdk/ar$a;,
        Lcom/unionpay/sdk/ar$d;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/unionpay/sdk/ar;

.field private static b:Landroid/database/sqlite/SQLiteDatabase;

.field private static c:I


# instance fields
.field private final d:I

.field private final e:I

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/unionpay/sdk/ar;->a:Lcom/unionpay/sdk/ar;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/unionpay/sdk/v;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/unionpay/sdk/ar;->d:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/unionpay/sdk/ar;->e:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/unionpay/sdk/ar;->f:I

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 10

    const-wide/16 v0, 0x0

    monitor-enter p0

    :try_start_3
    invoke-static {p1}, Lcom/unionpay/sdk/aw;->b(Ljava/lang/String;)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_44

    move-result v2

    if-eqz v2, :cond_b

    :goto_9
    monitor-exit p0

    return-wide v0

    :cond_b
    :try_start_b
    sget-object v2, Lcom/unionpay/sdk/ar;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_44

    :try_start_10
    sget-object v2, Lcom/unionpay/sdk/ar;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_16} :catch_47
    .catchall {:try_start_10 .. :try_end_16} :catchall_55

    move-result-wide v2

    :try_start_17
    sget-object v0, Lcom/unionpay/sdk/ar;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_1c} :catch_5c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_55

    :try_start_1c
    sget-object v0, Lcom/unionpay/sdk/ar;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-wide v0, v2

    :goto_22
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "[SQL execution] "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Return value: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/unionpay/sdk/al;->b([Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_1c .. :try_end_43} :catchall_44

    goto :goto_9

    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_47
    move-exception v2

    move-object v6, v2

    move-wide v2, v0

    move-object v0, v6

    :goto_4b
    :try_start_4b
    invoke-static {v0}, Lcom/unionpay/sdk/al;->a(Ljava/lang/Throwable;)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_55

    :try_start_4e
    sget-object v0, Lcom/unionpay/sdk/ar;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-wide v0, v2

    goto :goto_22

    :catchall_55
    move-exception v0

    sget-object v1, Lcom/unionpay/sdk/ar;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_5c
    .catchall {:try_start_4e .. :try_end_5c} :catchall_44

    :catch_5c
    move-exception v0

    goto :goto_4b
.end method

.method private declared-synchronized a(Ljava/lang/String;Lcom/unionpay/sdk/c$a;Ljava/lang/StringBuffer;)J
    .registers 14

    const/4 v9, 0x3

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_3
    sget-object v0, Lcom/unionpay/sdk/ar;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "error_report"

    sget-object v2, Lcom/unionpay/sdk/ar$c;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_12} :catch_108
    .catchall {:try_start_3 .. :try_end_12} :catchall_fb

    move-result-object v2

    :try_start_13
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_1a} :catch_e7
    .catchall {:try_start_13 .. :try_end_1a} :catchall_103

    if-ge v1, v9, :cond_25

    if-eqz v2, :cond_21

    :try_start_1e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_df

    :cond_21
    const-wide/16 v0, 0x0

    :cond_23
    :goto_23
    monitor-exit p0

    return-wide v0

    :cond_25
    :try_start_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/sdk/aw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_f5

    :cond_5c
    :goto_5c
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_f5

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unionpay/sdk/ag;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p2, Lcom/unionpay/sdk/c$a;->a:J

    const/4 v1, 0x2

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, p2, Lcom/unionpay/sdk/c$a;->d:[B

    const/4 v1, 0x3

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unionpay/sdk/ag;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p2, Lcom/unionpay/sdk/c$a;->b:I

    new-instance v1, Ljava/lang/String;

    iget-object v3, p2, Lcom/unionpay/sdk/c$a;->d:[B

    const-string v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_5c

    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    if-lt v3, v9, :cond_5c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v1, v1, v4

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e2

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_d7
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_d7} :catch_e7
    .catchall {:try_start_25 .. :try_end_d7} :catchall_103

    move-result-wide v0

    if-eqz v2, :cond_23

    :try_start_da
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_dd
    .catchall {:try_start_da .. :try_end_dd} :catchall_df

    goto/16 :goto_23

    :catchall_df
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_e2
    :try_start_e2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_e5
    .catch Ljava/lang/Throwable; {:try_start_e2 .. :try_end_e5} :catch_e7
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_103

    goto/16 :goto_5c

    :catch_e7
    move-exception v0

    move-object v1, v2

    :goto_e9
    :try_start_e9
    invoke-static {v0}, Lcom/unionpay/sdk/al;->a(Ljava/lang/Throwable;)V
    :try_end_ec
    .catchall {:try_start_e9 .. :try_end_ec} :catchall_105

    if-eqz v1, :cond_f1

    :try_start_ee
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_f1
    :goto_f1
    const-wide/16 v0, 0x0

    goto/16 :goto_23

    :cond_f5
    if-eqz v2, :cond_f1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_f1

    :catchall_fb
    move-exception v0

    move-object v2, v8

    :goto_fd
    if-eqz v2, :cond_102

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_102
    throw v0
    :try_end_103
    .catchall {:try_start_ee .. :try_end_103} :catchall_df

    :catchall_103
    move-exception v0

    goto :goto_fd

    :catchall_105
    move-exception v0

    move-object v2, v1

    goto :goto_fd

    :catch_108
    move-exception v0

    move-object v1, v8

    goto :goto_e9
.end method

.method static c()Lcom/unionpay/sdk/ar;
    .registers 2

    sget-object v0, Lcom/unionpay/sdk/ar;->a:Lcom/unionpay/sdk/ar;

    if-nez v0, :cond_13

    const-class v1, Lcom/unionpay/sdk/ar;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/unionpay/sdk/ar;->a:Lcom/unionpay/sdk/ar;

    if-nez v0, :cond_12

    new-instance v0, Lcom/unionpay/sdk/ar;

    invoke-direct {v0}, Lcom/unionpay/sdk/ar;-><init>()V

    sput-object v0, Lcom/unionpay/sdk/ar;->a:Lcom/unionpay/sdk/ar;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/unionpay/sdk/ar;->a:Lcom/unionpay/sdk/ar;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized e()V
    .registers 4

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/unionpay/sdk/ar;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_64

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "unionpaytcagent.db"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_27
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/unionpay/sdk/ar;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x1

    sput v0, Lcom/unionpay/sdk/ar;->c:I

    if-nez v1, :cond_38

    invoke-static {}, Lcom/unionpay/sdk/ar;->f()V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_61

    :cond_36
    :goto_36
    monitor-exit p0

    return-void

    :cond_38
    :try_start_38
    sget-object v0, Lcom/unionpay/sdk/ar;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    const/4 v1, 0x6

    if-le v1, v0, :cond_36

    sget-object v0, Lcom/unionpay/sdk/ar;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS error_report"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v0, Lcom/unionpay/sdk/ar;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS app_event"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v0, Lcom/unionpay/sdk/ar;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS session"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v0, Lcom/unionpay/sdk/ar;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS activity"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/unionpay/sdk/ar;->f()V
    :try_end_60
    .catchall {:try_start_38 .. :try_end_60} :catchall_61

    goto :goto_36

    :catchall_61
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_64
    :try_start_64
    sget v0, Lcom/unionpay/sdk/ar;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/unionpay/sdk/ar;->c:I
    :try_end_6a
    .catchall {:try_start_64 .. :try_end_6a} :catchall_61

    goto :goto_36
.end method

.method private static f()V
    .registers 2

    sget-object v0, Lcom/unionpay/sdk/ar;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    sget-object v0, Lcom/unionpay/sdk/ar;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/unionpay/sdk/ar$d;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    sget-object v0, Lcom/unionpay/sdk/ar;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/unionpay/sdk/ar$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    sget-object v0, Lcom/unionpay/sdk/ar;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/unionpay/sdk/ar$b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    sget-object v0, Lcom/unionpay/sdk/ar;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/unionpay/sdk/ar$c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private declared-synchronized g()V
    .registers 3

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/unionpay/sdk/ar;->c:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/unionpay/sdk/ar;->c:I

    const/4 v0, 0x0

    sget v1, Lcom/unionpay/sdk/ar;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/unionpay/sdk/ar;->c:I

    if-nez v0, :cond_1e

    sget-object v0, Lcom/unionpay/sdk/ar;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/unionpay/sdk/ar;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    sput-object v0, Lcom/unionpay/sdk/ar;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    :cond_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final declared-synchronized a(JLjava/lang/String;)J
    .registers 13

    const-wide/16 v0, 0x0

    monitor-enter p0

    const/4 v2, 0x3

    :try_start_4
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "[Save Error] "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "errorTime:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ", data:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/unionpay/sdk/al;->b([Ljava/lang/String;)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "error_time"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unionpay/sdk/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/unionpay/sdk/c$a;

    invoke-direct {v3}, Lcom/unionpay/sdk/c$a;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_4 .. :try_end_50} :catchall_ad

    :try_start_50
    invoke-direct {p0, p3, v3, v4}, Lcom/unionpay/sdk/ar;->a(Ljava/lang/String;Lcom/unionpay/sdk/c$a;Ljava/lang/StringBuffer;)J

    move-result-wide v6

    cmp-long v5, v0, v6

    if-nez v5, :cond_86

    const-string v3, "UTF-8"

    invoke-virtual {p3, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const-string v5, "message"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v3, "repeat"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/unionpay/sdk/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "shorthashcode"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unionpay/sdk/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "error_report"

    invoke-direct {p0, v3, v2}, Lcom/unionpay/sdk/ar;->a(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_83} :catch_a8
    .catchall {:try_start_50 .. :try_end_83} :catchall_ad

    move-result-wide v0

    :goto_84
    monitor-exit p0

    return-wide v0

    :cond_86
    :try_start_86
    const-string v4, "repeat"

    iget v3, v3, Lcom/unionpay/sdk/c$a;->b:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unionpay/sdk/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "error_report"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {p0, v3, v2}, Lcom/unionpay/sdk/ar;->a(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_a6} :catch_a8
    .catchall {:try_start_86 .. :try_end_a6} :catchall_ad

    move-result-wide v0

    goto :goto_84

    :catch_a8
    move-exception v2

    :try_start_a9
    invoke-static {v2}, Lcom/unionpay/sdk/al;->a(Ljava/lang/Throwable;)V
    :try_end_ac
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_ad

    goto :goto_84

    :catchall_ad
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a()V
    .registers 1

    invoke-direct {p0}, Lcom/unionpay/sdk/ar;->e()V

    return-void
.end method

.method final b()V
    .registers 1

    invoke-direct {p0}, Lcom/unionpay/sdk/ar;->g()V

    return-void
.end method

.method final d()V
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lcom/unionpay/sdk/ar;->g()V

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "unionpaytcagent.db"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1f

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_20

    invoke-static {v0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_1f

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1f
.end method
