.class public Lcom/bestpay/encrypt/AES256;
.super Ljava/lang/Object;
.source "AES256.java"


# static fields
.field static final CIPHER_ALGORITHM_CBC:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field static final CIPHER_ALGORITHM_ECB:Ljava/lang/String; = "AES/ECB/PKCS5Padding"

.field public static final INPUT_CHARSET:Ljava/lang/String; = "UTF-8"

.field static final KEY_ALGORITHM:Ljava/lang/String; = "AES"

.field public static ivBytes:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Lcom/bestpay/encrypt/AES256;->ivBytes:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AES_Decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {p0}, Lcom/bestpay/encrypt/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    .line 61
    .local v3, "textBytes":[B
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v4, Lcom/bestpay/encrypt/AES256;->ivBytes:[B

    invoke-direct {v1, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 62
    .local v1, "ivSpec":Ljava/security/spec/AlgorithmParameterSpec;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "AES"

    invoke-direct {v2, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 63
    .local v2, "newKey":Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "AES/CBC/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 64
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 65
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v4
.end method

.method public static AES_Encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 42
    .local v3, "textBytes":[B
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v4, Lcom/bestpay/encrypt/AES256;->ivBytes:[B

    invoke-direct {v1, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 43
    .local v1, "ivSpec":Ljava/security/spec/AlgorithmParameterSpec;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "AES"

    invoke-direct {v2, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 44
    .local v2, "newKey":Ljavax/crypto/spec/SecretKeySpec;
    const/4 v0, 0x0

    .line 45
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const-string v4, "AES/CBC/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 46
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 47
    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    invoke-static {v4}, Lcom/bestpay/encrypt/Base64;->encode([B)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getStringRandom(I)Ljava/lang/String;
    .registers 9
    .param p0, "length"    # I

    .prologue
    const/4 v7, 0x2

    .line 71
    const-string v4, ""

    .line 72
    .local v4, "val":Ljava/lang/String;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 75
    .local v2, "random":Ljava/util/Random;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-lt v1, p0, :cond_c

    .line 87
    return-object v4

    .line 77
    :cond_c
    invoke-virtual {v2, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_44

    const-string v0, "char"

    .line 79
    .local v0, "charOrNum":Ljava/lang/String;
    :goto_16
    const-string v5, "char"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 81
    invoke-virtual {v2, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_47

    const/16 v3, 0x41

    .line 82
    .local v3, "temp":I
    :goto_28
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x1a

    invoke-virtual {v2, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/2addr v6, v3

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 75
    .end local v3    # "temp":I
    :cond_41
    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 77
    .end local v0    # "charOrNum":Ljava/lang/String;
    :cond_44
    const-string v0, "num"

    goto :goto_16

    .line 81
    .restart local v0    # "charOrNum":Ljava/lang/String;
    :cond_47
    const/16 v3, 0x61

    goto :goto_28

    .line 83
    :cond_4a
    const-string v5, "num"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_41
.end method

.method public static main([Ljava/lang/String;)V
    .registers 8
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 94
    const-string v2, "abcdefghijklmnopqrstuvwxyz123456"

    .line 101
    .local v2, "key":Ljava/lang/String;
    const-string v3, "{bankCode:1,title:\\\"\u4f60\u597d\uff0c\u670b\u53cb\\\",addtime:\\\"2010-05-03\\\",title:\\\"\u4f60\u597d\uff0c\u670b\u53cb\\\",title:\\\"\u4f60\u597d\uff0c\u670b\u53cb\\\",title:\\\"\u4f60\u597d\uff0c\u670b\u53cb\\\",title:\\\"\u4f60\u597d\uff0c\u670b\u53cb\\\",title:\\\"\u4f60\u597d\uff0c\u670b\u53cb\\\",title:\\\"\u4f60\u597d\uff0c\u670b\u53cb\\\",title:\\\"\u4f60\u597d\uff0c\u670b\u53cb\\\",title:\\\"\u4f60\u597d\uff0c\u670b\u53cb\\\"}"

    .line 102
    .local v3, "plainText":Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/bestpay/encrypt/AES256;->AES_Encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "encodeText":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AES256_Encode : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    const-string v1, "voKWn5aAxanYvVm/v9vLr70E2JPmxw7YdoUx/HXpm27MpEd+eNuA9Hwn3aX5OjK7 My02YC1g2EgRFYUJEFZAhIEPQnSnP2JHMJnQv4HVG9pTbvZ7KwgMwrUkLalW9Q7U w1fTY+xpWj6n4+ruVdvZo9JohbZa7yjFD1Y+eliMSX9otZK9HmihcnaqBNCoVRbX ZCN2t0A2nXKQwzAm9wAj0QHPkn+gb0GJexBpINz17pURJhTLpfnTPk6rA5CeFJ+V JeDAn0zMUHIMuqWhAQykXsPKKZAUK+xrkqmovV5ln6Gx2EKYoNMA8358tNkp+hDQ STZfYCbB58qmyK3yL98rsMO9QrGzhr2dnrAWq8iu21UoGCs+xzC440I/n0p2B5QJ FpeSbmCz4pNzYPhaczVaSypndmj9Q1pv/vKGxrAbGqHDZH44fIJdA3iywrFf8rIC xuptuVV+sbp2bW8Mc4eBcg=="

    .line 107
    invoke-static {v1, v2}, Lcom/bestpay/encrypt/AES256;->AES_Decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "decodeText":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AES256_Decode : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 113
    return-void
.end method
