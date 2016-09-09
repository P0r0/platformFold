.class public abstract Lcom/youju/statistics/c/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/youju/statistics/c/a/c;


# instance fields
.field protected a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:J

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/youju/statistics/c/a/n;->b:I

    iput v2, p0, Lcom/youju/statistics/c/a/n;->c:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/youju/statistics/c/a/n;->d:J

    iput v2, p0, Lcom/youju/statistics/c/a/n;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youju/statistics/c/a/n;->g:Z

    iput-object p2, p0, Lcom/youju/statistics/c/a/n;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/youju/statistics/c/a/n;->c()I

    move-result v0

    iput v0, p0, Lcom/youju/statistics/c/a/n;->f:I

    iput-boolean p3, p0, Lcom/youju/statistics/c/a/n;->g:Z

    iput-object p1, p0, Lcom/youju/statistics/c/a/n;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/youju/statistics/c/a/d;Lcom/youju/statistics/c/a/k;)I
    .registers 4

    iget v0, p0, Lcom/youju/statistics/c/a/n;->c:I

    invoke-interface {p2, p1, v0}, Lcom/youju/statistics/c/a/k;->a(Lcom/youju/statistics/c/a/d;I)I

    move-result v0

    return v0
.end method

.method private a(Landroid/database/Cursor;Lcom/youju/statistics/c/a/k;)V
    .registers 7

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_3
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/youju/statistics/c/a/n;->a(Landroid/database/Cursor;)Lcom/youju/statistics/c/a/d;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/youju/statistics/c/a/n;->a(Lcom/youju/statistics/c/a/d;Lcom/youju/statistics/c/a/k;)I

    move-result v0

    iget v1, p0, Lcom/youju/statistics/c/a/n;->c:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/youju/statistics/c/a/n;->c:I

    iget v1, p0, Lcom/youju/statistics/c/a/n;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/youju/statistics/c/a/n;->b:I

    const-string v0, "_id"

    invoke-static {p1, v0}, Lcom/youju/statistics/a/g;->c(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/youju/statistics/c/a/n;->d:J
    :try_end_1d
    .catch Lcom/youju/statistics/d/h; {:try_start_3 .. :try_end_1d} :catch_24
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1d} :catch_59

    :goto_1d
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_23
    return-void

    :catch_24
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/youju/statistics/c/a/n;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EventDataManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putMaxSizeData"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/youju/statistics/d/h;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    :catch_59
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d
.end method

.method private g()I
    .registers 2

    iget v0, p0, Lcom/youju/statistics/c/a/n;->f:I

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_7

    const/4 v0, 0x3

    :cond_7
    return v0
.end method


# virtual methods
.method public a()I
    .registers 2

    invoke-direct {p0}, Lcom/youju/statistics/c/a/n;->g()I

    move-result v0

    return v0
.end method

.method public a(Lcom/youju/statistics/c/a/k;ILjava/util/HashMap;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/youju/statistics/c/a/k;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/youju/statistics/c/a/n;->g:Z

    if-eqz v1, :cond_7

    if-gtz p2, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    iput p2, p0, Lcom/youju/statistics/c/a/n;->c:I

    const/4 v2, 0x0

    :try_start_b
    invoke-virtual {p0}, Lcom/youju/statistics/c/a/n;->d()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v2}, Lcom/youju/statistics/a/g;->c(Landroid/database/Cursor;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_57
    .catchall {:try_start_b .. :try_end_12} :catchall_5f

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {v2}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    goto :goto_7

    :cond_19
    :try_start_19
    invoke-direct {p0, v2, p1}, Lcom/youju/statistics/c/a/n;->a(Landroid/database/Cursor;Lcom/youju/statistics/c/a/k;)V

    iget-wide v4, p0, Lcom/youju/statistics/c/a/n;->d:J

    invoke-virtual {p0, p3, v4, v5}, Lcom/youju/statistics/c/a/n;->a(Ljava/util/HashMap;J)V

    iget-object v1, p0, Lcom/youju/statistics/c/a/n;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addEventData"

    invoke-static {v4}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mTotalAddLength = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/youju/statistics/c/a/n;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mLastRecordIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/youju/statistics/c/a/n;->d:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/youju/statistics/c/a/n;->b:I
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_53} :catch_57
    .catchall {:try_start_19 .. :try_end_53} :catchall_5f

    invoke-static {v2}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    goto :goto_7

    :catch_57
    move-exception v1

    :try_start_58
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5f

    invoke-static {v2}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    goto :goto_7

    :catchall_5f
    move-exception v0

    invoke-static {v2}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    throw v0
.end method

.method protected a(J)Landroid/database/Cursor;
    .registers 12

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/youju/statistics/c/a/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/e/c;->a(Landroid/content/Context;)Lcom/youju/statistics/e/c;

    move-result-object v0

    iget-object v1, p0, Lcom/youju/statistics/c/a/n;->e:Ljava/lang/String;

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/youju/statistics/e/c;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Landroid/database/Cursor;)Lcom/youju/statistics/c/a/d;
.end method

.method protected abstract a(Ljava/util/HashMap;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/c/a/n;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract c()I
.end method

.method protected abstract d()Landroid/database/Cursor;
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/youju/statistics/c/a/n;->f:I

    return v0
.end method

.method protected f()Landroid/database/Cursor;
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/youju/statistics/c/a/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/e/c;->a(Landroid/content/Context;)Lcom/youju/statistics/e/c;

    move-result-object v0

    iget-object v1, p0, Lcom/youju/statistics/c/a/n;->e:Ljava/lang/String;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/youju/statistics/e/c;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
