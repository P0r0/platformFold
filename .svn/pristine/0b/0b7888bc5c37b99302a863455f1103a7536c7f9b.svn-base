.class public Lcom/duoku/platform/util/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljavax/crypto/SecretKey;

.field private b:Ljavax/crypto/Cipher;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/duoku/platform/util/a;->a:Ljavax/crypto/SecretKey;

    .line 14
    iput-object v0, p0, Lcom/duoku/platform/util/a;->b:Ljavax/crypto/Cipher;

    .line 15
    const-string v0, "AKlMU89D3FchIkhK"

    iput-object v0, p0, Lcom/duoku/platform/util/a;->c:Ljava/lang/String;

    .line 21
    :try_start_c
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lcom/duoku/platform/util/a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/duoku/platform/util/a;->a:Ljavax/crypto/SecretKey;

    .line 22
    const-string v0, "AES/ECB/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/util/a;->b:Ljavax/crypto/Cipher;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_23} :catch_24

    .line 28
    :goto_23
    return-void

    .line 24
    :catch_24
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 86
    const-string v0, ""

    .line 87
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 88
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_14

    .line 96
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    .line 97
    return-object v0

    .line 90
    :cond_14
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 91
    const/16 v3, 0xa

    if-eq v2, v3, :cond_29

    const/16 v3, 0xd

    if-eq v2, v3, :cond_29

    .line 93
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 88
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 38
    const-string v0, ""

    .line 39
    const-string v0, ""

    .line 42
    :try_start_4
    iget-object v1, p0, Lcom/duoku/platform/util/a;->b:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/duoku/platform/util/a;->a:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 43
    iget-object v1, p0, Lcom/duoku/platform/util/a;->b:Ljavax/crypto/Cipher;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 44
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/duoku/platform/util/b;->b([BI)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 45
    invoke-static {v2}, Lcom/duoku/platform/util/a;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_25} :catch_27

    move-result-object v0

    .line 51
    :goto_26
    return-object v0

    .line 47
    :catch_27
    move-exception v1

    .line 49
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 63
    const-string v1, ""

    .line 67
    const/4 v0, 0x0

    :try_start_3
    invoke-static {p1, v0}, Lcom/duoku/platform/util/b;->a(Ljava/lang/String;I)[B

    move-result-object v0

    .line 68
    iget-object v2, p0, Lcom/duoku/platform/util/a;->b:Ljavax/crypto/Cipher;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/duoku/platform/util/a;->a:Ljavax/crypto/SecretKey;

    invoke-virtual {v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 69
    iget-object v2, p0, Lcom/duoku/platform/util/a;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 70
    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1c} :catch_1d

    .line 76
    :goto_1c
    return-object v0

    .line 72
    :catch_1d
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_1c
.end method
