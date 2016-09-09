.class public Lcom/youju/statistics/b/l;
.super Lcom/youju/statistics/b/n;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Z

.field private d:J

.field private e:Lcom/youju/statistics/c/a/j;

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JJ)V
    .registers 8

    invoke-direct {p0}, Lcom/youju/statistics/b/n;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youju/statistics/b/l;->c:Z

    iput-object p2, p0, Lcom/youju/statistics/b/l;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/youju/statistics/b/l;->b:J

    iput-object p1, p0, Lcom/youju/statistics/b/l;->f:Landroid/content/Context;

    iput-wide p5, p0, Lcom/youju/statistics/b/l;->d:J

    return-void
.end method

.method private a(Lcom/youju/statistics/c/a/p;)V
    .registers 6

    iget-object v0, p0, Lcom/youju/statistics/b/l;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/e/c;->a(Landroid/content/Context;)Lcom/youju/statistics/e/c;

    move-result-object v0

    const-string v1, "activity"

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/youju/statistics/c/a/p;->f()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/youju/statistics/e/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method private a(Lcom/youju/statistics/c/t;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/youju/statistics/b/l;->c(Lcom/youju/statistics/c/t;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Lcom/youju/statistics/b/l;->b(Lcom/youju/statistics/c/t;)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/youju/statistics/b/l;->e:Lcom/youju/statistics/c/a/j;

    invoke-virtual {v0}, Lcom/youju/statistics/c/a/j;->i()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/youju/statistics/b/l;->d:J

    iget-object v1, p0, Lcom/youju/statistics/b/l;->e:Lcom/youju/statistics/c/a/j;

    invoke-virtual {v1}, Lcom/youju/statistics/c/a/j;->h()I

    move-result v1

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/youju/statistics/c/t;->a(Ljava/lang/String;JI)V

    goto :goto_9
.end method

.method private b(Lcom/youju/statistics/c/t;)V
    .registers 6

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/youju/statistics/b/l;->c:Z

    invoke-direct {p0}, Lcom/youju/statistics/b/l;->h()V

    iget-object v0, p0, Lcom/youju/statistics/b/l;->e:Lcom/youju/statistics/c/a/j;

    invoke-virtual {v0}, Lcom/youju/statistics/c/a/j;->i()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/youju/statistics/b/l;->d:J

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/youju/statistics/c/t;->a(Ljava/lang/String;JZ)V

    return-void
.end method

.method private c()V
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/b/l;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/c/g;->a(Landroid/content/Context;)Lcom/youju/statistics/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youju/statistics/c/g;->h()V

    return-void
.end method

.method private c(Lcom/youju/statistics/c/t;)Z
    .registers 3

    invoke-direct {p0}, Lcom/youju/statistics/b/l;->g()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youju/statistics/b/l;->c:Z

    :goto_9
    iget-boolean v0, p0, Lcom/youju/statistics/b/l;->c:Z

    return v0

    :cond_c
    invoke-direct {p0, p1}, Lcom/youju/statistics/b/l;->e(Lcom/youju/statistics/c/t;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youju/statistics/b/l;->c:Z

    goto :goto_9
.end method

.method private d()V
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/youju/statistics/b/l;->f:Landroid/content/Context;

    const-string v2, "activity"

    invoke-static {v1, v2}, Lcom/youju/statistics/a/g;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_8
    .catch Lcom/youju/statistics/d/e; {:try_start_1 .. :try_end_8} :catch_2a
    .catchall {:try_start_1 .. :try_end_8} :catchall_2f

    move-result-object v0

    :try_start_9
    const-string v1, "duration"

    invoke-static {v0, v1}, Lcom/youju/statistics/a/g;->c(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_26

    const-string v1, "_id"

    invoke-static {v0, v1}, Lcom/youju/statistics/a/g;->c(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/youju/statistics/b/l;->f:Landroid/content/Context;

    const-string v4, "activity"

    invoke-static {v1, v4, v2, v3}, Lcom/youju/statistics/a/g;->a(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_22
    .catch Lcom/youju/statistics/d/e; {:try_start_9 .. :try_end_22} :catch_2a
    .catchall {:try_start_9 .. :try_end_22} :catchall_37

    invoke-static {v0}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    :goto_25
    return-void

    :cond_26
    invoke-static {v0}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    goto :goto_25

    :catch_2a
    move-exception v1

    invoke-static {v0}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    goto :goto_25

    :catchall_2f
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_33
    invoke-static {v1}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_37
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_33
.end method

.method private d(Lcom/youju/statistics/c/t;)V
    .registers 6

    :try_start_0
    invoke-direct {p0}, Lcom/youju/statistics/b/l;->j()Lcom/youju/statistics/c/a/p;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/youju/statistics/b/l;->a(Lcom/youju/statistics/c/a/p;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_f

    iget-object v0, p0, Lcom/youju/statistics/b/l;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/youju/statistics/b/l;->d:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/youju/statistics/c/t;->a(Ljava/lang/String;J)V

    return-void

    :catchall_f
    move-exception v0

    iget-object v1, p0, Lcom/youju/statistics/b/l;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/youju/statistics/b/l;->d:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/youju/statistics/c/t;->a(Ljava/lang/String;J)V

    throw v0
.end method

.method private e()V
    .registers 3

    invoke-direct {p0}, Lcom/youju/statistics/b/l;->f()V

    iget-object v0, p0, Lcom/youju/statistics/b/l;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/c/g;->a(Landroid/content/Context;)Lcom/youju/statistics/c/g;

    move-result-object v0

    iget-object v1, p0, Lcom/youju/statistics/b/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/g;->b(Ljava/lang/String;)V

    return-void
.end method

.method private e(Lcom/youju/statistics/c/t;)Z
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/youju/statistics/b/l;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/c/t;->a(Landroid/content/Context;)Lcom/youju/statistics/c/t;

    move-result-object v0

    iget-wide v2, p0, Lcom/youju/statistics/b/l;->d:J

    invoke-static {}, Lcom/youju/statistics/c/r;->e()Lcom/youju/statistics/c/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youju/statistics/c/r;->i()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/youju/statistics/c/t;->a(JJ)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    move-result v0

    :goto_14
    return v0

    :catch_15
    move-exception v0

    const-string v1, "HandleActivityResumeJob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle resume isNewSession"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/youju/statistics/b/l;->e:Lcom/youju/statistics/c/a/j;

    iget-wide v2, p0, Lcom/youju/statistics/b/l;->b:J

    invoke-static {v0, v2, v3}, Lcom/youju/statistics/a/e;->a(Lcom/youju/statistics/c/a/j;J)Z

    move-result v0

    goto :goto_14
.end method

.method private f()V
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/youju/statistics/c/r;->e()Lcom/youju/statistics/c/r;

    move-result-object v0

    iget-object v1, p0, Lcom/youju/statistics/b/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/r;->a(Ljava/lang/String;)V
    :try_end_9
    .catch Lcom/youju/statistics/d/d; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "HandleActivityResumeJob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle resume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/youju/statistics/d/d;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/youju/statistics/a/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method private g()Z
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/youju/statistics/b/l;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/a/e;->c(Landroid/content/Context;)Lcom/youju/statistics/c/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/youju/statistics/b/l;->e:Lcom/youju/statistics/c/a/j;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :catch_a
    move-exception v0

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private h()V
    .registers 7

    :try_start_0
    invoke-direct {p0}, Lcom/youju/statistics/b/l;->i()J

    move-result-wide v0

    iget-object v2, p0, Lcom/youju/statistics/b/l;->f:Landroid/content/Context;

    iget-wide v4, p0, Lcom/youju/statistics/b/l;->b:J

    invoke-static {v2, v4, v5, v0, v1}, Lcom/youju/statistics/a/e;->a(Landroid/content/Context;JJ)Lcom/youju/statistics/c/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/youju/statistics/b/l;->e:Lcom/youju/statistics/c/a/j;

    iget-object v0, p0, Lcom/youju/statistics/b/l;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/youju/statistics/b/l;->e:Lcom/youju/statistics/c/a/j;

    invoke-static {v0, v1}, Lcom/youju/statistics/a/e;->a(Landroid/content/Context;Lcom/youju/statistics/c/a/j;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    :goto_15
    return-void

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method

.method private i()J
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/youju/statistics/b/l;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/c/t;->a(Landroid/content/Context;)Lcom/youju/statistics/c/t;

    move-result-object v0

    iget-wide v2, p0, Lcom/youju/statistics/b/l;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/youju/statistics/c/t;->c(J)J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result-wide v0

    :goto_c
    return-wide v0

    :catch_d
    move-exception v0

    iget-object v0, p0, Lcom/youju/statistics/b/l;->f:Landroid/content/Context;

    iget-wide v2, p0, Lcom/youju/statistics/b/l;->b:J

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/youju/statistics/a/e;->a(Landroid/content/Context;JZ)J

    move-result-wide v0

    goto :goto_c
.end method

.method private j()Lcom/youju/statistics/c/a/p;
    .registers 6

    iget-object v0, p0, Lcom/youju/statistics/b/l;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/youju/statistics/b/l;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/youju/statistics/b/l;->b:J

    iget-boolean v4, p0, Lcom/youju/statistics/b/l;->c:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/youju/statistics/a/o;->a(Landroid/content/Context;Ljava/lang/String;JZ)Lcom/youju/statistics/c/a/p;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()V
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/b/l;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/youju/statistics/a/n;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    invoke-direct {p0}, Lcom/youju/statistics/b/l;->e()V

    iget-object v0, p0, Lcom/youju/statistics/b/l;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/c/t;->a(Landroid/content/Context;)Lcom/youju/statistics/c/t;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/youju/statistics/b/l;->a(Lcom/youju/statistics/c/t;)V

    invoke-direct {p0}, Lcom/youju/statistics/b/l;->c()V

    invoke-direct {p0}, Lcom/youju/statistics/b/l;->d()V

    invoke-direct {p0, v0}, Lcom/youju/statistics/b/l;->d(Lcom/youju/statistics/c/t;)V

    goto :goto_8
.end method

.method protected b()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youju/statistics/b/l;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/youju/statistics/b/l;->e:Lcom/youju/statistics/c/a/j;

    iput-object v0, p0, Lcom/youju/statistics/b/l;->f:Landroid/content/Context;

    return-void
.end method
