.class public final Lcom/alipay/android/phone/mrpc/core/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/alipay/android/phone/mrpc/core/ab;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:Lorg/apache/http/client/HttpRequestRetryHandler;


# instance fields
.field protected a:Lcom/alipay/android/phone/mrpc/core/s;

.field protected b:Landroid/content/Context;

.field protected c:Lcom/alipay/android/phone/mrpc/core/v;

.field d:Ljava/lang/String;

.field private f:Lorg/apache/http/client/methods/HttpUriRequest;

.field private g:Lorg/apache/http/protocol/HttpContext;

.field private h:Lorg/apache/http/client/CookieStore;

.field private i:Landroid/webkit/CookieManager;

.field private j:Lorg/apache/http/entity/AbstractHttpEntity;

.field private k:Lorg/apache/http/HttpHost;

.field private l:Ljava/net/URL;

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/h;

    invoke-direct {v0}, Lcom/alipay/android/phone/mrpc/core/h;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/mrpc/core/x;->e:Lorg/apache/http/client/HttpRequestRetryHandler;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/phone/mrpc/core/s;Lcom/alipay/android/phone/mrpc/core/v;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->g:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->h:Lorg/apache/http/client/CookieStore;

    iput v1, p0, Lcom/alipay/android/phone/mrpc/core/x;->m:I

    iput-boolean v1, p0, Lcom/alipay/android/phone/mrpc/core/x;->n:Z

    iput-boolean v1, p0, Lcom/alipay/android/phone/mrpc/core/x;->o:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->p:Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/x;->a:Lcom/alipay/android/phone/mrpc/core/s;

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->a:Lcom/alipay/android/phone/mrpc/core/s;

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/s;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    return-void
.end method

