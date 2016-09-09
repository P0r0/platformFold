.class public Lcom/huanju/data/net/h;
.super Lorg/apache/http/impl/client/DefaultHttpClient;


# static fields
.field private static final a:Lcom/huanju/data/a/b;


# instance fields
.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/RuntimeException;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "NetworkProxyHttpClient"

    invoke-static {v0}, Lcom/huanju/data/a/b;->a(Ljava/lang/String;)Lcom/huanju/data/a/b;

    move-result-object v0

    sput-object v0, Lcom/huanju/data/net/h;->a:Lcom/huanju/data/a/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    const v3, 0x2bf20

    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huanju/data/net/h;->b:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/net/h;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/net/h;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NetworkProxyHttpClient created and never closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huanju/data/net/h;->e:Ljava/lang/RuntimeException;

    new-instance v0, Lcom/huanju/data/net/b;

    invoke-direct {v0, p1}, Lcom/huanju/data/net/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/huanju/data/net/b;->a()Lcom/huanju/data/net/c;

    move-result-object v0

    iget-boolean v1, v0, Lcom/huanju/data/net/c;->d:Z

    iput-boolean v1, p0, Lcom/huanju/data/net/h;->b:Z

    iget-object v1, v0, Lcom/huanju/data/net/c;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/huanju/data/net/h;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/huanju/data/net/c;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/huanju/data/net/h;->d:Ljava/lang/String;

    sget-object v0, Lcom/huanju/data/net/h;->a:Lcom/huanju/data/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsWapNetwork="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/huanju/data/net/h;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";mProxyHost="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/data/net/h;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";mProxyPoint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/data/net/h;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huanju/data/net/h;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_83

    :try_start_69
    iget-object v0, p0, Lcom/huanju/data/net/h;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6e} :catch_a8

    move-result-object v0

    :goto_6f
    new-instance v1, Lorg/apache/http/HttpHost;

    iget-object v2, p0, Lcom/huanju/data/net/h;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/huanju/data/net/h;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v2, "http.route.default-proxy"

    invoke-interface {v0, v2, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_83
    invoke-virtual {p0}, Lcom/huanju/data/net/h;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-virtual {p0}, Lcom/huanju/data/net/h;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-virtual {p0}, Lcom/huanju/data/net/h;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a7

    invoke-virtual {p0}, Lcom/huanju/data/net/h;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    :cond_a7
    return-void

    :catch_a8
    move-exception v0

    const/16 v0, 0x50

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_6f
.end method


# virtual methods
.method public a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 4

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/huanju/data/net/h;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Lorg/apache/http/client/ClientProtocolException;

    invoke-direct {v1, v0}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/huanju/data/net/h;->e:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/huanju/data/net/h;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/data/net/h;->e:Ljava/lang/RuntimeException;

    :cond_e
    return-void
.end method

.method protected createHttpParams()Lorg/apache/http/params/HttpParams;
    .registers 3

    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    return-object v0
.end method

.method protected finalize()V
    .registers 4

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object v0, p0, Lcom/huanju/data/net/h;->e:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_10

    const-string v0, "NetworkProxyHttpClient"

    const-string v1, "Leak found"

    iget-object v2, p0, Lcom/huanju/data/net/h;->e:Ljava/lang/RuntimeException;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    return-void
.end method
