.class Lcom/youju/statistics/b/e;
.super Lcom/youju/statistics/c/d/a;


# instance fields
.field final synthetic a:Lcom/youju/statistics/b/f;


# direct methods
.method constructor <init>(Lcom/youju/statistics/b/f;)V
    .registers 2

    iput-object p1, p0, Lcom/youju/statistics/b/e;->a:Lcom/youju/statistics/b/f;

    invoke-direct {p0}, Lcom/youju/statistics/c/d/a;-><init>()V

    return-void
.end method

.method private a(Lorg/apache/http/Header;)V
    .registers 5

    invoke-static {p1}, Lcom/youju/statistics/a/n;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/youju/statistics/b/e;->a:Lcom/youju/statistics/b/f;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/youju/statistics/b/f;->a(Lcom/youju/statistics/b/f;I)I

    const-string v0, "UploadWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseHeader"

    invoke-static {v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mResultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youju/statistics/b/e;->a:Lcom/youju/statistics/b/f;

    invoke-static {v2}, Lcom/youju/statistics/b/f;->d(Lcom/youju/statistics/b/f;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private a()Z
    .registers 3

    iget-object v0, p0, Lcom/youju/statistics/b/e;->a:Lcom/youju/statistics/b/f;

    invoke-static {v0}, Lcom/youju/statistics/b/f;->d(Lcom/youju/statistics/b/f;)I

    move-result v0

    const/16 v1, 0x385

    if-eq v0, v1, :cond_16

    iget-object v0, p0, Lcom/youju/statistics/b/e;->a:Lcom/youju/statistics/b/f;

    invoke-static {v0}, Lcom/youju/statistics/b/f;->d(Lcom/youju/statistics/b/f;)I

    move-result v0

    const/16 v1, 0x384

    if-eq v0, v1, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private b(Lorg/apache/http/HttpResponse;)V
    .registers 3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/youju/statistics/b/e;->c(Lorg/apache/http/HttpResponse;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_f

    invoke-direct {p0}, Lcom/youju/statistics/b/e;->a()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/youju/statistics/b/e;->a:Lcom/youju/statistics/b/f;

    invoke-static {v0}, Lcom/youju/statistics/b/f;->a(Lcom/youju/statistics/b/f;)V

    :goto_e
    return-void

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/youju/statistics/b/e;->a:Lcom/youju/statistics/b/f;

    invoke-static {v0}, Lcom/youju/statistics/b/f;->a(Lcom/youju/statistics/b/f;)V

    goto :goto_e

    :cond_19
    invoke-direct {p0}, Lcom/youju/statistics/b/e;->b()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/youju/statistics/b/e;->a:Lcom/youju/statistics/b/f;

    invoke-static {v0}, Lcom/youju/statistics/b/f;->b(Lcom/youju/statistics/b/f;)V

    goto :goto_e

    :cond_25
    iget-object v0, p0, Lcom/youju/statistics/b/e;->a:Lcom/youju/statistics/b/f;

    invoke-static {v0}, Lcom/youju/statistics/b/f;->c(Lcom/youju/statistics/b/f;)V

    goto :goto_e
.end method

.method private b()Z
    .registers 3

    iget-object v0, p0, Lcom/youju/statistics/b/e;->a:Lcom/youju/statistics/b/f;

    invoke-static {v0}, Lcom/youju/statistics/b/f;->d(Lcom/youju/statistics/b/f;)I

    move-result v0

    const/16 v1, 0x384

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private c(Lorg/apache/http/HttpResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/youju/statistics/b/e;->d(Lorg/apache/http/HttpResponse;)V

    return-void
.end method

.method private d(Lorg/apache/http/HttpResponse;)V
    .registers 3

    const-string v0, "status"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/youju/statistics/b/e;->a(Lorg/apache/http/Header;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/youju/statistics/b/e;->a:Lcom/youju/statistics/b/f;

    invoke-static {v0}, Lcom/youju/statistics/b/f;->e(Lcom/youju/statistics/b/f;)V

    return-void
.end method

.method public a(Lorg/apache/http/HttpResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/youju/statistics/b/e;->b(Lorg/apache/http/HttpResponse;)V

    return-void
.end method