.method private static a([Ljava/lang/String;)J
    .registers 4

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_21

    aget-object v1, p0, v0

    const-string v2, "max-age"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    add-int/lit8 v1, v0, 0x1

    aget-object v1, p0, v1

    if-eqz v1, :cond_1e

    add-int/lit8 v1, v0, 0x1

    :try_start_16
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_1d

    move-result-wide v0

    :goto_1c
    return-wide v0

    :catch_1d
    move-exception v1

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    const-wide/16 v0, 0x0

    goto :goto_1c
.end method

.method private a(Lorg/apache/http/HttpResponse;ILjava/lang/String;)Lcom/alipay/android/phone/mrpc/core/ab;
    .registers 13

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5f00\u59cbhandle\uff0chandleResponse-1,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_cc

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_cc

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "200\uff0c\u5f00\u59cb\u5904\u7406\uff0chandleResponse-2,threadid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :try_start_37
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_b5

    :try_start_3c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {p0, v1, v3}, Lcom/alipay/android/phone/mrpc/core/x;->a(Lorg/apache/http/HttpEntity;Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alipay/android/phone/mrpc/core/x;->o:Z

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/x;->a:Lcom/alipay/android/phone/mrpc/core/s;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-virtual {v2, v4, v5}, Lcom/alipay/android/phone/mrpc/core/s;->c(J)V

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/x;->a:Lcom/alipay/android/phone/mrpc/core/s;

    array-length v4, v1

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Lcom/alipay/android/phone/mrpc/core/s;->a(J)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "res:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/alipay/android/phone/mrpc/core/w;

    invoke-static {p1}, Lcom/alipay/android/phone/mrpc/core/x;->a(Lorg/apache/http/HttpResponse;)Lcom/alipay/android/phone/mrpc/core/b;

    move-result-object v4

    invoke-direct {v2, v4, p2, p3, v1}, Lcom/alipay/android/phone/mrpc/core/w;-><init>(Lcom/alipay/android/phone/mrpc/core/b;ILjava/lang/String;[B)V

    invoke-static {p1}, Lcom/alipay/android/phone/mrpc/core/x;->b(Lorg/apache/http/HttpResponse;)J

    move-result-wide v4

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_d9

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/x;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string v0, "charset"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "Content-Type"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_96
    invoke-virtual {v2, v1}, Lcom/alipay/android/phone/mrpc/core/w;->a(Ljava/lang/String;)V

    iput-object v0, v2, Lcom/alipay/android/phone/mrpc/core/w;->c:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/alipay/android/phone/mrpc/core/w;->a:J

    iput-wide v4, v2, Lcom/alipay/android/phone/mrpc/core/w;->b:J
    :try_end_a3
    .catchall {:try_start_3c .. :try_end_a3} :catchall_d6

    :try_start_a3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_a8

    move-object v0, v2

    :cond_a7
    :goto_a7
    return-object v0

    :catch_a8
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ArrayOutputStream close error!"

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_b5
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_b9
    if-eqz v1, :cond_be

    :try_start_bb
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_bf

    :cond_be
    throw v0

    :catch_bf
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ArrayOutputStream close error!"

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_cc
    if-nez v1, :cond_a7

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    goto :goto_a7

    :catchall_d6
    move-exception v0

    move-object v1, v3

    goto :goto_b9

    :cond_d9
    move-object v1, v0

    goto :goto_96
.end method

.method private static a(Lorg/apache/http/HttpResponse;)Lcom/alipay/android/phone/mrpc/core/b;
    .registers 7

    new-instance v1, Lcom/alipay/android/phone/mrpc/core/b;

    invoke-direct {v1}, Lcom/alipay/android/phone/mrpc/core/b;-><init>()V

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v3, :cond_1d

    aget-object v4, v2, v0

    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/alipay/android/phone/mrpc/core/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1d
    return-object v1
.end method

.method private static a(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v1, v2

    :goto_f
    if-ge v1, v5, :cond_37

    aget-object v6, v4, v1

    const/16 v0, 0x3d

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v7, -0x1

    if-ne v0, v7, :cond_30

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v7, "Content-Type"

    aput-object v7, v0, v2

    aput-object v6, v0, v8

    :goto_25
    aget-object v6, v0, v2

    aget-object v0, v0, v8

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :cond_30
    const-string v0, "="

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    :cond_37
    return-object v3
.end method

.method private a(Lorg/apache/http/HttpEntity;Ljava/io/OutputStream;)V
    .registers 9

    invoke-static {p1}, Lcom/alipay/android/phone/mrpc/core/i;->a(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    const/16 v0, 0x800

    :try_start_a
    new-array v0, v0, [B

    :cond_c
    :goto_c
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_33

    iget-object v5, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    iget-boolean v5, v5, Lcom/alipay/android/phone/mrpc/core/aa;->f:Z

    if-nez v5, :cond_33

    const/4 v5, 0x0

    invoke-virtual {p2, v0, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    iget-object v4, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    invoke-virtual {v4}, Lcom/alipay/android/phone/mrpc/core/v;->a()Lcom/alipay/android/phone/mrpc/core/g;

    move-result-object v4

    if-eqz v4, :cond_c

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_c

    iget-object v4, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    invoke-virtual {v4}, Lcom/alipay/android/phone/mrpc/core/v;->a()Lcom/alipay/android/phone/mrpc/core/g;

    iget-object v4, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    goto :goto_c

    :cond_33
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_36} :catch_3a
    .catchall {:try_start_a .. :try_end_36} :catchall_57

    invoke-static {v1}, Lcom/alipay/android/phone/mrpc/core/y;->a(Ljava/io/Closeable;)V

    return-void

    :catch_3a
    move-exception v0

    :try_start_3b
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HttpWorker Request Error!"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_57
    .catchall {:try_start_3b .. :try_end_57} :catchall_57

    :catchall_57
    move-exception v0

    invoke-static {v1}, Lcom/alipay/android/phone/mrpc/core/y;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method private static b(Lorg/apache/http/HttpResponse;)J
    .registers 6

    const-wide/16 v0, 0x0

    const-string v2, "Cache-Control"

    invoke-interface {p0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1e

    :try_start_18
    invoke-static {v2}, Lcom/alipay/android/phone/mrpc/core/x;->a([Ljava/lang/String;)J
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_1b} :catch_1d

    move-result-wide v0

    :cond_1c
    :goto_1c
    return-wide v0

    :catch_1d
    move-exception v2

    :cond_1e
    const-string v2, "Expires"

    invoke-interface {p0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_1c

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/i;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_1c
.end method

.method private b()Ljava/net/URI;
    .registers 3

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/v;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/x;->d:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->d:Ljava/lang/String;

    :cond_a
    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "url should not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private c()Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 4

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->f:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->f:Lorg/apache/http/client/methods/HttpUriRequest;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->j:Lorg/apache/http/entity/AbstractHttpEntity;

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/v;->b:[B

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    const-string v2, "gzip"

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/mrpc/core/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_30

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/i;->a([B)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->j:Lorg/apache/http/entity/AbstractHttpEntity;

    :goto_27
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->j:Lorg/apache/http/entity/AbstractHttpEntity;

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    iget-object v1, v1, Lcom/alipay/android/phone/mrpc/core/v;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    :cond_30
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->j:Lorg/apache/http/entity/AbstractHttpEntity;

    if-eqz v0, :cond_4d

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/x;->b()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    iput-object v1, p0, Lcom/alipay/android/phone/mrpc/core/x;->f:Lorg/apache/http/client/methods/HttpUriRequest;

    :goto_42
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->f:Lorg/apache/http/client/methods/HttpUriRequest;

    goto :goto_6

    :cond_45
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    iput-object v1, p0, Lcom/alipay/android/phone/mrpc/core/x;->j:Lorg/apache/http/entity/AbstractHttpEntity;

    goto :goto_27

    :cond_4d
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/x;->b()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->f:Lorg/apache/http/client/methods/HttpUriRequest;

    goto :goto_42
.end method

.method private d()Lcom/alipay/android/phone/mrpc/core/ab;
    .registers 16

    const/4 v14, 0x6

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_5
    :try_start_5
    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/x;->b:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v3

    if-nez v3, :cond_47

    move v2, v5

    :goto_16
    if-nez v2, :cond_60

    new-instance v2, Lcom/alipay/android/phone/mrpc/core/a;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "The network is not available"

    invoke-direct {v2, v3, v6}, Lcom/alipay/android/phone/mrpc/core/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v2
    :try_end_25
    .catch Lcom/alipay/android/phone/mrpc/core/a; {:try_start_5 .. :try_end_25} :catch_25
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_25} :catch_93
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_5 .. :try_end_25} :catch_1f8
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_5 .. :try_end_25} :catch_27e
    .catch Ljavax/net/ssl/SSLException; {:try_start_5 .. :try_end_25} :catch_305
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_5 .. :try_end_25} :catch_336
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_25} :catch_367
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_25} :catch_398
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_5 .. :try_end_25} :catch_3ca
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_5 .. :try_end_25} :catch_3fc
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_25} :catch_427
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_25} :catch_45a
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_25} :catch_48b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_25} :catch_4b1

    :catch_25
    move-exception v2

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/x;->e()V

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/v;->a()Lcom/alipay/android/phone/mrpc/core/g;

    move-result-object v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/v;->a()Lcom/alipay/android/phone/mrpc/core/g;

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    invoke-virtual {v2}, Lcom/alipay/android/phone/mrpc/core/a;->a()I

    invoke-virtual {v2}, Lcom/alipay/android/phone/mrpc/core/a;->b()Ljava/lang/String;

    :cond_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    throw v2

    :cond_47
    :try_start_47
    array-length v6, v3

    move v2, v5

    :goto_49
    if-ge v2, v6, :cond_4e0

    aget-object v7, v3, v2

    if-eqz v7, :cond_5d

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v8

    if-eqz v8, :cond_5d

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v7

    if-eqz v7, :cond_5d

    move v2, v4

    goto :goto_16

    :cond_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    :cond_60
    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    invoke-virtual {v2}, Lcom/alipay/android/phone/mrpc/core/v;->a()Lcom/alipay/android/phone/mrpc/core/g;

    move-result-object v2

    if-eqz v2, :cond_6f

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    invoke-virtual {v2}, Lcom/alipay/android/phone/mrpc/core/v;->a()Lcom/alipay/android/phone/mrpc/core/g;

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    :cond_6f
    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    iget-object v2, v2, Lcom/alipay/android/phone/mrpc/core/v;->d:Ljava/util/ArrayList;

    if-eqz v2, :cond_a0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a0

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/Header;

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/x;->c()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v6

    invoke-interface {v6, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_92
    .catch Lcom/alipay/android/phone/mrpc/core/a; {:try_start_47 .. :try_end_92} :catch_25
    .catch Ljava/net/URISyntaxException; {:try_start_47 .. :try_end_92} :catch_93
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_47 .. :try_end_92} :catch_1f8
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_47 .. :try_end_92} :catch_27e
    .catch Ljavax/net/ssl/SSLException; {:try_start_47 .. :try_end_92} :catch_305
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_47 .. :try_end_92} :catch_336
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_47 .. :try_end_92} :catch_367
    .catch Ljava/net/SocketTimeoutException; {:try_start_47 .. :try_end_92} :catch_398
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_47 .. :try_end_92} :catch_3ca
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_47 .. :try_end_92} :catch_3fc
    .catch Ljava/net/UnknownHostException; {:try_start_47 .. :try_end_92} :catch_427
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_92} :catch_45a
    .catch Ljava/lang/NullPointerException; {:try_start_47 .. :try_end_92} :catch_48b
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_92} :catch_4b1

    goto :goto_7f

    :catch_93
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Url parser error!"

    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_a0
    :try_start_a0
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/x;->c()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/phone/mrpc/core/i;->a(Lorg/apache/http/HttpRequest;)V

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/x;->c()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/phone/mrpc/core/i;->b(Lorg/apache/http/HttpRequest;)V

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/x;->c()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    const-string v3, "cookie"

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/x;->i()Landroid/webkit/CookieManager;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    iget-object v7, v7, Lcom/alipay/android/phone/mrpc/core/v;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/x;->g:Lorg/apache/http/protocol/HttpContext;

    const-string v3, "http.cookie-store"

    iget-object v6, p0, Lcom/alipay/android/phone/mrpc/core/x;->h:Lorg/apache/http/client/CookieStore;

    invoke-interface {v2, v3, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/x;->a:Lcom/alipay/android/phone/mrpc/core/s;

    invoke-virtual {v2}, Lcom/alipay/android/phone/mrpc/core/s;->a()Lcom/alipay/android/phone/mrpc/core/i;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/phone/mrpc/core/x;->e:Lorg/apache/http/client/HttpRequestRetryHandler;

    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/mrpc/core/i;->a(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "By Http/Https to request. operationType="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/x;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->f:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/x;->a:Lcom/alipay/android/phone/mrpc/core/s;

    invoke-virtual {v2}, Lcom/alipay/android/phone/mrpc/core/s;->a()Lcom/alipay/android/phone/mrpc/core/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/phone/mrpc/core/i;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    const-string v9, "http.route.default-proxy"

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/x;->b:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v10, "connectivity"

    invoke-virtual {v2, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_4dd

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_4dd

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v11

    if-eqz v10, :cond_4dd

    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-direct {v2, v10, v11}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    :goto_12f
    if-eqz v2, :cond_146

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    const-string v10, "127.0.0.1"

    invoke-static {v3, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_146

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    const/16 v10, 0x1f97

    if-ne v3, v10, :cond_146

    const/4 v2, 0x0

    :cond_146
    invoke-interface {v8, v9, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/x;->k:Lorg/apache/http/HttpHost;

    if-eqz v2, :cond_229

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/x;->k:Lorg/apache/http/HttpHost;

    :goto_14f
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/x;->g()I

    move-result v3

    const/16 v8, 0x50

    if-ne v3, v8, :cond_164

    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/x;->h()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V

    :cond_164
    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->a:Lcom/alipay/android/phone/mrpc/core/s;

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/s;->a()Lcom/alipay/android/phone/mrpc/core/i;

    move-result-object v3

    iget-object v8, p0, Lcom/alipay/android/phone/mrpc/core/x;->f:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v9, p0, Lcom/alipay/android/phone/mrpc/core/x;->g:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v3, v2, v8, v9}, Lcom/alipay/android/phone/mrpc/core/i;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/x;->a:Lcom/alipay/android/phone/mrpc/core/s;

    sub-long v6, v8, v6

    invoke-virtual {v2, v6, v7}, Lcom/alipay/android/phone/mrpc/core/s;->b(J)V

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/x;->h:Lorg/apache/http/client/CookieStore;

    invoke-interface {v2}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v2

    iget-object v6, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    iget-boolean v6, v6, Lcom/alipay/android/phone/mrpc/core/v;->e:Z

    if-eqz v6, :cond_190

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/x;->i()Landroid/webkit/CookieManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/CookieManager;->removeAllCookie()V

    :cond_190
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_247

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_19a
    :goto_19a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_247

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/cookie/Cookie;

    invoke-interface {v2}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_19a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; domain="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Lorg/apache/http/cookie/Cookie;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_244

    const-string v2, "; Secure"

    :goto_1dd
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/x;->i()Landroid/webkit/CookieManager;

    move-result-object v7

    iget-object v8, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    iget-object v8, v8, Lcom/alipay/android/phone/mrpc/core/v;->a:Ljava/lang/String;

    invoke-virtual {v7, v8, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_1f7
    .catch Lcom/alipay/android/phone/mrpc/core/a; {:try_start_a0 .. :try_end_1f7} :catch_25
    .catch Ljava/net/URISyntaxException; {:try_start_a0 .. :try_end_1f7} :catch_93
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_a0 .. :try_end_1f7} :catch_1f8
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_a0 .. :try_end_1f7} :catch_27e
    .catch Ljavax/net/ssl/SSLException; {:try_start_a0 .. :try_end_1f7} :catch_305
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_a0 .. :try_end_1f7} :catch_336
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_a0 .. :try_end_1f7} :catch_367
    .catch Ljava/net/SocketTimeoutException; {:try_start_a0 .. :try_end_1f7} :catch_398
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_a0 .. :try_end_1f7} :catch_3ca
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_a0 .. :try_end_1f7} :catch_3fc
    .catch Ljava/net/UnknownHostException; {:try_start_a0 .. :try_end_1f7} :catch_427
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_1f7} :catch_45a
    .catch Ljava/lang/NullPointerException; {:try_start_a0 .. :try_end_1f7} :catch_48b
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_1f7} :catch_4b1

    goto :goto_19a

    :catch_1f8
    move-exception v2

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/x;->e()V

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/v;->a()Lcom/alipay/android/phone/mrpc/core/g;

    move-result-object v3

    if-eqz v3, :cond_213

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/v;->a()Lcom/alipay/android/phone/mrpc/core/g;

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/alipay/android/phone/mrpc/core/a;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/alipay/android/phone/mrpc/core/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v3

    :cond_229
    :try_start_229
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/x;->h()Ljava/net/URL;

    move-result-object v2

    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/x;->g()I

    move-result v9

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v8, v9, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->k:Lorg/apache/http/HttpHost;

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/x;->k:Lorg/apache/http/HttpHost;

    goto/16 :goto_14f

    :cond_244
    const-string v2, ""

    goto :goto_1dd

    :cond_247
    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0xc8

    if-eq v6, v2, :cond_2b1

    const/16 v2, 0x130

    if-ne v6, v2, :cond_2af

    move v2, v4

    :goto_262
    if-nez v2, :cond_2b1

    new-instance v2, Lcom/alipay/android/phone/mrpc/core/a;

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Lcom/alipay/android/phone/mrpc/core/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v2
    :try_end_27e
    .catch Lcom/alipay/android/phone/mrpc/core/a; {:try_start_229 .. :try_end_27e} :catch_25
    .catch Ljava/net/URISyntaxException; {:try_start_229 .. :try_end_27e} :catch_93
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_229 .. :try_end_27e} :catch_1f8
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_229 .. :try_end_27e} :catch_27e
    .catch Ljavax/net/ssl/SSLException; {:try_start_229 .. :try_end_27e} :catch_305
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_229 .. :try_end_27e} :catch_336
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_229 .. :try_end_27e} :catch_367
    .catch Ljava/net/SocketTimeoutException; {:try_start_229 .. :try_end_27e} :catch_398
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_229 .. :try_end_27e} :catch_3ca
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_229 .. :try_end_27e} :catch_3fc
    .catch Ljava/net/UnknownHostException; {:try_start_229 .. :try_end_27e} :catch_427
    .catch Ljava/io/IOException; {:try_start_229 .. :try_end_27e} :catch_45a
    .catch Ljava/lang/NullPointerException; {:try_start_229 .. :try_end_27e} :catch_48b
    .catch Ljava/lang/Exception; {:try_start_229 .. :try_end_27e} :catch_4b1

    :catch_27e
    move-exception v2

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/x;->e()V

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/v;->a()Lcom/alipay/android/phone/mrpc/core/g;

    move-result-object v3

    if-eqz v3, :cond_299

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/v;->a()Lcom/alipay/android/phone/mrpc/core/g;

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/alipay/android/phone/mrpc/core/a;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/alipay/android/phone/mrpc/core/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v3

    :cond_2af
    move v2, v5

    goto :goto_262

    :cond_2b1
    :try_start_2b1
    invoke-direct {p0, v3, v6, v7}, Lcom/alipay/android/phone/mrpc/core/x;->a(Lorg/apache/http/HttpResponse;ILjava/lang/String;)Lcom/alipay/android/phone/mrpc/core/ab;

    move-result-object v3

    const-wide/16 v6, -0x1

    if-eqz v3, :cond_2c5

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/ab;->a()[B

    move-result-object v2

    if-eqz v2, :cond_2c5

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/ab;->a()[B

    move-result-object v2

    array-length v2, v2

    int-to-long v6, v2

    :cond_2c5
    const-wide/16 v8, -0x1

    cmp-long v2, v6, v8

    if-nez v2, :cond_2de

    instance-of v2, v3, Lcom/alipay/android/phone/mrpc/core/w;

    if-eqz v2, :cond_2de

    move-object v0, v3

    check-cast v0, Lcom/alipay/android/phone/mrpc/core/w;

    move-object v2, v0
    :try_end_2d3
    .catch Lcom/alipay/android/phone/mrpc/core/a; {:try_start_2b1 .. :try_end_2d3} :catch_25
    .catch Ljava/net/URISyntaxException; {:try_start_2b1 .. :try_end_2d3} :catch_93
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2b1 .. :try_end_2d3} :catch_1f8
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_2b1 .. :try_end_2d3} :catch_27e
    .catch Ljavax/net/ssl/SSLException; {:try_start_2b1 .. :try_end_2d3} :catch_305
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_2b1 .. :try_end_2d3} :catch_336
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2b1 .. :try_end_2d3} :catch_367
    .catch Ljava/net/SocketTimeoutException; {:try_start_2b1 .. :try_end_2d3} :catch_398
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_2b1 .. :try_end_2d3} :catch_3ca
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_2b1 .. :try_end_2d3} :catch_3fc
    .catch Ljava/net/UnknownHostException; {:try_start_2b1 .. :try_end_2d3} :catch_427
    .catch Ljava/io/IOException; {:try_start_2b1 .. :try_end_2d3} :catch_45a
    .catch Ljava/lang/NullPointerException; {:try_start_2b1 .. :try_end_2d3} :catch_48b
    .catch Ljava/lang/Exception; {:try_start_2b1 .. :try_end_2d3} :catch_4b1

    :try_start_2d3
    iget-object v2, v2, Lcom/alipay/android/phone/mrpc/core/w;->d:Lcom/alipay/android/phone/mrpc/core/b;

    const-string v6, "Content-Length"

    invoke-virtual {v2, v6}, Lcom/alipay/android/phone/mrpc/core/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2de
    .catch Ljava/lang/Exception; {:try_start_2d3 .. :try_end_2de} :catch_4da
    .catch Lcom/alipay/android/phone/mrpc/core/a; {:try_start_2d3 .. :try_end_2de} :catch_25
    .catch Ljava/net/URISyntaxException; {:try_start_2d3 .. :try_end_2de} :catch_93
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2d3 .. :try_end_2de} :catch_1f8
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_2d3 .. :try_end_2de} :catch_27e
    .catch Ljavax/net/ssl/SSLException; {:try_start_2d3 .. :try_end_2de} :catch_305
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_2d3 .. :try_end_2de} :catch_336
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2d3 .. :try_end_2de} :catch_367
    .catch Ljava/net/SocketTimeoutException; {:try_start_2d3 .. :try_end_2de} :catch_398
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_2d3 .. :try_end_2de} :catch_3ca
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_2d3 .. :try_end_2de} :catch_3fc
    .catch Ljava/net/UnknownHostException; {:try_start_2d3 .. :try_end_2de} :catch_427
    .catch Ljava/io/IOException; {:try_start_2d3 .. :try_end_2de} :catch_45a
    .catch Ljava/lang/NullPointerException; {:try_start_2d3 .. :try_end_2de} :catch_48b

    :cond_2de
    :goto_2de
    :try_start_2de
    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    iget-object v2, v2, Lcom/alipay/android/phone/mrpc/core/v;->a:Ljava/lang/String;

    if-eqz v2, :cond_304

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/x;->f()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_304

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "#"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/x;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_304
    .catch Lcom/alipay/android/phone/mrpc/core/a; {:try_start_2de .. :try_end_304} :catch_25
    .catch Ljava/net/URISyntaxException; {:try_start_2de .. :try_end_304} :catch_93
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2de .. :try_end_304} :catch_1f8
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_2de .. :try_end_304} :catch_27e
    .catch Ljavax/net/ssl/SSLException; {:try_start_2de .. :try_end_304} :catch_305
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_2de .. :try_end_304} :catch_336
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2de .. :try_end_304} :catch_367
    .catch Ljava/net/SocketTimeoutException; {:try_start_2de .. :try_end_304} :catch_398
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_2de .. :try_end_304} :catch_3ca
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_2de .. :try_end_304} :catch_3fc
    .catch Ljava/net/UnknownHostException; {:try_start_2de .. :try_end_304} :catch_427
    .catch Ljava/io/IOException; {:try_start_2de .. :try_end_304} :catch_45a
    .catch Ljava/lang/NullPointerException; {:try_start_2de .. :try_end_304} :catch_48b
    .catch Ljava/lang/Exception; {:try_start_2de .. :try_end_304} :catch_4b1

    :cond_304
    return-object v3

    :catch_305
    move-exception v2

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/x;->e()V

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/v;->a()Lcom/alipay/android/phone/mrpc/core/g;

    move-result-object v3

    if-eqz v3, :cond_320

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/v;->a()Lcom/alipay/android/phone/mrpc/core/g;

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/alipay/android/phone/mrpc/core/a;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/alipay/android/phone/mrpc/core/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v3

    :catch_336
    move-exception v2

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/x;->e()V

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/v;->a()Lcom/alipay/android/phone/mrpc/core/g;

    move-result-object v3

    if-eqz v3, :cond_351

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/v;->a()Lcom/alipay/android/phone/mrpc/core/g;

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_351
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/alipay/android/phone/mrpc/core/a;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/alipay/android/phone/mrpc/core/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v3

    :catch_367
    move-exception v2

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/x;->e()V

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/v;->a()Lcom/alipay/android/phone/mrpc/core/g;

    move-result-object v3

    if-eqz v3, :cond_382

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/v;->a()Lcom/alipay/android/phone/mrpc/core/g;

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_382
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/alipay/android/phone/mrpc/core/a;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/alipay/android/phone/mrpc/core/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v3

    :catch_398
    move-exception v2

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/x;->e()V

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/v;->a()Lcom/alipay/android/phone/mrpc/core/g;

    move-result-object v3

    if-eqz v3, :cond_3b3

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/v;->a()Lcom/alipay/android/phone/mrpc/core/g;

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3b3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/alipay/android/phone/mrpc/core/a;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/alipay/android/phone/mrpc/core/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v3

    :catch_3ca
    move-exception v2

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/x;->e()V

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/v;->a()Lcom/alipay/android/phone/mrpc/core/g;

    move-result-object v3

    if-eqz v3, :cond_3e5

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/v;->a()Lcom/alipay/android/phone/mrpc/core/g;

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3e5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/alipay/android/phone/mrpc/core/a;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/alipay/android/phone/mrpc/core/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v3

    :catch_3fc
    move-exception v2

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/x;->e()V

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/v;->a()Lcom/alipay/android/phone/mrpc/core/g;

    move-result-object v3

    if-eqz v3, :cond_417

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/v;->a()Lcom/alipay/android/phone/mrpc/core/g;

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_417
    new-instance v3, Lcom/alipay/android/phone/mrpc/core/a;

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/alipay/android/phone/mrpc/core/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v3

    :catch_427
    move-exception v2

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/x;->e()V

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/v;->a()Lcom/alipay/android/phone/mrpc/core/g;

    move-result-object v3

    if-eqz v3, :cond_442

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/v;->a()Lcom/alipay/android/phone/mrpc/core/g;

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_442
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/alipay/android/phone/mrpc/core/a;

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/alipay/android/phone/mrpc/core/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v3

    :catch_45a
    move-exception v2

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/x;->e()V

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/v;->a()Lcom/alipay/android/phone/mrpc/core/g;

    move-result-object v3

    if-eqz v3, :cond_475

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/v;->a()Lcom/alipay/android/phone/mrpc/core/g;

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_475
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/alipay/android/phone/mrpc/core/a;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/alipay/android/phone/mrpc/core/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v3

    :catch_48b
    move-exception v2

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/x;->e()V

    iget v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->m:I

    if-gtz v3, :cond_49b

    iget v2, p0, Lcom/alipay/android/phone/mrpc/core/x;->m:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alipay/android/phone/mrpc/core/x;->m:I

    goto/16 :goto_5

    :cond_49b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/alipay/android/phone/mrpc/core/a;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/alipay/android/phone/mrpc/core/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v3

    :catch_4b1
    move-exception v2

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/x;->e()V

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/v;->a()Lcom/alipay/android/phone/mrpc/core/g;

    move-result-object v3

    if-eqz v3, :cond_4cc

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/v;->a()Lcom/alipay/android/phone/mrpc/core/g;

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4cc
    new-instance v3, Lcom/alipay/android/phone/mrpc/core/a;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/alipay/android/phone/mrpc/core/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v3

    :catch_4da
    move-exception v2

    goto/16 :goto_2de

    :cond_4dd
    move-object v2, v3

    goto/16 :goto_12f

    :cond_4e0
    move v2, v5

    goto/16 :goto_16
