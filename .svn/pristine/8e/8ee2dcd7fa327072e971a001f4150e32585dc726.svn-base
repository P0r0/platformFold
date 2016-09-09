.class public Lcom/huanju/data/content/raw/info/ak;
.super Lcom/huanju/data/content/raw/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huanju/data/content/raw/a",
        "<",
        "Lcom/huanju/data/content/raw/info/HjInfoDetail;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjInfoDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/huanju/data/content/raw/a;-><init>()V

    iput-object v1, p0, Lcom/huanju/data/content/raw/info/ak;->a:Landroid/content/Context;

    const-string v0, "1"

    iput-object v0, p0, Lcom/huanju/data/content/raw/info/ak;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/huanju/data/content/raw/info/ak;->c:I

    iput-object v1, p0, Lcom/huanju/data/content/raw/info/ak;->d:Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/content/raw/info/ak;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/huanju/data/content/raw/info/ak;->b:Ljava/lang/String;

    iput p3, p0, Lcom/huanju/data/content/raw/info/ak;->c:I

    return-void
.end method


# virtual methods
.method public a(Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjInfoDetail;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/ak;->d:Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;

    return-void
.end method

.method protected createNetTask()Lcom/huanju/data/net/AbstractNetTask;
    .registers 5

    new-instance v0, Lcom/huanju/data/content/raw/info/u;

    iget-object v1, p0, Lcom/huanju/data/content/raw/info/ak;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/huanju/data/content/raw/info/ak;->b:Ljava/lang/String;

    iget v3, p0, Lcom/huanju/data/content/raw/info/ak;->c:I

    invoke-direct {v0, v1, v2, v3}, Lcom/huanju/data/content/raw/info/u;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0
.end method

.method protected createParser()Lcom/huanju/data/content/raw/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/huanju/data/content/raw/b",
            "<",
            "Lcom/huanju/data/content/raw/info/HjInfoDetail;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huanju/data/content/raw/info/al;

    invoke-direct {v0}, Lcom/huanju/data/content/raw/info/al;-><init>()V

    return-object v0
.end method

.method public onDataReceived(Lorg/apache/http/HttpResponse;)V
    .registers 6

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/ak;->d:Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/ak;->mResponseParser:Lcom/huanju/data/content/raw/b;

    invoke-virtual {v0, p1}, Lcom/huanju/data/content/raw/b;->parseSuccessResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/data/content/raw/info/HjInfoDetail;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/huanju/data/content/raw/info/ak;->d:Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;

    invoke-interface {v1, v0}, Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;->onSuccess(Ljava/lang/Object;)V

    :cond_13
    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/huanju/data/content/raw/info/ak;->d:Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    sget v2, Lcom/huanju/data/a/a;->c:I

    sget-object v3, Lcom/huanju/data/a/a;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;->onFailed(IILjava/lang/String;)V

    goto :goto_13
.end method

.method public onErrorReceived(Lorg/apache/http/HttpResponse;)V
    .registers 6

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/ak;->d:Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/ak;->mResponseParser:Lcom/huanju/data/content/raw/b;

    invoke-virtual {v0, p1}, Lcom/huanju/data/content/raw/b;->parseErrorResponse(Lorg/apache/http/HttpResponse;)Lcom/huanju/data/content/raw/HjErrorResponseModel;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/huanju/data/content/raw/info/ak;->d:Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    iget v3, v0, Lcom/huanju/data/content/raw/HjErrorResponseModel;->errorCode:I

    iget-object v0, v0, Lcom/huanju/data/content/raw/HjErrorResponseModel;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;->onFailed(IILjava/lang/String;)V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/huanju/data/content/raw/info/ak;->d:Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    sget v2, Lcom/huanju/data/a/a;->b:I

    sget-object v3, Lcom/huanju/data/a/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;->onFailed(IILjava/lang/String;)V

    goto :goto_1d
.end method

.method public onNetworkError()V
    .registers 5

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/ak;->d:Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/ak;->d:Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;

    const/4 v1, 0x0

    sget v2, Lcom/huanju/data/a/a;->b:I

    sget-object v3, Lcom/huanju/data/a/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;->onFailed(IILjava/lang/String;)V

    :cond_e
    return-void
.end method
