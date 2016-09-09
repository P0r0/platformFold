.class Lcom/edmodo/rangebar/Bar;
.super Ljava/lang/Object;
.source "Bar.java"


# instance fields
.field private final mLeftX:F

.field private mNumSegments:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRightX:F

.field private mTickDistance:F

.field private final mTickEndY:F

.field private final mTickHeight:F

.field private final mTickStartY:F

.field private final mY:F


# direct methods
.method constructor <init>(Landroid/content/Context;FFFIFFI)V
    .registers 13
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "length"    # F
    .param p5, "tickCount"    # I
    .param p6, "tickHeightDP"    # F
    .param p7, "BarWeight"    # F
    .param p8, "BarColor"    # I

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p2, p0, Lcom/edmodo/rangebar/Bar;->mLeftX:F

    .line 49
    add-float v0, p2, p4

    iput v0, p0, Lcom/edmodo/rangebar/Bar;->mRightX:F

    .line 50
    iput p3, p0, Lcom/edmodo/rangebar/Bar;->mY:F

    .line 51
    add-int/lit8 v0, p5, -0x1

    iput v0, p0, Lcom/edmodo/rangebar/Bar;->mNumSegments:I

    .line 52
    iget v0, p0, Lcom/edmodo/rangebar/Bar;->mNumSegments:I

    int-to-float v0, v0

    div-float v0, p4, v0

    iput v0, p0, Lcom/edmodo/rangebar/Bar;->mTickDistance:F

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v3, p6, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/edmodo/rangebar/Bar;->mTickHeight:F

    .line 54
    iget v0, p0, Lcom/edmodo/rangebar/Bar;->mY:F

    iget v1, p0, Lcom/edmodo/rangebar/Bar;->mTickHeight:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/edmodo/rangebar/Bar;->mTickStartY:F

    .line 55
    iget v0, p0, Lcom/edmodo/rangebar/Bar;->mY:F

    iget v1, p0, Lcom/edmodo/rangebar/Bar;->mTickHeight:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/edmodo/rangebar/Bar;->mTickEndY:F

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/edmodo/rangebar/Bar;->mPaint:Landroid/graphics/Paint;

    .line 58
    iget-object v0, p0, Lcom/edmodo/rangebar/Bar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p8}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v0, p0, Lcom/edmodo/rangebar/Bar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    iget-object v0, p0, Lcom/edmodo/rangebar/Bar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    return-void
.end method

.method private drawTicks(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 136
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget v0, p0, Lcom/edmodo/rangebar/Bar;->mNumSegments:I

    if-ge v8, v0, :cond_1b

    .line 137
    int-to-float v0, v8

    iget v2, p0, Lcom/edmodo/rangebar/Bar;->mTickDistance:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/edmodo/rangebar/Bar;->mLeftX:F

    add-float v1, v0, v2

    .line 138
    .local v1, "x":F
    iget v2, p0, Lcom/edmodo/rangebar/Bar;->mTickStartY:F

    iget v4, p0, Lcom/edmodo/rangebar/Bar;->mTickEndY:F

    iget-object v5, p0, Lcom/edmodo/rangebar/Bar;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 136
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 142
    .end local v1    # "x":F
    :cond_1b
    iget v3, p0, Lcom/edmodo/rangebar/Bar;->mRightX:F

    iget v4, p0, Lcom/edmodo/rangebar/Bar;->mTickStartY:F

    iget v5, p0, Lcom/edmodo/rangebar/Bar;->mRightX:F

    iget v6, p0, Lcom/edmodo/rangebar/Bar;->mTickEndY:F

    iget-object v7, p0, Lcom/edmodo/rangebar/Bar;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 143
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 71
    iget v1, p0, Lcom/edmodo/rangebar/Bar;->mLeftX:F

    iget v2, p0, Lcom/edmodo/rangebar/Bar;->mY:F

    iget v3, p0, Lcom/edmodo/rangebar/Bar;->mRightX:F

    iget v4, p0, Lcom/edmodo/rangebar/Bar;->mY:F

    iget-object v5, p0, Lcom/edmodo/rangebar/Bar;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 72
    invoke-direct {p0, p1}, Lcom/edmodo/rangebar/Bar;->drawTicks(Landroid/graphics/Canvas;)V

    .line 73
    return-void
.end method

.method getLeftX()F
    .registers 2

    .prologue
    .line 81
    iget v0, p0, Lcom/edmodo/rangebar/Bar;->mLeftX:F

    return v0
.end method

.method getNearestTickCoordinate(Lcom/edmodo/rangebar/Thumb;)F
    .registers 7
    .param p1, "thumb"    # Lcom/edmodo/rangebar/Thumb;

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/edmodo/rangebar/Bar;->getNearestTickIndex(Lcom/edmodo/rangebar/Thumb;)I

    move-result v1

    .line 101
    .local v1, "nearestTickIndex":I
    iget v2, p0, Lcom/edmodo/rangebar/Bar;->mLeftX:F

    int-to-float v3, v1

    iget v4, p0, Lcom/edmodo/rangebar/Bar;->mTickDistance:F

    mul-float/2addr v3, v4

    add-float v0, v2, v3

    .line 102
    .local v0, "nearestTickCoordinate":F
    return v0
.end method

.method getNearestTickIndex(Lcom/edmodo/rangebar/Thumb;)I
    .registers 6
    .param p1, "thumb"    # Lcom/edmodo/rangebar/Thumb;

    .prologue
    .line 112
    invoke-virtual {p1}, Lcom/edmodo/rangebar/Thumb;->getX()F

    move-result v1

    iget v2, p0, Lcom/edmodo/rangebar/Bar;->mLeftX:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/edmodo/rangebar/Bar;->mTickDistance:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/edmodo/rangebar/Bar;->mTickDistance:F

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 113
    .local v0, "nearestTickIndex":I
    return v0
.end method

.method getRightX()F
    .registers 2

    .prologue
    .line 90
    iget v0, p0, Lcom/edmodo/rangebar/Bar;->mRightX:F

    return v0
.end method

.method setTickCount(I)V
    .registers 5
    .param p1, "tickCount"    # I

    .prologue
    .line 122
    iget v1, p0, Lcom/edmodo/rangebar/Bar;->mRightX:F

    iget v2, p0, Lcom/edmodo/rangebar/Bar;->mLeftX:F

    sub-float v0, v1, v2

    .line 123
    .local v0, "barLength":F
    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/edmodo/rangebar/Bar;->mNumSegments:I

    .line 124
    iget v1, p0, Lcom/edmodo/rangebar/Bar;->mNumSegments:I

    int-to-float v1, v1

    div-float v1, v0, v1

    iput v1, p0, Lcom/edmodo/rangebar/Bar;->mTickDistance:F

    .line 125
    return-void
.end method
