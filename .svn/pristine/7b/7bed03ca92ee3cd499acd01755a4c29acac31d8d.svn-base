.class public final Lcom/duoku/platform/download/utils/Md5Tools;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static toHexString([BLjava/lang/String;Z)Ljava/lang/String;
    .registers 9

    .prologue
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    array-length v3, p0

    .line 49
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-lt v1, v3, :cond_f

    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51
    :cond_f
    aget-byte v0, p0, v1

    .line 52
    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    if-eqz p2, :cond_1d

    .line 54
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 55
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_29

    .line 56
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8
.end method

.method public static toMd5([BZ)Ljava/lang/String;
    .registers 5

    .prologue
    .line 21
    const-string v0, ""

    .line 26
    :try_start_2
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 28
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 29
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2, p1}, Lcom/duoku/platform/download/utils/Md5Tools;->toHexString([BLjava/lang/String;Z)Ljava/lang/String;
    :try_end_17
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_17} :catch_19

    move-result-object v0

    .line 41
    :goto_18
    return-object v0

    .line 32
    :catch_19
    move-exception v1

    goto :goto_18
.end method
