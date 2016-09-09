.class Lcom/youju/statistics/c/i;
.super Lcom/youju/statistics/b/n;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/youju/statistics/c/r;


# direct methods
.method constructor <init>(Lcom/youju/statistics/c/r;Z)V
    .registers 3

    iput-object p1, p0, Lcom/youju/statistics/c/i;->b:Lcom/youju/statistics/c/r;

    iput-boolean p2, p0, Lcom/youju/statistics/c/i;->a:Z

    invoke-direct {p0}, Lcom/youju/statistics/b/n;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    iget-object v0, p0, Lcom/youju/statistics/c/i;->b:Lcom/youju/statistics/c/r;

    invoke-static {v0}, Lcom/youju/statistics/c/r;->b(Lcom/youju/statistics/c/r;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/youju/statistics/c/b/h;->a(Landroid/content/Context;)Lcom/youju/statistics/c/b/h;

    move-result-object v0

    iget-boolean v1, p0, Lcom/youju/statistics/c/i;->a:Z

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/b/h;->a(Z)V

    return-void
.end method

.method protected b()V
    .registers 1

    return-void
.end method
