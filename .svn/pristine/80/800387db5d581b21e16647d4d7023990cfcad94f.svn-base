.class public Lcom/baidu/apollon/restnet/b/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# static fields
.field private static a:[Ljavax/net/ssl/TrustManager;

.field private static final b:[Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    sput-object v0, Lcom/baidu/apollon/restnet/b/a/a;->b:[Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 5

    const/4 v1, 0x0

    new-instance v0, Lcom/baidu/apollon/restnet/b/a/b;

    invoke-direct {v0}, Lcom/baidu/apollon/restnet/b/a/b;-><init>()V

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    sget-object v0, Lcom/baidu/apollon/restnet/b/a/a;->a:[Ljavax/net/ssl/TrustManager;

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    new-instance v3, Lcom/baidu/apollon/restnet/b/a/a;

    invoke-direct {v3}, Lcom/baidu/apollon/restnet/b/a/a;-><init>()V

    aput-object v3, v0, v2

    sput-object v0, Lcom/baidu/apollon/restnet/b/a/a;->a:[Ljavax/net/ssl/TrustManager;

    :cond_1a
    :try_start_1a
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    :try_end_1f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1a .. :try_end_1f} :catch_2f
    .catch Ljava/security/KeyManagementException; {:try_start_1a .. :try_end_1f} :catch_37

    move-result-object v0

    const/4 v1, 0x0

    :try_start_21
    sget-object v2, Lcom/baidu/apollon/restnet/b/a/a;->a:[Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_27
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_21 .. :try_end_27} :catch_41
    .catch Ljava/security/KeyManagementException; {:try_start_21 .. :try_end_27} :catch_3f

    :goto_27
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void

    :catch_2f
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_33
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_27

    :catch_37
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_3b
    invoke-virtual {v1}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_27

    :catch_3f
    move-exception v1

    goto :goto_3b

    :catch_41
    move-exception v1

    goto :goto_33
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    sget-object v0, Lcom/baidu/apollon/restnet/b/a/a;->b:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method
