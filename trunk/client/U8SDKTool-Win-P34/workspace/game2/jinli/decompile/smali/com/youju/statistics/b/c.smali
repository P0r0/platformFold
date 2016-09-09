.class public Lcom/youju/statistics/b/c;
.super Lcom/youju/statistics/b/n;


# instance fields
.field private a:Ljava/lang/Throwable;

.field private b:J

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Throwable;J)V
    .registers 6

    invoke-direct {p0}, Lcom/youju/statistics/b/n;-><init>()V

    iput-object p2, p0, Lcom/youju/statistics/b/c;->a:Ljava/lang/Throwable;

    iput-wide p3, p0, Lcom/youju/statistics/b/c;->b:J

    iput-object p1, p0, Lcom/youju/statistics/b/c;->c:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/youju/statistics/a/n;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youju/statistics/a/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/youju/statistics/c/a/i;)V
    .registers 6

    iget-object v0, p0, Lcom/youju/statistics/b/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/e/c;->a(Landroid/content/Context;)Lcom/youju/statistics/e/c;

    move-result-object v0

    const-string v1, "error_report"

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/youju/statistics/c/a/i;->f()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/youju/statistics/e/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method private a([B)Z
    .registers 4

    const/16 v0, 0x1388

    array-length v1, p1

    if-le v1, v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private b([B)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    const/16 v0, 0x1388

    new-array v1, v0, [B

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private c()Lcom/youju/statistics/c/a/i;
    .registers 5

    new-instance v0, Lcom/youju/statistics/c/a/i;

    invoke-direct {v0}, Lcom/youju/statistics/c/a/i;-><init>()V

    invoke-direct {p0}, Lcom/youju/statistics/b/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/a/i;->f(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/youju/statistics/b/c;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/youju/statistics/c/a/i;->a(J)V

    invoke-static {v1}, Lcom/youju/statistics/a/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/a/i;->e(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/a/i;->a(I)V

    iget-object v1, p0, Lcom/youju/statistics/b/c;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/youju/statistics/a/n;->a(Lcom/youju/statistics/c/a/d;Landroid/content/Context;)V

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/youju/statistics/b/c;->a:Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/youju/statistics/a/n;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/youju/statistics/b/c;->a([B)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-direct {p0, v1}, Lcom/youju/statistics/b/c;->b([B)Ljava/lang/String;

    move-result-object v0

    :cond_14
    invoke-direct {p0, v0}, Lcom/youju/statistics/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()V
    .registers 2

    invoke-direct {p0}, Lcom/youju/statistics/b/c;->c()Lcom/youju/statistics/c/a/i;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/youju/statistics/b/c;->a(Lcom/youju/statistics/c/a/i;)V

    return-void
.end method

.method protected b()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youju/statistics/b/c;->a:Ljava/lang/Throwable;

    return-void
.end method
