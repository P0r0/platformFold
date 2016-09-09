.class public final Lcom/alipay/sdk/encrypt/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 10
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 12
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/encrypt/c;->b([B)Ljava/lang/String;
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v0

    .line 15
    :goto_15
    return-object v0

    :catch_16
    move-exception v0

    const-string v0, ""

    goto :goto_15
.end method

.method public static a([B)Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 23
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/encrypt/c;->b([B)Ljava/lang/String;
    :try_end_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v0

    .line 26
    :goto_11
    return-object v0

    :catch_12
    move-exception v0

    const-string v0, ""

    goto :goto_11
.end method

.method private static b([B)Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x10

    .line 36
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 37
    const/4 v0, 0x0

    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_29

    .line 38
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v2, v2, 0x4

    invoke-static {v2, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 39
    aget-byte v2, p0, v0

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 42
    :cond_29
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
