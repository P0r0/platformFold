.class public Lcom/ltayx/pay/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    invoke-static {p0}, Lcom/ltayx/pay/l;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/ltayx/pay/l;->b([B)[B

    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/ltayx/pay/l;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/ltayx/pay/l;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/ltayx/pay/l;->b([B)[B

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/ltayx/pay/l;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 56
    invoke-static {p1}, Lcom/ltayx/pay/l;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {p0, v0}, Lcom/ltayx/pay/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    return-object v0
.end method

.method private static a([B)Ljava/lang/String;
    .registers 7

    .prologue
    .line 106
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 107
    array-length v2, p0

    const/4 v0, 0x0

    :goto_7
    if-lt v0, v2, :cond_e

    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 107
    :cond_e
    aget-byte v3, p0, v0

    .line 108
    const-string v4, "0123456789abcdef"

    ushr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 109
    const-string v4, "0123456789abcdef"

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static varargs a([Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 24
    if-eqz p0, :cond_8

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_10

    .line 25
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "params count error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_10
    const-string v0, ""

    move v1, v2

    .line 29
    :goto_13
    array-length v3, p0

    if-lt v1, v3, :cond_17

    .line 41
    return-object v0

    .line 33
    :cond_17
    add-int/lit8 v3, v1, 0x1

    aget-object v3, p0, v3

    if-eqz v3, :cond_5b

    const-string v3, ""

    add-int/lit8 v4, v1, 0x1

    aget-object v4, p0, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 34
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    :cond_44
    const-string v3, "%s%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    aget-object v5, p0, v1

    aput-object v5, v4, v0

    const/4 v0, 0x2

    add-int/lit8 v5, v1, 0x1

    aget-object v5, p0, v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 39
    :cond_5b
    add-int/lit8 v1, v1, 0x1

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method

.method static a()Ljava/security/MessageDigest;
    .registers 2

    .prologue
    .line 116
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    .line 117
    :catch_7
    move-exception v0

    .line 118
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static b(Ljava/lang/String;)[B
    .registers 2

    .prologue
    .line 96
    :try_start_0
    const-string v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 99
    :goto_6
    return-object v0

    .line 97
    :catch_7
    move-exception v0

    .line 99
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_6
.end method

.method private static b([B)[B
    .registers 2

    .prologue
    .line 123
    invoke-static {}, Lcom/ltayx/pay/l;->a()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method
