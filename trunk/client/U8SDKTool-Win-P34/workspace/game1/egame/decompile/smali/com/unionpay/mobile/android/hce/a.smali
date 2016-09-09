.class public final Lcom/unionpay/mobile/android/hce/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v1, 0x0

    :try_start_1
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz p0, :cond_11

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    :cond_11
    move-object v0, v1

    :cond_12
    new-instance v2, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-direct {v2, v3}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    const-string v3, "desede"

    invoke-static {v3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    const-string v3, "DESEDE/ECB/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v3, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    if-eqz v2, :cond_6b

    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_38
    return-object v0

    :cond_39
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v4, v2, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    new-array v0, v4, [B

    const/4 v2, 0x0

    :goto_4a
    if-ge v2, v4, :cond_12

    mul-int/lit8 v6, v2, 0x2

    aget-char v7, v5, v6

    const-string v8, "0123456789ABCDEF"

    invoke-virtual {v8, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    int-to-byte v7, v7

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v6, v6, 0x1

    aget-char v6, v5, v6

    const-string v8, "0123456789ABCDEF"

    invoke-virtual {v8, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    int-to-byte v6, v6

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    :cond_6b
    const-string v0, ""
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6d} :catch_6e

    goto :goto_38

    :catch_6e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_38
.end method

.method private static a([B)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_d

    array-length v0, p0

    if-gtz v0, :cond_f

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0

    :cond_f
    array-length v3, p0

    move v0, v1

    :goto_11
    if-ge v0, v3, :cond_2b

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_25

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_25
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-direct {v3, v1}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    const-string v1, "desede"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    const-string v3, "desede/ECB/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v3, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_2d

    move-result-object v0

    :goto_28
    invoke-static {v0}, Lcom/unionpay/mobile/android/hce/a;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_2d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28
.end method
