.class public Lcom/vivo/sdkplugin/Utils/MD5;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;B)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_11
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_11} :catch_20

    move-result-object v0

    :goto_12
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_18
    array-length v2, v0

    if-lt v1, v2, :cond_25

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_20
    move-exception v1

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_12

    :cond_25
    aget-byte v2, v0, v1

    if-gez v2, :cond_2b

    add-int/lit16 v2, v2, 0x100

    :cond_2b
    const/16 v4, 0x10

    if-ge v2, v4, :cond_34

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_34
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_18
.end method

.method public static encode32(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x20

    invoke-static {p0, v0}, Lcom/vivo/sdkplugin/Utils/MD5;->a(Ljava/lang/String;B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
