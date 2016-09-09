.class public abstract Lcom/huanju/data/net/AbstractNetTask;
.super Ljava/lang/Object;


# static fields
.field private static final HTTP_USER_AGENT:Ljava/lang/String; = "Huanju_DataSDK_%s_%s"

.field private static final log:Lcom/huanju/data/a/b;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHttpClient:Lcom/huanju/data/net/h;

.field private mListener:Lcom/huanju/data/net/f;

.field private mReqType:Lcom/huanju/data/net/AbstractNetTask$ReqType;

.field private mRequestMethod:Lorg/apache/http/client/methods/HttpUriRequest;

.field private mResponse:Lorg/apache/http/HttpResponse;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "AbstractNetTask"

    invoke-static {v0}, Lcom/huanju/data/a/b;->a(Ljava/lang/String;)Lcom/huanju/data/a/b;

    move-result-object v0

    sput-object v0, Lcom/huanju/data/net/AbstractNetTask;->log:Lcom/huanju/data/a/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/huanju/data/net/AbstractNetTask$ReqType;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/data/net/AbstractNetTask;->mListener:Lcom/huanju/data/net/f;

    iput-object p1, p0, Lcom/huanju/data/net/AbstractNetTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/huanju/data/net/AbstractNetTask;->mReqType:Lcom/huanju/data/net/AbstractNetTask$ReqType;

    return-void
.end method

.method private getUserAgent()Ljava/lang/String;
    .registers 5

    const-string v0, "Huanju_DataSDK_%s_%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/huanju/data/net/AbstractNetTask;->getAppID()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/huanju/data/net/AbstractNetTask;->getChannelID()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onError(Lorg/apache/http/HttpResponse;)V
    .registers 3

    iget-object v0, p0, Lcom/huanju/data/net/AbstractNetTask;->mListener:Lcom/huanju/data/net/f;

    if-eqz v0, :cond_b

    if-nez p1, :cond_c

    iget-object v0, p0, Lcom/huanju/data/net/AbstractNetTask;->mListener:Lcom/huanju/data/net/f;

    invoke-interface {v0}, Lcom/huanju/data/net/f;->onNetworkError()V

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/huanju/data/net/AbstractNetTask;->mListener:Lcom/huanju/data/net/f;

    invoke-interface {v0, p1}, Lcom/huanju/data/net/f;->onErrorReceived(Lorg/apache/http/HttpResponse;)V

    goto :goto_b
.end method

