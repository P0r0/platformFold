.class public Lcom/youju/statistics/a/k;
.super Ljava/lang/Object;


# static fields
.field protected static a:[C

.field protected static b:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/youju/statistics/a/k;->a:[C

    const/4 v0, 0x0

    sput-object v0, Lcom/youju/statistics/a/k;->b:Ljava/security/MessageDigest;

    :try_start_c
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lcom/youju/statistics/a/k;->b:Ljava/security/MessageDigest;
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_14

    :array_1a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/youju/statistics/a/k;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/youju/statistics/a/k;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    sget-object v0, Lcom/youju/statistics/a/k;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/youju/statistics/a/k;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([BII)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuffer;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    add-int v1, p1, p2

    :goto_9
    if-ge p1, v1, :cond_13

    aget-byte v2, p0, p1

    invoke-static {v2, v0}, Lcom/youju/statistics/a/k;->a(BLjava/lang/StringBuffer;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_13
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(BLjava/lang/StringBuffer;)V
    .registers 5

    sget-object v0, Lcom/youju/statistics/a/k;->a:[C

    and-int/lit16 v1, p0, 0xf0

    shr-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    sget-object v1, Lcom/youju/statistics/a/k;->a:[C

    and-int/lit8 v2, p0, 0xf

    aget-char v1, v1, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method private static b([B)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/youju/statistics/a/k;->a([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
