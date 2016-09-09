.class public Lcom/youju/statistics/a/o;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;JZ)Lcom/youju/statistics/c/a/p;
    .registers 11

    new-instance v1, Lcom/youju/statistics/c/a/p;

    invoke-direct {v1}, Lcom/youju/statistics/c/a/p;-><init>()V

    const-string v0, ""

    :try_start_7
    invoke-static {p0}, Lcom/youju/statistics/a/e;->c(Landroid/content/Context;)Lcom/youju/statistics/c/a/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youju/statistics/c/a/j;->i()Ljava/lang/String;
    :try_end_e
    .catch Lcom/youju/statistics/d/e; {:try_start_7 .. :try_end_e} :catch_2c

    move-result-object v0

    :goto_f
    invoke-virtual {v1, v0}, Lcom/youju/statistics/c/a/p;->f(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Lcom/youju/statistics/c/a/p;->a(J)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/youju/statistics/c/a/p;->a(I)V

    invoke-virtual {v1, p1}, Lcom/youju/statistics/c/a/p;->e(Ljava/lang/String;)V

    invoke-static {p0, p4, p1}, Lcom/youju/statistics/a/o;->a(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/youju/statistics/c/a/p;->g(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/youju/statistics/c/a/p;->b(J)V

    invoke-static {v1, p0}, Lcom/youju/statistics/a/n;->a(Lcom/youju/statistics/c/a/d;Landroid/content/Context;)V

    return-object v1

    :catch_2c
    move-exception v2

    const-string v2, "ActivityUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createNewActivityEvent"

    invoke-static {v4}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "no session record"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static a(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_5

    const-string v0, ""

    :cond_4
    :goto_4
    return-object v0

    :cond_5
    invoke-static {p0}, Lcom/youju/statistics/c/g;->a(Landroid/content/Context;)Lcom/youju/statistics/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youju/statistics/c/g;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, ""

    goto :goto_4
.end method
