.class public Lcom/youju/statistics/e/b;
.super Lcom/youju/statistics/e/h;


# direct methods
.method protected constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    const-string v0, "error_report"

    invoke-direct {p0, v0, p1, p2}, Lcom/youju/statistics/e/h;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/ContentValues;)J
    .registers 4

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method protected a(Landroid/content/Context;JLandroid/content/ContentValues;)Lcom/youju/statistics/c/f/b;
    .registers 7

    invoke-static {p1, p2, p3, p4}, Lcom/youju/statistics/c/f/a;->c(Landroid/content/Context;JLandroid/content/ContentValues;)Lcom/youju/statistics/c/f/b;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/content/ContentValues;)J
    .registers 6

    const-string v0, "short_hash_code"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "short_hash_code = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, p1, v1, v2}, Lcom/youju/statistics/e/b;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
