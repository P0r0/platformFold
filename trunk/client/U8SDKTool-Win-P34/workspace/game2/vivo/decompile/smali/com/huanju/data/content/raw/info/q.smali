.class public Lcom/huanju/data/content/raw/info/q;
.super Lcom/huanju/data/content/raw/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huanju/data/content/raw/a",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lcom/huanju/data/content/raw/HjVoteType;

.field private d:Lcom/huanju/data/content/raw/listener/IHjRequestVoteListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/huanju/data/content/raw/HjVoteType;)V
    .registers 5

    invoke-direct {p0}, Lcom/huanju/data/content/raw/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/data/content/raw/info/q;->d:Lcom/huanju/data/content/raw/listener/IHjRequestVoteListener;

    iput-object p2, p0, Lcom/huanju/data/content/raw/info/q;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/huanju/data/content/raw/info/q;->c:Lcom/huanju/data/content/raw/HjVoteType;

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/q;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/huanju/data/content/raw/listener/IHjRequestVoteListener;)V
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/q;->d:Lcom/huanju/data/content/raw/listener/IHjRequestVoteListener;

    return-void
.end method

.method protected createNetTask()Lcom/huanju/data/net/AbstractNetTask;
    .registers 5

    new-instance v0, Lcom/huanju/data/content/raw/info/k;

    iget-object v1, p0, Lcom/huanju/data/content/raw/info/q;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/huanju/data/content/raw/info/q;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/huanju/data/content/raw/info/q;->c:Lcom/huanju/data/content/raw/HjVoteType;

    invoke-direct {v0, v1, v2, v3}, Lcom/huanju/data/content/raw/info/k;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/huanju/data/content/raw/HjVoteType;)V

    return-object v0
.end method

.method protected createParser()Lcom/huanju/data/content/raw/b;
    .registers 2

    new-instance v0, Lcom/huanju/data/content/raw/info/am;

    invoke-direct {v0}, Lcom/huanju/data/content/raw/info/am;-><init>()V

    return-object v0
.end method

.method public onDataReceived(Lorg/apache/http/HttpResponse;)V
    .registers 6

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/q;->d:Lcom/huanju/data/content/raw/listener/IHjRequestVoteListener;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/q;->mResponseParser:Lcom/huanju/data/content/raw/b;

    invoke-virtual {v0, p1}, Lcom/huanju/data/content/raw/b;->parseSuccessResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/q;->d:Lcom/huanju/data/content/raw/listener/IHjRequestVoteListener;

    invoke-interface {v0}, Lcom/huanju/data/content/raw/listener/IHjRequestVoteListener;->onSuccess()V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/huanju/data/content/raw/info/q;->d:Lcom/huanju/data/content/raw/listener/IHjRequestVoteListener;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    sget v2, Lcom/huanju/data/a/a;->c:I

    sget-object v3, Lcom/huanju/data/a/a;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/huanju/data/content/raw/listener/IHjRequestVoteListener;->onFailed(IILjava/lang/String;)V

    goto :goto_19
.end method

.method public onErrorReceived(Lorg/apache/http/HttpResponse;)V
    .registers 6

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/q;->d:Lcom/huanju/data/content/raw/listener/IHjRequestVoteListener;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/q;->mResponseParser:Lcom/huanju/data/content/raw/b;

    invoke-virtual {v0, p1}, Lcom/huanju/data/content/raw/b;->parseErrorResponse(Lorg/apache/http/HttpResponse;)Lcom/huanju/data/content/raw/HjErrorResponseModel;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/huanju/data/content/raw/info/q;->d:Lcom/huanju/data/content/raw/listener/IHjRequestVoteListener;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    iget v3, v0, Lcom/huanju/data/content/raw/HjErrorResponseModel;->errorCode:I

    iget-object v0, v0, Lcom/huanju/data/content/raw/HjErrorResponseModel;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/huanju/data/content/raw/listener/IHjRequestVoteListener;->onFailed(IILjava/lang/String;)V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/huanju/data/content/raw/info/q;->d:Lcom/huanju/data/content/raw/listener/IHjRequestVoteListener;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    sget v2, Lcom/huanju/data/a/a;->b:I

    sget-object v3, Lcom/huanju/data/a/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/huanju/data/content/raw/listener/IHjRequestVoteListener;->onFailed(IILjava/lang/String;)V

    goto :goto_1d
.end method

.method public onNetworkError()V
    .registers 5

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/q;->d:Lcom/huanju/data/content/raw/listener/IHjRequestVoteListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/q;->d:Lcom/huanju/data/content/raw/listener/IHjRequestVoteListener;

    const/4 v1, 0x0

    sget v2, Lcom/huanju/data/a/a;->b:I

    sget-object v3, Lcom/huanju/data/a/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/huanju/data/content/raw/listener/IHjRequestVoteListener;->onFailed(IILjava/lang/String;)V

    :cond_e
    return-void
.end method
