.class public abstract Lcom/baidu/scancode/zxing/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/scancode/zxing/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a([ZI[IZ)I
    .registers 12

    const/4 v1, 0x0

    array-length v6, p2

    move v4, v1

    move v5, v1

    move v0, p1

    :goto_5
    if-ge v4, v6, :cond_21

    aget v7, p2, v4

    move v2, v0

    move v0, v1

    :goto_b
    if-ge v0, v7, :cond_15

    add-int/lit8 v3, v2, 0x1

    aput-boolean p3, p0, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_b

    :cond_15
    add-int/2addr v5, v7

    if-nez p3, :cond_1f

    const/4 v0, 0x1

    :goto_19
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move p3, v0

    move v0, v2

    goto :goto_5

    :cond_1f
    move v0, v1

    goto :goto_19

    :cond_21
    return v5
.end method

.method private static a([ZIII)Lcom/baidu/scancode/zxing/common/b;
    .registers 12

    const/4 v2, 0x0

    array-length v3, p0

    add-int v0, v3, p3

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v4, 0x1

    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result v4

    div-int v5, v1, v0

    mul-int v0, v3, v5

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    new-instance v6, Lcom/baidu/scancode/zxing/common/b;

    invoke-direct {v6, v1, v4}, Lcom/baidu/scancode/zxing/common/b;-><init>(II)V

    move v1, v2

    :goto_1b
    if-ge v1, v3, :cond_28

    aget-boolean v7, p0, v1

    if-eqz v7, :cond_24

    invoke-virtual {v6, v0, v2, v5, v4}, Lcom/baidu/scancode/zxing/common/b;->a(IIII)V

    :cond_24
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v5

    goto :goto_1b

    :cond_28
    return-object v6
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0xa

    return v0
.end method

.method public a(Ljava/lang/String;Lcom/baidu/scancode/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/baidu/scancode/zxing/common/b;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Found empty contents"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-ltz p3, :cond_12

    if-gez p4, :cond_35

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative size is not allowed. Input: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    invoke-virtual {p0}, Lcom/baidu/scancode/zxing/a/b;->a()I

    move-result v1

    if-eqz p5, :cond_52

    sget-object v0, Lcom/baidu/scancode/zxing/EncodeHintType;->MARGIN:Lcom/baidu/scancode/zxing/EncodeHintType;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_49
    invoke-virtual {p0, p1}, Lcom/baidu/scancode/zxing/a/b;->a(Ljava/lang/String;)[Z

    move-result-object v1

    invoke-static {v1, p3, p4, v0}, Lcom/baidu/scancode/zxing/a/b;->a([ZIII)Lcom/baidu/scancode/zxing/common/b;

    move-result-object v0

    return-object v0

    :cond_52
    move v0, v1

    goto :goto_49
.end method

.method public abstract a(Ljava/lang/String;)[Z
.end method
