.class public Lsinglepay/network/HttpConnectionAgent;
.super Ljava/lang/Object;
.source "HttpConnectionAgent.java"


# static fields
.field private static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final DEFAULT_CONNECTION_TIMEOUT:I = 0x2710

.field private static final DEFAULT_HTTPS_PORT:I = 0x1bb

.field private static final DEFAULT_HTTP_PORT:I = 0x50

.field private static final DEFAULT_SO_TIMEOUT:I = 0xea60

.field private static final DEFAULT_TIMEOUT:I = 0x1388

.field private static final POST_REQUEST_METHOD:Ljava/lang/String; = "POST"

.field private static final PUT_REQUEST_METHOD:Ljava/lang/String; = "PUT"


# instance fields
.field private chunkLength:I

.field private httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private httpResponse:Lorg/apache/http/HttpResponse;

.field private proxyConfig:Lsinglepay/network/ProxyConfig;

.field private request:Lorg/apache/http/client/methods/HttpRequestBase;

.field private requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestMethod:Ljava/lang/String;

.field private response_entity:Lorg/apache/http/HttpEntity;


# direct methods
.method public constructor <init>()V
    .registers 11

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v6, "GET"

    iput-object v6, p0, Lsinglepay/network/HttpConnectionAgent;->requestMethod:Ljava/lang/String;

    .line 58
    const/4 v6, -0x1

    iput v6, p0, Lsinglepay/network/HttpConnectionAgent;->chunkLength:I

    .line 64
    :try_start_a
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 66
    .local v5, "trustStore":Ljava/security/KeyStore;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 68
    new-instance v4, Lsinglepay/network/SSLSocketFactoryEx;

    invoke-direct {v4, v5}, Lsinglepay/network/SSLSocketFactoryEx;-><init>(Ljava/security/KeyStore;)V

    .line 69
    .local v4, "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v6, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v4, v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 71
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 72
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 73
    const-string v6, "UTF-8"

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 74
    const/4 v6, 0x0

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 77
    const/16 v6, 0x2710

    .line 76
    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 78
    const v6, 0xea60

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 79
    const/4 v6, 0x0

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 81
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 82
    .local v3, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "http"

    .line 83
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v8

    const/16 v9, 0x50

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 82
    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 84
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "https"

    const/16 v8, 0x1bb

    invoke-direct {v6, v7, v4, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 85
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 87
    .local v0, "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v6, p0, Lsinglepay/network/HttpConnectionAgent;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_70} :catch_71

    .line 91
    .end local v0    # "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v2    # "params":Lorg/apache/http/params/HttpParams;
    .end local v3    # "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v4    # "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .end local v5    # "trustStore":Ljava/security/KeyStore;
    :goto_70
    return-void

    .line 88
    :catch_71
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_70
.end method

.method public static getNewHttpClient()Lorg/apache/http/client/HttpClient;
    .registers 10

    .prologue
    .line 253
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v6

    .line 252
    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 254
    .local v5, "trustStore":Ljava/security/KeyStore;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 256
    new-instance v4, Lsinglepay/network/SSLSocketFactoryEx;

    invoke-direct {v4, v5}, Lsinglepay/network/SSLSocketFactoryEx;-><init>(Ljava/security/KeyStore;)V

    .line 257
    .local v4, "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v6, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v4, v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 259
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 260
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 261
    const-string v6, "UTF-8"

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 263
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 264
    .local v3, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "http"

    .line 265
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v8

    const/16 v9, 0x50

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 264
    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 266
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "https"

    const/16 v8, 0x1bb

    invoke-direct {v6, v7, v4, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 268
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 271
    .local v0, "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_51} :catch_52

    .line 273
    .end local v0    # "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v2    # "params":Lorg/apache/http/params/HttpParams;
    .end local v3    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v4    # "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :goto_51
    return-object v6

    .line 272
    :catch_52
    move-exception v1

    .line 273
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_51
.end method

.method private performRequest(Lorg/apache/http/client/methods/HttpRequestBase;)V
    .registers 10
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v5, p0, Lsinglepay/network/HttpConnectionAgent;->requestHeaders:Ljava/util/Map;

    if-eqz v5, :cond_1c

    iget-object v5, p0, Lsinglepay/network/HttpConnectionAgent;->requestHeaders:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_1c

    .line 167
    iget-object v5, p0, Lsinglepay/network/HttpConnectionAgent;->requestHeaders:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_67

    .line 173
    :cond_1c
    iget-object v5, p0, Lsinglepay/network/HttpConnectionAgent;->proxyConfig:Lsinglepay/network/ProxyConfig;

    if-eqz v5, :cond_3b

    .line 174
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 177
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    new-instance v5, Lorg/apache/http/HttpHost;

    iget-object v6, p0, Lsinglepay/network/HttpConnectionAgent;->proxyConfig:Lsinglepay/network/ProxyConfig;

    invoke-virtual {v6}, Lsinglepay/network/ProxyConfig;->getAddress()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lsinglepay/network/HttpConnectionAgent;->proxyConfig:Lsinglepay/network/ProxyConfig;

    .line 178
    invoke-virtual {v7}, Lsinglepay/network/ProxyConfig;->getPort()I

    move-result v7

    .line 177
    invoke-direct {v5, v6, v7}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 175
    invoke-static {v2, v5}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 179
    invoke-virtual {p1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 183
    .end local v2    # "params":Lorg/apache/http/params/HttpParams;
    :cond_3b
    :try_start_3b
    iget-object v5, p0, Lsinglepay/network/HttpConnectionAgent;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v5, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    iput-object v5, p0, Lsinglepay/network/HttpConnectionAgent;->httpResponse:Lorg/apache/http/HttpResponse;

    .line 185
    iget-object v5, p0, Lsinglepay/network/HttpConnectionAgent;->httpResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    .line 186
    .local v3, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_79

    .line 187
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "request failed"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_59} :catch_59

    .line 190
    .end local v3    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_59
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 167
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_67
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 168
    .local v1, "key":Ljava/lang/String;
    iget-object v6, p0, Lsinglepay/network/HttpConnectionAgent;->requestHeaders:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 169
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {p1, v1, v4}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 189
    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    .restart local v3    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_79
    :try_start_79
    iget-object v5, p0, Lsinglepay/network/HttpConnectionAgent;->httpResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    iput-object v5, p0, Lsinglepay/network/HttpConnectionAgent;->response_entity:Lorg/apache/http/HttpEntity;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_81} :catch_59

    .line 194
    return-void
.end method


# virtual methods
.method public executeRequest(Ljava/lang/String;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    const-string v0, "POST"

    iget-object v1, p0, Lsinglepay/network/HttpConnectionAgent;->requestMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 95
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsinglepay/network/HttpConnectionAgent;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 101
    :goto_11
    iget-object v0, p0, Lsinglepay/network/HttpConnectionAgent;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-direct {p0, v0}, Lsinglepay/network/HttpConnectionAgent;->performRequest(Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 103
    return-void

    .line 96
    :cond_17
    const-string v0, "PUT"

    iget-object v1, p0, Lsinglepay/network/HttpConnectionAgent;->requestMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 97
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsinglepay/network/HttpConnectionAgent;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    goto :goto_11

    .line 99
    :cond_29
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsinglepay/network/HttpConnectionAgent;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    goto :goto_11
.end method

.method public executeRequest(Ljava/lang/String;Ljava/io/InputStream;J)V
    .registers 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "content_type":Ljava/lang/String;
    iget-object v2, p0, Lsinglepay/network/HttpConnectionAgent;->requestHeaders:Ljava/util/Map;

    if-eqz v2, :cond_10

    .line 131
    iget-object v2, p0, Lsinglepay/network/HttpConnectionAgent;->requestHeaders:Ljava/util/Map;

    const-string v3, "Content_Type"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "content_type":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 133
    .restart local v0    # "content_type":Ljava/lang/String;
    :cond_10
    if-nez v0, :cond_14

    .line 134
    const-string v0, "binary/octet-stream"

    .line 137
    :cond_14
    const-string v2, "POST"

    iget-object v3, p0, Lsinglepay/network/HttpConnectionAgent;->requestMethod:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 138
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lsinglepay/network/HttpConnectionAgent;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 139
    if-eqz p2, :cond_3d

    .line 140
    new-instance v1, Lorg/apache/http/entity/InputStreamEntity;

    invoke-direct {v1, p2, p3, p4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 141
    .local v1, "isEntity":Lorg/apache/http/entity/InputStreamEntity;
    invoke-virtual {v1, v0}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    .line 142
    iget v2, p0, Lsinglepay/network/HttpConnectionAgent;->chunkLength:I

    if-lez v2, :cond_36

    .line 143
    invoke-virtual {v1, v4}, Lorg/apache/http/entity/InputStreamEntity;->setChunked(Z)V

    .line 145
    :cond_36
    iget-object v2, p0, Lsinglepay/network/HttpConnectionAgent;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    check-cast v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 161
    .end local v1    # "isEntity":Lorg/apache/http/entity/InputStreamEntity;
    :cond_3d
    :goto_3d
    iget-object v2, p0, Lsinglepay/network/HttpConnectionAgent;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-direct {p0, v2}, Lsinglepay/network/HttpConnectionAgent;->performRequest(Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 163
    return-void

    .line 148
    :cond_43
    const-string v2, "PUT"

    iget-object v3, p0, Lsinglepay/network/HttpConnectionAgent;->requestMethod:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 149
    new-instance v2, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lsinglepay/network/HttpConnectionAgent;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 150
    if-eqz p2, :cond_3d

    .line 151
    new-instance v1, Lorg/apache/http/entity/InputStreamEntity;

    invoke-direct {v1, p2, p3, p4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 152
    .restart local v1    # "isEntity":Lorg/apache/http/entity/InputStreamEntity;
    invoke-virtual {v1, v0}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    .line 153
    iget v2, p0, Lsinglepay/network/HttpConnectionAgent;->chunkLength:I

    if-lez v2, :cond_65

    .line 154
    invoke-virtual {v1, v4}, Lorg/apache/http/entity/InputStreamEntity;->setChunked(Z)V

    .line 156
    :cond_65
    iget-object v2, p0, Lsinglepay/network/HttpConnectionAgent;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    check-cast v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_3d

    .line 159
    .end local v1    # "isEntity":Lorg/apache/http/entity/InputStreamEntity;
    :cond_6d
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lsinglepay/network/HttpConnectionAgent;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    goto :goto_3d
.end method

.method public varargs executeRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)V
    .registers 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "nameValuePairs"    # [Lorg/apache/http/NameValuePair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v1, "list_nvp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    array-length v4, p2

    const/4 v3, 0x0

    :goto_7
    if-lt v3, v4, :cond_2e

    .line 111
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    .line 112
    const-string v3, "UTF-8"

    .line 111
    invoke-direct {v0, v1, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 113
    .local v0, "encodeEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    const-string v3, "POST"

    iget-object v4, p0, Lsinglepay/network/HttpConnectionAgent;->requestMethod:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 114
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lsinglepay/network/HttpConnectionAgent;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 115
    iget-object v3, p0, Lsinglepay/network/HttpConnectionAgent;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    check-cast v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 122
    :goto_28
    iget-object v3, p0, Lsinglepay/network/HttpConnectionAgent;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-direct {p0, v3}, Lsinglepay/network/HttpConnectionAgent;->performRequest(Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 124
    return-void

    .line 108
    .end local v0    # "encodeEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :cond_2e
    aget-object v2, p2, v3

    .line 109
    .local v2, "nvp":Lorg/apache/http/NameValuePair;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 116
    .end local v2    # "nvp":Lorg/apache/http/NameValuePair;
    .restart local v0    # "encodeEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :cond_36
    const-string v3, "PUT"

    iget-object v4, p0, Lsinglepay/network/HttpConnectionAgent;->requestMethod:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 117
    new-instance v3, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lsinglepay/network/HttpConnectionAgent;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 118
    iget-object v3, p0, Lsinglepay/network/HttpConnectionAgent;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    check-cast v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_28

    .line 120
    :cond_4f
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lsinglepay/network/HttpConnectionAgent;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    goto :goto_28
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-object v1, p0, Lsinglepay/network/HttpConnectionAgent;->httpResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v1, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 205
    .local v0, "header":Lorg/apache/http/Header;
    if-eqz v0, :cond_d

    .line 206
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 208
    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public getResponseLength()I
    .registers 5

    .prologue
    const/4 v2, -0x1

    .line 212
    const-string v3, "content-length"

    invoke-virtual {p0, v3}, Lsinglepay/network/HttpConnectionAgent;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "len":Ljava/lang/String;
    if-eqz v1, :cond_d

    .line 215
    :try_start_9
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_e

    move-result v2

    .line 220
    :cond_d
    :goto_d
    return v2

    .line 216
    :catch_e
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_d
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lsinglepay/network/HttpConnectionAgent;->response_entity:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_d

    .line 198
    iget-object v0, p0, Lsinglepay/network/HttpConnectionAgent;->response_entity:Lorg/apache/http/HttpEntity;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public openInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lsinglepay/network/HttpConnectionAgent;->response_entity:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_b

    .line 226
    iget-object v0, p0, Lsinglepay/network/HttpConnectionAgent;->response_entity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 228
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setChunkStreamMode(I)V
    .registers 2
    .param p1, "chunkLength"    # I

    .prologue
    .line 243
    iput p1, p0, Lsinglepay/network/HttpConnectionAgent;->chunkLength:I

    .line 244
    return-void
.end method

.method public setProxyConfig(Lsinglepay/network/ProxyConfig;)V
    .registers 2
    .param p1, "proxyConfig"    # Lsinglepay/network/ProxyConfig;

    .prologue
    .line 247
    iput-object p1, p0, Lsinglepay/network/HttpConnectionAgent;->proxyConfig:Lsinglepay/network/ProxyConfig;

    .line 248
    return-void
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 232
    iget-object v0, p0, Lsinglepay/network/HttpConnectionAgent;->requestHeaders:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsinglepay/network/HttpConnectionAgent;->requestHeaders:Ljava/util/Map;

    .line 235
    :cond_b
    iget-object v0, p0, Lsinglepay/network/HttpConnectionAgent;->requestHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .registers 2
    .param p1, "requestMethod"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Lsinglepay/network/HttpConnectionAgent;->requestMethod:Ljava/lang/String;

    .line 240
    return-void
.end method