.end method

.method private e()V
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->f:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->f:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    :cond_9
    return-void
.end method

.method private f()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->q:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    const-string v1, "operationType"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mrpc/core/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->q:Ljava/lang/String;

    goto :goto_a
.end method

.method private g()I
    .registers 4

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/x;->h()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    invoke-virtual {v0}, Ljava/net/URL;->getDefaultPort()I

    move-result v0

    :goto_f
    return v0

    :cond_10
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    goto :goto_f
.end method

.method private h()Ljava/net/URL;
    .registers 3

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->l:Ljava/net/URL;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->l:Ljava/net/URL;

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    iget-object v1, v1, Lcom/alipay/android/phone/mrpc/core/v;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->l:Ljava/net/URL;

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->l:Ljava/net/URL;

    goto :goto_6
.end method

.method private i()Landroid/webkit/CookieManager;
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->i:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->i:Landroid/webkit/CookieManager;

    :goto_6
    return-object v0

    :cond_7
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->i:Landroid/webkit/CookieManager;

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->i:Landroid/webkit/CookieManager;

    goto :goto_6
.end method


# virtual methods
.method public final a()Lcom/alipay/android/phone/mrpc/core/v;
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    return-object v0
.end method

.method public final synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/x;->d()Lcom/alipay/android/phone/mrpc/core/ab;

    move-result-object v0

    return-object v0
.end method
