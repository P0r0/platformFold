.class public final Lcom/alipay/security/mobile/module/deviceinfo/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/security/mobile/module/deviceinfo/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/alipay/security/mobile/module/deviceinfo/a;

    invoke-direct {v0}, Lcom/alipay/security/mobile/module/deviceinfo/a;-><init>()V

    sput-object v0, Lcom/alipay/security/mobile/module/deviceinfo/a;->a:Lcom/alipay/security/mobile/module/deviceinfo/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lcom/alipay/security/mobile/module/deviceinfo/a;
    .registers 1

    sget-object v0, Lcom/alipay/security/mobile/module/deviceinfo/a;->a:Lcom/alipay/security/mobile/module/deviceinfo/a;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)[B
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2c

    move-result-object v0

    :goto_2b
    return-object v0

    :catch_2c
    move-exception v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)[B
    .registers 5

    :try_start_0
    invoke-static {p0, p1}, Lcom/alipay/security/mobile/module/deviceinfo/a;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1e

    move-result-object v0

    :goto_1d
    return-object v0

    :catch_1e
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1d
.end method
