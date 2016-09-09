.class public Lcom/youju/statistics/b/f;
.super Lcom/youju/statistics/b/n;


# instance fields
.field private a:Lcom/youju/statistics/c/d/c;

.field private b:I

.field private c:[B

.field private d:Z

.field private e:Lcom/youju/statistics/c/d/a;


# direct methods
.method public constructor <init>([BZLcom/youju/statistics/c/d/c;)V
    .registers 5

    invoke-direct {p0}, Lcom/youju/statistics/b/n;-><init>()V

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/youju/statistics/b/f;->b:I

    new-instance v0, Lcom/youju/statistics/b/e;

    invoke-direct {v0, p0}, Lcom/youju/statistics/b/e;-><init>(Lcom/youju/statistics/b/f;)V

    iput-object v0, p0, Lcom/youju/statistics/b/f;->e:Lcom/youju/statistics/c/d/a;

    iput-object p1, p0, Lcom/youju/statistics/b/f;->c:[B

    iput-boolean p2, p0, Lcom/youju/statistics/b/f;->d:Z

    iput-object p3, p0, Lcom/youju/statistics/b/f;->a:Lcom/youju/statistics/c/d/c;

    return-void
.end method

.method static synthetic a(Lcom/youju/statistics/b/f;I)I
    .registers 2

    iput p1, p0, Lcom/youju/statistics/b/f;->b:I

    return p1
.end method

.method private a(Z)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/youju/statistics/a/n;->g()Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "http://test1.gionee.com/stats/uploadData?vno=5&c=2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_10
    const-string v1, "&d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_27

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_21
    const-string v1, "http://stats.gionee.com/stats/uploadData?vno=5&c=2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    :cond_27
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c
.end method

.method private a(Ljava/lang/String;Ljava/io/ByteArrayInputStream;)Lorg/apache/http/client/methods/HttpPost;
    .registers 7

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/entity/InputStreamEntity;

    invoke-virtual {p2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v1, p2, v2, v3}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    return-object v0
.end method

.method static synthetic a(Lcom/youju/statistics/b/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/youju/statistics/b/f;->f()V

    return-void
.end method

.method static synthetic b(Lcom/youju/statistics/b/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/youju/statistics/b/f;->d()V

    return-void
.end method

.method private c()V
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/b/f;->a:Lcom/youju/statistics/c/d/c;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/youju/statistics/b/f;->a:Lcom/youju/statistics/c/d/c;

    invoke-virtual {v0}, Lcom/youju/statistics/c/d/c;->c()V

    :cond_9
    return-void
.end method

.method static synthetic c(Lcom/youju/statistics/b/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/youju/statistics/b/f;->e()V

    return-void
.end method

.method static synthetic d(Lcom/youju/statistics/b/f;)I
    .registers 2

    iget v0, p0, Lcom/youju/statistics/b/f;->b:I

    return v0
.end method

.method private d()V
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/b/f;->a:Lcom/youju/statistics/c/d/c;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/youju/statistics/b/f;->a:Lcom/youju/statistics/c/d/c;

    invoke-virtual {v0}, Lcom/youju/statistics/c/d/c;->b()V

    :cond_9
    return-void
.end method

.method private e()V
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/b/f;->a:Lcom/youju/statistics/c/d/c;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/youju/statistics/b/f;->a:Lcom/youju/statistics/c/d/c;

    invoke-virtual {v0}, Lcom/youju/statistics/c/d/c;->a()V

    :cond_9
    return-void
.end method

.method static synthetic e(Lcom/youju/statistics/b/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/youju/statistics/b/f;->c()V

    return-void
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/youju/statistics/b/f;->a:Lcom/youju/statistics/c/d/c;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/youju/statistics/b/f;->a:Lcom/youju/statistics/c/d/c;

    iget v1, p0, Lcom/youju/statistics/b/f;->b:I

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/d/c;->a(I)V

    :cond_b
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_3
    iget-boolean v0, p0, Lcom/youju/statistics/b/f;->d:Z

    invoke-direct {p0, v0}, Lcom/youju/statistics/b/f;->a(Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/youju/statistics/b/f;->c:[B

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_10} :catch_28
    .catchall {:try_start_3 .. :try_end_10} :catchall_38

    :try_start_10
    invoke-direct {p0, v0, v1}, Lcom/youju/statistics/b/f;->a(Ljava/lang/String;Ljava/io/ByteArrayInputStream;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    const-string v2, "YouJuAgent"

    const-string v3, "send data to server"

    invoke-static {v2, v3}, Lcom/youju/statistics/a/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/youju/statistics/b/f;->e:Lcom/youju/statistics/c/d/a;

    invoke-static {v0, v2}, Lcom/youju/statistics/a/d;->a(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/youju/statistics/c/d/a;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_20} :catch_44
    .catchall {:try_start_10 .. :try_end_20} :catchall_42

    new-array v0, v5, [Ljava/io/Closeable;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/youju/statistics/a/n;->a([Ljava/io/Closeable;)V

    :goto_27
    return-void

    :catch_28
    move-exception v0

    move-object v1, v2

    :goto_2a
    :try_start_2a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/youju/statistics/b/f;->c()V
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_42

    new-array v0, v5, [Ljava/io/Closeable;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/youju/statistics/a/n;->a([Ljava/io/Closeable;)V

    goto :goto_27

    :catchall_38
    move-exception v0

    move-object v1, v2

    :goto_3a
    new-array v2, v5, [Ljava/io/Closeable;

    aput-object v1, v2, v4

    invoke-static {v2}, Lcom/youju/statistics/a/n;->a([Ljava/io/Closeable;)V

    throw v0

    :catchall_42
    move-exception v0

    goto :goto_3a

    :catch_44
    move-exception v0

    goto :goto_2a
.end method

.method protected b()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youju/statistics/b/f;->a:Lcom/youju/statistics/c/d/c;

    iput-object v0, p0, Lcom/youju/statistics/b/f;->c:[B

    iput-object v0, p0, Lcom/youju/statistics/b/f;->e:Lcom/youju/statistics/c/d/a;

    return-void
.end method
