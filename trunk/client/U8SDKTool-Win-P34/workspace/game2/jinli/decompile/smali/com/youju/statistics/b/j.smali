.class Lcom/youju/statistics/b/j;
.super Lcom/youju/statistics/c/d/c;


# instance fields
.field final synthetic a:Lcom/youju/statistics/b/a;


# direct methods
.method constructor <init>(Lcom/youju/statistics/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/youju/statistics/b/j;->a:Lcom/youju/statistics/b/a;

    invoke-direct {p0}, Lcom/youju/statistics/c/d/c;-><init>()V

    return-void
.end method

.method private a(Z)V
    .registers 6

    iget-object v0, p0, Lcom/youju/statistics/b/j;->a:Lcom/youju/statistics/b/a;

    invoke-static {v0}, Lcom/youju/statistics/b/a;->c(Lcom/youju/statistics/b/a;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/youju/statistics/b/j;->a:Lcom/youju/statistics/b/a;

    invoke-static {v0}, Lcom/youju/statistics/b/a;->e(Lcom/youju/statistics/b/a;)Lcom/youju/statistics/c/g;

    move-result-object v0

    iget-object v1, p0, Lcom/youju/statistics/b/j;->a:Lcom/youju/statistics/b/a;

    invoke-static {v1}, Lcom/youju/statistics/b/a;->d(Lcom/youju/statistics/b/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/g;->a(I)V

    :cond_17
    iget-object v0, p0, Lcom/youju/statistics/b/j;->a:Lcom/youju/statistics/b/a;

    invoke-static {v0}, Lcom/youju/statistics/b/a;->e(Lcom/youju/statistics/b/a;)Lcom/youju/statistics/c/g;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/youju/statistics/c/g;->a(J)V

    iget-object v0, p0, Lcom/youju/statistics/b/j;->a:Lcom/youju/statistics/b/a;

    invoke-static {v0}, Lcom/youju/statistics/b/a;->e(Lcom/youju/statistics/b/a;)Lcom/youju/statistics/c/g;

    move-result-object v0

    iget-object v1, p0, Lcom/youju/statistics/b/j;->a:Lcom/youju/statistics/b/a;

    invoke-static {v1}, Lcom/youju/statistics/b/a;->f(Lcom/youju/statistics/b/a;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/g;->a(Ljava/util/Map;)V

    invoke-direct {p0}, Lcom/youju/statistics/b/j;->d()V

    iget-object v0, p0, Lcom/youju/statistics/b/j;->a:Lcom/youju/statistics/b/a;

    invoke-static {v0}, Lcom/youju/statistics/b/a;->g(Lcom/youju/statistics/b/a;)V

    if-eqz p1, :cond_42

    iget-object v0, p0, Lcom/youju/statistics/b/j;->a:Lcom/youju/statistics/b/a;

    invoke-static {v0}, Lcom/youju/statistics/b/a;->h(Lcom/youju/statistics/b/a;)V

    :cond_42
    return-void
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/youju/statistics/b/j;->a:Lcom/youju/statistics/b/a;

    invoke-static {v0}, Lcom/youju/statistics/b/a;->i(Lcom/youju/statistics/b/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youju/statistics/a/n;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/youju/statistics/b/j;->a:Lcom/youju/statistics/b/a;

    invoke-static {v0}, Lcom/youju/statistics/b/a;->e(Lcom/youju/statistics/b/a;)Lcom/youju/statistics/c/g;

    move-result-object v0

    iget-object v1, p0, Lcom/youju/statistics/b/j;->a:Lcom/youju/statistics/b/a;

    invoke-static {v1}, Lcom/youju/statistics/b/a;->i(Lcom/youju/statistics/b/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/g;->a(Ljava/lang/String;)V

    :cond_1b
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const-string v0, "YouJuAgent"

    const-string v1, "send data successful"

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/youju/statistics/b/j;->a(Z)V

    return-void
.end method

.method public a(I)V
    .registers 5

    const/16 v0, 0xfa1

    if-ne p1, v0, :cond_b

    const-string v0, "YouJuAgent"

    const-string v1, "your app key is not authorized"

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const-string v0, "YouJuAgent"

    const-string v1, "send data failed"

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MainHandlerJob"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send data failed, error code is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/youju/statistics/b/j;->a(Z)V

    return-void
.end method

.method public b()V
    .registers 3

    const-string v0, "YouJuAgent"

    const-string v1, "send data successful"

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/youju/statistics/b/j;->a(Z)V

    iget-object v0, p0, Lcom/youju/statistics/b/j;->a:Lcom/youju/statistics/b/a;

    invoke-static {v0}, Lcom/youju/statistics/b/a;->a(Lcom/youju/statistics/b/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/youju/statistics/c/c/c;->a(Landroid/content/Context;)Lcom/youju/statistics/c/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youju/statistics/c/c/c;->b()V

    return-void
.end method

.method public c()V
    .registers 3

    const-string v0, "YouJuAgent"

    const-string v1, "send data failed"

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
