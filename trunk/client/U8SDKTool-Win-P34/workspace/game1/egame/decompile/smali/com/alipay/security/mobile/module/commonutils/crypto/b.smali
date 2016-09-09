.class public final Lcom/alipay/security/mobile/module/commonutils/crypto/b;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Z
    .registers 5

    const/16 v3, 0x14

    const/4 v0, 0x0

    if-nez p0, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    array-length v1, p0

    if-lt v1, v3, :cond_5

    move v1, v0

    :goto_a
    if-ge v1, v3, :cond_13

    add-int/lit8 v2, v1, 0x0

    aput-byte v0, p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_13
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private static a([BI[BII)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-eqz p2, :cond_7

    if-gtz p4, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    array-length v1, p0

    add-int v2, p1, p4

    if-lt v1, v2, :cond_7

    array-length v1, p2

    add-int v2, p3, p4

    if-lt v1, v2, :cond_7

    move v1, v0

    :goto_13
    if-ge v1, p4, :cond_22

    add-int v2, p1, v1

    aget-byte v2, p0, v2

    add-int v3, p3, v1

    aget-byte v3, p2, v3

    if-ne v2, v3, :cond_7

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_22
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private static a([B[BI)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    array-length v2, p0

    if-lt p2, v2, :cond_c

    move v0, v1

    goto :goto_6

    :cond_c
    :goto_c
    array-length v2, p1

    if-ge v0, v2, :cond_1f

    add-int v2, v0, p2

    add-int/lit8 v2, v2, 0x1

    array-length v3, p0

    if-gt v2, v3, :cond_1f

    add-int v2, v0, p2

    aget-byte v3, p1, v0

    aput-byte v3, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1f
    move v0, v1

    goto :goto_6
.end method
