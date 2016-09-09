.class public final Lcom/baidu/scancode/zxing/qrcode/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/scancode/zxing/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/baidu/scancode/zxing/qrcode/a/f;III)Lcom/baidu/scancode/zxing/common/b;
    .registers 16

    invoke-virtual {p0}, Lcom/baidu/scancode/zxing/qrcode/a/f;->a()Lcom/baidu/scancode/zxing/qrcode/a/b;

    move-result-object v5

    if-nez v5, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_c
    invoke-virtual {v5}, Lcom/baidu/scancode/zxing/qrcode/a/b;->b()I

    move-result v6

    invoke-virtual {v5}, Lcom/baidu/scancode/zxing/qrcode/a/b;->a()I

    move-result v7

    mul-int/lit8 v0, p3, 0x2

    add-int/2addr v0, v6

    mul-int/lit8 v1, p3, 0x2

    add-int/2addr v1, v7

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int v0, v2, v0

    div-int v1, v3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    mul-int v0, v6, v8

    sub-int v0, v2, v0

    div-int/lit8 v1, v0, 0x2

    mul-int v0, v7, v8

    sub-int v0, v3, v0

    div-int/lit8 v0, v0, 0x2

    new-instance v9, Lcom/baidu/scancode/zxing/common/b;

    invoke-direct {v9, v2, v3}, Lcom/baidu/scancode/zxing/common/b;-><init>(II)V

    const/4 v2, 0x0

    move v3, v0

    move v4, v2

    :goto_3e
    if-ge v4, v7, :cond_5a

    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_43
    if-ge v2, v6, :cond_53

    invoke-virtual {v5, v2, v4}, Lcom/baidu/scancode/zxing/qrcode/a/b;->a(II)B

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4f

    invoke-virtual {v9, v0, v3, v8, v8}, Lcom/baidu/scancode/zxing/common/b;->a(IIII)V

    :cond_4f
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v8

    goto :goto_43

    :cond_53
    add-int/lit8 v2, v4, 0x1

    add-int v0, v3, v8

    move v3, v0

    move v4, v2

    goto :goto_3e

    :cond_5a
    return-object v9
.end method


# virtual methods
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
    sget-object v0, Lcom/baidu/scancode/zxing/BarcodeFormat;->QR_CODE:Lcom/baidu/scancode/zxing/BarcodeFormat;

    if-eq p2, v0, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can only encode QR_CODE, but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    if-ltz p3, :cond_2f

    if-gez p4, :cond_52

    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested dimensions are too small: "

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

    :cond_52
    sget-object v2, Lcom/baidu/scancode/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/baidu/scancode/zxing/qrcode/decoder/ErrorCorrectionLevel;

    const/4 v1, 0x4

    if-eqz p5, :cond_84

    sget-object v0, Lcom/baidu/scancode/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/baidu/scancode/zxing/EncodeHintType;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/scancode/zxing/qrcode/decoder/ErrorCorrectionLevel;

    if-eqz v0, :cond_62

    move-object v2, v0

    :cond_62
    :try_start_62
    sget-object v0, Lcom/baidu/scancode/zxing/EncodeHintType;->MARGIN:Lcom/baidu/scancode/zxing/EncodeHintType;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_82

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_73} :catch_7f

    move-result v0

    :goto_74
    move v1, v0

    move-object v0, v2

    :goto_76
    invoke-static {p1, v0, p5}, Lcom/baidu/scancode/zxing/qrcode/a/c;->a(Ljava/lang/String;Lcom/baidu/scancode/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/baidu/scancode/zxing/qrcode/a/f;

    move-result-object v0

    invoke-static {v0, p3, p4, v1}, Lcom/baidu/scancode/zxing/qrcode/a;->a(Lcom/baidu/scancode/zxing/qrcode/a/f;III)Lcom/baidu/scancode/zxing/common/b;

    move-result-object v0

    return-object v0

    :catch_7f
    move-exception v0

    move-object v0, v2

    goto :goto_76

    :cond_82
    move v0, v1

    goto :goto_74

    :cond_84
    move-object v0, v2

    goto :goto_76
.end method
