.class public Lcom/youju/statistics/c/a/p;
.super Lcom/youju/statistics/c/a/d;


# instance fields
.field private b:Ljava/lang/String;

.field private c:J

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const-string v0, "activity"

    invoke-direct {p0, v0}, Lcom/youju/statistics/c/a/d;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/youju/statistics/c/a/p;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/youju/statistics/c/a/p;->c:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/youju/statistics/c/a/p;->d:I

    const-string v0, ""

    iput-object v0, p0, Lcom/youju/statistics/c/a/p;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/youju/statistics/c/a/p;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/database/Cursor;)Lcom/youju/statistics/c/a/p;
    .registers 5

    new-instance v0, Lcom/youju/statistics/c/a/p;

    invoke-direct {v0}, Lcom/youju/statistics/c/a/p;-><init>()V

    :try_start_5
    invoke-static {p0, v0}, Lcom/youju/statistics/c/a/p;->a(Landroid/database/Cursor;Lcom/youju/statistics/c/a/d;)V

    const-string v1, "start_time"

    invoke-static {p0, v1}, Lcom/youju/statistics/a/g;->c(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/youju/statistics/c/a/p;->a(J)V

    const-string v1, "duration"

    invoke-static {p0, v1}, Lcom/youju/statistics/a/g;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/a/p;->a(I)V

    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/a/p;->e(Ljava/lang/String;)V

    const-string v1, "realtime"

    invoke-static {p0, v1}, Lcom/youju/statistics/a/g;->c(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/youju/statistics/c/a/p;->b(J)V

    const-string v1, "refer"

    invoke-static {p0, v1}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/a/p;->g(Ljava/lang/String;)V

    const-string v1, "session_id"

    invoke-static {p0, v1}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/a/p;->f(Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3e} :catch_3f

    :goto_3e
    return-object v0

    :catch_3f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Lcom/youju/statistics/c/a/p;

    invoke-direct {v0}, Lcom/youju/statistics/c/a/p;-><init>()V

    goto :goto_3e
.end method

.method public static h()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x130

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER PRIMARY KEY AUTOINCREMENT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT NOT NULL,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTERGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "session_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT NOT NULL,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "refer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT NOT NULL,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "realtime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " LONG,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "start_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " LONG,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/youju/statistics/c/a/p;->b(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .registers 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_4

    :goto_3
    return-void

    :cond_4
    iput p1, p0, Lcom/youju/statistics/c/a/p;->d:I

    goto :goto_3
.end method

.method protected a(Ljava/io/ByteArrayOutputStream;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method

.method protected a(Ljava/lang/StringBuilder;)V
    .registers 6

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youju/statistics/c/a/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youju/statistics/c/a/p;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youju/statistics/c/a/p;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youju/statistics/c/a/p;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/youju/statistics/c/a/p;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method

.method public b(J)V
    .registers 4

    iput-wide p1, p0, Lcom/youju/statistics/c/a/p;->c:J

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iput-object p1, p0, Lcom/youju/statistics/c/a/p;->b:Ljava/lang/String;

    goto :goto_2
.end method

.method public f()Landroid/content/ContentValues;
    .registers 5

    invoke-super {p0}, Lcom/youju/statistics/c/a/d;->f()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lcom/youju/statistics/c/a/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "start_time"

    invoke-virtual {p0}, Lcom/youju/statistics/c/a/p;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "duration"

    iget v2, p0, Lcom/youju/statistics/c/a/p;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "session_id"

    iget-object v2, p0, Lcom/youju/statistics/c/a/p;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "refer"

    iget-object v2, p0, Lcom/youju/statistics/c/a/p;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "realtime"

    iget-wide v2, p0, Lcom/youju/statistics/c/a/p;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iput-object p1, p0, Lcom/youju/statistics/c/a/p;->e:Ljava/lang/String;

    goto :goto_2
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iput-object p1, p0, Lcom/youju/statistics/c/a/p;->f:Ljava/lang/String;

    goto :goto_2
.end method
