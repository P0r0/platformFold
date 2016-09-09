.class public Lcom/youju/statistics/c/a/e;
.super Lcom/youju/statistics/c/a/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "error_report"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/youju/statistics/c/a/n;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/database/Cursor;)Lcom/youju/statistics/c/a/d;
    .registers 3

    invoke-static {p1}, Lcom/youju/statistics/c/a/i;->a(Landroid/database/Cursor;)Lcom/youju/statistics/c/a/i;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/util/HashMap;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    const-string v0, "error_report"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected c()I
    .registers 3

    iget-object v0, p0, Lcom/youju/statistics/c/a/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/c/g;->a(Landroid/content/Context;)Lcom/youju/statistics/c/g;

    move-result-object v0

    const-string v1, "error_report"

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/g;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected d()Landroid/database/Cursor;
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/youju/statistics/c/a/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/e/c;->a(Landroid/content/Context;)Lcom/youju/statistics/e/c;

    move-result-object v0

    const-string v1, "error_report"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/youju/statistics/e/c;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