.method private onSuccess(Lorg/apache/http/HttpResponse;)V
    .registers 3

    iget-object v0, p0, Lcom/huanju/data/net/AbstractNetTask;->mListener:Lcom/huanju/data/net/f;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/huanju/data/net/AbstractNetTask;->mListener:Lcom/huanju/data/net/f;

    invoke-interface {v0, p1}, Lcom/huanju/data/net/f;->onDataReceived(Lorg/apache/http/HttpResponse;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public final execute()V
    .registers 6

    invoke-virtual {p0}, Lcom/huanju/data/net/AbstractNetTask;->getURL()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/data/net/AbstractNetTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/huanju/data/a/i;->a(Landroid/content/Context;)Lcom/huanju/data/a/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/huanju/data/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/huanju/data/net/AbstractNetTask;->log:Lcom/huanju/data/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execute url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huanju/data/net/AbstractNetTask;->mReqType:Lcom/huanju/data/net/AbstractNetTask$ReqType;

    sget-object v2, Lcom/huanju/data/net/AbstractNetTask$ReqType;->Get:Lcom/huanju/data/net/AbstractNetTask$ReqType;

    if-ne v0, v2, :cond_74

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huanju/data/net/AbstractNetTask;->mRequestMethod:Lorg/apache/http/client/methods/HttpUriRequest;

    :cond_33
    :goto_33
    iget-object v0, p0, Lcom/huanju/data/net/AbstractNetTask;->mRequestMethod:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-virtual {p0, v0}, Lcom/huanju/data/net/AbstractNetTask;->onAddHeaders(Lorg/apache/http/client/methods/HttpUriRequest;)V

    new-instance v0, Lcom/huanju/data/net/h;

    iget-object v2, p0, Lcom/huanju/data/net/AbstractNetTask;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/huanju/data/net/AbstractNetTask;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/huanju/data/net/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huanju/data/net/AbstractNetTask;->mHttpClient:Lcom/huanju/data/net/h;

    :try_start_45
    iget-object v0, p0, Lcom/huanju/data/net/AbstractNetTask;->mHttpClient:Lcom/huanju/data/net/h;

    iget-object v2, p0, Lcom/huanju/data/net/AbstractNetTask;->mRequestMethod:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-virtual {v0, v2}, Lcom/huanju/data/net/h;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/net/AbstractNetTask;->mResponse:Lorg/apache/http/HttpResponse;

    iget-object v0, p0, Lcom/huanju/data/net/AbstractNetTask;->mResponse:Lorg/apache/http/HttpResponse;

    if-eqz v0, :cond_bb

    iget-object v0, p0, Lcom/huanju/data/net/AbstractNetTask;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    if-eqz v0, :cond_bb

    iget-object v0, p0, Lcom/huanju/data/net/AbstractNetTask;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_64} :catch_8a
    .catchall {:try_start_45 .. :try_end_64} :catchall_cb

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_bb

    :try_start_69
    iget-object v0, p0, Lcom/huanju/data/net/AbstractNetTask;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-direct {p0, v0}, Lcom/huanju/data/net/AbstractNetTask;->onSuccess(Lorg/apache/http/HttpResponse;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6e} :catch_85
    .catchall {:try_start_69 .. :try_end_6e} :catchall_cb

    :goto_6e
    iget-object v0, p0, Lcom/huanju/data/net/AbstractNetTask;->mHttpClient:Lcom/huanju/data/net/h;

    invoke-virtual {v0}, Lcom/huanju/data/net/h;->a()V

    :goto_73
    return-void

    :cond_74
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huanju/data/net/AbstractNetTask;->mRequestMethod:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-virtual {p0}, Lcom/huanju/data/net/AbstractNetTask;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_33

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_33

    :catch_85
    move-exception v0

    :try_start_86
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_8a
    .catchall {:try_start_86 .. :try_end_89} :catchall_cb

    goto :goto_6e

    :catch_8a
    move-exception v0

    :try_start_8b
    sget-object v2, Lcom/huanju/data/net/AbstractNetTask;->log:Lcom/huanju/data/a/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Execute HTTP Request Error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/huanju/data/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/huanju/data/b/f/a;

    iget-object v2, p0, Lcom/huanju/data/net/AbstractNetTask;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/huanju/data/b/f/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/huanju/data/b/f/a;->a()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b0
    .catchall {:try_start_8b .. :try_end_b0} :catchall_cb

    :try_start_b0
    iget-object v0, p0, Lcom/huanju/data/net/AbstractNetTask;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-direct {p0, v0}, Lcom/huanju/data/net/AbstractNetTask;->onError(Lorg/apache/http/HttpResponse;)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b5} :catch_d2
    .catchall {:try_start_b0 .. :try_end_b5} :catchall_cb

    :goto_b5
    iget-object v0, p0, Lcom/huanju/data/net/AbstractNetTask;->mHttpClient:Lcom/huanju/data/net/h;

    invoke-virtual {v0}, Lcom/huanju/data/net/h;->a()V

    goto :goto_73

    :cond_bb
    :try_start_bb
    iget-object v0, p0, Lcom/huanju/data/net/AbstractNetTask;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-direct {p0, v0}, Lcom/huanju/data/net/AbstractNetTask;->onError(Lorg/apache/http/HttpResponse;)V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_c0} :catch_c6
    .catchall {:try_start_bb .. :try_end_c0} :catchall_cb

    :goto_c0
    iget-object v0, p0, Lcom/huanju/data/net/AbstractNetTask;->mHttpClient:Lcom/huanju/data/net/h;

    invoke-virtual {v0}, Lcom/huanju/data/net/h;->a()V

    goto :goto_73

    :catch_c6
    move-exception v0

    :try_start_c7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_ca} :catch_8a
    .catchall {:try_start_c7 .. :try_end_ca} :catchall_cb

    goto :goto_c0

    :catchall_cb
    move-exception v0

    iget-object v1, p0, Lcom/huanju/data/net/AbstractNetTask;->mHttpClient:Lcom/huanju/data/net/h;

    invoke-virtual {v1}, Lcom/huanju/data/net/h;->a()V

    throw v0

    :catch_d2
    move-exception v0

    :try_start_d3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d6
    .catchall {:try_start_d3 .. :try_end_d6} :catchall_cb

    goto :goto_b5
.end method

.method protected getAppID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huanju/data/net/AbstractNetTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huanju/data/a/i;->a(Landroid/content/Context;)Lcom/huanju/data/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huanju/data/a/i;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getChannelID()Ljava/lang/String;
    .registers 2

    const-string v0, "20002a"

    return-object v0
.end method

.method protected abstract getEntity()Lorg/apache/http/HttpEntity;
.end method

.method protected abstract getLaunchMode()Lcom/huanju/data/net/AbstractNetTask$LaunchMode;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method protected abstract getURL()Ljava/lang/String;
.end method

.method protected abstract onAddHeaders(Lorg/apache/http/client/methods/HttpUriRequest;)V
.end method

.method public setListenter(Lcom/huanju/data/net/f;)V
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/net/AbstractNetTask;->mListener:Lcom/huanju/data/net/f;

    return-void
.end method
