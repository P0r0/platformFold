.class Lcom/youju/statistics/b/o;
.super Lcom/youju/statistics/c/d/a;


# instance fields
.field final synthetic a:Lcom/youju/statistics/b/m;


# direct methods
.method constructor <init>(Lcom/youju/statistics/b/m;)V
    .registers 2

    iput-object p1, p0, Lcom/youju/statistics/b/o;->a:Lcom/youju/statistics/b/m;

    invoke-direct {p0}, Lcom/youju/statistics/c/d/a;-><init>()V

    return-void
.end method

.method private a(I)Z
    .registers 3

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private b(Lorg/apache/http/HttpResponse;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/youju/statistics/b/o;->c(Lorg/apache/http/HttpResponse;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/youju/statistics/b/o;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-static {}, Lcom/youju/statistics/b/m;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleHttpResponse"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2e
    return-void

    :cond_2f
    invoke-direct {p0, p1}, Lcom/youju/statistics/b/o;->d(Lorg/apache/http/HttpResponse;)V

    goto :goto_2e
.end method

.method private c(Lorg/apache/http/HttpResponse;)I
    .registers 3

    invoke-static {p1}, Lcom/youju/statistics/a/d;->c(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    :try_start_4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v0

    :goto_8
    return v0

    :catch_9
    move-exception v0

    const/16 v0, 0xc8

    goto :goto_8
.end method

.method private d(Lorg/apache/http/HttpResponse;)V
    .registers 5

    :try_start_0
    invoke-static {p1}, Lcom/youju/statistics/a/d;->a(Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/youju/statistics/b/o;->a:Lcom/youju/statistics/b/m;

    invoke-static {v0}, Lcom/youju/statistics/c/c/b;->a(Ljava/io/InputStream;)Lcom/youju/statistics/c/c/d;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/youju/statistics/b/m;->a(Lcom/youju/statistics/b/m;Lcom/youju/statistics/c/c/d;)Lcom/youju/statistics/c/c/d;

    invoke-static {}, Lcom/youju/statistics/b/m;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseCfgData"

    invoke-static {v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new cfg is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youju/statistics/b/o;->a:Lcom/youju/statistics/b/m;

    invoke-static {v2}, Lcom/youju/statistics/b/m;->a(Lcom/youju/statistics/b/m;)Lcom/youju/statistics/c/c/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youju/statistics/c/c/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/youju/statistics/b/o;->a:Lcom/youju/statistics/b/m;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/youju/statistics/b/m;->a(Lcom/youju/statistics/b/m;Z)Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_47
    .catchall {:try_start_0 .. :try_end_41} :catchall_51

    iget-object v0, p0, Lcom/youju/statistics/b/o;->a:Lcom/youju/statistics/b/m;

    invoke-static {v0}, Lcom/youju/statistics/b/m;->b(Lcom/youju/statistics/b/m;)V

    :goto_46
    return-void

    :catch_47
    move-exception v0

    :try_start_48
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_51

    iget-object v0, p0, Lcom/youju/statistics/b/o;->a:Lcom/youju/statistics/b/m;

    invoke-static {v0}, Lcom/youju/statistics/b/m;->b(Lcom/youju/statistics/b/m;)V

    goto :goto_46

    :catchall_51
    move-exception v0

    iget-object v1, p0, Lcom/youju/statistics/b/o;->a:Lcom/youju/statistics/b/m;

    invoke-static {v1}, Lcom/youju/statistics/b/m;->b(Lcom/youju/statistics/b/m;)V

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/youju/statistics/b/o;->a:Lcom/youju/statistics/b/m;

    invoke-static {v0}, Lcom/youju/statistics/b/m;->b(Lcom/youju/statistics/b/m;)V

    return-void
.end method

.method public a(Lorg/apache/http/HttpResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/youju/statistics/b/o;->b(Lorg/apache/http/HttpResponse;)V

    return-void
.end method
