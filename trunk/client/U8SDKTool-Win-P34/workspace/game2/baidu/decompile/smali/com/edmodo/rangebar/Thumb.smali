.class Lcom/edmodo/rangebar/Thumb;
.super Ljava/lang/Object;
.source "Thumb.java"


# static fields
.field private static final DEFAULT_THUMB_COLOR_NORMAL:I = -0xcc4a1b

.field private static final DEFAULT_THUMB_COLOR_PRESSED:I = -0xcc4a1b

.field private static final DEFAULT_THUMB_RADIUS_DP:F = 14.0f

.field private static final MINIMUM_TARGET_RADIUS_DP:F = 24.0f


# instance fields
.field private final mHalfHeightNormal:F

.field private final mHalfHeightPressed:F

.field private final mHalfWidthNormal:F

.field private final mHalfWidthPressed:F

.field private final mImageNormal:Landroid/graphics/Bitmap;

.field private final mImagePressed:Landroid/graphics/Bitmap;

.field private mIsPressed:Z

.field private mPaintNormal:Landroid/graphics/Paint;

.field private mPaintPressed:Landroid/graphics/Paint;

.field private final mTargetRadiusPx:F

.field private mThumbColorNormal:I

.field private mThumbColorPressed:I

.field private mThumbRadiusPx:F

.field private mUseBitmap:Z

.field private mX:F

.field private final mY:F


