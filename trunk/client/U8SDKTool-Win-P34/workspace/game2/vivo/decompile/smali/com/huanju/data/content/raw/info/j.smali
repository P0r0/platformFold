.class public Lcom/huanju/data/content/raw/info/j;
.super Lcom/huanju/data/content/raw/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huanju/data/content/raw/a",
        "<",
        "Lcom/huanju/data/content/raw/info/ab;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:I

.field private e:Lcom/huanju/data/content/raw/listener/IHjRequestGalleryListListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/huanju/data/content/raw/a;-><init>()V

    iput-object v1, p0, Lcom/huanju/data/content/raw/info/j;->a:Landroid/content/Context;

    const/16 v0, 0xa

    iput v0, p0, Lcom/huanju/data/content/raw/info/j;->b:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/huanju/data/content/raw/info/j;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/huanju/data/content/raw/info/j;->d:I

    iput-object v1, p0, Lcom/huanju/data/content/raw/info/j;->e:Lcom/huanju/data/content/raw/listener/IHjRequestGalleryListListener;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/content/raw/info/j;->a:Landroid/content/Context;

    iput p2, p0, Lcom/huanju/data/content/raw/info/j;->b:I

    iput p3, p0, Lcom/huanju/data/content/raw/info/j;->c:I

    iput p4, p0, Lcom/huanju/data/content/raw/info/j;->d:I

    return-void
.end method


# virtual methods
.method public a(Lcom/huanju/data/content/raw/listener/IHjRequestGalleryListListener;)V
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/j;->e:Lcom/huanju/data/content/raw/listener/IHjRequestGalleryListListener;

    return-void
.end method

.method protected createNetTask()Lcom/huanju/data/net/AbstractNetTask;
    .registers 6

    new-instance v0, Lcom/huanju/data/content/raw/info/b;

    iget-object v1, p0, Lcom/huanju/data/content/raw/info/j;->a:Landroid/content/Context;

    iget v2, p0, Lcom/huanju/data/content/raw/info/j;->b:I

    iget v3, p0, Lcom/huanju/data/content/raw/info/j;->c:I

    iget v4, p0, Lcom/huanju/data/content/raw/info/j;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/huanju/data/content/raw/info/b;-><init>(Landroid/content/Context;III)V

    return-object v0
.end method

.method protected createParser()Lcom/huanju/data/content/raw/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/huanju/data/content/raw/b",
            "<",
            "Lcom/huanju/data/content/raw/info/ab;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huanju/data/content/raw/info/aj;

    invoke-direct {v0}, Lcom/huanju/data/content/raw/info/aj;-><init>()V

    return-object v0
.end method

.method public onDataReceived(Lorg/apache/http/HttpResponse;)V
    .registers 6

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/j;->e:Lcom/huanju/data/content/raw/listener/IHjRequestGalleryListListener;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/j;->mResponseParser:Lcom/huanju/data/content/raw/b;

    invoke-virtual {v0, p1}, Lcom/huanju/data/content/raw/b;->parseSuccessResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/data/content/raw/info/ab;

    if-eqz v0, :cond_24

    iget-object v1, v0, Lcom/huanju/data/content/raw/info/ab;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1c

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/j;->e:Lcom/huanju/data/content/raw/listener/IHjRequestGalleryListListener;

    invoke-interface {v0}, Lcom/huanju/data/content/raw/listener/IHjRequestGalleryListListener;->onEmpty()V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    iget-object v2, p0, Lcom/huanju/data/content/raw/info/j;->e:Lcom/huanju/data/content/raw/listener/IHjRequestGalleryListListener;

    iget-boolean v0, v0, Lcom/huanju/data/content/raw/info/ab;->a:Z

    invoke-interface {v2, v0, v1}, Lcom/huanju/data/content/raw/listener/IHjRequestGalleryListListener;->onSuccess(ZLjava/util/List;)V

    goto :goto_1b

    :cond_24
    iget-object v0, p0, Lcom/huanju/data/content/raw/info/j;->e:Lcom/huanju/data/content/raw/listener/IHjRequestGalleryListListener;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    sget v2, Lcom/huanju/data/a/a;->c:I

    sget-object v3, Lcom/huanju/data/a/a;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/huanju/data/content/raw/listener/IHjRequestGalleryListListener;->onFailed(IILjava/lang/String;)V

    goto :goto_1b
.end method

.method public onErrorReceived(Lorg/apache/http/HttpResponse;)V
    .registers 6

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/j;->e:Lcom/huanju/data/content/raw/listener/IHjRequestGalleryListListener;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/j;->mResponseParser:Lcom/huanju/data/content/raw/b;

    invoke-virtual {v0, p1}, Lcom/huanju/data/content/raw/b;->parseErrorResponse(Lorg/apache/http/HttpResponse;)Lcom/huanju/data/content/raw/HjErrorResponseModel;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/huanju/data/content/raw/info/j;->e:Lcom/huanju/data/content/raw/listener/IHjRequestGalleryListListener;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    iget v3, v0, Lcom/huanju/data/content/raw/HjErrorResponseModel;->errorCode:I

    iget-object v0, v0, Lcom/huanju/data/content/raw/HjErrorResponseModel;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/huanju/data/content/raw/listener/IHjRequestGalleryListListener;->onFailed(IILjava/lang/String;)V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/huanju/data/content/raw/info/j;->e:Lcom/huanju/data/content/raw/listener/IHjRequestGalleryListListener;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    sget v2, Lcom/huanju/data/a/a;->b:I

    sget-object v3, Lcom/huanju/data/a/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/huanju/data/content/raw/listener/IHjRequestGalleryListListener;->onFailed(IILjava/lang/String;)V

    goto :goto_1d
.end method

.method public onNetworkError()V
    .registers 5

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/j;->e:Lcom/huanju/data/content/raw/listener/IHjRequestGalleryListListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/j;->e:Lcom/huanju/data/content/raw/listener/IHjRequestGalleryListListener;

    const/4 v1, 0x0

    sget v2, Lcom/huanju/data/a/a;->b:I

    sget-object v3, Lcom/huanju/data/a/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/huanju/data/content/raw/listener/IHjRequestGalleryListListener;->onFailed(IILjava/lang/String;)V

    :cond_e
    return-void
.end method
