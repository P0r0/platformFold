.class Lcom/youju/statistics/b/s;
.super Lcom/youju/statistics/b/q;


# instance fields
.field final synthetic c:Lcom/youju/statistics/b/p;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/youju/statistics/b/p;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/youju/statistics/b/s;->c:Lcom/youju/statistics/b/p;

    const-string v0, "session"

    invoke-direct {p0, p1, v0, p2}, Lcom/youju/statistics/b/q;-><init>(Lcom/youju/statistics/b/p;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/youju/statistics/b/s;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youju/statistics/b/s;->d:Z

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/youju/statistics/b/s;->c:Lcom/youju/statistics/b/p;

    invoke-static {v1}, Lcom/youju/statistics/b/p;->c(Lcom/youju/statistics/b/p;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "session"

    invoke-static {v1, v2}, Lcom/youju/statistics/a/g;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_c
    .catch Lcom/youju/statistics/d/e; {:try_start_1 .. :try_end_c} :catch_23
    .catchall {:try_start_1 .. :try_end_c} :catchall_46

    move-result-object v1

    :try_start_d
    const-string v0, "_id"

    invoke-static {v1, v0}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_16
    .catch Lcom/youju/statistics/d/e; {:try_start_d .. :try_end_16} :catch_55
    .catchall {:try_start_d .. :try_end_16} :catchall_4e

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    invoke-static {v1}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    :goto_1d
    return v0

    :cond_1e
    invoke-static {v1}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    :goto_21
    const/4 v0, 0x0

    goto :goto_1d

    :catch_23
    move-exception v1

    :goto_24
    :try_start_24
    const-string v1, "Session Delete"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMaxRecordIsLastRecord"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "no session"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_24 .. :try_end_42} :catchall_50

    invoke-static {v0}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    goto :goto_21

    :catchall_46
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_4a
    invoke-static {v1}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_4e
    move-exception v0

    goto :goto_4a

    :catchall_50
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_4a

    :catch_55
    move-exception v0

    move-object v0, v1

    goto :goto_24
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-boolean v0, p0, Lcom/youju/statistics/b/s;->d:Z

    if-eqz v0, :cond_20

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1f
    return-object v0

    :cond_20
    invoke-super {p0, p1}, Lcom/youju/statistics/b/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f
.end method

.method protected b()V
    .registers 1

    invoke-virtual {p0}, Lcom/youju/statistics/b/s;->c()V

    return-void
.end method

.method protected c()V
    .registers 6

    iget-boolean v0, p0, Lcom/youju/statistics/b/s;->d:Z

    if-eqz v0, :cond_34

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "has_uploaded"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youju/statistics/b/s;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/youju/statistics/b/s;->c:Lcom/youju/statistics/b/p;

    invoke-static {v2}, Lcom/youju/statistics/b/p;->a(Lcom/youju/statistics/b/p;)Lcom/youju/statistics/e/c;

    move-result-object v2

    const-string v3, "session"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/youju/statistics/e/c;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_34
    return-void
.end method
