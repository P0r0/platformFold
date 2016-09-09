.class Lcom/youju/statistics/c/j;
.super Lcom/youju/statistics/c/d/e;


# instance fields
.field final synthetic a:Lcom/youju/statistics/c/r;


# direct methods
.method constructor <init>(Lcom/youju/statistics/c/r;)V
    .registers 2

    iput-object p1, p0, Lcom/youju/statistics/c/j;->a:Lcom/youju/statistics/c/r;

    invoke-direct {p0}, Lcom/youju/statistics/c/d/e;-><init>()V

    return-void
.end method

.method private c(J)Z
    .registers 6

    iget-object v0, p0, Lcom/youju/statistics/c/j;->a:Lcom/youju/statistics/c/r;

    invoke-static {v0}, Lcom/youju/statistics/c/r;->b(Lcom/youju/statistics/c/r;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/youju/statistics/c/c/c;->a(Landroid/content/Context;)Lcom/youju/statistics/c/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youju/statistics/c/c/c;->c()Lcom/youju/statistics/c/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youju/statistics/c/c/d;->i()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method


# virtual methods
.method public a(J)V
    .registers 4

    iget-object v0, p0, Lcom/youju/statistics/c/j;->a:Lcom/youju/statistics/c/r;

    invoke-static {v0}, Lcom/youju/statistics/c/r;->a(Lcom/youju/statistics/c/r;)V

    invoke-direct {p0, p1, p2}, Lcom/youju/statistics/c/j;->c(J)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/youju/statistics/c/j;->a:Lcom/youju/statistics/c/r;

    invoke-virtual {v0}, Lcom/youju/statistics/c/r;->f()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/youju/statistics/c/j;->a:Lcom/youju/statistics/c/r;

    invoke-virtual {v0}, Lcom/youju/statistics/c/r;->h()V

    :cond_18
    return-void
.end method

.method public b(J)V
    .registers 3

    return-void
.end method
