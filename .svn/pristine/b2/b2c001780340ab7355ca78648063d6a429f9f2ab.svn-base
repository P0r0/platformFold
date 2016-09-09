.class public Lcom/huanju/data/content/raw/info/an;
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

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjInfoListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;III)V
    .registers 7

    invoke-direct {p0}, Lcom/huanju/data/content/raw/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/data/content/raw/info/an;->a:Landroid/content/Context;

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/content/raw/info/an;->b:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/huanju/data/content/raw/info/an;->c:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/huanju/data/content/raw/info/an;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/huanju/data/content/raw/info/an;->e:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/content/raw/info/an;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/huanju/data/content/raw/info/an;->b:Ljava/lang/String;

    iput p3, p0, Lcom/huanju/data/content/raw/info/an;->c:I

    iput p4, p0, Lcom/huanju/data/content/raw/info/an;->d:I

    iput p5, p0, Lcom/huanju/data/content/raw/info/an;->e:I

    return-void
.end method


# virtual methods
.method public a(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjInfoListItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/an;->f:Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;

    return-void
.end method

.method protected createNetTask()Lcom/huanju/data/net/AbstractNetTask;
    .registers 7

    new-instance v0, Lcom/huanju/data/content/raw/info/z;

    iget-object v1, p0, Lcom/huanju/data/content/raw/info/an;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/huanju/data/content/raw/info/an;->b:Ljava/lang/String;

    iget v3, p0, Lcom/huanju/data/content/raw/info/an;->c:I

    iget v4, p0, Lcom/huanju/data/content/raw/info/an;->d:I

    iget v5, p0, Lcom/huanju/data/content/raw/info/an;->e:I

    invoke-direct/range {v0 .. v5}, Lcom/huanju/data/content/raw/info/z;-><init>(Landroid/content/Context;Ljava/lang/String;III)V

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

    new-instance v0, Lcom/huanju/data/content/raw/info/x;

    invoke-direct {v0}, Lcom/huanju/data/content/raw/info/x;-><init>()V

    return-object v0
.end method

.method public onDataReceived(Lorg/apache/http/HttpResponse;)V
    .registers 10

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/an;->f:Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/an;->mResponseParser:Lcom/huanju/data/content/raw/b;

    invoke-virtual {v0, p1}, Lcom/huanju/data/content/raw/b;->parseSuccessResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/data/content/raw/info/ab;

    if-eqz v0, :cond_2b

    iget-object v1, v0, Lcom/huanju/data/content/raw/info/ab;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1c

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/an;->f:Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;

    invoke-interface {v0}, Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;->onEmpty()V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    iget-object v1, p0, Lcom/huanju/data/content/raw/info/an;->f:Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;

    iget-wide v2, v0, Lcom/huanju/data/content/raw/info/ab;->b:J

    iget-boolean v4, v0, Lcom/huanju/data/content/raw/info/ab;->a:Z

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/huanju/data/content/raw/info/ab;->d:Lcom/huanju/data/content/raw/info/HjAlbumInfo;

    iget-object v7, v0, Lcom/huanju/data/content/raw/info/ab;->c:Ljava/util/List;

    invoke-interface/range {v1 .. v7}, Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;->onSuccess(JZLjava/util/List;Lcom/huanju/data/content/raw/info/HjAlbumInfo;Ljava/util/List;)V

    goto :goto_1b

    :cond_2b
    iget-object v0, p0, Lcom/huanju/data/content/raw/info/an;->f:Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    sget v2, Lcom/huanju/data/a/a;->c:I

    sget-object v3, Lcom/huanju/data/a/a;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;->onFailed(IILjava/lang/String;)V

    goto :goto_1b
.end method

.method public onErrorReceived(Lorg/apache/http/HttpResponse;)V
    .registers 6

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/an;->f:Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/an;->mResponseParser:Lcom/huanju/data/content/raw/b;

    invoke-virtual {v0, p1}, Lcom/huanju/data/content/raw/b;->parseErrorResponse(Lorg/apache/http/HttpResponse;)Lcom/huanju/data/content/raw/HjErrorResponseModel;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/huanju/data/content/raw/info/an;->f:Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    iget v3, v0, Lcom/huanju/data/content/raw/HjErrorResponseModel;->errorCode:I

    iget-object v0, v0, Lcom/huanju/data/content/raw/HjErrorResponseModel;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;->onFailed(IILjava/lang/String;)V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/huanju/data/content/raw/info/an;->f:Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    sget v2, Lcom/huanju/data/a/a;->b:I

    sget-object v3, Lcom/huanju/data/a/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;->onFailed(IILjava/lang/String;)V

    goto :goto_1d
.end method

.method public onNetworkError()V
    .registers 5

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/an;->f:Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/an;->f:Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;

    const/4 v1, 0x0

    sget v2, Lcom/huanju/data/a/a;->b:I

    sget-object v3, Lcom/huanju/data/a/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;->onFailed(IILjava/lang/String;)V

    :cond_e
    return-void
.end method
