.class public Lcom/bestpay/encrypt/RSA;
.super Ljava/lang/Object;
.source "RSA.java"


# static fields
.field public static final KEY_ALGORITHM:Ljava/lang/String; = "RSA"

.field public static final KEY_ALGORITHM_RSA_NONE:Ljava/lang/String; = "RSA/None/PKCS1Padding"

.field private static final KEY_SIZE:I = 0x400

.field private static final MAX_DECRYPT_BLOCK:I = 0x80

.field private static final MAX_ENCRYPT_BLOCK:I = 0x75

.field private static final PRIVATE_KEY:Ljava/lang/String; = "RSAPrivateKey"

.field private static final PUBLIC_KEY:Ljava/lang/String; = "RSAPublicKey"

.field public static final PUB_KEY:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCx2zk90WzGIzGjl7opxIFdoinxyp+pjvN1wC0OTrGk6o/c0RyrmQstu690IJPXu/6urLmB7/T2Iy/UUvSkqwzL7oX6D7llTjyR4MQjwvPVy7JZR2WYu1dvPgQn++/DVBuFDtfYW6pRlIi27iPxXyQ3ozAfHo5biR5nNelhu0lnVQIDAQAB"

.field public static final SIGN_ALGORITHMS:Ljava/lang/String; = "SHAWithRSA"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "private_key"    # Ljava/lang/String;
    .param p2, "input_charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 203
    invoke-static {p1}, Lcom/bestpay/encrypt/RSA;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v6

    .line 205
    .local v6, "prikey":Ljava/security/PrivateKey;
    const-string v8, "RSA"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 206
    .local v3, "cipher":Ljavax/crypto/Cipher;
    const/4 v8, 0x2

    invoke-virtual {v3, v8, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 208
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-static {p0}, Lcom/bestpay/encrypt/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 209
    .local v5, "ins":Ljava/io/InputStream;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 211
    .local v7, "writer":Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0x80

    new-array v1, v8, [B

    .line 214
    .local v1, "buf":[B
    :goto_20
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "bufl":I
    const/4 v8, -0x1

    if-ne v2, v8, :cond_31

    .line 228
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v8, v9, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v8

    .line 215
    :cond_31
    const/4 v0, 0x0

    .line 217
    .local v0, "block":[B
    array-length v8, v1

    if-ne v8, v2, :cond_3e

    .line 218
    move-object v0, v1

    .line 225
    :cond_36
    invoke-virtual {v3, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_20

    .line 220
    :cond_3e
    new-array v0, v2, [B

    .line 221
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_41
    if-ge v4, v2, :cond_36

    .line 222
    aget-byte v8, v1, v4

    aput-byte v8, v0, v4

    .line 221
    add-int/lit8 v4, v4, 0x1

    goto :goto_41
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "yzf_public_key"    # Ljava/lang/String;
    .param p2, "input_charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 153
    const/4 v8, 0x0

    .line 154
    .local v8, "str":Ljava/lang/String;
    const/4 v9, 0x0

    .line 156
    .local v9, "writer":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    invoke-static {p1}, Lcom/bestpay/encrypt/RSA;->getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v7

    .line 158
    .local v7, "pubKey":Ljava/security/PublicKey;
    const-string v11, "RSA/None/PKCS1Padding"

    invoke-static {v11}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 159
    .local v3, "cipher":Ljavax/crypto/Cipher;
    const/4 v11, 0x1

    invoke-virtual {v3, v11, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 162
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 163
    .local v6, "ins":Ljava/io/InputStream;
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_69

    .line 165
    .end local v9    # "writer":Ljava/io/ByteArrayOutputStream;
    .local v10, "writer":Ljava/io/ByteArrayOutputStream;
    const/16 v11, 0x80

    :try_start_20
    new-array v1, v11, [B

    .line 168
    .local v1, "buf":[B
    :goto_22
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "bufl":I
    const/4 v11, -0x1

    if-ne v2, v11, :cond_3d

    .line 181
    new-instance v8, Ljava/lang/String;

    .end local v8    # "str":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    invoke-static {v11}, Lcom/bestpay/encrypt/Base64;->encode([B)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_20 .. :try_end_36} :catchall_4a

    .line 183
    .restart local v8    # "str":Ljava/lang/String;
    if-eqz v10, :cond_6b

    .line 185
    :try_start_38
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_64

    .line 189
    :goto_3b
    const/4 v9, 0x0

    .line 192
    .end local v10    # "writer":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "writer":Ljava/io/ByteArrayOutputStream;
    :goto_3c
    return-object v8

    .line 169
    .end local v9    # "writer":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "writer":Ljava/io/ByteArrayOutputStream;
    :cond_3d
    const/4 v0, 0x0

    .line 171
    .local v0, "block":[B
    :try_start_3e
    array-length v11, v1

    if-ne v11, v2, :cond_53

    .line 172
    move-object v0, v1

    .line 179
    :cond_42
    invoke-virtual {v3, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_49
    .catchall {:try_start_3e .. :try_end_49} :catchall_4a

    goto :goto_22

    .line 182
    .end local v0    # "block":[B
    .end local v1    # "buf":[B
    .end local v2    # "bufl":I
    .end local v8    # "str":Ljava/lang/String;
    :catchall_4a
    move-exception v11

    move-object v9, v10

    .line 183
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .end local v6    # "ins":Ljava/io/InputStream;
    .end local v7    # "pubKey":Ljava/security/PublicKey;
    .end local v10    # "writer":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "writer":Ljava/io/ByteArrayOutputStream;
    :goto_4c
    if-eqz v9, :cond_52

    .line 185
    :try_start_4e
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_5f

    .line 189
    :goto_51
    const/4 v9, 0x0

    .line 191
    :cond_52
    throw v11

    .line 174
    .end local v9    # "writer":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "block":[B
    .restart local v1    # "buf":[B
    .restart local v2    # "bufl":I
    .restart local v3    # "cipher":Ljavax/crypto/Cipher;
    .restart local v6    # "ins":Ljava/io/InputStream;
    .restart local v7    # "pubKey":Ljava/security/PublicKey;
    .restart local v8    # "str":Ljava/lang/String;
    .restart local v10    # "writer":Ljava/io/ByteArrayOutputStream;
    :cond_53
    :try_start_53
    new-array v0, v2, [B

    .line 175
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_56
    if-ge v5, v2, :cond_42

    .line 176
    aget-byte v11, v1, v5

    aput-byte v11, v0, v5
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_4a

    .line 175
    add-int/lit8 v5, v5, 0x1

    goto :goto_56

    .line 186
    .end local v0    # "block":[B
    .end local v1    # "buf":[B
    .end local v2    # "bufl":I
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .end local v5    # "i":I
    .end local v6    # "ins":Ljava/io/InputStream;
    .end local v7    # "pubKey":Ljava/security/PublicKey;
    .end local v8    # "str":Ljava/lang/String;
    .end local v10    # "writer":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "writer":Ljava/io/ByteArrayOutputStream;
    :catch_5f
    move-exception v4

    .line 187
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_51

    .line 186
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "writer":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buf":[B
    .restart local v2    # "bufl":I
    .restart local v3    # "cipher":Ljavax/crypto/Cipher;
    .restart local v6    # "ins":Ljava/io/InputStream;
    .restart local v7    # "pubKey":Ljava/security/PublicKey;
    .restart local v8    # "str":Ljava/lang/String;
    .restart local v10    # "writer":Ljava/io/ByteArrayOutputStream;
    :catch_64
    move-exception v4

    .line 187
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3b

    .line 182
    .end local v1    # "buf":[B
    .end local v2    # "bufl":I
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "ins":Ljava/io/InputStream;
    .end local v7    # "pubKey":Ljava/security/PublicKey;
    .end local v10    # "writer":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "writer":Ljava/io/ByteArrayOutputStream;
    :catchall_69
    move-exception v11

    goto :goto_4c

    .end local v9    # "writer":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buf":[B
    .restart local v2    # "bufl":I
    .restart local v3    # "cipher":Ljavax/crypto/Cipher;
    .restart local v6    # "ins":Ljava/io/InputStream;
    .restart local v7    # "pubKey":Ljava/security/PublicKey;
    .restart local v10    # "writer":Ljava/io/ByteArrayOutputStream;
    :cond_6b
    move-object v9, v10

    .end local v10    # "writer":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "writer":Ljava/io/ByteArrayOutputStream;
    goto :goto_3c
.end method

.method public static generateKeyPair()Ljava/security/KeyPair;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 57
    .local v1, "keyPairGen":Ljava/security/KeyPairGenerator;
    const/16 v2, 0x400

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 58
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    .line 59
    .local v0, "keyPair":Ljava/security/KeyPair;
    return-object v0
.end method

.method public static generateRSAKey()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 95
    invoke-static {}, Lcom/bestpay/encrypt/RSA;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    .line 96
    .local v1, "keyPair":Ljava/security/KeyPair;
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 97
    .local v0, "keyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "RSAPublicKey"

    invoke-static {v1}, Lcom/bestpay/encrypt/RSA;->generateRSAPublicKey(Ljava/security/KeyPair;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v2, "RSAPrivateKey"

    invoke-static {v1}, Lcom/bestpay/encrypt/RSA;->generateRSAPrivateKey(Ljava/security/KeyPair;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-object v0
.end method

.method public static generateRSAPrivateKey(Ljava/security/KeyPair;)Ljava/lang/String;
    .registers 3
    .param p0, "keyPair"    # Ljava/security/KeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    .line 85
    .local v0, "privateKey":Ljava/security/interfaces/RSAPrivateKey;
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/bestpay/encrypt/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static generateRSAPublicKey(Ljava/security/KeyPair;)Ljava/lang/String;
    .registers 3
    .param p0, "keyPair"    # Ljava/security/KeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 72
    .local v0, "publicKey":Ljava/security/interfaces/RSAPublicKey;
    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/bestpay/encrypt/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 6
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 239
    invoke-static {p0}, Lcom/bestpay/encrypt/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 241
    .local v0, "keyBytes":[B
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 243
    .local v2, "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 245
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    .line 247
    .local v3, "privateKey":Ljava/security/PrivateKey;
    return-object v3
.end method

.method public static getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 6
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 260
    invoke-static {p0}, Lcom/bestpay/encrypt/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 262
    .local v0, "keyBytes":[B
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 264
    .local v2, "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 266
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    .line 268
    .local v3, "publicKey":Ljava/security/PublicKey;
    return-object v3
.end method

.method public static main([Ljava/lang/String;)V
    .registers 8
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 289
    :try_start_0
    const-string v2, "VxhK8Ku73TltoujAl0mE9J8O2tgsFvDQc3CuSJWv/L9MtLBom3XgPd8KngJMlaV7wKafK5JsR9g0zSYCjKOpi26FaBEGPI8yfXvR7s+MDZ0dEvdcuvqYcSccS7jwLm1H5ZFZT1f/Vytxw4/cjGafcZm+BAV6BzeJz6sskMRT2S4="

    .line 291
    .local v2, "encryStr":Ljava/lang/String;
    const-string v3, "MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBALHbOT3RbMYjMaOXuinEgV2iKfHKn6mO83XALQ5OsaTqj9zRHKuZCy27r3Qgk9e7/q6suYHv9PYjL9RS9KSrDMvuhfoPuWVOPJHgxCPC89XLsllHZZi7V28+BCf778NUG4UO19hbqlGUiLbuI/FfJDejMB8ejluJHmc16WG7SWdVAgMBAAECgYEAmfYICzdrTenRYqhJgzaUNhXW8XRR2lng7yG43xXIOdbDSofKpdEKGEDMlV5OHQakZVkoDQ9Honq7QLW/CXz4yW71iAK8SFn22LGKxzdSgPZkGmVZ+ZKDPjmKg9QyzI8VbHWKuIHCD0iJgaN7SF5B1CtsGRs66f+aNTLyLLr2QAECQQDWtXfjJi0keQ13mLpAYfc7e7dX0zna5zqkUbA2q1JYPG8j9GIJ/j3NrUUJbhFiBEJUX5BYtP7zXOXA8/QNqvtVAkEA1A9vRllNQNEiAG3ZlvVSh3RXWPsVDQkerzWKBlMvQZIa+eQ/Q9o+b0tOvvt1IIvwaSXpqBEcpC09vzfjoNy8AQJBAMNUmFr4Uj1KO6xAL8F+3pMo/CVULuAtWLZA8tTpi6JmaJ4HKGH7AHLrXVE052+KfGWSAxoQn5j7PLILvk3o7XkCQDcG4ksQ9Tjyi64s0x+W/RllGR1f2fCOA0ZX0D8f6s1LCnD5x2jmAvmCQybPvW76oSHH0r/n4NTBYJpz+D9PyAECQG+WZ/QoXpyHiRr1JUdjq2BX7+EA8hsC6+pmBzOnRzbOxWxmlfMNC5gzhhOyAVMdQM8UaRgKBOSsqsWz6artj1Y="

    .line 292
    .local v3, "privKey":Ljava/lang/String;
    const-string v4, "UTF-8"

    invoke-static {v2, v3, v4}, Lcom/bestpay/encrypt/RSA;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "decryptStr":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u89e3\u5bc6\u7ed3\u679c\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 305
    .end local v0    # "decryptStr":Ljava/lang/String;
    .end local v2    # "encryStr":Ljava/lang/String;
    .end local v3    # "privKey":Ljava/lang/String;
    :goto_1e
    return-void

    .line 302
    :catch_1f
    move-exception v1

    .line 303
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method

.method public static sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "privateKey"    # Ljava/lang/String;
    .param p2, "input_charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-static {p1}, Lcom/bestpay/encrypt/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 112
    .local v2, "priPKCS8":Ljava/security/spec/PKCS8EncodedKeySpec;
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 113
    .local v0, "keyf":Ljava/security/KeyFactory;
    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    .line 115
    .local v1, "priKey":Ljava/security/PrivateKey;
    const-string v5, "SHAWithRSA"

    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    .line 116
    .local v3, "signature":Ljava/security/Signature;
    invoke-virtual {v3, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 117
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/Signature;->update([B)V

    .line 118
    invoke-virtual {v3}, Ljava/security/Signature;->sign()[B

    move-result-object v4

    .line 119
    .local v4, "signed":[B
    invoke-static {v4}, Lcom/bestpay/encrypt/Base64;->encode([B)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "sign"    # Ljava/lang/String;
    .param p2, "yzf_public_key"    # Ljava/lang/String;
    .param p3, "input_charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 132
    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 133
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    invoke-static {p2}, Lcom/bestpay/encrypt/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 134
    .local v0, "encodedKey":[B
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v4, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    .line 136
    .local v2, "pubKey":Ljava/security/PublicKey;
    const-string v4, "SHAWithRSA"

    invoke-static {v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    .line 138
    .local v3, "signature":Ljava/security/Signature;
    invoke-virtual {v3, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 139
    invoke-virtual {p0, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/Signature;->update([B)V

    .line 141
    invoke-static {p1}, Lcom/bestpay/encrypt/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/Signature;->verify([B)Z

    move-result v4

    return v4
.end method
