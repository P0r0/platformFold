.class public final Lcom/squareup/haha/guava/primitives/Ints;
.super Ljava/lang/Object;
.source "Ints.java"


# static fields
.field private static final asciiDigits:[B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 639
    const/16 v1, 0x80

    new-array v1, v1, [B

    .line 642
    sput-object v1, Lcom/squareup/haha/guava/primitives/Ints;->asciiDigits:[B

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 643
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    const/16 v1, 0x9

    if-gt v0, v1, :cond_19

    .line 644
    sget-object v1, Lcom/squareup/haha/guava/primitives/Ints;->asciiDigits:[B

    add-int/lit8 v2, v0, 0x30

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 643
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 646
    :cond_19
    const/4 v0, 0x0

    :goto_1a
    const/16 v1, 0x1a

    if-gt v0, v1, :cond_33

    .line 647
    sget-object v1, Lcom/squareup/haha/guava/primitives/Ints;->asciiDigits:[B

    add-int/lit8 v2, v0, 0x41

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 648
    sget-object v1, Lcom/squareup/haha/guava/primitives/Ints;->asciiDigits:[B

    add-int/lit8 v2, v0, 0x61

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 646
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 650
    :cond_33
    return-void
.end method

.method public static compare(II)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 127
    if-ge p0, p1, :cond_4

    const/4 v0, -0x1

    :goto_3
    return v0

    :cond_4
    if-le p0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static saturatedCast(J)I
    .registers 4
    .param p0, "value"    # J

    .prologue
    .line 105
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_b

    .line 106
    const v0, 0x7fffffff

    .line 111
    :goto_a
    return v0

    .line 108
    :cond_b
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_15

    .line 109
    const/high16 v0, -0x80000000

    goto :goto_a

    .line 111
    :cond_15
    long-to-int v0, p0

    goto :goto_a
.end method
