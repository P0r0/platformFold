.class Lcom/youju/statistics/b/q;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field final synthetic b:Lcom/youju/statistics/b/p;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youju/statistics/b/p;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/youju/statistics/b/q;->b:Lcom/youju/statistics/b/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "-1"

    iput-object v0, p0, Lcom/youju/statistics/b/q;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/youju/statistics/b/q;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/youju/statistics/b/q;->a:Ljava/lang/String;

    return-void
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/youju/statistics/b/q;->b:Lcom/youju/statistics/b/p;

    invoke-static {v0}, Lcom/youju/statistics/b/p;->b(Lcom/youju/statistics/b/p;)Lcom/youju/statistics/c/g;

    move-result-object v0

    iget-object v1, p0, Lcom/youju/statistics/b/q;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/g;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/youju/statistics/b/q;->b:Lcom/youju/statistics/b/p;

    invoke-static {v0}, Lcom/youju/statistics/b/p;->a(Lcom/youju/statistics/b/p;)Lcom/youju/statistics/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youju/statistics/e/c;->a()V

    iget-object v0, p0, Lcom/youju/statistics/b/q;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/youju/statistics/b/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/youju/statistics/b/q;->b:Lcom/youju/statistics/b/p;

    invoke-static {v1}, Lcom/youju/statistics/b/p;->a(Lcom/youju/statistics/b/p;)Lcom/youju/statistics/e/c;

    move-result-object v1

    iget-object v2, p0, Lcom/youju/statistics/b/q;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/youju/statistics/e/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string v1, "TableDeleteWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteUploadedData"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  tableName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youju/statistics/b/q;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " deleteCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mUploadedDataMaxId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/youju/statistics/b/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/youju/statistics/b/q;->b()V

    invoke-direct {p0}, Lcom/youju/statistics/b/q;->c()V

    iget-object v0, p0, Lcom/youju/statistics/b/q;->b:Lcom/youju/statistics/b/p;

    invoke-static {v0}, Lcom/youju/statistics/b/p;->a(Lcom/youju/statistics/b/p;)Lcom/youju/statistics/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youju/statistics/e/c;->c()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_65} :catch_6f
    .catchall {:try_start_0 .. :try_end_65} :catchall_7d

    iget-object v0, p0, Lcom/youju/statistics/b/q;->b:Lcom/youju/statistics/b/p;

    invoke-static {v0}, Lcom/youju/statistics/b/p;->a(Lcom/youju/statistics/b/p;)Lcom/youju/statistics/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youju/statistics/e/c;->b()V

    :goto_6e
    return-void

    :catch_6f
    move-exception v0

    :try_start_70
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_7d

    iget-object v0, p0, Lcom/youju/statistics/b/q;->b:Lcom/youju/statistics/b/p;

    invoke-static {v0}, Lcom/youju/statistics/b/p;->a(Lcom/youju/statistics/b/p;)Lcom/youju/statistics/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youju/statistics/e/c;->b()V

    goto :goto_6e

    :catchall_7d
    move-exception v0

    iget-object v1, p0, Lcom/youju/statistics/b/q;->b:Lcom/youju/statistics/b/p;

    invoke-static {v1}, Lcom/youju/statistics/b/p;->a(Lcom/youju/statistics/b/p;)Lcom/youju/statistics/e/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youju/statistics/e/c;->b()V

    throw v0
.end method

.method protected b()V
    .registers 1

    return-void
.end method
