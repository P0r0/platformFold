.class public Lcom/bestpay/util/Net;
.super Ljava/lang/Object;
.source "Net.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bestpay/util/Net$SSLSocketFactoryEx;
    }
.end annotation


# static fields
.field public static final CONNECT_TIMEOUT:I = 0x7530

.field public static final READ_TIMEOUT:I = 0x7530


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNewHttpClient()Lorg/apache/http/client/HttpClient;
    .registers 11

    .prologue
    const/16 v7, 0x7530

    .line 99
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 100
    .local v3, "params":Lorg/apache/http/params/HttpParams;
    invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 101
    invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 105
    :try_start_d
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v7

    .line 104
    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 106
    .local v6, "trustStore":Ljava/security/KeyStore;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 108
    new-instance v5, Lcom/bestpay/util/Net$SSLSocketFactoryEx;

    invoke-direct {v5, v6}, Lcom/bestpay/util/Net$SSLSocketFactoryEx;-><init>(Ljava/security/KeyStore;)V

    .line 109
    .local v5, "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v7, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v5, v7}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 111
    sget-object v7, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 112
    const-string v7, "UTF-8"

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 114
    new-instance v4, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 115
    .local v4, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v7, Lorg/apache/http/conn/scheme/Scheme;

    const-string v8, "http"

    .line 116
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v9

    const/16 v10, 0x50

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 115
    invoke-virtual {v4, v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 117
    new-instance v7, Lorg/apache/http/conn/scheme/Scheme;

    const-string v8, "https"

    const/16 v9, 0x1bb

    invoke-direct {v7, v8, v5, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v4, v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 119
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v3, v4}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 121
    .local v0, "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_59} :catch_5a

    .line 125
    .end local v0    # "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v4    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v5    # "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .end local v6    # "trustStore":Ljava/security/KeyStore;
    .local v2, "httpCilent":Lorg/apache/http/client/HttpClient;
    :goto_59
    return-object v2

    .line 122
    .end local v2    # "httpCilent":Lorg/apache/http/client/HttpClient;
    :catch_5a
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .restart local v2    # "httpCilent":Lorg/apache/http/client/HttpClient;
    goto :goto_59
.end method

.method public static getReturnCode(Ljava/io/InputStream;J)Ljava/lang/String;
    .registers 6
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "length"    # J

    .prologue
    .line 86
    long-to-int v2, p1

    new-array v0, v2, [B

    .line 89
    .local v0, "bb":[B
    :try_start_3
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_c

    .line 94
    :goto_6
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    return-object v2

    .line 90
    :catch_c
    move-exception v1

    .line 91
    .local v1, "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6
.end method

.method public static sendNetInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "params"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cookie"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 56
    .local v1, "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    :try_start_5
    const-string v4, "Cookie"

    invoke-virtual {v1, v4, p2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v4, Lorg/apache/http/entity/StringEntity;

    const-string v5, "UTF-8"

    invoke-direct {v4, p0, v5}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 60
    invoke-static {}, Lcom/bestpay/util/Net;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 62
    .local v3, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_3b

    .line 64
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 65
    .local v2, "in":Ljava/io/InputStream;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/bestpay/util/Net;->getReturnCode(Ljava/io/InputStream;J)Ljava/lang/String;

    .line 72
    .end local v2    # "in":Ljava/io/InputStream;
    :cond_3b
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 73
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    .line 72
    invoke-static {v4, v6, v7}, Lcom/bestpay/util/Net;->getReturnCode(Ljava/io/InputStream;J)Ljava/lang/String;
    :try_end_4e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_4e} :catch_50
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_4e} :catch_56
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_4e} :catch_5b

    move-result-object v4

    .line 81
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :goto_4f
    return-object v4

    .line 74
    :catch_50
    move-exception v0

    .line 75
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 81
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_54
    const/4 v4, 0x0

    goto :goto_4f

    .line 76
    :catch_56
    move-exception v0

    .line 77
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_54

    .line 78
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_5b
    move-exception v0

    .line 79
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_54
.end method
