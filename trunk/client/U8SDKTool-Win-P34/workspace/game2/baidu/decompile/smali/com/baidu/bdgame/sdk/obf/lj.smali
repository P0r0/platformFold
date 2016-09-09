.class public Lcom/baidu/bdgame/sdk/obf/lj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/security/spec/KeySpec;

.field private b:Ljava/lang/String;

.field private c:Ljavax/crypto/SecretKey;

.field private d:Ljavax/crypto/SecretKeyFactory;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "DESede/CBC/PKCS7Padding"

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lj;->b:Ljava/lang/String;

    .line 29
    const-string v0, "utf-8"

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lj;->e:Ljava/lang/String;

    .line 34
    :try_start_b
    const-string v0, "DESede"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lj;->c:Ljavax/crypto/SecretKey;
    :try_end_17
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_17} :catch_18

    .line 39
    :goto_17
    return-void

    .line 36
    :catch_18
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_17
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "DESede/CBC/PKCS7Padding"

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lj;->b:Ljava/lang/String;

    .line 29
    const-string v0, "utf-8"

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lj;->e:Ljava/lang/String;

    .line 50
    :try_start_b
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lj;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 51
    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/lj;->d([B)V
    :try_end_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_14} :catch_15

    .line 55
    :goto_14
    return-void

    .line 52
    :catch_15
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_14
.end method

.method public constructor <init>([B)V
    .registers 3

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "DESede/CBC/PKCS7Padding"

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lj;->b:Ljava/lang/String;

    .line 29
    const-string v0, "utf-8"

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lj;->e:Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/lj;->d([B)V

    .line 44
    return-void
.end method

.method private d([B)V
    .registers 4

    .prologue
    .line 60
    :try_start_0
    const-string v0, "DESede"

    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lj;->d:Ljavax/crypto/SecretKeyFactory;

    .line 61
    new-instance v0, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/lj;->e([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lj;->a:Ljava/security/spec/KeySpec;

    .line 62
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lj;->d:Ljavax/crypto/SecretKeyFactory;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/lj;->a:Ljava/security/spec/KeySpec;

    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lj;->c:Ljavax/crypto/SecretKey;
    :try_end_1d
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_1d} :catch_1e
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_1d} :catch_23
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_1d} :catch_28

    .line 70
    :goto_1d
    return-void

    .line 63
    :catch_1e
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1d

    .line 65
    :catch_23
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    goto :goto_1d

    .line 67
    :catch_28
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1d
.end method

.method private e([B)[B
    .registers 8

    .prologue
    const/16 v1, 0x18

    const/4 v2, 0x0

    .line 74
    array-length v3, p1

    .line 75
    array-length v0, p1

    if-ge v0, v1, :cond_20

    .line 76
    new-array v0, v1, [B

    .line 77
    rsub-int/lit8 v1, v3, 0x18

    new-array v4, v1, [B

    move v1, v2

    .line 78
    :goto_e
    rsub-int/lit8 v5, v3, 0x18

    if-ge v1, v5, :cond_17

    .line 79
    aput-byte v2, v4, v1

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 81
    :cond_17
    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    rsub-int/lit8 v1, v3, 0x18

    invoke-static {v4, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 85
    :cond_20
    return-object p1
.end method

.method private static f([B)Ljavax/crypto/spec/IvParameterSpec;
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 109
    new-array v0, v2, [B

    .line 110
    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 112
    return-object v1
.end method


# virtual methods
.method public a()[B
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lj;->c:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lj;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 103
    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/lj;->a([B)[B

    move-result-object v0

    return-object v0
.end method

.method public a([B)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lj;->c:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/lj;->f([B)Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/lj;->b:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 94
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/lj;->c:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v2, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 95
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lj;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 140
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/lj;->e:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public b([B)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lj;->c:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/lj;->f([B)Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/lj;->b:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 120
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/lj;->c:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v2, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 121
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public c([B)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/lj;->b([B)[B

    move-result-object v0

    .line 127
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/lj;->e:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method
