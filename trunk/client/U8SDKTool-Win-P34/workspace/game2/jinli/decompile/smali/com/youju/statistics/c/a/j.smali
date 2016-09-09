.class public Lcom/youju/statistics/c/a/j;
.super Lcom/youju/statistics/c/a/d;


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:J

.field private g:J

.field private h:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const-string v0, "session"

    invoke-direct {p0, v0}, Lcom/youju/statistics/c/a/d;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/youju/statistics/c/a/j;->b:Ljava/lang/String;

    iput v2, p0, Lcom/youju/statistics/c/a/j;->c:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/youju/statistics/c/a/j;->d:I

    iput v2, p0, Lcom/youju/statistics/c/a/j;->e:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/youju/statistics/c/a/j;->f:J

    iput v2, p0, Lcom/youju/statistics/c/a/j;->h:I

    return-void
.end method

.method public static a(Landroid/database/Cursor;)Lcom/youju/statistics/c/a/j;
    .registers 5

    new-instance v0, Lcom/youju/statistics/c/a/j;

    invoke-direct {v0}, Lcom/youju/statistics/c/a/j;-><init>()V

    :try_start_5
    invoke-static {p0, v0}, Lcom/youju/statistics/c/a/j;->a(Landroid/database/Cursor;Lcom/youju/statistics/c/a/d;)V

    const-string v1, "start_time"

    invoke-static {p0, v1}, Lcom/youju/statistics/a/g;->c(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/youju/statistics/c/a/j;->a(J)V

    const-string v1, "session_id"

    invoke-static {p0, v1}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/a/j;->e(Ljava/lang/String;)V

    const-string v1, "duration"

    invoke-static {p0, v1}, Lcom/youju/statistics/a/g;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/a/j;->a(I)V

    const-string v1, "is_launch"

    invoke-static {p0, v1}, Lcom/youju/statistics/a/g;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/a/j;->b(I)V

    const-string v1, "interval"

    invoke-static {p0, v1}, Lcom/youju/statistics/a/g;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/youju/statistics/c/a/j;->b(J)V

    const-string v1, "last_quit_time"

    invoke-static {p0, v1}, Lcom/youju/statistics/a/g;->c(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/youju/statistics/c/a/j;->c(J)V

    const-string v1, "has_uploaded"

    invoke-static {p0, v1}, Lcom/youju/statistics/a/g;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/a/j;->c(I)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_48} :catch_49

    :goto_48
    return-object v0

    :catch_49
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Lcom/youju/statistics/c/a/j;

    invoke-direct {v0}, Lcom/youju/statistics/c/a/j;-><init>()V

    goto :goto_48
.end method

.method public static k()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12f

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "session"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER PRIMARY KEY AUTOINCREMENT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "session_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT NOT NULL,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTERGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "is_launch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTERGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "interval"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " LONG,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "is_connected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTERGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "start_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " LONG,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "last_quit_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " LONG,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "has_uploaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTERGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/youju/statistics/c/a/j;->b(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/youju/statistics/c/a/j;->c:I

    return-void
.end method

.method protected a(Ljava/io/ByteArrayOutputStream;)V
    .registers 5

    const/4 v2, 0x1

    new-array v0, v2, [B

    const/4 v1, 0x0

    aput-byte v2, v0, v1

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method

.method protected a(Ljava/lang/StringBuilder;)V
    .registers 6

    const-string v0, "session"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youju/statistics/c/a/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youju/statistics/c/a/j;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youju/statistics/c/a/j;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/youju/statistics/c/a/j;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youju/statistics/c/a/j;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/youju/statistics/c/a/j;->d:I

    return-void
.end method

.method public b(J)V
    .registers 4

    iput-wide p1, p0, Lcom/youju/statistics/c/a/j;->f:J

    return-void
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lcom/youju/statistics/c/a/j;->h:I

    return-void
.end method

.method public c(J)V
    .registers 4

    iput-wide p1, p0, Lcom/youju/statistics/c/a/j;->g:J

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iput-object p1, p0, Lcom/youju/statistics/c/a/j;->b:Ljava/lang/String;

    goto :goto_2
.end method

.method public f()Landroid/content/ContentValues;
    .registers 5

    invoke-super {p0}, Lcom/youju/statistics/c/a/d;->f()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "start_time"

    iget-wide v2, p0, Lcom/youju/statistics/c/a/j;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "session_id"

    iget-object v2, p0, Lcom/youju/statistics/c/a/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "duration"

    iget v2, p0, Lcom/youju/statistics/c/a/j;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "is_launch"

    iget v2, p0, Lcom/youju/statistics/c/a/j;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "interval"

    iget-wide v2, p0, Lcom/youju/statistics/c/a/j;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "is_connected"

    iget v2, p0, Lcom/youju/statistics/c/a/j;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "last_quit_time"

    iget-wide v2, p0, Lcom/youju/statistics/c/a/j;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "has_uploaded"

    iget v2, p0, Lcom/youju/statistics/c/a/j;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lcom/youju/statistics/c/a/j;->c:I

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/c/a/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()J
    .registers 3

    iget-wide v0, p0, Lcom/youju/statistics/c/a/j;->g:J

    return-wide v0
.end method
