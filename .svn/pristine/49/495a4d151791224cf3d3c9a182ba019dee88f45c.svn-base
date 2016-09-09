.class public Lcom/huanju/data/b/d/a;
.super Lcom/huanju/data/b/c;


# static fields
.field private static final a:Lcom/huanju/data/a/b;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/huanju/data/b/d/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "HjRequestSwitcherProcessor"

    invoke-static {v0}, Lcom/huanju/data/a/b;->a(Ljava/lang/String;)Lcom/huanju/data/a/b;

    move-result-object v0

    sput-object v0, Lcom/huanju/data/b/d/a;->a:Lcom/huanju/data/a/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/huanju/data/b/d/b;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/huanju/data/b/c;-><init>()V

    iput-object v0, p0, Lcom/huanju/data/b/d/a;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/huanju/data/b/d/a;->c:Lcom/huanju/data/b/d/b;

    iput-object p1, p0, Lcom/huanju/data/b/d/a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/huanju/data/b/d/a;->c:Lcom/huanju/data/b/d/b;

    return-void
.end method


# virtual methods
.method protected a()Lcom/huanju/data/net/AbstractNetTask;
    .registers 3

    new-instance v0, Lcom/huanju/data/b/d/c;

    iget-object v1, p0, Lcom/huanju/data/b/d/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/huanju/data/b/d/c;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onDataReceived(Lorg/apache/http/HttpResponse;)V
    .registers 4

    invoke-static {p1}, Lcom/huanju/data/a/h;->b(Lorg/apache/http/HttpResponse;)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_4
    const-string v1, "succ"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/huanju/data/b/d/a;->c:Lcom/huanju/data/b/d/b;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/huanju/data/b/d/a;->c:Lcom/huanju/data/b/d/b;

    invoke-virtual {v1, v0}, Lcom/huanju/data/b/d/b;->a(I)V
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_13} :catch_14

    :cond_13
    :goto_13
    return-void

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_13
.end method

.method public onErrorReceived(Lorg/apache/http/HttpResponse;)V
    .registers 6

    invoke-static {p1}, Lcom/huanju/data/a/h;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/huanju/data/b/d/a;->a:Lcom/huanju/data/a/b;

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

    sget-object v0, Lcom/huanju/data/b/d/a;->a:Lcom/huanju/data/a/b;

    const-string v1, "onNetworkError"

    invoke-virtual {v0, v1}, Lcom/huanju/data/a/b;->c(Ljava/lang/String;)V

    return-void
.end method
