.class public Lcom/youju/statistics/b/b;
.super Lcom/youju/statistics/b/n;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:J

.field private d:Lcom/youju/statistics/c/g;

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/youju/statistics/b/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JJ)V
    .registers 8

    invoke-direct {p0}, Lcom/youju/statistics/b/n;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/youju/statistics/b/b;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/youju/statistics/b/b;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/youju/statistics/b/b;->e:Landroid/content/Context;

    iput-wide p5, p0, Lcom/youju/statistics/b/b;->c:J

    return-void
.end method

.method private a(Lcom/youju/statistics/c/a/f;Lcom/youju/statistics/c/t;)V
    .registers 7

    :try_start_0
    invoke-virtual {p1}, Lcom/youju/statistics/c/a/f;->a()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/youju/statistics/b/b;->c:J

    invoke-virtual {p2, v0, v2, v3}, Lcom/youju/statistics/c/t;->d(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/youju/statistics/b/b;->d:Lcom/youju/statistics/c/g;

    invoke-virtual {p1}, Lcom/youju/statistics/c/a/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/g;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/youju/statistics/b/b;->e:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/youju/statistics/a/t;->a(Landroid/content/Context;Lcom/youju/statistics/c/a/f;)V
    :try_end_17
    .catch Lcom/youju/statistics/d/c; {:try_start_0 .. :try_end_17} :catch_18

    :goto_17
    return-void

    :catch_18
    move-exception v0

    sget-object v1, Lcom/youju/statistics/b/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishedCurrentPage"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/youju/statistics/d/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/youju/statistics/a/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method

.method private a(Landroid/content/Context;)Z
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/youju/statistics/c/r;->e()Lcom/youju/statistics/c/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youju/statistics/c/r;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youju/statistics/a/n;->b(Ljava/lang/CharSequence;)Z
    :try_end_b
    .catch Lcom/youju/statistics/d/d; {:try_start_0 .. :try_end_b} :catch_10

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    :goto_f
    return v0

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Lcom/youju/statistics/d/d;->printStackTrace()V

    :cond_14
    const/4 v0, 0x1

    goto :goto_f
.end method

.method private a(Lcom/youju/statistics/c/a/f;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_22

    sget-object v1, Lcom/youju/statistics/b/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HandlePageEnd"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "no current page"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_21
    return v0

    :cond_22
    invoke-direct {p0, p1}, Lcom/youju/statistics/b/b;->d(Lcom/youju/statistics/c/a/f;)Z

    move-result v1

    if-eqz v1, :cond_47

    sget-object v1, Lcom/youju/statistics/b/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HandlePageEnd"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "not in same session"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    :cond_47
    invoke-direct {p0, p1}, Lcom/youju/statistics/b/b;->c(Lcom/youju/statistics/c/a/f;)Z

    move-result v1

    if-eqz v1, :cond_6c

    sget-object v1, Lcom/youju/statistics/b/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HandlePageEnd"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "not in same activity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    :cond_6c
    invoke-direct {p0, p1}, Lcom/youju/statistics/b/b;->b(Lcom/youju/statistics/c/a/f;)Z

    move-result v1

    if-eqz v1, :cond_91

    sget-object v1, Lcom/youju/statistics/b/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HandlePageEnd"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "not same page name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    :cond_91
    const/4 v0, 0x1

    goto :goto_21
.end method

.method private b(Lcom/youju/statistics/c/a/f;)Z
    .registers 4

    iget-object v0, p0, Lcom/youju/statistics/b/b;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/youju/statistics/c/a/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private c(Lcom/youju/statistics/c/a/f;)Z
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/youju/statistics/b/b;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/youju/statistics/a/t;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/youju/statistics/a/n;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    invoke-virtual {p1}, Lcom/youju/statistics/c/a/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x0

    goto :goto_d
.end method

.method private d(Lcom/youju/statistics/c/a/f;)Z
    .registers 5

    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/youju/statistics/b/b;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/youju/statistics/a/e;->c(Landroid/content/Context;)Lcom/youju/statistics/c/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youju/statistics/c/a/j;->i()Ljava/lang/String;
    :try_end_a
    .catch Lcom/youju/statistics/d/e; {:try_start_1 .. :try_end_a} :catch_17

    move-result-object v1

    invoke-virtual {p1}, Lcom/youju/statistics/c/a/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v0, 0x0

    :cond_16
    :goto_16
    return v0

    :catch_17
    move-exception v1

    invoke-virtual {v1}, Lcom/youju/statistics/d/e;->printStackTrace()V

    goto :goto_16
.end method


# virtual methods
.method protected a()V
    .registers 4

    iget-object v0, p0, Lcom/youju/statistics/b/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/youju/statistics/a/n;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lcom/youju/statistics/b/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page end"

    invoke-static {v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PageName is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_26
    return-void

    :cond_27
    iget-object v0, p0, Lcom/youju/statistics/b/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/a/e;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4e

    sget-object v0, Lcom/youju/statistics/b/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page end"

    invoke-static {v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "no session"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    :cond_4e
    iget-object v0, p0, Lcom/youju/statistics/b/b;->e:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/youju/statistics/b/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_75

    sget-object v0, Lcom/youju/statistics/b/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page end"

    invoke-static {v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "no current activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    :cond_75
    iget-object v0, p0, Lcom/youju/statistics/b/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/c/t;->a(Landroid/content/Context;)Lcom/youju/statistics/c/t;

    move-result-object v1

    :try_start_7b
    iget-object v0, p0, Lcom/youju/statistics/b/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/c/g;->a(Landroid/content/Context;)Lcom/youju/statistics/c/g;

    move-result-object v0

    iput-object v0, p0, Lcom/youju/statistics/b/b;->d:Lcom/youju/statistics/c/g;

    iget-object v0, p0, Lcom/youju/statistics/b/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/a/t;->a(Landroid/content/Context;)Lcom/youju/statistics/c/a/f;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/youju/statistics/b/b;->a(Lcom/youju/statistics/c/a/f;)Z

    move-result v2

    if-eqz v2, :cond_92

    invoke-direct {p0, v0, v1}, Lcom/youju/statistics/b/b;->a(Lcom/youju/statistics/c/a/f;Lcom/youju/statistics/c/t;)V
    :try_end_92
    .catchall {:try_start_7b .. :try_end_92} :catchall_96

    :cond_92
    invoke-virtual {v1}, Lcom/youju/statistics/c/t;->a()V

    goto :goto_26

    :catchall_96
    move-exception v0

    invoke-virtual {v1}, Lcom/youju/statistics/c/t;->a()V

    throw v0
.end method

.method protected b()V
    .registers 1

    return-void
.end method
