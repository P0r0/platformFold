.class public Lcom/huanju/data/b/e/b;
.super Lcom/huanju/data/b/c;


# static fields
.field private static final a:Lcom/huanju/data/a/b;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "HjSendDownloadInfoProcessor"

    invoke-static {v0}, Lcom/huanju/data/a/b;->a(Ljava/lang/String;)Lcom/huanju/data/a/b;

    move-result-object v0

    sput-object v0, Lcom/huanju/data/b/e/b;->a:Lcom/huanju/data/a/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/huanju/data/b/c;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/data/b/e/b;->b:Landroid/content/Context;

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/b/e/b;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/huanju/data/b/e/b;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/huanju/data/b/e/b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()Lcom/huanju/data/net/AbstractNetTask;
    .registers 4

    new-instance v0, Lcom/huanju/data/b/e/a;

    iget-object v1, p0, Lcom/huanju/data/b/e/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/huanju/data/b/e/b;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/huanju/data/b/e/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public onDataReceived(Lorg/apache/http/HttpResponse;)V
    .registers 4

    invoke-static {p1}, Lcom/huanju/data/a/h;->b(Lorg/apache/http/HttpResponse;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "succ"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/huanju/data/b/e/b;->a:Lcom/huanju/data/a/b;

    const-string v1, "SendDownloadSuccess~"

    invoke-virtual {v0, v1}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V

    :goto_13
    return-void

    :cond_14
    sget-object v0, Lcom/huanju/data/b/e/b;->a:Lcom/huanju/data/a/b;

    const-string v1, "not really sendDownloadSuccess!!!maybe network respond error!!!"

    invoke-virtual {v0, v1}, Lcom/huanju/data/a/b;->c(Ljava/lang/String;)V

    goto :goto_13
.end method

.method public onErrorReceived(Lorg/apache/http/HttpResponse;)V
    .registers 6

    invoke-static {p1}, Lcom/huanju/data/a/h;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/huanju/data/b/e/b;->a:Lcom/huanju/data/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onErrorReceived. StatusCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";errorInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/huanju/data/a/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onNetworkError()V
    .registers 3

    sget-object v0, Lcom/huanju/data/b/e/b;->a:Lcom/huanju/data/a/b;

    const-string v1, "onNetworkError"

    invoke-virtual {v0, v1}, Lcom/huanju/data/a/b;->c(Ljava/lang/String;)V

    return-void
.end method
