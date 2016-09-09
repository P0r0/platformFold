.class public Lcom/huanju/data/content/raw/info/g;
.super Lcom/huanju/data/content/raw/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huanju/data/content/raw/a",
        "<",
        "Lcom/huanju/data/content/raw/info/r;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:I

.field private e:Lcom/huanju/data/content/raw/listener/IHjRequestAlbumListListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/huanju/data/content/raw/a;-><init>()V

    iput-object v1, p0, Lcom/huanju/data/content/raw/info/g;->a:Landroid/content/Context;

    const/16 v0, 0xa

    iput v0, p0, Lcom/huanju/data/content/raw/info/g;->b:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/huanju/data/content/raw/info/g;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/huanju/data/content/raw/info/g;->d:I

    iput-object v1, p0, Lcom/huanju/data/content/raw/info/g;->e:Lcom/huanju/data/content/raw/listener/IHjRequestAlbumListListener;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/content/raw/info/g;->a:Landroid/content/Context;

    iput p2, p0, Lcom/huanju/data/content/raw/info/g;->b:I

    iput p3, p0, Lcom/huanju/data/content/raw/info/g;->c:I

    iput p4, p0, Lcom/huanju/data/content/raw/info/g;->d:I

    return-void
.end method


# virtual methods
.method public a(Lcom/huanju/data/content/raw/listener/IHjRequestAlbumListListener;)V
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/g;->e:Lcom/huanju/data/content/raw/listener/IHjRequestAlbumListListener;

    return-void
.end method

.method protected createNetTask()Lcom/huanju/data/net/AbstractNetTask;
    .registers 6

    new-instance v0, Lcom/huanju/data/content/raw/info/n;

    iget-object v1, p0, Lcom/huanju/data/content/raw/info/g;->a:Landroid/content/Context;

    iget v2, p0, Lcom/huanju/data/content/raw/info/g;->b:I

    iget v3, p0, Lcom/huanju/data/content/raw/info/g;->c:I

    iget v4, p0, Lcom/huanju/data/content/raw/info/g;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/huanju/data/content/raw/info/n;-><init>(Landroid/content/Context;III)V

    return-object v0
.end method

.method protected createParser()Lcom/huanju/data/content/raw/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/huanju/data/content/raw/b",
            "<",
            "Lcom/huanju/data/content/raw/info/r;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huanju/data/content/raw/info/f;

    invoke-direct {v0}, Lcom/huanju/data/content/raw/info/f;-><init>()V

    return-object v0
.end method

.method public onDataReceived(Lorg/apache/http/HttpResponse;)V
    .registers 8

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/g;->e:Lcom/huanju/data/content/raw/listener/IHjRequestAlbumListListener;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/g;->mResponseParser:Lcom/huanju/data/content/raw/b;

    invoke-virtual {v0, p1}, Lcom/huanju/data/content/raw/b;->parseSuccessResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/data/content/raw/info/r;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Lcom/huanju/data/content/raw/info/r;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1e

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/g;->e:Lcom/huanju/data/content/raw/listener/IHjRequestAlbumListListener;

    invoke-interface {v0}, Lcom/huanju/data/content/raw/listener/IHjRequestAlbumListListener;->onEmpty()V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    iget-object v2, p0, Lcom/huanju/data/content/raw/info/g;->e:Lcom/huanju/data/content/raw/listener/IHjRequestAlbumListListener;

    invoke-virtual {v0}, Lcom/huanju/data/content/raw/info/r;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v1, "0"

    invoke-virtual {v0}, Lcom/huanju/data/content/raw/info/r;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    const/4 v1, 0x1

    :goto_39
    invoke-virtual {v0}, Lcom/huanju/data/content/raw/info/r;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v2, v4, v5, v1, v0}, Lcom/huanju/data/content/raw/listener/IHjRequestAlbumListListener;->onSuccess(JZLjava/util/List;)V

    goto :goto_1d

    :cond_41
    const/4 v1, 0x0

    goto :goto_39

    :cond_43
    iget-object v0, p0, Lcom/huanju/data/content/raw/info/g;->e:Lcom/huanju/data/content/raw/listener/IHjRequestAlbumListListener;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    sget v2, Lcom/huanju/data/a/a;->c:I

    sget-object v3, Lcom/huanju/data/a/a;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/huanju/data/content/raw/listener/IHjRequestAlbumListListener;->onFailed(IILjava/lang/String;)V

    goto :goto_1d
.end method

.method public onErrorReceived(Lorg/apache/http/HttpResponse;)V
    .registers 6

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/g;->e:Lcom/huanju/data/content/raw/listener/IHjRequestAlbumListListener;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/g;->mResponseParser:Lcom/huanju/data/content/raw/b;

    invoke-virtual {v0, p1}, Lcom/huanju/data/content/raw/b;->parseErrorResponse(Lorg/apache/http/HttpResponse;)Lcom/huanju/data/content/raw/HjErrorResponseModel;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/huanju/data/content/raw/info/g;->e:Lcom/huanju/data/content/raw/listener/IHjRequestAlbumListListener;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    iget v3, v0, Lcom/huanju/data/content/raw/HjErrorResponseModel;->errorCode:I

    iget-object v0, v0, Lcom/huanju/data/content/raw/HjErrorResponseModel;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/huanju/data/content/raw/listener/IHjRequestAlbumListListener;->onFailed(IILjava/lang/String;)V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/huanju/data/content/raw/info/g;->e:Lcom/huanju/data/content/raw/listener/IHjRequestAlbumListListener;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    sget v2, Lcom/huanju/data/a/a;->b:I

    sget-object v3, Lcom/huanju/data/a/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/huanju/data/content/raw/listener/IHjRequestAlbumListListener;->onFailed(IILjava/lang/String;)V

    goto :goto_1d
.end method

.method public onNetworkError()V
    .registers 5

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/g;->e:Lcom/huanju/data/content/raw/listener/IHjRequestAlbumListListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/g;->e:Lcom/huanju/data/content/raw/listener/IHjRequestAlbumListListener;

    const/4 v1, 0x0

    sget v2, Lcom/huanju/data/a/a;->b:I

    sget-object v3, Lcom/huanju/data/a/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/huanju/data/content/raw/listener/IHjRequestAlbumListListener;->onFailed(IILjava/lang/String;)V

    :cond_e
    return-void
.end method
