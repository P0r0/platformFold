.class final Lcom/unionpay/sdk/au;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/sdk/au$c;,
        Lcom/unionpay/sdk/au$d;,
        Lcom/unionpay/sdk/au$a;,
        Lcom/unionpay/sdk/au$b;,
        Lcom/unionpay/sdk/au$e;
    }
.end annotation


# direct methods
.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/unionpay/sdk/au$e;
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-static {p0, p1}, Lcom/unionpay/sdk/au$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/unionpay/sdk/au$b;

    move-result-object v0

    iput-object p3, v0, Lcom/unionpay/sdk/au$e;->f:Ljava/lang/String;

    :cond_1d
    :goto_1d
    return-object v0

    :cond_1e
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-static {p0, p1}, Lcom/unionpay/sdk/au$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/unionpay/sdk/au$a;

    move-result-object v0

    goto :goto_1d
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 2

    invoke-static {p0}, Lcom/unionpay/sdk/au;->b(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 4

    const/4 v1, 0x0

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    move-object v0, v1

    :goto_e
    return-object v0

    :cond_f
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_18
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_24} :catch_2a
    .catchall {:try_start_18 .. :try_end_24} :catchall_33

    :try_start_24
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_e

    :catch_28
    move-exception v1

    goto :goto_e

    :catch_2a
    move-exception v0

    :try_start_2b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2e} :catch_30

    move-object v0, v1

    goto :goto_e

    :catch_30
    move-exception v0

    move-object v0, v1

    goto :goto_e

    :catchall_33
    move-exception v0

    :try_start_34
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_37} :catch_38

    :goto_37
    throw v0

    :catch_38
    move-exception v1

    goto :goto_37
.end method
