.class public final Lcom/unionpay/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private a:Ljavax/net/ssl/X509TrustManager;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/unionpay/a/b;->a:Ljavax/net/ssl/X509TrustManager;

    iput-object p1, p0, Lcom/unionpay/a/b;->b:Landroid/content/Context;

    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_22

    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "no trust manager found"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    iput-object v0, p0, Lcom/unionpay/a/b;->a:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method


# virtual methods
.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/unionpay/a/b;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/unionpay/a/b;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_8
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, ".*O=(GeoTrust Inc\\.|VeriSign\\\\, Inc\\.|Symantec Corporation).*"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unionpay/a/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/unionpay/utils/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_28
    move v3, v2

    :goto_29
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_9c

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_57

    move v0, v1

    :goto_48
    if-nez v0, :cond_5b

    new-instance v0, Ljava/security/cert/CertificateException;

    invoke-direct {v0}, Ljava/security/cert/CertificateException;-><init>()V

    throw v0
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_50} :catch_50

    :catch_50
    move-exception v0

    new-instance v0, Ljava/security/cert/CertificateException;

    invoke-direct {v0}, Ljava/security/cert/CertificateException;-><init>()V

    throw v0

    :cond_57
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_29

    :cond_5b
    const/4 v0, 0x0

    :try_start_5c
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, ".*CN=.*(\\.95516\\.com|\\.chinaunionpay\\.com|\\.unionpay\\.com|\\.unionpaysecure\\.com|\\.95516\\.net).*"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v2

    :goto_6e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_9a

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_95

    move v0, v1

    :goto_8d
    if-nez v0, :cond_99

    new-instance v0, Ljava/security/cert/CertificateException;

    invoke-direct {v0}, Ljava/security/cert/CertificateException;-><init>()V

    throw v0
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_95} :catch_50

    :cond_95
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6e

    :cond_99
    return-void

    :cond_9a
    move v0, v2

    goto :goto_8d

    :cond_9c
    move v0, v2

    goto :goto_48
.end method

.method public final getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/a/b;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
