.class public final Lcom/alipay/security/mobile/module/commonutils/crypto/f;
.super Ljava/lang/Object;


# instance fields
.field protected final a:[B

.field protected final b:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    iput-object v0, p0, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->a:[B

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->b:[B

    invoke-direct {p0}, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->a()V

    return-void

    :array_16
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method private a()V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->a:[B

    array-length v1, v1

    if-ge v0, v1, :cond_12

    iget-object v1, p0, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->b:[B

    iget-object v2, p0, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->a:[B

    aget-byte v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    iget-object v0, p0, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->b:[B

    const/16 v1, 0x41

    iget-object v2, p0, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->b:[B

    const/16 v3, 0x61

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->b:[B

    const/16 v1, 0x42

    iget-object v2, p0, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->b:[B

    const/16 v3, 0x62

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->b:[B

    const/16 v1, 0x43

    iget-object v2, p0, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->b:[B

    const/16 v3, 0x63

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->b:[B

    const/16 v1, 0x44

    iget-object v2, p0, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->b:[B

    const/16 v3, 0x64

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->b:[B

    const/16 v1, 0x45

    iget-object v2, p0, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->b:[B

    const/16 v3, 0x65

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->b:[B

    const/16 v1, 0x46

    iget-object v2, p0, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->b:[B

    const/16 v3, 0x66

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    return-void
.end method

.method private static a(C)Z
    .registers 2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_10

    const/16 v0, 0xd

    if-eq p0, v0, :cond_10

    const/16 v0, 0x9

    if-eq p0, v0, :cond_10

    const/16 v0, 0x20

    if-ne p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/io/OutputStream;)I
    .registers 9

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    move v3, v1

    :goto_6
    if-lez v3, :cond_18

    add-int/lit8 v1, v3, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->a(C)Z

    move-result v1

    if-eqz v1, :cond_18

    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_6

    :cond_18
    move v2, v0

    :goto_19
    if-ge v0, v3, :cond_5a

    move v1, v0

    :goto_1c
    if-ge v1, v3, :cond_2c

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->a(C)Z

    move-result v0

    if-eqz v0, :cond_2c

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1c

    :cond_2c
    iget-object v4, p0, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->b:[B

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget-byte v4, v4, v1

    :goto_36
    if-ge v0, v3, :cond_45

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->a(C)Z

    move-result v1

    if-eqz v1, :cond_45

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_45
    iget-object v5, p0, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->b:[B

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aget-byte v0, v5, v0

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v0, v4

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_19

    :cond_5a
    return v2
.end method

.method public final a([BIILjava/io/OutputStream;)I
    .registers 9

    move v0, p2

    :goto_1
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1e

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->a:[B

    ushr-int/lit8 v3, v1, 0x4

    aget-byte v2, v2, v3

    invoke-virtual {p4, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v2, p0, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->a:[B

    and-int/lit8 v1, v1, 0xf

    aget-byte v1, v2, v1

    invoke-virtual {p4, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1e
    mul-int/lit8 v0, p3, 0x2

    return v0
.end method

.method public final a([BILjava/io/OutputStream;)I
    .registers 10

    const/4 v0, 0x0

    add-int/lit8 v1, p2, 0x0

    move v3, v1

    :goto_4
    if-lez v3, :cond_15

    add-int/lit8 v1, v3, -0x1

    aget-byte v1, p1, v1

    int-to-char v1, v1

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->a(C)Z

    move-result v1

    if-eqz v1, :cond_15

    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_4

    :cond_15
    move v2, v0

    :goto_16
    if-ge v0, v3, :cond_51

    move v1, v0

    :goto_19
    if-ge v1, v3, :cond_28

    aget-byte v0, p1, v1

    int-to-char v0, v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->a(C)Z

    move-result v0

    if-eqz v0, :cond_28

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_19

    :cond_28
    iget-object v4, p0, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->b:[B

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p1, v1

    aget-byte v4, v4, v1

    :goto_30
    if-ge v0, v3, :cond_3e

    aget-byte v1, p1, v0

    int-to-char v1, v1

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->a(C)Z

    move-result v1

    if-eqz v1, :cond_3e

    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_3e
    iget-object v5, p0, Lcom/alipay/security/mobile/module/commonutils/crypto/f;->b:[B

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    aget-byte v0, v5, v0

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v0, v4

    invoke-virtual {p3, v0}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_16

    :cond_51
    return v2
.end method
