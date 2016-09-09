.class final Lcom/unionpay/sdk/au$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unionpay/sdk/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field a:Ljava/security/cert/X509Certificate;


# direct methods
.method constructor <init>(Ljava/security/cert/X509Certificate;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unionpay/sdk/au$c;->a:Ljava/security/cert/X509Certificate;

    return-void
.end method


# virtual methods
.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 10

    const/4 v1, 0x0

    array-length v2, p1

    move v0, v1

    :goto_3
    if-ge v0, v2, :cond_2a

    aget-object v3, p1, v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Current cert in cert chain: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v4}, Lcom/unionpay/sdk/al;->a([Ljava/lang/String;)V

    iget-object v4, p0, Lcom/unionpay/sdk/au$c;->a:Ljava/security/cert/X509Certificate;

    invoke-virtual {v3, v4}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    return-void

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2a
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "No trusted cert found!"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
