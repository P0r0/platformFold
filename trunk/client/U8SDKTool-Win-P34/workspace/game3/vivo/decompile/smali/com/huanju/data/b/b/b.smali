.class public Lcom/huanju/data/b/b/b;
.super Lcom/huanju/data/b/c;


# static fields
.field private static final a:Lcom/huanju/data/a/b;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/huanju/data/b/b/a;

.field private d:Lcom/huanju/data/b/a/a;

.field private e:Lcom/huanju/data/c/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "HjSendStartTimeProcessor"

    invoke-static {v0}, Lcom/huanju/data/a/b;->a(Ljava/lang/String;)Lcom/huanju/data/a/b;

    move-result-object v0

    sput-object v0, Lcom/huanju/data/b/b/b;->a:Lcom/huanju/data/a/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/huanju/data/b/b/a;Lcom/huanju/data/b/a/a;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/huanju/data/b/c;-><init>()V

    iput-object v0, p0, Lcom/huanju/data/b/b/b;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/huanju/data/b/b/b;->c:Lcom/huanju/data/b/b/a;

    iput-object v0, p0, Lcom/huanju/data/b/b/b;->d:Lcom/huanju/data/b/a/a;

    iput-object v0, p0, Lcom/huanju/data/b/b/b;->e:Lcom/huanju/data/c/a;

    iput-object p1, p0, Lcom/huanju/data/b/b/b;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/huanju/data/b/b/b;->c:Lcom/huanju/data/b/b/a;

    iput-object p3, p0, Lcom/huanju/data/b/b/b;->d:Lcom/huanju/data/b/a/a;

    iget-object v0, p0, Lcom/huanju/data/b/b/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/huanju/data/c/a;->a(Landroid/content/Context;)Lcom/huanju/data/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/b/b/b;->e:Lcom/huanju/data/c/a;

    return-void
.end method


# virtual methods
.method protected a()Lcom/huanju/data/net/AbstractNetTask;
    .registers 3

    new-instance v0, Lcom/huanju/data/b/b/c;

    iget-object v1, p0, Lcom/huanju/data/b/b/b;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/huanju/data/b/b/c;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/huanju/data/b/b/b;->c:Lcom/huanju/data/b/b/a;

    invoke-virtual {v0}, Lcom/huanju/data/b/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-super {p0}, Lcom/huanju/data/b/c;->b()V

    :goto_b
    return-void

    :cond_c
    sget-object v0, Lcom/huanju/data/b/b/b;->a:Lcom/huanju/data/a/b;

    const-string v1, "HjSendStartTimeProcessor no process,because today has send."

    invoke-virtual {v0, v1}, Lcom/huanju/data/a/b;->c(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public onDataReceived(Lorg/apache/http/HttpResponse;)V
    .registers 5

    invoke-static {p1}, Lcom/huanju/data/a/h;->b(Lorg/apache/http/HttpResponse;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "succ"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    sget-object v1, Lcom/huanju/data/b/b/b;->a:Lcom/huanju/data/a/b;

    const-string v2, "sendStartTime OK~~~"

    invoke-virtual {v1, v2}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huanju/data/b/b/b;->c:Lcom/huanju/data/b/b/a;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/huanju/data/b/b/b;->c:Lcom/huanju/data/b/b/a;

    invoke-virtual {v1}, Lcom/huanju/data/b/b/a;->b()V

    :cond_1c
    :try_start_1c
    const-string v1, "up_apps"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/huanju/data/b/b/b;->d:Lcom/huanju/data/b/a/a;

    invoke-virtual {v2, v1}, Lcom/huanju/data/b/a/a;->b(I)V

    const-string v1, "interval"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/huanju/data/b/b/b;->d:Lcom/huanju/data/b/a/a;

    invoke-virtual {v2, v1}, Lcom/huanju/data/b/a/a;->a(I)V

    const-string v1, "new_res_interval"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/huanju/data/b/b/b;->e:Lcom/huanju/data/c/a;

    invoke-virtual {v1, v0}, Lcom/huanju/data/c/a;->a(I)V
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_3d} :catch_3e

    :goto_3d
    return-void

    :catch_3e
    move-exception v0

    sget-object v1, Lcom/huanju/data/b/b/b;->a:Lcom/huanju/data/a/b;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/huanju/data/a/b;->d(Ljava/lang/String;)V

    goto :goto_3d

    :cond_49
    sget-object v0, Lcom/huanju/data/b/b/b;->a:Lcom/huanju/data/a/b;

    const-string v1, "not really sendmonitorsucc!!!maybe network respond error!!!"

    invoke-virtual {v0, v1}, Lcom/huanju/data/a/b;->c(Ljava/lang/String;)V

    goto :goto_3d
.end method

.method public onErrorReceived(Lorg/apache/http/HttpResponse;)V
    .registers 6

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/data/a/h;->a(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/huanju/data/b/b/b;->a:Lcom/huanju/data/a/b;

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

    sget-object v0, Lcom/huanju/data/b/b/b;->a:Lcom/huanju/data/a/b;

    const-string v1, "onNetworkError"

    invoke-virtual {v0, v1}, Lcom/huanju/data/a/b;->c(Ljava/lang/String;)V

    return-void
.end method
