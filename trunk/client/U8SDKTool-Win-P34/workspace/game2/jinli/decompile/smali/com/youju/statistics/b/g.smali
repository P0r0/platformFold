.class public Lcom/youju/statistics/b/g;
.super Lcom/youju/statistics/b/n;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:Landroid/content/Context;

.field private e:Lcom/youju/statistics/c/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JJ)V
    .registers 10

    invoke-direct {p0}, Lcom/youju/statistics/b/n;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/youju/statistics/b/g;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/youju/statistics/b/g;->b:J

    iput-object p2, p0, Lcom/youju/statistics/b/g;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/youju/statistics/b/g;->b:J

    iput-object p1, p0, Lcom/youju/statistics/b/g;->d:Landroid/content/Context;

    iput-wide p5, p0, Lcom/youju/statistics/b/g;->c:J

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/youju/statistics/b/g;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/youju/statistics/b/g;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/youju/statistics/b/g;->b:J

    invoke-static {v0, v1, v2, v3, p1}, Lcom/youju/statistics/a/t;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)Lcom/youju/statistics/c/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/youju/statistics/b/g;->e:Lcom/youju/statistics/c/g;

    invoke-virtual {v0}, Lcom/youju/statistics/c/a/f;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/youju/statistics/c/g;->f(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 7

    iget-object v0, p0, Lcom/youju/statistics/b/g;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/youju/statistics/a/n;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/youju/statistics/b/g;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/a/e;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "YouJuAgent"

    const-string v1, "onPageStart no session there"

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_19
    iget-object v0, p0, Lcom/youju/statistics/b/g;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/a/t;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youju/statistics/a/n;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v0, "YouJuAgent"

    const-string v1, "onPageStart no activity there"

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_2d
    :try_start_2d
    iget-object v1, p0, Lcom/youju/statistics/b/g;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/youju/statistics/c/g;->a(Landroid/content/Context;)Lcom/youju/statistics/c/g;

    move-result-object v1

    iput-object v1, p0, Lcom/youju/statistics/b/g;->e:Lcom/youju/statistics/c/g;

    invoke-direct {p0, v0}, Lcom/youju/statistics/b/g;->a(Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_46

    iget-object v0, p0, Lcom/youju/statistics/b/g;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/c/t;->a(Landroid/content/Context;)Lcom/youju/statistics/c/t;

    move-result-object v0

    iget-object v1, p0, Lcom/youju/statistics/b/g;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/youju/statistics/b/g;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/youju/statistics/c/t;->b(Ljava/lang/String;J)V

    goto :goto_8

    :catchall_46
    move-exception v0

    iget-object v1, p0, Lcom/youju/statistics/b/g;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/youju/statistics/c/t;->a(Landroid/content/Context;)Lcom/youju/statistics/c/t;

    move-result-object v1

    iget-object v2, p0, Lcom/youju/statistics/b/g;->a:Ljava/lang/String;

    iget-wide v4, p0, Lcom/youju/statistics/b/g;->c:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/youju/statistics/c/t;->b(Ljava/lang/String;J)V

    throw v0
.end method

.method protected b()V
    .registers 1

    return-void
.end method
