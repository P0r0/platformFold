.class public Lcom/youju/statistics/a/l;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_14

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_14
    return v1
.end method

.method public static a(II)[B
    .registers 5

    new-array v1, p1, [B

    const/4 v0, 0x0

    :goto_3
    if-ge v0, p1, :cond_14

    add-int/lit8 v2, p1, -0x1

    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x8

    shr-int v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_14
    return-object v1
.end method

.method public static a(JI)[B
    .registers 7

    new-array v1, p2, [B

    const/4 v0, 0x0

    :goto_3
    array-length v2, v1

    if-ge v0, v2, :cond_19

    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->byteValue()B

    move-result v2

    aput-byte v2, v1, v0

    const/16 v2, 0x8

    shr-long/2addr p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_19
    return-object v1
.end method
