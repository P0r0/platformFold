.class final Lcom/unionpay/sdk/ag;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/unionpay/sdk/ag;->a:[B

    return-void

    :array_a
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    :try_start_0
    sget-object v0, Lcom/unionpay/sdk/ad;->h:Ljava/lang/String;

    invoke-static {}, Lcom/unionpay/sdk/am;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_35

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :goto_14
    sget-object v1, Lcom/unionpay/sdk/ag;->a:[B

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "AES/CBC/PKCS7Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v1, 0x1

    invoke-virtual {v3, v1, v0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v3, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    :goto_34
    return-object v0

    :cond_35
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const/4 v0, 0x2

    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    if-eqz v2, :cond_5c

    sget-object v2, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    const-string v3, "unionpaypref_longtime"

    const-string v4, "unionpayaes_key"

    invoke-static {v2, v3, v4, v0}, Lcom/unionpay/sdk/an;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_63} :catch_64

    goto :goto_14

    :catch_64
    move-exception v0

    sget-boolean v0, Lcom/unionpay/sdk/r;->a:Z

    const/4 v0, 0x0

    goto :goto_34
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/unionpay/sdk/am;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0}, Ljava/security/GeneralSecurityException;-><init>()V

    throw v0
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_c

    :catch_c
    move-exception v0

    sget-boolean v0, Lcom/unionpay/sdk/r;->a:Z

    const/4 v0, 0x0

    :goto_10
    return-object v0

    :cond_11
    :try_start_11
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    sget-object v2, Lcom/unionpay/sdk/ag;->a:[B

    const-string v3, "AES/CBC/PKCS7Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v2, 0x2

    invoke-virtual {v3, v2, v1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v3, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_3e} :catch_c

    goto :goto_10
.end method
