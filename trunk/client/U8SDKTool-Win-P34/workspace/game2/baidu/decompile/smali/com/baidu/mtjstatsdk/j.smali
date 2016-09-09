.class public final Lcom/baidu/mtjstatsdk/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/16 v3, 0x400

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 61
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_11

    .line 105
    :cond_10
    :goto_10
    return-object v0

    .line 68
    :cond_11
    new-array v6, v3, [B

    .line 73
    :try_start_13
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_6e
    .catchall {:try_start_13 .. :try_end_18} :catchall_5e

    move-result-object v3

    .line 74
    :try_start_19
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_72
    .catchall {:try_start_19 .. :try_end_1e} :catchall_5e

    .line 75
    :goto_1e
    const/4 v5, 0x0

    const/16 v7, 0x400

    :try_start_21
    invoke-virtual {v2, v6, v5, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_4d

    .line 76
    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v5}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2c} :catch_2d
    .catchall {:try_start_21 .. :try_end_2c} :catchall_6c

    goto :goto_1e

    .line 78
    :catch_2d
    move-exception v1

    .line 80
    :goto_2e
    :try_start_2e
    invoke-static {v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_6c

    .line 82
    if-eqz v2, :cond_75

    .line 84
    :try_start_33
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_58

    move v1, v4

    .line 92
    :cond_37
    :goto_37
    if-nez v1, :cond_10

    .line 97
    if-eqz v3, :cond_10

    .line 98
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 99
    if-eqz v1, :cond_10

    .line 100
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v4, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 101
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 82
    :cond_4d
    if-eqz v2, :cond_37

    .line 84
    :try_start_4f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_37

    .line 85
    :catch_53
    move-exception v2

    .line 87
    invoke-static {v2}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    goto :goto_37

    .line 85
    :catch_58
    move-exception v1

    .line 87
    invoke-static {v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    move v1, v4

    .line 88
    goto :goto_37

    .line 82
    :catchall_5e
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_61
    if-eqz v2, :cond_66

    .line 84
    :try_start_63
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    .line 88
    :cond_66
    :goto_66
    throw v0

    .line 85
    :catch_67
    move-exception v1

    .line 87
    invoke-static {v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    goto :goto_66

    .line 82
    :catchall_6c
    move-exception v0

    goto :goto_61

    .line 78
    :catch_6e
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto :goto_2e

    :catch_72
    move-exception v1

    move-object v2, v0

    goto :goto_2e

    :cond_75
    move v1, v4

    goto :goto_37
.end method

.method public static a([B)[B
    .registers 4

    .prologue
    .line 19
    sget-object v0, Lcom/baidu/mtjstatsdk/n;->d:Ljava/lang/String;

    .line 21
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 22
    const-string v0, "AES/ECB/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 23
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 24
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static b([B)Ljava/lang/String;
    .registers 3

    .prologue
    .line 38
    :try_start_0
    invoke-static {p0}, Lcom/baidu/mtjstatsdk/j;->a([B)[B

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/m;->a([BLjava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 43
    :goto_a
    return-object v0

    .line 39
    :catch_b
    move-exception v0

    .line 40
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    .line 43
    const-string v0, ""

    goto :goto_a
.end method

.method public static c([B)Ljava/lang/String;
    .registers 3

    .prologue
    .line 47
    invoke-static {p0}, Lcom/baidu/mtjstatsdk/j;->b([B)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v0, ""

    :goto_c
    return-object v0

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method
