.class public final Lcom/unionpay/mobile/android/net/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Lorg/apache/http/client/HttpClient;

.field private b:Lorg/apache/http/HttpResponse;

.field private c:Lorg/apache/http/HttpEntity;

.field private d:[B

.field private e:Ljava/io/InputStream;

.field private f:Lcom/unionpay/mobile/android/net/d;


# direct methods
.method public constructor <init>(Lcom/unionpay/mobile/android/net/d;)V
    .registers 9

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/unionpay/mobile/android/net/c;->a:Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/unionpay/mobile/android/net/c;->b:Lorg/apache/http/HttpResponse;

    iput-object v0, p0, Lcom/unionpay/mobile/android/net/c;->c:Lorg/apache/http/HttpEntity;

    iput-object v0, p0, Lcom/unionpay/mobile/android/net/c;->d:[B

    iput-object v0, p0, Lcom/unionpay/mobile/android/net/c;->e:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/unionpay/mobile/android/net/c;->f:Lcom/unionpay/mobile/android/net/d;

    iput-object p1, p0, Lcom/unionpay/mobile/android/net/c;->f:Lcom/unionpay/mobile/android/net/d;

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    const/16 v1, 0x7530

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const v1, 0xea60

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    const-string v1, "uppay"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    new-instance v4, Lcom/unionpay/mobile/android/net/a;

    invoke-direct {v4}, Lcom/unionpay/mobile/android/net/a;-><init>()V

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/net/c;->a:Lorg/apache/http/client/HttpClient;

    iget-object v0, p0, Lcom/unionpay/mobile/android/net/c;->a:Lorg/apache/http/client/HttpClient;

    check-cast v0, Lorg/apache/http/impl/client/AbstractHttpClient;

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-direct {v1, v6, v6}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "uppay"

    const-string v1, "HttpConn.connect() +++"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unionpay/mobile/android/net/c;->f:Lcom/unionpay/mobile/android/net/d;

    if-nez v0, :cond_15

    const-string v0, "uppay"

    const-string v1, "params==null!!!"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    return v4

    :cond_15
    iget-object v0, p0, Lcom/unionpay/mobile/android/net/c;->f:Lcom/unionpay/mobile/android/net/d;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/net/d;->a()I

    move-result v0

    if-ne v0, v4, :cond_67

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    iget-object v0, p0, Lcom/unionpay/mobile/android/net/c;->f:Lcom/unionpay/mobile/android/net/d;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/net/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    :goto_28
    iget-object v0, p0, Lcom/unionpay/mobile/android/net/c;->f:Lcom/unionpay/mobile/android/net/d;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/net/d;->d()[B

    move-result-object v0

    if-eqz v0, :cond_41

    move-object v0, v1

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v5, p0, Lcom/unionpay/mobile/android/net/c;->f:Lcom/unionpay/mobile/android/net/d;

    invoke-virtual {v5}, Lcom/unionpay/mobile/android/net/d;->d()[B

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_41
    iget-object v0, p0, Lcom/unionpay/mobile/android/net/c;->f:Lcom/unionpay/mobile/android/net/d;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/net/d;->c()Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_73

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_51
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    :cond_67
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v0, p0, Lcom/unionpay/mobile/android/net/c;->f:Lcom/unionpay/mobile/android/net/d;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/net/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto :goto_28

    :cond_73
    :try_start_73
    iget-object v0, p0, Lcom/unionpay/mobile/android/net/c;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/net/c;->b:Lorg/apache/http/HttpResponse;

    iget-object v0, p0, Lcom/unionpay/mobile/android/net/c;->b:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_e6

    iget-object v0, p0, Lcom/unionpay/mobile/android/net/c;->b:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/net/c;->c:Lorg/apache/http/HttpEntity;

    iget-object v0, p0, Lcom/unionpay/mobile/android/net/c;->c:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_115

    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    const/16 v1, 0x800

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/unionpay/mobile/android/net/c;->c:Lorg/apache/http/HttpEntity;

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/unionpay/mobile/android/net/c;->e:Ljava/io/InputStream;

    :cond_a8
    :goto_a8
    iget-object v2, p0, Lcom/unionpay/mobile/android/net/c;->e:Ljava/io/InputStream;

    const/4 v5, 0x0

    array-length v6, v1

    invoke-virtual {v2, v1, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_de

    if-lez v2, :cond_a8

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v2}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V
    :try_end_b9
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_73 .. :try_end_b9} :catch_ba
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_b9} :catch_117
    .catch Ljava/lang/IllegalStateException; {:try_start_73 .. :try_end_b9} :catch_137
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_b9} :catch_157

    goto :goto_a8

    :catch_ba
    move-exception v0

    const-string v1, "uppay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "e0:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLHandshakeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    :goto_d4
    const-string v1, "uppay"

    const-string v2, "HttpConn.connect() ---"

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v0

    goto/16 :goto_14

    :cond_de
    :try_start_de
    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/net/c;->d:[B

    move v0, v3

    goto :goto_d4

    :cond_e6
    iget-object v0, p0, Lcom/unionpay/mobile/android/net/c;->b:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_f7

    const/16 v0, 0x8

    goto :goto_d4

    :cond_f7
    const-string v0, "uppay"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http status code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/net/c;->b:Lorg/apache/http/HttpResponse;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_115
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_de .. :try_end_115} :catch_ba
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_115} :catch_117
    .catch Ljava/lang/IllegalStateException; {:try_start_de .. :try_end_115} :catch_137
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_115} :catch_157

    :cond_115
    move v0, v4

    goto :goto_d4

    :catch_117
    move-exception v0

    const-string v1, "uppay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "e1: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_134

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_12f
    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    goto :goto_d4

    :cond_134
    const-string v0, "e == null"

    goto :goto_12f

    :catch_137
    move-exception v0

    const-string v1, "uppay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "e2: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_154

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_14f
    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    goto :goto_d4

    :cond_154
    const-string v0, "e == null"

    goto :goto_14f

    :catch_157
    move-exception v0

    const-string v1, "uppay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "e3: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_175

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_16f
    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    goto/16 :goto_d4

    :cond_175
    const-string v0, "e == null"

    goto :goto_16f
.end method

.method public final b()[B
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/net/c;->d:[B

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/unionpay/mobile/android/net/c;->d:[B

    if-eqz v0, :cond_3a

    :try_start_5
    const-string v0, "uppay"

    iget-object v2, p0, Lcom/unionpay/mobile/android/net/c;->d:[B

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/unionpay/mobile/android/net/c;->d:[B

    const-string v3, "utf-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_19} :catch_2e

    :try_start_19
    const-string v1, "uppay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "respon:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_19 .. :try_end_2d} :catch_38

    :goto_2d
    return-object v0

    :catch_2e
    move-exception v0

    move-object v0, v1

    :goto_30
    const-string v1, "uppay"

    const-string v2, "convert response to utf-8 error!!!!"

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    :catch_38
    move-exception v1

    goto :goto_30

    :cond_3a
    move-object v0, v1

    goto :goto_2d
.end method
