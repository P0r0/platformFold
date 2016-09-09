.class public final Lcom/alipay/sdk/encrypt/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "SHA1WithRSA"

.field private static final b:Ljava/lang/String; = "RSA"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 41
    .line 45
    :try_start_1
    const-string v0, "RSA"

    invoke-static {p1}, Lcom/alipay/sdk/encrypt/a;->a(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 47
    const-string v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 48
    const/4 v2, 0x1

    invoke-virtual {v5, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 50
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 52
    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    .line 53
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_56
    .catchall {:try_start_1 .. :try_end_2d} :catchall_62

    .line 55
    const/4 v0, 0x0

    move v4, v0

    :goto_2f
    :try_start_2f
    array-length v0, v6

    if-ge v4, v0, :cond_45

    .line 56
    array-length v0, v6

    sub-int/2addr v0, v4

    if-ge v0, v3, :cond_43

    array-length v0, v6

    sub-int/2addr v0, v4

    :goto_38
    invoke-virtual {v5, v6, v4, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 55
    add-int v0, v4, v3

    move v4, v0

    goto :goto_2f

    :cond_43
    move v0, v3

    .line 56
    goto :goto_38

    .line 62
    :cond_45
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/sdk/encrypt/a;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_52} :catch_70
    .catchall {:try_start_2f .. :try_end_52} :catchall_6d

    .line 66
    :try_start_52
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_69

    .line 75
    :goto_55
    return-object v0

    .line 66
    :catch_56
    move-exception v0

    move-object v0, v1

    :goto_58
    if-eqz v0, :cond_73

    .line 68
    :try_start_5a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5f

    move-object v0, v1

    .line 70
    goto :goto_55

    .line 71
    :catch_5f
    move-exception v0

    move-object v0, v1

    goto :goto_55

    .line 66
    :catchall_62
    move-exception v0

    :goto_63
    if-eqz v1, :cond_68

    .line 68
    :try_start_65
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_6b

    .line 71
    :cond_68
    :goto_68
    throw v0

    :catch_69
    move-exception v1

    goto :goto_55

    :catch_6b
    move-exception v1

    goto :goto_68

    .line 66
    :catchall_6d
    move-exception v0

    move-object v1, v2

    goto :goto_63

    :catch_70
    move-exception v0

    move-object v0, v2

    goto :goto_58

    :cond_73
    move-object v0, v1

    goto :goto_55
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 146
    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 147
    invoke-static {p2}, Lcom/alipay/sdk/encrypt/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 148
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 149
    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 151
    const-string v1, "SHA1WithRSA"

    .line 152
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 154
    invoke-virtual {v1, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 155
    const-string v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/Signature;->update([B)V

    .line 157
    invoke-static {p1}, Lcom/alipay/sdk/encrypt/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/Signature;->verify([B)Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2e

    move-result v0

    .line 163
    :goto_2d
    return v0

    :catch_2e
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2d
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {p1}, Lcom/alipay/sdk/encrypt/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 34
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 36
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 37
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 79
    .line 83
    :try_start_1
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 84
    invoke-static {p1}, Lcom/alipay/sdk/encrypt/a;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 85
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 86
    invoke-virtual {v2, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    .line 88
    const-string v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 89
    const/4 v2, 0x2

    invoke-virtual {v5, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 91
    invoke-static {p0}, Lcom/alipay/sdk/encrypt/a;->a(Ljava/lang/String;)[B

    move-result-object v6

    .line 94
    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    .line 95
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_50
    .catchall {:try_start_1 .. :try_end_2b} :catchall_5c

    .line 97
    const/4 v0, 0x0

    move v4, v0

    :goto_2d
    :try_start_2d
    array-length v0, v6

    if-ge v4, v0, :cond_43

    .line 98
    array-length v0, v6

    sub-int/2addr v0, v4

    if-ge v0, v3, :cond_41

    array-length v0, v6

    sub-int/2addr v0, v4

    :goto_36
    invoke-virtual {v5, v6, v4, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 97
    add-int v0, v4, v3

    move v4, v0

    goto :goto_2d

    :cond_41
    move v0, v3

    .line 98
    goto :goto_36

    .line 104
    :cond_43
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4c} :catch_6a
    .catchall {:try_start_2d .. :try_end_4c} :catchall_67

    .line 107
    :try_start_4c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_63

    .line 116
    :goto_4f
    return-object v0

    .line 107
    :catch_50
    move-exception v0

    move-object v0, v1

    :goto_52
    if-eqz v0, :cond_6d

    .line 109
    :try_start_54
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_59

    move-object v0, v1

    .line 111
    goto :goto_4f

    .line 112
    :catch_59
    move-exception v0

    move-object v0, v1

    goto :goto_4f

    .line 107
    :catchall_5c
    move-exception v0

    :goto_5d
    if-eqz v1, :cond_62

    .line 109
    :try_start_5f
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_65

    .line 112
    :cond_62
    :goto_62
    throw v0

    :catch_63
    move-exception v1

    goto :goto_4f

    :catch_65
    move-exception v1

    goto :goto_62

    .line 107
    :catchall_67
    move-exception v0

    move-object v1, v2

    goto :goto_5d

    :catch_6a
    move-exception v0

    move-object v0, v2

    goto :goto_52

    :cond_6d
    move-object v0, v1

    goto :goto_4f
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 122
    const-string v0, "utf-8"

    .line 124
    :try_start_2
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 125
    invoke-static {p1}, Lcom/alipay/sdk/encrypt/a;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 126
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 127
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    .line 129
    const-string v2, "SHA1WithRSA"

    .line 130
    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    .line 132
    invoke-virtual {v2, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 133
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/Signature;->update([B)V

    .line 135
    invoke-virtual {v2}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    .line 137
    invoke-static {v0}, Lcom/alipay/sdk/encrypt/a;->a([B)Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2c} :catch_2e

    move-result-object v0

    .line 141
    :goto_2d
    return-object v0

    :catch_2e
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2d
.end method
