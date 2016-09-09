.class public Lorg/cocos2dx/lib/Cocos2dxBitmap;
.super Ljava/lang/Object;
.source "Cocos2dxBitmap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;
    }
.end annotation


# static fields
.field private static final HORIZONTALALIGN_CENTER:I = 0x3

.field private static final HORIZONTALALIGN_LEFT:I = 0x1

.field private static final HORIZONTALALIGN_RIGHT:I = 0x2

.field private static final VERTICALALIGN_BOTTOM:I = 0x2

.field private static final VERTICALALIGN_CENTER:I = 0x3

.field private static final VERTICALALIGN_TOP:I = 0x1

.field private static sContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeTextProperty(Ljava/lang/String;IILandroid/graphics/Paint;)Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;
    .locals 12

    invoke-virtual {p3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v9, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v10, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v9, v10

    int-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v2, v10

    const/4 v7, 0x0

    invoke-static {p0, p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->splitString(Ljava/lang/String;IILandroid/graphics/Paint;)[Ljava/lang/String;

    move-result-object v6

    if-eqz p1, :cond_1

    move v7, p1

    :cond_0
    new-instance v9, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;

    invoke-direct {v9, v7, v2, v6}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;-><init>(II[Ljava/lang/String;)V

    return-object v9

    :cond_1
    const/4 v8, 0x0

    move-object v0, v6

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    const/4 v9, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p3, v5, v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v9

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v8, v10

    if-le v8, v7, :cond_2

    move v7, v8

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static computeX(Ljava/lang/String;II)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    div-int/lit8 v0, p1, 0x2

    goto :goto_0

    :pswitch_1
    move v0, p1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static computeY(Landroid/graphics/Paint$FontMetricsInt;III)I
    .locals 3

    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v0, v1

    if-le p1, p2, :cond_0

    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v0, v1

    goto :goto_0

    :pswitch_1
    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v1, v1

    sub-int v2, p1, p2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    goto :goto_0

    :pswitch_2
    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v1, v1

    sub-int v2, p1, p2

    add-int v0, v1, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static createTextBitmap(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 21

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v3, 0xff

    const/16 v4, 0xff

    const/16 v5, 0xff

    const/16 v6, 0xff

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xff

    const/16 v17, 0xff

    const/16 v18, 0xff

    const/16 v19, 0xff

    const/16 v20, 0x0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-static/range {v0 .. v20}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->createTextBitmapShadowStroke([BLjava/lang/String;IIIIIIIIZFFFFZIIIIF)Z

    return-void
.end method

.method public static createTextBitmapShadowStroke([BLjava/lang/String;IIIIIIIIZFFFFZIIIIF)Z
    .locals 32

    if-eqz p0, :cond_0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v29, v0

    if-nez v29, :cond_1

    :cond_0
    const-string v24, ""

    :goto_0
    and-int/lit8 v14, p7, 0xf

    shr-int/lit8 v29, p7, 0x4

    and-int/lit8 v26, v29, 0xf

    invoke-static/range {v24 .. v24}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->refactorString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v14}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->newPaint(Ljava/lang/String;II)Landroid/graphics/Paint;

    move-result-object v20

    if-eqz p8, :cond_2

    const/16 v29, 0x0

    const/16 v30, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v29

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v12, v0

    move/from16 v0, p8

    if-le v12, v0, :cond_2

    const-string v29, "createTextBitmapShadowStroke warning:"

    const-string v30, "the input width is less than the width of the pString\'s first word\n"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v29, 0x0

    :goto_1
    return v29

    :cond_1
    new-instance v24, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, v20

    move/from16 v1, p6

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    move-object/from16 v0, v24

    move/from16 v1, p8

    move/from16 v2, p9

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->computeTextProperty(Ljava/lang/String;IILandroid/graphics/Paint;)Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;

    move-result-object v25

    if-nez p9, :cond_4

    # getter for: Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->mTotalHeight:I
    invoke-static/range {v25 .. v25}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$000(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I

    move-result v10

    :goto_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    # getter for: Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->mMaxWidth:I
    invoke-static/range {v25 .. v25}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$100(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I

    move-result v29

    if-eqz v29, :cond_3

    if-nez v10, :cond_5

    :cond_3
    const-string v29, "createTextBitmapShadowStroke warning:"

    const-string v30, "textProperty MaxWidth is 0 or bitMapTotalHeight is 0\n"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v29, 0x0

    goto :goto_1

    :cond_4
    move/from16 v10, p9

    goto :goto_2

    :cond_5
    # getter for: Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->mMaxWidth:I
    invoke-static/range {v25 .. v25}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$100(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I

    move-result v29

    float-to-int v0, v8

    move/from16 v30, v0

    add-int v29, v29, v30

    float-to-int v0, v9

    move/from16 v30, v0

    add-int v30, v30, v10

    sget-object v31, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v29 .. v31}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v13

    if-eqz p15, :cond_6

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v14}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->newPaint(Ljava/lang/String;II)Landroid/graphics/Paint;

    move-result-object v21

    sget-object v29, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, v21

    move/from16 v1, p20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, v21

    move/from16 v1, p19

    move/from16 v2, p16

    move/from16 v3, p17

    move/from16 v4, p18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    const/16 v27, 0x0

    # getter for: Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->mTotalHeight:I
    invoke-static/range {v25 .. v25}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$000(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I

    move-result v29

    move/from16 v0, p9

    move/from16 v1, v29

    move/from16 v2, v26

    invoke-static {v13, v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->computeY(Landroid/graphics/Paint$FontMetricsInt;III)I

    move-result v28

    # getter for: Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->mLines:[Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$200(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v6, v19

    array-length v0, v6

    move/from16 v16, v0

    const/4 v15, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v15, v0, :cond_7

    aget-object v17, v6, v15

    # getter for: Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->mMaxWidth:I
    invoke-static/range {v25 .. v25}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$100(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I

    move-result v29

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-static {v0, v1, v14}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->computeX(Ljava/lang/String;II)I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v29, v29, v22

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v30, v30, v23

    move-object/from16 v0, v17

    move/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v3, v21

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v29, v29, v22

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v30, v30, v23

    move-object/from16 v0, v17

    move/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v3, v20

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    # getter for: Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->mHeightPerLine:I
    invoke-static/range {v25 .. v25}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$300(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I

    move-result v29

    add-int v28, v28, v29

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_6
    const/16 v27, 0x0

    # getter for: Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->mTotalHeight:I
    invoke-static/range {v25 .. v25}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$000(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I

    move-result v29

    move/from16 v0, p9

    move/from16 v1, v29

    move/from16 v2, v26

    invoke-static {v13, v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->computeY(Landroid/graphics/Paint$FontMetricsInt;III)I

    move-result v28

    # getter for: Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->mLines:[Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$200(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v6, v18

    array-length v0, v6

    move/from16 v16, v0

    const/4 v15, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v15, v0, :cond_7

    aget-object v17, v6, v15

    # getter for: Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->mMaxWidth:I
    invoke-static/range {v25 .. v25}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$100(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I

    move-result v29

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-static {v0, v1, v14}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->computeX(Ljava/lang/String;II)I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v29, v29, v22

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v30, v30, v23

    move-object/from16 v0, v17

    move/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v3, v20

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    # getter for: Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->mHeightPerLine:I
    invoke-static/range {v25 .. v25}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$300(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I

    move-result v29

    add-int v28, v28, v29

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_7
    invoke-static {v7}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->initNativeObject(Landroid/graphics/Bitmap;)V

    const/16 v29, 0x1

    goto/16 :goto_1
.end method

.method private static divideStringWithMaxWidth(Ljava/lang/String;ILandroid/graphics/Paint;)Ljava/util/LinkedList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/graphics/Paint;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x1

    :goto_0
    if-gt v1, v0, :cond_4

    invoke-virtual {p2, p0, v3, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    if-lt v5, p1, :cond_3

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    if-le v2, v3, :cond_0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    if-le v5, p1, :cond_1

    add-int/lit8 v6, v3, 0x1

    if-eq v1, v6, :cond_1

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move v3, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-ge v3, v0, :cond_5

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v4
.end method

.method private static getFontSizeAccordingHeight(I)I
    .locals 8

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v2, 0x1

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    int-to-float v5, v2

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string v4, "SghMNy"

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int v5, p0, v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v5, "font size"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "incr size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static getPixels(Landroid/graphics/Bitmap;)[B
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    new-array v1, v2, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getStringWithEllipsis(Ljava/lang/String;FF)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p0, v0, p1, v1}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static initNativeObject(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->getPixels(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2, v0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->nativeInitBitmapDC(II[B)V

    goto :goto_0
.end method

.method private static native nativeInitBitmapDC(II[B)V
.end method

.method private static newPaint(Ljava/lang/String;II)Landroid/graphics/Paint;
    .locals 7

    const/4 v6, 0x0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, p1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string v3, ".ttf"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxBitmap;->sContext:Landroid/content/Context;

    invoke-static {v3, p0}, Lorg/cocos2dx/lib/Cocos2dxTypefaces;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    packed-switch p2, :pswitch_data_0

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    const-string v3, "Cocos2dxBitmap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error to create ttf type face: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    invoke-static {p0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    :pswitch_0
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_1

    :pswitch_1
    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static refactorString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const-string v3, " "

    :goto_0
    return-object v3

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    :goto_1
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    if-eqz v0, :cond_1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    :cond_1
    const-string v3, " "

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v0, 0x2

    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-gt v1, v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ne v0, v3, :cond_4

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v0, 0x1

    goto :goto_2

    :cond_4
    const-string v3, "\n"

    invoke-virtual {v2, v3, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxBitmap;->sContext:Landroid/content/Context;

    return-void
.end method

.method private static splitString(Ljava/lang/String;IILandroid/graphics/Paint;)[Ljava/lang/String;
    .locals 16

    const-string v14, "\\n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    iget v14, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v15, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v14, v15

    int-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v4, v14

    div-int v11, p2, v4

    if-eqz p1, :cond_4

    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    move-object v2, v10

    array-length v7, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v8, v2, v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v14

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v9, v14

    move/from16 v0, p1

    if-le v9, v0, :cond_1

    move/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v8, v0, v1}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->divideStringWithMaxWidth(Ljava/lang/String;ILandroid/graphics/Paint;)Ljava/util/LinkedList;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    if-lez v11, :cond_2

    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v14

    if-lt v14, v11, :cond_2

    :cond_0
    if-lez v11, :cond_3

    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v14

    if-le v14, v11, :cond_3

    :goto_2
    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v14

    if-le v14, v11, :cond_3

    invoke-virtual {v13}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_2

    :cond_1
    invoke-virtual {v13, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v14

    new-array v12, v14, [Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_3
    return-object v12

    :cond_4
    if-eqz p2, :cond_6

    array-length v14, v10

    if-le v14, v11, :cond_6

    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v11, :cond_5

    aget-object v14, v10, v5

    invoke-virtual {v13, v14}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v14

    new-array v12, v14, [Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_3

    :cond_6
    move-object v12, v10

    goto :goto_3
.end method
