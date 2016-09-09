.class final Lcom/baidu/scancode/zxing/qrcode/a/d;
.super Ljava/lang/Object;


# direct methods
.method static a(Lcom/baidu/scancode/zxing/qrcode/a/b;)I
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/baidu/scancode/zxing/qrcode/a/d;->a(Lcom/baidu/scancode/zxing/qrcode/a/b;Z)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/baidu/scancode/zxing/qrcode/a/d;->a(Lcom/baidu/scancode/zxing/qrcode/a/b;Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static a(Lcom/baidu/scancode/zxing/qrcode/a/b;Z)I
    .registers 14

    const/4 v10, 0x5

    const/4 v5, 0x0

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Lcom/baidu/scancode/zxing/qrcode/a/b;->a()I

    move-result v0

    move v8, v0

    :goto_9
    if-eqz p1, :cond_36

    invoke-virtual {p0}, Lcom/baidu/scancode/zxing/qrcode/a/b;->b()I

    move-result v0

    :goto_f
    invoke-virtual {p0}, Lcom/baidu/scancode/zxing/qrcode/a/b;->c()[[B

    move-result-object v9

    move v7, v5

    move v1, v5

    :goto_15
    if-ge v7, v8, :cond_57

    const/4 v2, -0x1

    move v4, v5

    move v6, v5

    :goto_1a
    if-ge v4, v0, :cond_4c

    if-eqz p1, :cond_3b

    aget-object v3, v9, v7

    aget-byte v3, v3, v4

    :goto_22
    if-ne v3, v2, :cond_40

    add-int/lit8 v3, v6, 0x1

    move v11, v2

    move v2, v3

    move v3, v1

    move v1, v11

    :goto_2a
    add-int/lit8 v4, v4, 0x1

    move v6, v2

    move v2, v1

    move v1, v3

    goto :goto_1a

    :cond_30
    invoke-virtual {p0}, Lcom/baidu/scancode/zxing/qrcode/a/b;->b()I

    move-result v0

    move v8, v0

    goto :goto_9

    :cond_36
    invoke-virtual {p0}, Lcom/baidu/scancode/zxing/qrcode/a/b;->a()I

    move-result v0

    goto :goto_f

    :cond_3b
    aget-object v3, v9, v4

    aget-byte v3, v3, v7

    goto :goto_22

    :cond_40
    if-lt v6, v10, :cond_47

    add-int/lit8 v2, v6, -0x5

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    :cond_47
    const/4 v2, 0x1

    move v11, v3

    move v3, v1

    move v1, v11

    goto :goto_2a

    :cond_4c
    if-lt v6, v10, :cond_53

    add-int/lit8 v2, v6, -0x5

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    :cond_53
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_15

    :cond_57
    return v1
.end method

.method static a(III)Z
    .registers 6

    packed-switch p0, :pswitch_data_58

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mask pattern: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c
    add-int v0, p2, p1

    and-int/lit8 v0, v0, 0x1

    :goto_20
    if-nez v0, :cond_55

    const/4 v0, 0x1

    :goto_23
    return v0

    :pswitch_24
    and-int/lit8 v0, p2, 0x1

    goto :goto_20

    :pswitch_27
    rem-int/lit8 v0, p1, 0x3

    goto :goto_20

    :pswitch_2a
    add-int v0, p2, p1

    rem-int/lit8 v0, v0, 0x3

    goto :goto_20

    :pswitch_2f
    div-int/lit8 v0, p2, 0x2

    div-int/lit8 v1, p1, 0x3

    add-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    goto :goto_20

    :pswitch_37
    mul-int v0, p2, p1

    and-int/lit8 v1, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    goto :goto_20

    :pswitch_3f
    mul-int v0, p2, p1

    and-int/lit8 v1, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    goto :goto_20

    :pswitch_49
    mul-int v0, p2, p1

    rem-int/lit8 v0, v0, 0x3

    add-int v1, p2, p1

    and-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_55
    const/4 v0, 0x0

    goto :goto_23

    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2f
        :pswitch_37
        :pswitch_3f
        :pswitch_49
    .end packed-switch
.end method

.method private static a([BII)Z
    .registers 5

    const/4 v0, 0x1

    :goto_1
    if-ge p1, p2, :cond_d

    if-ltz p1, :cond_e

    array-length v1, p0

    if-ge p1, v1, :cond_e

    aget-byte v1, p0, p1

    if-ne v1, v0, :cond_e

    const/4 v0, 0x0

    :cond_d
    return v0

    :cond_e
    add-int/lit8 p1, p1, 0x1

    goto :goto_1
.end method

.method private static a([[BIII)Z
    .registers 6

    const/4 v0, 0x1

    :goto_1
    if-ge p2, p3, :cond_f

    if-ltz p2, :cond_10

    array-length v1, p0

    if-ge p2, v1, :cond_10

    aget-object v1, p0, p2

    aget-byte v1, v1, p1

    if-ne v1, v0, :cond_10

    const/4 v0, 0x0

    :cond_f
    return v0

    :cond_10
    add-int/lit8 p2, p2, 0x1

    goto :goto_1
.end method

.method static b(Lcom/baidu/scancode/zxing/qrcode/a/b;)I
    .registers 11

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/baidu/scancode/zxing/qrcode/a/b;->c()[[B

    move-result-object v4

    invoke-virtual {p0}, Lcom/baidu/scancode/zxing/qrcode/a/b;->b()I

    move-result v5

    invoke-virtual {p0}, Lcom/baidu/scancode/zxing/qrcode/a/b;->a()I

    move-result v6

    move v3, v2

    move v0, v2

    :goto_f
    add-int/lit8 v1, v6, -0x1

    if-ge v3, v1, :cond_3f

    move v1, v2

    :goto_14
    add-int/lit8 v7, v5, -0x1

    if-ge v1, v7, :cond_3b

    aget-object v7, v4, v3

    aget-byte v7, v7, v1

    aget-object v8, v4, v3

    add-int/lit8 v9, v1, 0x1

    aget-byte v8, v8, v9

    if-ne v7, v8, :cond_38

    add-int/lit8 v8, v3, 0x1

    aget-object v8, v4, v8

    aget-byte v8, v8, v1

    if-ne v7, v8, :cond_38

    add-int/lit8 v8, v3, 0x1

    aget-object v8, v4, v8

    add-int/lit8 v9, v1, 0x1

    aget-byte v8, v8, v9

    if-ne v7, v8, :cond_38

    add-int/lit8 v0, v0, 0x1

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_3b
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_f

    :cond_3f
    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method static c(Lcom/baidu/scancode/zxing/qrcode/a/b;)I
    .registers 12

    const/4 v2, 0x0

    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/baidu/scancode/zxing/qrcode/a/b;->c()[[B

    move-result-object v4

    invoke-virtual {p0}, Lcom/baidu/scancode/zxing/qrcode/a/b;->b()I

    move-result v5

    invoke-virtual {p0}, Lcom/baidu/scancode/zxing/qrcode/a/b;->a()I

    move-result v6

    move v3, v2

    move v0, v2

    :goto_10
    if-ge v3, v6, :cond_ae

    move v1, v2

    :goto_13
    if-ge v1, v5, :cond_a9

    aget-object v7, v4, v3

    add-int/lit8 v8, v1, 0x6

    if-ge v8, v5, :cond_57

    aget-byte v8, v7, v1

    if-ne v8, v10, :cond_57

    add-int/lit8 v8, v1, 0x1

    aget-byte v8, v7, v8

    if-nez v8, :cond_57

    add-int/lit8 v8, v1, 0x2

    aget-byte v8, v7, v8

    if-ne v8, v10, :cond_57

    add-int/lit8 v8, v1, 0x3

    aget-byte v8, v7, v8

    if-ne v8, v10, :cond_57

    add-int/lit8 v8, v1, 0x4

    aget-byte v8, v7, v8

    if-ne v8, v10, :cond_57

    add-int/lit8 v8, v1, 0x5

    aget-byte v8, v7, v8

    if-nez v8, :cond_57

    add-int/lit8 v8, v1, 0x6

    aget-byte v8, v7, v8

    if-ne v8, v10, :cond_57

    add-int/lit8 v8, v1, -0x4

    invoke-static {v7, v8, v1}, Lcom/baidu/scancode/zxing/qrcode/a/d;->a([BII)Z

    move-result v8

    if-nez v8, :cond_55

    add-int/lit8 v8, v1, 0x7

    add-int/lit8 v9, v1, 0xb

    invoke-static {v7, v8, v9}, Lcom/baidu/scancode/zxing/qrcode/a/d;->a([BII)Z

    move-result v7

    if-eqz v7, :cond_57

    :cond_55
    add-int/lit8 v0, v0, 0x1

    :cond_57
    add-int/lit8 v7, v3, 0x6

    if-ge v7, v6, :cond_a5

    aget-object v7, v4, v3

    aget-byte v7, v7, v1

    if-ne v7, v10, :cond_a5

    add-int/lit8 v7, v3, 0x1

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-nez v7, :cond_a5

    add-int/lit8 v7, v3, 0x2

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-ne v7, v10, :cond_a5

    add-int/lit8 v7, v3, 0x3

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-ne v7, v10, :cond_a5

    add-int/lit8 v7, v3, 0x4

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-ne v7, v10, :cond_a5

    add-int/lit8 v7, v3, 0x5

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-nez v7, :cond_a5

    add-int/lit8 v7, v3, 0x6

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-ne v7, v10, :cond_a5

    add-int/lit8 v7, v3, -0x4

    invoke-static {v4, v1, v7, v3}, Lcom/baidu/scancode/zxing/qrcode/a/d;->a([[BIII)Z

    move-result v7

    if-nez v7, :cond_a3

    add-int/lit8 v7, v3, 0x7

    add-int/lit8 v8, v3, 0xb

    invoke-static {v4, v1, v7, v8}, Lcom/baidu/scancode/zxing/qrcode/a/d;->a([[BIII)Z

    move-result v7

    if-eqz v7, :cond_a5

    :cond_a3
    add-int/lit8 v0, v0, 0x1

    :cond_a5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_13

    :cond_a9
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_10

    :cond_ae
    mul-int/lit8 v0, v0, 0x28

    return v0
.end method

.method static d(Lcom/baidu/scancode/zxing/qrcode/a/b;)I
    .registers 11

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/baidu/scancode/zxing/qrcode/a/b;->c()[[B

    move-result-object v4

    invoke-virtual {p0}, Lcom/baidu/scancode/zxing/qrcode/a/b;->b()I

    move-result v5

    invoke-virtual {p0}, Lcom/baidu/scancode/zxing/qrcode/a/b;->a()I

    move-result v6

    move v3, v2

    move v0, v2

    :goto_f
    if-ge v3, v6, :cond_24

    aget-object v7, v4, v3

    move v1, v2

    :goto_14
    if-ge v1, v5, :cond_20

    aget-byte v8, v7, v1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1d

    add-int/lit8 v0, v0, 0x1

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_20
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_f

    :cond_24
    invoke-virtual {p0}, Lcom/baidu/scancode/zxing/qrcode/a/b;->a()I

    move-result v1

    invoke-virtual {p0}, Lcom/baidu/scancode/zxing/qrcode/a/b;->b()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    div-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xa

    return v0
.end method
