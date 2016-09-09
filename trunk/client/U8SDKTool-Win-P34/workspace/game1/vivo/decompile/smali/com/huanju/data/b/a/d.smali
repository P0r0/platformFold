.class public Lcom/huanju/data/b/a/d;
.super Lcom/huanju/data/b/c;


# static fields
.field private static final a:Lcom/huanju/data/a/b;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/huanju/data/b/a/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "HjSendInstalledAppProcessor"

    invoke-static {v0}, Lcom/huanju/data/a/b;->a(Ljava/lang/String;)Lcom/huanju/data/a/b;

    move-result-object v0

    sput-object v0, Lcom/huanju/data/b/a/d;->a:Lcom/huanju/data/a/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/huanju/data/b/a/a;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/huanju/data/b/c;-><init>()V

    iput-object v0, p0, Lcom/huanju/data/b/a/d;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/huanju/data/b/a/d;->c:Lcom/huanju/data/b/a/a;

    iput-object p1, p0, Lcom/huanju/data/b/a/d;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/huanju/data/b/a/d;->c:Lcom/huanju/data/b/a/a;

    return-void
.end method


# virtual methods
.method protected a()Lcom/huanju/data/net/AbstractNetTask;
    .registers 3

    new-instance v0, Lcom/huanju/data/b/a/c;

    iget-object v1, p0, Lcom/huanju/data/b/a/d;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/huanju/data/b/a/c;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public b()V
    .registers 3

    invoke-virtual {p0}, Lcom/huanju/data/b/a/d;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-super {p0}, Lcom/huanju/data/b/c;->b()V

    :goto_9
    return-void

    :cond_a
    sget-object v0, Lcom/huanju/data/b/a/d;->a:Lcom/huanju/data/a/b;

    const-string v1, "HjSendInstalledAppProcessor doesnot process, because not enable."

    invoke-virtual {v0, v1}, Lcom/huanju/data/a/b;->c(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public onDataReceived(Lorg/apache/http/HttpResponse;)V
    .registers 6

    invoke-static {p1}, Lcom/huanju/data/a/h;->b(Lorg/apache/http/HttpResponse;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "succ"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    sget-object v1, Lcom/huanju/data/b/a/d;->a:Lcom/huanju/data/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendInstalledAppListSuccess, response="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huanju/data/b/a/d;->c:Lcom/huanju/data/b/a/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/huanju/data/b/a/a;->a(J)V

    :goto_31
    return-void

    :cond_32
    sget-object v0, Lcom/huanju/data/b/a/d;->a:Lcom/huanju/data/a/b;

    const-string v1, "not really success!!!maybe network respond error!!!"

    invoke-virtual {v0, v1}, Lcom/huanju/data/a/b;->c(Ljava/lang/String;)V

    goto :goto_31
.end method

.method public onErrorReceived(Lorg/apache/http/HttpResponse;)V
    .registers 6

    invoke-static {p1}, Lcom/huanju/data/a/h;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/huanju/data/b/a/d;->a:Lcom/huanju/data/a/b;

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

    sget-object v0, Lcom/huanju/data/b/a/d;->a:Lcom/huanju/data/a/b;

    const-string v1, "onNetworkError"

    invoke-virtual {v0, v1}, Lcom/huanju/data/a/b;->c(Ljava/lang/String;)V

    return-void
.end method