# direct methods
.method constructor <init>(Landroid/content/Context;FIIFII)V
    .registers 16
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "y"    # F
    .param p3, "thumbColorNormal"    # I
    .param p4, "thumbColorPressed"    # I
    .param p5, "thumbRadiusDP"    # F
    .param p6, "thumbImageNormal"    # I
    .param p7, "thumbImagePressed"    # I

    .prologue
    const v7, -0xcc4a1b

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v6, -0x1

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/edmodo/rangebar/Thumb;->mIsPressed:Z

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 90
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {v0, p6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/edmodo/rangebar/Thumb;->mImageNormal:Landroid/graphics/Bitmap;

    .line 91
    invoke-static {v0, p7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/edmodo/rangebar/Thumb;->mImagePressed:Landroid/graphics/Bitmap;

    .line 93
    cmpl-float v2, p5, v3

    if-nez v2, :cond_6a

    if-ne p3, v6, :cond_6a

    if-ne p4, v6, :cond_6a

    .line 94
    iput-boolean v4, p0, Lcom/edmodo/rangebar/Thumb;->mUseBitmap:Z

    .line 118
    :goto_29
    iget-object v2, p0, Lcom/edmodo/rangebar/Thumb;->mImageNormal:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iput v2, p0, Lcom/edmodo/rangebar/Thumb;->mHalfWidthNormal:F

    .line 119
    iget-object v2, p0, Lcom/edmodo/rangebar/Thumb;->mImageNormal:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iput v2, p0, Lcom/edmodo/rangebar/Thumb;->mHalfHeightNormal:F

    .line 120
    iget-object v2, p0, Lcom/edmodo/rangebar/Thumb;->mImagePressed:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iput v2, p0, Lcom/edmodo/rangebar/Thumb;->mHalfWidthPressed:F

    .line 121
    iget-object v2, p0, Lcom/edmodo/rangebar/Thumb;->mImagePressed:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iput v2, p0, Lcom/edmodo/rangebar/Thumb;->mHalfHeightPressed:F

    .line 124
    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2, p5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v1, v2

    .line 125
    .local v1, "targetRadius":I
    int-to-float v2, v1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/edmodo/rangebar/Thumb;->mTargetRadiusPx:F

    .line 126
    iget v2, p0, Lcom/edmodo/rangebar/Thumb;->mHalfWidthNormal:F

    iput v2, p0, Lcom/edmodo/rangebar/Thumb;->mX:F

    .line 127
    iput p2, p0, Lcom/edmodo/rangebar/Thumb;->mY:F

    .line 128
    return-void

    .line 96
    .end local v1    # "targetRadius":I
    :cond_6a
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/edmodo/rangebar/Thumb;->mUseBitmap:Z

    .line 98
    cmpl-float v2, p5, v3

    if-nez v2, :cond_ad

    .line 99
    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/edmodo/rangebar/Thumb;->mThumbRadiusPx:F

    .line 102
    :goto_7d
    if-ne p3, v6, :cond_b8

    .line 103
    iput v7, p0, Lcom/edmodo/rangebar/Thumb;->mThumbColorNormal:I

    .line 106
    :goto_81
    if-ne p4, v6, :cond_bb

    .line 107
    iput v7, p0, Lcom/edmodo/rangebar/Thumb;->mThumbColorPressed:I

    .line 111
    :goto_85
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/edmodo/rangebar/Thumb;->mPaintNormal:Landroid/graphics/Paint;

    .line 112
    iget-object v2, p0, Lcom/edmodo/rangebar/Thumb;->mPaintNormal:Landroid/graphics/Paint;

    iget v3, p0, Lcom/edmodo/rangebar/Thumb;->mThumbColorNormal:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    iget-object v2, p0, Lcom/edmodo/rangebar/Thumb;->mPaintNormal:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/edmodo/rangebar/Thumb;->mPaintPressed:Landroid/graphics/Paint;

    .line 115
    iget-object v2, p0, Lcom/edmodo/rangebar/Thumb;->mPaintPressed:Landroid/graphics/Paint;

    iget v3, p0, Lcom/edmodo/rangebar/Thumb;->mThumbColorPressed:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget-object v2, p0, Lcom/edmodo/rangebar/Thumb;->mPaintPressed:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/16 :goto_29

    .line 101
    :cond_ad
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, p5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/edmodo/rangebar/Thumb;->mThumbRadiusPx:F

    goto :goto_7d

    .line 105
    :cond_b8
    iput p3, p0, Lcom/edmodo/rangebar/Thumb;->mThumbColorNormal:I

    goto :goto_81

    .line 109
    :cond_bb
    iput p4, p0, Lcom/edmodo/rangebar/Thumb;->mThumbColorPressed:I

    goto :goto_85
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 183
    iget-boolean v5, p0, Lcom/edmodo/rangebar/Thumb;->mUseBitmap:Z

    if-eqz v5, :cond_32

    .line 184
    iget-boolean v5, p0, Lcom/edmodo/rangebar/Thumb;->mIsPressed:Z

    if-eqz v5, :cond_1f

    iget-object v0, p0, Lcom/edmodo/rangebar/Thumb;->mImagePressed:Landroid/graphics/Bitmap;

    .line 185
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_b
    iget-boolean v5, p0, Lcom/edmodo/rangebar/Thumb;->mIsPressed:Z

    if-eqz v5, :cond_22

    .line 186
    iget v5, p0, Lcom/edmodo/rangebar/Thumb;->mY:F

    iget v6, p0, Lcom/edmodo/rangebar/Thumb;->mHalfHeightPressed:F

    sub-float v4, v5, v6

    .line 187
    .local v4, "topPressed":F
    iget v5, p0, Lcom/edmodo/rangebar/Thumb;->mX:F

    iget v6, p0, Lcom/edmodo/rangebar/Thumb;->mHalfWidthPressed:F

    sub-float v2, v5, v6

    .line 188
    .local v2, "leftPressed":F
    invoke-virtual {p1, v0, v2, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 201
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "leftPressed":F
    .end local v4    # "topPressed":F
    :goto_1e
    return-void

    .line 184
    :cond_1f
    iget-object v0, p0, Lcom/edmodo/rangebar/Thumb;->mImageNormal:Landroid/graphics/Bitmap;

    goto :goto_b

    .line 190
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_22
    iget v5, p0, Lcom/edmodo/rangebar/Thumb;->mY:F

    iget v6, p0, Lcom/edmodo/rangebar/Thumb;->mHalfHeightNormal:F

    sub-float v3, v5, v6

    .line 191
    .local v3, "topNormal":F
    iget v5, p0, Lcom/edmodo/rangebar/Thumb;->mX:F

    iget v6, p0, Lcom/edmodo/rangebar/Thumb;->mHalfWidthNormal:F

    sub-float v1, v5, v6

    .line 192
    .local v1, "leftNormal":F
    invoke-virtual {p1, v0, v1, v3, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1e

    .line 196
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "leftNormal":F
    .end local v3    # "topNormal":F
    :cond_32
    iget-boolean v5, p0, Lcom/edmodo/rangebar/Thumb;->mIsPressed:Z

    if-eqz v5, :cond_42

    .line 197
    iget v5, p0, Lcom/edmodo/rangebar/Thumb;->mX:F

    iget v6, p0, Lcom/edmodo/rangebar/Thumb;->mY:F

    iget v7, p0, Lcom/edmodo/rangebar/Thumb;->mThumbRadiusPx:F

    iget-object v8, p0, Lcom/edmodo/rangebar/Thumb;->mPaintPressed:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1e

    .line 199
    :cond_42
    iget v5, p0, Lcom/edmodo/rangebar/Thumb;->mX:F

    iget v6, p0, Lcom/edmodo/rangebar/Thumb;->mY:F

    iget v7, p0, Lcom/edmodo/rangebar/Thumb;->mThumbRadiusPx:F

    iget-object v8, p0, Lcom/edmodo/rangebar/Thumb;->mPaintNormal:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1e
.end method

.method getHalfHeight()F
    .registers 2

    .prologue
    .line 136
    iget v0, p0, Lcom/edmodo/rangebar/Thumb;->mHalfHeightNormal:F

    return v0
.end method

.method getHalfWidth()F
    .registers 2

    .prologue
    .line 132
    iget v0, p0, Lcom/edmodo/rangebar/Thumb;->mHalfWidthNormal:F

    return v0
.end method

.method getX()F
    .registers 2

    .prologue
    .line 144
    iget v0, p0, Lcom/edmodo/rangebar/Thumb;->mX:F

    return v0
.end method

.method isInTargetZone(FF)Z
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 169
    iget v0, p0, Lcom/edmodo/rangebar/Thumb;->mX:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/edmodo/rangebar/Thumb;->mTargetRadiusPx:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1e

    iget v0, p0, Lcom/edmodo/rangebar/Thumb;->mY:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/edmodo/rangebar/Thumb;->mTargetRadiusPx:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1e

    .line 170
    const/4 v0, 0x1

    .line 172
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method isPressed()Z
    .registers 2

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/edmodo/rangebar/Thumb;->mIsPressed:Z

    return v0
.end method

.method press()V
    .registers 2

    .prologue
    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/edmodo/rangebar/Thumb;->mIsPressed:Z

    .line 153
    return-void
.end method

.method release()V
    .registers 2

    .prologue
    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/edmodo/rangebar/Thumb;->mIsPressed:Z

    .line 157
    return-void
.end method

.method setX(F)V
    .registers 2
    .param p1, "x"    # F

    .prologue
    .line 140
    iput p1, p0, Lcom/edmodo/rangebar/Thumb;->mX:F

    .line 141
    return-void
.end method
