.class Lcom/youju/statistics/b/k;
.super Lcom/youju/statistics/c/d/b;


# instance fields
.field final synthetic a:Lcom/youju/statistics/b/a;


# direct methods
.method constructor <init>(Lcom/youju/statistics/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/youju/statistics/b/k;->a:Lcom/youju/statistics/b/a;

    invoke-direct {p0}, Lcom/youju/statistics/c/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a([BILjava/util/HashMap;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    if-nez p4, :cond_3d

    const/4 v0, 0x0

    :goto_4
    iget-object v2, p0, Lcom/youju/statistics/b/k;->a:Lcom/youju/statistics/b/a;

    invoke-static {v2}, Lcom/youju/statistics/b/a;->a(Lcom/youju/statistics/b/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/youju/statistics/a/j;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/youju/statistics/b/k;->a:Lcom/youju/statistics/b/a;

    invoke-static {v2, v1}, Lcom/youju/statistics/b/a;->a(Lcom/youju/statistics/b/a;Z)Z

    :cond_15
    iget-object v1, p0, Lcom/youju/statistics/b/k;->a:Lcom/youju/statistics/b/a;

    invoke-static {v1, p3}, Lcom/youju/statistics/b/a;->a(Lcom/youju/statistics/b/a;Ljava/util/Map;)Ljava/util/Map;

    iget-object v1, p0, Lcom/youju/statistics/b/k;->a:Lcom/youju/statistics/b/a;

    invoke-static {v1, p2}, Lcom/youju/statistics/b/a;->a(Lcom/youju/statistics/b/a;I)I

    iget-object v1, p0, Lcom/youju/statistics/b/k;->a:Lcom/youju/statistics/b/a;

    invoke-static {v1, p4}, Lcom/youju/statistics/b/a;->a(Lcom/youju/statistics/b/a;Ljava/lang/String;)Ljava/lang/String;

    :try_start_24
    invoke-static {}, Lcom/youju/statistics/c/r;->e()Lcom/youju/statistics/c/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youju/statistics/c/r;->f()Z

    move-result v1

    if-eqz v1, :cond_3c

    new-instance v1, Lcom/youju/statistics/b/f;

    iget-object v2, p0, Lcom/youju/statistics/b/k;->a:Lcom/youju/statistics/b/a;

    invoke-static {v2}, Lcom/youju/statistics/b/a;->b(Lcom/youju/statistics/b/a;)Lcom/youju/statistics/c/d/c;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lcom/youju/statistics/b/f;-><init>([BZLcom/youju/statistics/c/d/c;)V

    invoke-virtual {v1}, Lcom/youju/statistics/b/f;->run()V
    :try_end_3c
    .catch Lcom/youju/statistics/d/d; {:try_start_24 .. :try_end_3c} :catch_3f

    :cond_3c
    :goto_3c
    return-void

    :cond_3d
    move v0, v1

    goto :goto_4

    :catch_3f
    move-exception v0

    invoke-virtual {v0}, Lcom/youju/statistics/d/d;->printStackTrace()V

    goto :goto_3c
.end method
