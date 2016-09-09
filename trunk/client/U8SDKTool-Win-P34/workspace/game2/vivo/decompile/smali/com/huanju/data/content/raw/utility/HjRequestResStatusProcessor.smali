.class public Lcom/huanju/data/content/raw/utility/HjRequestResStatusProcessor;
.super Lcom/huanju/data/content/raw/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huanju/data/content/raw/a",
        "<",
        "Lcom/huanju/data/content/raw/utility/HjGameResInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener",
            "<",
            "Lcom/huanju/data/content/raw/utility/HjGameResInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/huanju/data/content/raw/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/data/content/raw/utility/HjRequestResStatusProcessor;->mListener:Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;

    iput-object p1, p0, Lcom/huanju/data/content/raw/utility/HjRequestResStatusProcessor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/huanju/data/content/raw/utility/HjRequestResStatusProcessor;->pkgName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createNetTask()Lcom/huanju/data/net/AbstractNetTask;
    .registers 4

    new-instance v0, Lcom/huanju/data/content/raw/utility/HjRequestResStatusTask;

    iget-object v1, p0, Lcom/huanju/data/content/raw/utility/HjRequestResStatusProcessor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huanju/data/content/raw/utility/HjRequestResStatusProcessor;->pkgName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/huanju/data/content/raw/utility/HjRequestResStatusTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createParser()Lcom/huanju/data/content/raw/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/huanju/data/content/raw/b",
            "<",
            "Lcom/huanju/data/content/raw/utility/HjGameResInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huanju/data/content/raw/utility/HjGameResStatusParser;

    invoke-direct {v0}, Lcom/huanju/data/content/raw/utility/HjGameResStatusParser;-><init>()V

    return-object v0
.end method

.method public onDataReceived(Lorg/apache/http/HttpResponse;)V
    .registers 6

    iget-object v0, p0, Lcom/huanju/data/content/raw/utility/HjRequestResStatusProcessor;->mListener:Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/huanju/data/content/raw/utility/HjRequestResStatusProcessor;->mResponseParser:Lcom/huanju/data/content/raw/b;

    invoke-virtual {v0, p1}, Lcom/huanju/data/content/raw/b;->parseSuccessResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;

    if-eqz v0, :cond_22

    iget-object v1, p0, Lcom/huanju/data/content/raw/utility/HjRequestResStatusProcessor;->pkgName:Ljava/lang/String;

    iput-object v1, v0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mPkgName:Ljava/lang/String;

    iget-object v1, p0, Lcom/huanju/data/content/raw/utility/HjRequestResStatusProcessor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/huanju/data/content/raw/utility/HjGameResControl;->getInstance(Landroid/content/Context;)Lcom/huanju/data/content/raw/utility/HjGameResControl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/huanju/data/content/raw/utility/HjGameResControl;->getUpdateInfo(Lcom/huanju/data/content/raw/utility/HjGameResInfo;)Lcom/huanju/data/content/raw/utility/HjGameResInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/data/content/raw/utility/HjRequestResStatusProcessor;->mListener:Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;

    invoke-interface {v1, v0}, Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;->onSuccess(Ljava/lang/Object;)V

    :cond_21
    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Lcom/huanju/data/content/raw/utility/HjRequestResStatusProcessor;->mListener:Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    sget v2, Lcom/huanju/data/a/a;->c:I

    sget-object v3, Lcom/huanju/data/a/a;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;->onFailed(IILjava/lang/String;)V

    goto :goto_21
.end method

.method public onErrorReceived(Lorg/apache/http/HttpResponse;)V
    .registers 6

    iget-object v0, p0, Lcom/huanju/data/content/raw/utility/HjRequestResStatusProcessor;->mListener:Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/huanju/data/content/raw/utility/HjRequestResStatusProcessor;->mResponseParser:Lcom/huanju/data/content/raw/b;

    invoke-virtual {v0, p1}, Lcom/huanju/data/content/raw/b;->parseErrorResponse(Lorg/apache/http/HttpResponse;)Lcom/huanju/data/content/raw/HjErrorResponseModel;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/huanju/data/content/raw/utility/HjRequestResStatusProcessor;->mListener:Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;

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
    iget-object v0, p0, Lcom/huanju/data/content/raw/utility/HjRequestResStatusProcessor;->mListener:Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;

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

    iget-object v0, p0, Lcom/huanju/data/content/raw/utility/HjRequestResStatusProcessor;->mListener:Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/huanju/data/content/raw/utility/HjRequestResStatusProcessor;->mListener:Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;

    const/4 v1, 0x0

    sget v2, Lcom/huanju/data/a/a;->b:I

    sget-object v3, Lcom/huanju/data/a/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;->onFailed(IILjava/lang/String;)V

    :cond_e
    return-void
.end method

.method public setListener(Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener",
            "<",
            "Lcom/huanju/data/content/raw/utility/HjGameResInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/huanju/data/content/raw/utility/HjRequestResStatusProcessor;->mListener:Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;

    return-void
.end method
