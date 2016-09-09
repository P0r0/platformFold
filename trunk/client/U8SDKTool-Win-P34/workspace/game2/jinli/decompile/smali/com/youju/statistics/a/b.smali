.class public Lcom/youju/statistics/a/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/16 v7, 0x100

    const/4 v0, 0x0

    new-array v1, v7, [B

    sput-object v1, Lcom/youju/statistics/a/b;->a:[B

    const-string v1, "gioneerc4-KEY#S9qmsJ*TpEIv}+Ch Y2v-N5KyXuR^Ln5.>1#k[Qw@9[3A1v/LY`AWB)|Dp/&kM_@]AoOwF6AI%HqV>(;h{33Y2fXiOQt8yMUjB:"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move v1, v0

    :goto_e
    if-ge v1, v7, :cond_18

    sget-object v2, Lcom/youju/statistics/a/b;->a:[B

    int-to-byte v4, v1

    aput-byte v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_18
    if-eqz v3, :cond_1d

    array-length v1, v3

    if-nez v1, :cond_23

    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_23
    move v1, v0

    move v2, v0

    :goto_25
    if-ge v0, v7, :cond_4c

    aget-byte v4, v3, v2

    and-int/lit16 v4, v4, 0xff

    sget-object v5, Lcom/youju/statistics/a/b;->a:[B

    aget-byte v5, v5, v0

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    and-int/lit16 v1, v1, 0xff

    sget-object v4, Lcom/youju/statistics/a/b;->a:[B

    aget-byte v4, v4, v0

    sget-object v5, Lcom/youju/statistics/a/b;->a:[B

    sget-object v6, Lcom/youju/statistics/a/b;->a:[B

    aget-byte v6, v6, v1

    aput-byte v6, v5, v0

    sget-object v5, Lcom/youju/statistics/a/b;->a:[B

    aput-byte v4, v5, v1

    add-int/lit8 v2, v2, 0x1

    array-length v4, v3

    rem-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_4c
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)[B
    .registers 8

    const/16 v2, 0x100

    const/4 v0, 0x0

    new-array v4, v2, [B

    sget-object v1, Lcom/youju/statistics/a/b;->a:[B

    invoke-static {v1, v0, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez p0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    array-length v1, p0

    new-array v3, v1, [B

    move v1, v0

    move v2, v0

    :goto_13
    array-length v5, p0

    if-ge v0, v5, :cond_3f

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    aget-byte v5, v4, v2

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v1, v5

    and-int/lit16 v1, v1, 0xff

    aget-byte v5, v4, v2

    aget-byte v6, v4, v1

    aput-byte v6, v4, v2

    aput-byte v5, v4, v1

    aget-byte v5, v4, v2

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, v4, v1

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, p0, v0

    aget-byte v5, v4, v5

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_3f
    move-object v0, v3

    goto :goto_d
.end method
