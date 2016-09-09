.class public final Lcom/alipay/sdk/encrypt/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "RSA"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 41
    .line 45
    :try_start_1
    const-string v1, "RSA"

    invoke-static {p1}, Lcom/alipay/sdk/encrypt/a;->a(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    .line 46
    const-string v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 47
    const/4 v2, 0x1

    invoke-virtual {v5, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 49
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 50
    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    .line 51
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_4d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_57

    .line 52
    const/4 v2, 0x0

    move v4, v2

    :goto_2f
    :try_start_2f
    array-length v2, v6

    if-ge v4, v2, :cond_45

    .line 53
    array-length v2, v6

    sub-int/2addr v2, v4

    if-ge v2, v3, :cond_43

    array-length v2, v6

    sub-int/2addr v2, v4

    :goto_38
    invoke-virtual {v5, v6, v4, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 52
    add-int v2, v4, v3

    move v4, v2

    goto :goto_2f

    :cond_43
    move v2, v3

    .line 53
    goto :goto_38

    .line 57
    :cond_45
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_48} :catch_67
    .catchall {:try_start_2f .. :try_end_48} :catchall_65

    move-result-object v0

    .line 61
    :try_start_49
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_61

    .line 70
    :cond_4c
    :goto_4c
    return-object v0

    .line 59
    :catch_4d
    move-exception v1

    move-object v1, v0

    :goto_4f
    if-eqz v1, :cond_4c

    .line 63
    :try_start_51
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_4c

    .line 65
    :catch_55
    move-exception v1

    goto :goto_4c

    .line 61
    :catchall_57
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_5b
    if-eqz v1, :cond_60

    .line 63
    :try_start_5d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_63

    .line 65
    :cond_60
    :goto_60
    throw v0

    :catch_61
    move-exception v1

    goto :goto_4c

    :catch_63
    move-exception v1

    goto :goto_60

    .line 61
    :catchall_65
    move-exception v0

    goto :goto_5b

    .line 59
    :catch_67
    move-exception v2

    goto :goto_4f
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
