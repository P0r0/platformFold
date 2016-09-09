.class public Lcom/baidu/sapi2/utils/b;
.super Ljava/lang/Object;
.source "RSA.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 9
    .param p0, "plain"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 21
    if-eqz p0, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 34
    :cond_9
    :goto_9
    return-object v5

    .line 25
    :cond_a
    :try_start_a
    const-string v6, "RSA/NONE/NoPadding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 26
    .local v3, "rsa":Ljavax/crypto/Cipher;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 27
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Ljavax/security/cert/X509Certificate;->getInstance(Ljava/io/InputStream;)Ljavax/security/cert/X509Certificate;

    move-result-object v4

    .line 28
    .local v4, "x509Certificate":Ljavax/security/cert/X509Certificate;
    invoke-virtual {v4}, Ljavax/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 29
    .local v2, "publicKey":Ljava/security/PublicKey;
    const/4 v6, 0x1

    invoke-virtual {v3, v6, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 30
    const-string v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_2e} :catch_30

    move-result-object v5

    goto :goto_9

    .line 31
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v2    # "publicKey":Ljava/security/PublicKey;
    .end local v3    # "rsa":Ljavax/crypto/Cipher;
    .end local v4    # "x509Certificate":Ljavax/security/cert/X509Certificate;
    :catch_30
    move-exception v1

    .line 32
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_9
.end method
