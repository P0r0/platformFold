.class public final Lcom/unionpay/mobile/android/pboctransaction/nfc/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/unionpay/mobile/android/pboctransaction/nfc/c;->a:[C

    return-void

    :array_a
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static a([BI)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    mul-int/lit8 v1, p1, 0x2

    new-array v2, v1, [C

    add-int/lit8 v3, p1, 0x0

    move v1, v0

    :goto_8
    if-ge v0, v3, :cond_25

    aget-byte v4, p0, v0

    add-int/lit8 v5, v1, 0x1

    sget-object v6, Lcom/unionpay/mobile/android/pboctransaction/nfc/c;->a:[C

    shr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v2, v1

    add-int/lit8 v1, v5, 0x1

    sget-object v6, Lcom/unionpay/mobile/android/pboctransaction/nfc/c;->a:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    aput-char v4, v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_25
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
