.class public Lcom/bbk/payment/network/HttpConnectionAgent;
.super Ljava/lang/Object;


# static fields
.field public static final POST_REQUEST_METHOD:Ljava/lang/String; = "POST"

.field public static final PUT_REQUEST_METHOD:Ljava/lang/String; = "PUT"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private c:Ljava/util/Map;

.field private d:Lorg/apache/http/client/methods/HttpRequestBase;

.field private e:Lorg/apache/http/HttpResponse;

.field private f:Lorg/apache/http/HttpEntity;

.field private g:I

.field private h:Lcom/bbk/payment/network/ProxyConfig;


# direct methods
.method public constructor <init>()V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    iput-object v0, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->a:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->g:I

    :try_start_a
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    new-instance v1, Lcom/bbk/payment/network/SSLSocketFactoryEx;

    invoke-direct {v1, v0}, Lcom/bbk/payment/network/SSLSocketFactoryEx;-><init>(Ljava/security/KeyStore;)V

    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v1, v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    const/16 v2, 0x1388

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const v2, 0x9c40

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v1, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v0, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v2, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->b:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_70} :catch_71

    :goto_70
    return-void

    :catch_71
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_70
.end method

.method private a(Lorg/apache/http/client/methods/HttpRequestBase;)V
    .registers 6

    iget-object v0, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->c:Ljava/util/Map;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1c

    iget-object v0, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4c

    :cond_1c
    iget-object v0, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->h:Lcom/bbk/payment/network/ProxyConfig;

    if-eqz v0, :cond_3b

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    new-instance v1, Lorg/apache/http/HttpHost;

    iget-object v2, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->h:Lcom/bbk/payment/network/ProxyConfig;

    invoke-virtual {v2}, Lcom/bbk/payment/network/ProxyConfig;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->h:Lcom/bbk/payment/network/ProxyConfig;

    invoke-virtual {v3}, Lcom/bbk/payment/network/ProxyConfig;->getPort()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    invoke-virtual {p1, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->setParams(Lorg/apache/http/params/HttpParams;)V

    :cond_3b
    :try_start_3b
    iget-object v0, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->e:Lorg/apache/http/HttpResponse;

    iget-object v0, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->f:Lorg/apache/http/HttpEntity;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_4b} :catch_5e

    return-void

    :cond_4c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :catch_5e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public executeRequest(Ljava/lang/String;)V
    .registers 4

    const-string v0, "POST"

    iget-object v1, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    :goto_11
    iget-object v0, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-direct {p0, v0}, Lcom/bbk/payment/network/HttpConnectionAgent;->a(Lorg/apache/http/client/methods/HttpRequestBase;)V

    return-void

    :cond_17
    const-string v0, "PUT"

    iget-object v1, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    goto :goto_11

    :cond_29
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    goto :goto_11
.end method

.method public executeRequest(Ljava/lang/String;Ljava/io/InputStream;J)V
    .registers 10

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->c:Ljava/util/Map;

    if-eqz v1, :cond_10

    iget-object v0, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->c:Ljava/util/Map;

    const-string v1, "Content_Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_10
    if-nez v0, :cond_14

    const-string v0, "binary/octet-stream"

    :cond_14
    const-string v1, "POST"

    iget-object v2, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz p2, :cond_3d

    new-instance v1, Lorg/apache/http/entity/InputStreamEntity;

    invoke-direct {v1, p2, p3, p4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    invoke-virtual {v1, v0}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    iget v0, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->g:I

    if-lez v0, :cond_36

    invoke-virtual {v1, v3}, Lorg/apache/http/entity/InputStreamEntity;->setChunked(Z)V

    :cond_36
    iget-object v0, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_3d
    :goto_3d
    iget-object v0, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-direct {p0, v0}, Lcom/bbk/payment/network/HttpConnectionAgent;->a(Lorg/apache/http/client/methods/HttpRequestBase;)V

    return-void

    :cond_43
    const-string v1, "PUT"

    iget-object v2, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6d

    new-instance v1, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz p2, :cond_3d

    new-instance v1, Lorg/apache/http/entity/InputStreamEntity;

    invoke-direct {v1, p2, p3, p4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    invoke-virtual {v1, v0}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    iget v0, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->g:I

    if-lez v0, :cond_65

    invoke-virtual {v1, v3}, Lorg/apache/http/entity/InputStreamEntity;->setChunked(Z)V

    :cond_65
    iget-object v0, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_3d

    :cond_6d
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    goto :goto_3d
.end method

.method public varargs executeRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)V
    .registers 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p2

    const/4 v0, 0x0

    :goto_7
    if-lt v0, v2, :cond_2e

    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v0, "UTF-8"

    invoke-direct {v2, v1, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const-string v0, "POST"

    iget-object v1, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    iget-object v0, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :goto_28
    iget-object v0, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-direct {p0, v0}, Lcom/bbk/payment/network/HttpConnectionAgent;->a(Lorg/apache/http/client/methods/HttpRequestBase;)V

    return-void

    :cond_2e
    aget-object v3, p2, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_36
    const-string v0, "PUT"

    iget-object v1, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    iget-object v0, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_28

    :cond_4f
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    goto :goto_28
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getResponseLength()I
    .registers 3

    const/4 v0, -0x1

    const-string v1, "content-length"

    invoke-virtual {p0, v1}, Lcom/bbk/payment/network/HttpConnectionAgent;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    :try_start_9
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_e

    move-result v0

    :cond_d
    :goto_d
    return v0

    :catch_e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->f:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->f:Lorg/apache/http/HttpEntity;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public openInputStream()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->f:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->f:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setChunkStreamMode(I)V
    .registers 2

    iput p1, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->g:I

    return-void
.end method

.method public setProxyConfig(Lcom/bbk/payment/network/ProxyConfig;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->h:Lcom/bbk/payment/network/ProxyConfig;

    return-void
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->c:Ljava/util/Map;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->c:Ljava/util/Map;

    :cond_b
    iget-object v0, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/network/HttpConnectionAgent;->a:Ljava/lang/String;

    return-void
.end method
