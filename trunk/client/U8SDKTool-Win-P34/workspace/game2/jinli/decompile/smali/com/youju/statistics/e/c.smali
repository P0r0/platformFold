.class public Lcom/youju/statistics/e/c;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/youju/statistics/e/c;

.field private static f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/youju/statistics/e/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/youju/statistics/e/d;

.field private d:Landroid/database/sqlite/SQLiteDatabase;

.field private e:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/youju/statistics/e/c;->f:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/youju/statistics/e/c;->b:Landroid/content/Context;

    new-instance v0, Lcom/youju/statistics/e/d;

    iget-object v1, p0, Lcom/youju/statistics/e/c;->b:Landroid/content/Context;

    const-string v2, "statistics.db"

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/youju/statistics/e/d;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/youju/statistics/e/c;->c:Lcom/youju/statistics/e/d;

    iget-object v0, p0, Lcom/youju/statistics/e/c;->c:Lcom/youju/statistics/e/d;

    invoke-virtual {v0}, Lcom/youju/statistics/e/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/youju/statistics/e/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/youju/statistics/e/c;->c:Lcom/youju/statistics/e/d;

    invoke-virtual {v0}, Lcom/youju/statistics/e/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/youju/statistics/e/c;->e:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v0, Lcom/youju/statistics/e/c;->f:Ljava/util/HashMap;

    const-string v1, "activity"

    new-instance v2, Lcom/youju/statistics/e/g;

    iget-object v3, p0, Lcom/youju/statistics/e/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Lcom/youju/statistics/e/c;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v2, v3, v4}, Lcom/youju/statistics/e/g;-><init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/youju/statistics/e/c;->f:Ljava/util/HashMap;

    const-string v1, "app_event"

    new-instance v2, Lcom/youju/statistics/e/a;

    iget-object v3, p0, Lcom/youju/statistics/e/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Lcom/youju/statistics/e/c;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v2, v3, v4}, Lcom/youju/statistics/e/a;-><init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/youju/statistics/e/c;->f:Ljava/util/HashMap;

    const-string v1, "session"

    new-instance v2, Lcom/youju/statistics/e/e;

    iget-object v3, p0, Lcom/youju/statistics/e/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Lcom/youju/statistics/e/c;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v2, v3, v4}, Lcom/youju/statistics/e/e;-><init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/youju/statistics/e/c;->f:Ljava/util/HashMap;

    const-string v1, "error_report"

    new-instance v2, Lcom/youju/statistics/e/b;

    iget-object v3, p0, Lcom/youju/statistics/e/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Lcom/youju/statistics/e/c;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v2, v3, v4}, Lcom/youju/statistics/e/b;-><init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/youju/statistics/e/c;
    .registers 2

    sget-object v0, Lcom/youju/statistics/e/c;->a:Lcom/youju/statistics/e/c;

    invoke-static {v0}, Lcom/youju/statistics/a/n;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Lcom/youju/statistics/e/c;->b(Landroid/content/Context;)V

    :cond_b
    sget-object v0, Lcom/youju/statistics/e/c;->a:Lcom/youju/statistics/e/c;

    return-object v0
.end method

.method private static declared-synchronized b(Landroid/content/Context;)V
    .registers 3

    const-class v1, Lcom/youju/statistics/e/c;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/youju/statistics/e/c;->a:Lcom/youju/statistics/e/c;

    invoke-static {v0}, Lcom/youju/statistics/a/n;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Lcom/youju/statistics/e/c;

    invoke-direct {v0, p0}, Lcom/youju/statistics/e/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/youju/statistics/e/c;->a:Lcom/youju/statistics/e/c;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    sget-object v0, Lcom/youju/statistics/e/c;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youju/statistics/e/h;

    invoke-virtual {v0, p2, p3, p4}, Lcom/youju/statistics/e/h;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    sget-object v0, Lcom/youju/statistics/e/c;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youju/statistics/e/h;

    invoke-virtual {v0, p2, p3}, Lcom/youju/statistics/e/h;->a(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 6

    sget-object v0, Lcom/youju/statistics/e/c;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youju/statistics/e/h;

    iget-object v1, p0, Lcom/youju/statistics/e/c;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3}, Lcom/youju/statistics/e/h;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4

    iget-object v0, p0, Lcom/youju/statistics/e/c;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16

    iget-object v0, p0, Lcom/youju/statistics/e/c;->e:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/e/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/youju/statistics/c/d/e;)V
    .registers 4

    sget-object v0, Lcom/youju/statistics/e/c;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youju/statistics/e/h;

    invoke-virtual {v0, p2}, Lcom/youju/statistics/e/h;->a(Lcom/youju/statistics/c/d/e;)V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/e/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/e/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method
