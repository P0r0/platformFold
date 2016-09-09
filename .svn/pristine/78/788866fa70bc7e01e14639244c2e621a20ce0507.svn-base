.class Lcom/youju/statistics/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/youju/statistics/c/r;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/youju/statistics/c/r;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/youju/statistics/c/b;->a:Lcom/youju/statistics/c/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/youju/statistics/c/b;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/youju/statistics/c/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/c/r;->f(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/youju/statistics/c/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/c/r;->g(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/youju/statistics/c/b;->a:Lcom/youju/statistics/c/r;

    invoke-virtual {v0}, Lcom/youju/statistics/c/r;->d()V

    iget-object v0, p0, Lcom/youju/statistics/c/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/c/r;->h(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/youju/statistics/c/b;->a:Lcom/youju/statistics/c/r;

    invoke-static {v0}, Lcom/youju/statistics/c/r;->c(Lcom/youju/statistics/c/r;)V

    iget-object v0, p0, Lcom/youju/statistics/c/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/c/r;->i(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/youju/statistics/c/b;->a:Lcom/youju/statistics/c/r;

    iget-object v1, p0, Lcom/youju/statistics/c/b;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/r;->e(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/youju/statistics/c/b;->a:Lcom/youju/statistics/c/r;

    iget-object v1, p0, Lcom/youju/statistics/c/b;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/r;->d(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/youju/statistics/c/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/c/r;->j(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/youju/statistics/c/b;->a:Lcom/youju/statistics/c/r;

    invoke-static {v0}, Lcom/youju/statistics/c/r;->d(Lcom/youju/statistics/c/r;)V

    iget-object v0, p0, Lcom/youju/statistics/c/b;->a:Lcom/youju/statistics/c/r;

    invoke-static {v0}, Lcom/youju/statistics/c/r;->e(Lcom/youju/statistics/c/r;)V

    const-string v0, "YouJuManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init completed, APP ID is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/youju/statistics/c/r;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " current version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/youju/statistics/c/r;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_65
    .catch Lcom/youju/statistics/d/a; {:try_start_0 .. :try_end_65} :catch_66
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_65} :catch_6f

    :goto_65
    return-void

    :catch_66
    move-exception v0

    const-string v0, "YouJuManager"

    const-string v1, "app key is null"

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_65

    :catch_6f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_65
.end method
