.class public Lcom/edmodo/rangebar/RangeBar;
.super Landroid/view/View;
.source "RangeBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/edmodo/rangebar/RangeBar$OnRangeBarChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_BAR_COLOR:I = -0x333334

.field private static final DEFAULT_BAR_WEIGHT_PX:F = 2.0f

.field private static final DEFAULT_CONNECTING_LINE_COLOR:I = -0xcc4a1b

.field private static final DEFAULT_CONNECTING_LINE_WEIGHT_PX:F = 4.0f

.field private static final DEFAULT_THUMB_COLOR_NORMAL:I = -0x1

.field private static final DEFAULT_THUMB_COLOR_PRESSED:I = -0x1

.field private static final DEFAULT_THUMB_RADIUS_DP:F = -1.0f

.field private static final DEFAULT_TICK_COUNT:I = 0x3

.field private static final DEFAULT_TICK_HEIGHT_DP:F = 24.0f

.field private static final TAG:Ljava/lang/String; = "RangeBar"


# instance fields
.field private mBar:Lcom/edmodo/rangebar/Bar;

.field private mBarColor:I

.field private mBarWeight:F

.field private mConnectingLine:Lcom/edmodo/rangebar/ConnectingLine;

.field private mConnectingLineColor:I

.field private mConnectingLineWeight:F

.field private mDefaultHeight:I

.field private mDefaultWidth:I

.field private mFirstSetTickCount:Z

.field private mLeftIndex:I

.field private mLeftThumb:Lcom/edmodo/rangebar/Thumb;

.field private mListener:Lcom/edmodo/rangebar/RangeBar$OnRangeBarChangeListener;

.field private mRightIndex:I

.field private mRightThumb:Lcom/edmodo/rangebar/Thumb;

.field private mThumbColorNormal:I

.field private mThumbColorPressed:I

.field private mThumbImageNormal:I

.field private mThumbImagePressed:I

.field private mThumbRadiusDP:F

.field private mTickCount:I

.field private mTickHeightDP:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 112
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 67
    const/4 v0, 0x3

    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mTickCount:I

    .line 69
    const/high16 v0, 0x41c00000    # 24.0f

    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mTickHeightDP:F

    .line 71
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mBarWeight:F

    .line 73
    const v0, -0x333334

    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mBarColor:I

    .line 75
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mConnectingLineWeight:F

    .line 77
    const v0, -0xcc4a1b

    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mConnectingLineColor:I

    .line 83
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbRadiusDP:F

    .line 85
    iput v1, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbColorNormal:I

    .line 87
    iput v1, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbColorPressed:I

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/edmodo/rangebar/RangeBar;->mFirstSetTickCount:Z

    .line 93
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mDefaultWidth:I

    .line 95
    const/16 v0, 0x64

    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mDefaultHeight:I

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftIndex:I

    .line 109
    iget v0, p0, Lcom/edmodo/rangebar/RangeBar;->mTickCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mRightIndex:I

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, -0x1

    .line 116
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/4 v0, 0x3

    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mTickCount:I

    .line 69
    const/high16 v0, 0x41c00000    # 24.0f

    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mTickHeightDP:F

    .line 71
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mBarWeight:F

    .line 73
    const v0, -0x333334

    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mBarColor:I

    .line 75
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mConnectingLineWeight:F

    .line 77
    const v0, -0xcc4a1b

    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mConnectingLineColor:I

    .line 83
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbRadiusDP:F

    .line 85
    iput v1, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbColorNormal:I

    .line 87
    iput v1, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbColorPressed:I

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/edmodo/rangebar/RangeBar;->mFirstSetTickCount:Z

    .line 93
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mDefaultWidth:I

    .line 95
    const/16 v0, 0x64

    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mDefaultHeight:I

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftIndex:I

    .line 109
    iget v0, p0, Lcom/edmodo/rangebar/RangeBar;->mTickCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mRightIndex:I

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/edmodo/rangebar/RangeBar;->rangeBarInit(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, -0x1

    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    const/4 v0, 0x3

    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mTickCount:I

    .line 69
    const/high16 v0, 0x41c00000    # 24.0f

    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mTickHeightDP:F

    .line 71
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mBarWeight:F

    .line 73
    const v0, -0x333334

    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mBarColor:I

    .line 75
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mConnectingLineWeight:F

    .line 77
    const v0, -0xcc4a1b

    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mConnectingLineColor:I

    .line 83
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbRadiusDP:F

    .line 85
    iput v1, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbColorNormal:I

    .line 87
    iput v1, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbColorPressed:I

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/edmodo/rangebar/RangeBar;->mFirstSetTickCount:Z

    .line 93
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mDefaultWidth:I

    .line 95
    const/16 v0, 0x64

    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mDefaultHeight:I

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftIndex:I

    .line 109
    iget v0, p0, Lcom/edmodo/rangebar/RangeBar;->mTickCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mRightIndex:I

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/edmodo/rangebar/RangeBar;->rangeBarInit(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    return-void
.end method

.method private createBar()V
    .registers 10

    .prologue
    .line 526
    new-instance v0, Lcom/edmodo/rangebar/Bar;

    invoke-virtual {p0}, Lcom/edmodo/rangebar/RangeBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/edmodo/rangebar/RangeBar;->getMarginLeft()F

    move-result v2

    invoke-direct {p0}, Lcom/edmodo/rangebar/RangeBar;->getYPos()F

    move-result v3

    invoke-direct {p0}, Lcom/edmodo/rangebar/RangeBar;->getBarLength()F

    move-result v4

    iget v5, p0, Lcom/edmodo/rangebar/RangeBar;->mTickCount:I

    iget v6, p0, Lcom/edmodo/rangebar/RangeBar;->mTickHeightDP:F

    iget v7, p0, Lcom/edmodo/rangebar/RangeBar;->mBarWeight:F

    iget v8, p0, Lcom/edmodo/rangebar/RangeBar;->mBarColor:I

    invoke-direct/range {v0 .. v8}, Lcom/edmodo/rangebar/Bar;-><init>(Landroid/content/Context;FFFIFFI)V

    iput-object v0, p0, Lcom/edmodo/rangebar/RangeBar;->mBar:Lcom/edmodo/rangebar/Bar;

    .line 527
    invoke-virtual {p0}, Lcom/edmodo/rangebar/RangeBar;->invalidate()V

    .line 528
    return-void
.end method

.method private createConnectingLine()V
    .registers 6

    .prologue
    .line 536
    new-instance v0, Lcom/edmodo/rangebar/ConnectingLine;

    invoke-virtual {p0}, Lcom/edmodo/rangebar/RangeBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/edmodo/rangebar/RangeBar;->getYPos()F

    move-result v2

    iget v3, p0, Lcom/edmodo/rangebar/RangeBar;->mConnectingLineWeight:F

    iget v4, p0, Lcom/edmodo/rangebar/RangeBar;->mConnectingLineColor:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/edmodo/rangebar/ConnectingLine;-><init>(Landroid/content/Context;FFI)V

    iput-object v0, p0, Lcom/edmodo/rangebar/RangeBar;->mConnectingLine:Lcom/edmodo/rangebar/ConnectingLine;

    .line 537
    invoke-virtual {p0}, Lcom/edmodo/rangebar/RangeBar;->invalidate()V

    .line 538
    return-void
.end method

.method private createThumbs()V
    .registers 11

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/edmodo/rangebar/RangeBar;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 547
    .local v1, "ctx":Landroid/content/Context;
    invoke-direct {p0}, Lcom/edmodo/rangebar/RangeBar;->getYPos()F

    move-result v2

    .line 548
    .local v2, "yPos":F
    new-instance v0, Lcom/edmodo/rangebar/Thumb;

    iget v3, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbColorNormal:I

    iget v4, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbColorPressed:I

    iget v5, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbRadiusDP:F

    iget v6, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbImageNormal:I

    iget v7, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbImagePressed:I

    invoke-direct/range {v0 .. v7}, Lcom/edmodo/rangebar/Thumb;-><init>(Landroid/content/Context;FIIFII)V

    iput-object v0, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftThumb:Lcom/edmodo/rangebar/Thumb;

    .line 549
    new-instance v0, Lcom/edmodo/rangebar/Thumb;

    iget v3, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbColorNormal:I

    iget v4, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbColorPressed:I

    iget v5, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbRadiusDP:F

    iget v6, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbImageNormal:I

    iget v7, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbImagePressed:I

    invoke-direct/range {v0 .. v7}, Lcom/edmodo/rangebar/Thumb;-><init>(Landroid/content/Context;FIIFII)V

    iput-object v0, p0, Lcom/edmodo/rangebar/RangeBar;->mRightThumb:Lcom/edmodo/rangebar/Thumb;

    .line 550
    invoke-direct {p0}, Lcom/edmodo/rangebar/RangeBar;->getMarginLeft()F

    move-result v9

    .line 551
    .local v9, "marginLeft":F
    invoke-direct {p0}, Lcom/edmodo/rangebar/RangeBar;->getBarLength()F

    move-result v8

    .line 553
    .local v8, "barLength":F
    iget-object v0, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftThumb:Lcom/edmodo/rangebar/Thumb;

    iget v3, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftIndex:I

    int-to-float v3, v3

    iget v4, p0, Lcom/edmodo/rangebar/RangeBar;->mTickCount:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v3, v8

    add-float/2addr v3, v9

    invoke-virtual {v0, v3}, Lcom/edmodo/rangebar/Thumb;->setX(F)V

    .line 554
    iget-object v0, p0, Lcom/edmodo/rangebar/RangeBar;->mRightThumb:Lcom/edmodo/rangebar/Thumb;

    iget v3, p0, Lcom/edmodo/rangebar/RangeBar;->mRightIndex:I

    int-to-float v3, v3

    iget v4, p0, Lcom/edmodo/rangebar/RangeBar;->mTickCount:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v3, v8

    add-float/2addr v3, v9

    invoke-virtual {v0, v3}, Lcom/edmodo/rangebar/Thumb;->setX(F)V

    .line 555
    invoke-virtual {p0}, Lcom/edmodo/rangebar/RangeBar;->invalidate()V

    .line 556
    return-void
.end method

.method private getBarLength()F
    .registers 4

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/edmodo/rangebar/RangeBar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0}, Lcom/edmodo/rangebar/RangeBar;->getMarginLeft()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private getMarginLeft()F
    .registers 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftThumb:Lcom/edmodo/rangebar/Thumb;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftThumb:Lcom/edmodo/rangebar/Thumb;

    invoke-virtual {v0}, Lcom/edmodo/rangebar/Thumb;->getHalfWidth()F

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private getYPos()F
    .registers 3

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/edmodo/rangebar/RangeBar;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private indexOutOfRange(II)Z
    .registers 4
    .param p1, "leftThumbIndex"    # I
    .param p2, "rightThumbIndex"    # I

    .prologue
    .line 596
    if-ltz p1, :cond_c

    iget v0, p0, Lcom/edmodo/rangebar/RangeBar;->mTickCount:I

    if-ge p1, v0, :cond_c

    if-ltz p2, :cond_c

    iget v0, p0, Lcom/edmodo/rangebar/RangeBar;->mTickCount:I

    if-lt p2, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isValidTickCount(I)Z
    .registers 3
    .param p1, "tickCount"    # I

    .prologue
    const/4 v0, 0x1

    .line 606
    if-le p1, v0, :cond_4

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private moveThumb(Lcom/edmodo/rangebar/Thumb;F)V
    .registers 4
    .param p1, "thumb"    # Lcom/edmodo/rangebar/Thumb;
    .param p2, "x"    # F

    .prologue
    .line 724
    iget-object v0, p0, Lcom/edmodo/rangebar/RangeBar;->mBar:Lcom/edmodo/rangebar/Bar;

    invoke-virtual {v0}, Lcom/edmodo/rangebar/Bar;->getLeftX()F

    move-result v0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_14

    iget-object v0, p0, Lcom/edmodo/rangebar/RangeBar;->mBar:Lcom/edmodo/rangebar/Bar;

    invoke-virtual {v0}, Lcom/edmodo/rangebar/Bar;->getRightX()F

    move-result v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_15

    .line 730
    :cond_14
    :goto_14
    return-void

    .line 727
    :cond_15
    invoke-virtual {p1, p2}, Lcom/edmodo/rangebar/Thumb;->setX(F)V

    .line 728
    invoke-virtual {p0}, Lcom/edmodo/rangebar/RangeBar;->invalidate()V

    goto :goto_14
.end method

.method private onActionDown(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 616
    iget-object v0, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftThumb:Lcom/edmodo/rangebar/Thumb;

    invoke-virtual {v0}, Lcom/edmodo/rangebar/Thumb;->isPressed()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftThumb:Lcom/edmodo/rangebar/Thumb;

    invoke-virtual {v0, p1, p2}, Lcom/edmodo/rangebar/Thumb;->isInTargetZone(FF)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 617
    iget-object v0, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftThumb:Lcom/edmodo/rangebar/Thumb;

    invoke-direct {p0, v0}, Lcom/edmodo/rangebar/RangeBar;->pressThumb(Lcom/edmodo/rangebar/Thumb;)V

    .line 621
    :cond_15
    :goto_15
    return-void

    .line 618
    :cond_16
    iget-object v0, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftThumb:Lcom/edmodo/rangebar/Thumb;

    invoke-virtual {v0}, Lcom/edmodo/rangebar/Thumb;->isPressed()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/edmodo/rangebar/RangeBar;->mRightThumb:Lcom/edmodo/rangebar/Thumb;

    invoke-virtual {v0, p1, p2}, Lcom/edmodo/rangebar/Thumb;->isInTargetZone(FF)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 619
    iget-object v0, p0, Lcom/edmodo/rangebar/RangeBar;->mRightThumb:Lcom/edmodo/rangebar/Thumb;

    invoke-direct {p0, v0}, Lcom/edmodo/rangebar/RangeBar;->pressThumb(Lcom/edmodo/rangebar/Thumb;)V

    goto :goto_15
.end method

.method private onActionMove(F)V
    .registers 8
    .param p1, "x"    # F

    .prologue
    .line 666
    iget-object v3, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftThumb:Lcom/edmodo/rangebar/Thumb;

    invoke-virtual {v3}, Lcom/edmodo/rangebar/Thumb;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 667
    iget-object v3, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftThumb:Lcom/edmodo/rangebar/Thumb;

    invoke-direct {p0, v3, p1}, Lcom/edmodo/rangebar/RangeBar;->moveThumb(Lcom/edmodo/rangebar/Thumb;F)V

    .line 672
    :cond_d
    :goto_d
    iget-object v3, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftThumb:Lcom/edmodo/rangebar/Thumb;

    invoke-virtual {v3}, Lcom/edmodo/rangebar/Thumb;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/edmodo/rangebar/RangeBar;->mRightThumb:Lcom/edmodo/rangebar/Thumb;

    invoke-virtual {v4}, Lcom/edmodo/rangebar/Thumb;->getX()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_25

    .line 673
    iget-object v2, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftThumb:Lcom/edmodo/rangebar/Thumb;

    .line 674
    .local v2, "temp":Lcom/edmodo/rangebar/Thumb;
    iget-object v3, p0, Lcom/edmodo/rangebar/RangeBar;->mRightThumb:Lcom/edmodo/rangebar/Thumb;

    iput-object v3, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftThumb:Lcom/edmodo/rangebar/Thumb;

    .line 675
    iput-object v2, p0, Lcom/edmodo/rangebar/RangeBar;->mRightThumb:Lcom/edmodo/rangebar/Thumb;

    .line 678
    .end local v2    # "temp":Lcom/edmodo/rangebar/Thumb;
    :cond_25
    iget-object v3, p0, Lcom/edmodo/rangebar/RangeBar;->mBar:Lcom/edmodo/rangebar/Bar;

    iget-object v4, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftThumb:Lcom/edmodo/rangebar/Thumb;

    invoke-virtual {v3, v4}, Lcom/edmodo/rangebar/Bar;->getNearestTickIndex(Lcom/edmodo/rangebar/Thumb;)I

    move-result v0

    .line 679
    .local v0, "newLeftIndex":I
    iget-object v3, p0, Lcom/edmodo/rangebar/RangeBar;->mBar:Lcom/edmodo/rangebar/Bar;

    iget-object v4, p0, Lcom/edmodo/rangebar/RangeBar;->mRightThumb:Lcom/edmodo/rangebar/Thumb;

    invoke-virtual {v3, v4}, Lcom/edmodo/rangebar/Bar;->getNearestTickIndex(Lcom/edmodo/rangebar/Thumb;)I

    move-result v1

    .line 681
    .local v1, "newRightIndex":I
    iget v3, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftIndex:I

    if-ne v0, v3, :cond_3d

    iget v3, p0, Lcom/edmodo/rangebar/RangeBar;->mRightIndex:I

    if-eq v1, v3, :cond_4e

    .line 682
    :cond_3d
    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftIndex:I

    .line 683
    iput v1, p0, Lcom/edmodo/rangebar/RangeBar;->mRightIndex:I

    .line 684
    iget-object v3, p0, Lcom/edmodo/rangebar/RangeBar;->mListener:Lcom/edmodo/rangebar/RangeBar$OnRangeBarChangeListener;

    if-eqz v3, :cond_4e

    .line 685
    iget-object v3, p0, Lcom/edmodo/rangebar/RangeBar;->mListener:Lcom/edmodo/rangebar/RangeBar$OnRangeBarChangeListener;

    iget v4, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftIndex:I

    iget v5, p0, Lcom/edmodo/rangebar/RangeBar;->mRightIndex:I

    invoke-interface {v3, p0, v4, v5}, Lcom/edmodo/rangebar/RangeBar$OnRangeBarChangeListener;->onIndexChangeListener(Lcom/edmodo/rangebar/RangeBar;II)V

    .line 688
    :cond_4e
    return-void

    .line 668
    .end local v0    # "newLeftIndex":I
    .end local v1    # "newRightIndex":I
    :cond_4f
    iget-object v3, p0, Lcom/edmodo/rangebar/RangeBar;->mRightThumb:Lcom/edmodo/rangebar/Thumb;

    invoke-virtual {v3}, Lcom/edmodo/rangebar/Thumb;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 669
    iget-object v3, p0, Lcom/edmodo/rangebar/RangeBar;->mRightThumb:Lcom/edmodo/rangebar/Thumb;

    invoke-direct {p0, v3, p1}, Lcom/edmodo/rangebar/RangeBar;->moveThumb(Lcom/edmodo/rangebar/Thumb;F)V

    goto :goto_d
.end method

.method private onActionUp(FF)V
    .registers 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 631
    iget-object v4, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftThumb:Lcom/edmodo/rangebar/Thumb;

    invoke-virtual {v4}, Lcom/edmodo/rangebar/Thumb;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 632
    iget-object v4, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftThumb:Lcom/edmodo/rangebar/Thumb;

    invoke-direct {p0, v4}, Lcom/edmodo/rangebar/RangeBar;->releaseThumb(Lcom/edmodo/rangebar/Thumb;)V

    .line 657
    :cond_d
    :goto_d
    return-void

    .line 633
    :cond_e
    iget-object v4, p0, Lcom/edmodo/rangebar/RangeBar;->mRightThumb:Lcom/edmodo/rangebar/Thumb;

    invoke-virtual {v4}, Lcom/edmodo/rangebar/Thumb;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 634
    iget-object v4, p0, Lcom/edmodo/rangebar/RangeBar;->mRightThumb:Lcom/edmodo/rangebar/Thumb;

    invoke-direct {p0, v4}, Lcom/edmodo/rangebar/RangeBar;->releaseThumb(Lcom/edmodo/rangebar/Thumb;)V

    goto :goto_d

    .line 636
    :cond_1c
    iget-object v4, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftThumb:Lcom/edmodo/rangebar/Thumb;

    invoke-virtual {v4}, Lcom/edmodo/rangebar/Thumb;->getX()F

    move-result v4

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 637
    .local v0, "leftThumbXDistance":F
    iget-object v4, p0, Lcom/edmodo/rangebar/RangeBar;->mRightThumb:Lcom/edmodo/rangebar/Thumb;

    invoke-virtual {v4}, Lcom/edmodo/rangebar/Thumb;->getX()F

    move-result v4

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 638
    .local v3, "rightThumbXDistance":F
    cmpg-float v4, v0, v3

    if-gez v4, :cond_6a

    .line 639
    iget-object v4, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftThumb:Lcom/edmodo/rangebar/Thumb;

    invoke-virtual {v4, p1}, Lcom/edmodo/rangebar/Thumb;->setX(F)V

    .line 640
    iget-object v4, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftThumb:Lcom/edmodo/rangebar/Thumb;

    invoke-direct {p0, v4}, Lcom/edmodo/rangebar/RangeBar;->releaseThumb(Lcom/edmodo/rangebar/Thumb;)V

    .line 646
    :goto_40
    iget-object v4, p0, Lcom/edmodo/rangebar/RangeBar;->mBar:Lcom/edmodo/rangebar/Bar;

    iget-object v5, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftThumb:Lcom/edmodo/rangebar/Thumb;

    invoke-virtual {v4, v5}, Lcom/edmodo/rangebar/Bar;->getNearestTickIndex(Lcom/edmodo/rangebar/Thumb;)I

    move-result v1

    .line 647
    .local v1, "newLeftIndex":I
    iget-object v4, p0, Lcom/edmodo/rangebar/RangeBar;->mBar:Lcom/edmodo/rangebar/Bar;

    iget-object v5, p0, Lcom/edmodo/rangebar/RangeBar;->mRightThumb:Lcom/edmodo/rangebar/Thumb;

    invoke-virtual {v4, v5}, Lcom/edmodo/rangebar/Bar;->getNearestTickIndex(Lcom/edmodo/rangebar/Thumb;)I

    move-result v2

    .line 649
    .local v2, "newRightIndex":I
    iget v4, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftIndex:I

    if-ne v1, v4, :cond_58

    iget v4, p0, Lcom/edmodo/rangebar/RangeBar;->mRightIndex:I

    if-eq v2, v4, :cond_d

    .line 650
    :cond_58
    iput v1, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftIndex:I

    .line 651
    iput v2, p0, Lcom/edmodo/rangebar/RangeBar;->mRightIndex:I

    .line 652
    iget-object v4, p0, Lcom/edmodo/rangebar/RangeBar;->mListener:Lcom/edmodo/rangebar/RangeBar$OnRangeBarChangeListener;

    if-eqz v4, :cond_d

    .line 653
    iget-object v4, p0, Lcom/edmodo/rangebar/RangeBar;->mListener:Lcom/edmodo/rangebar/RangeBar$OnRangeBarChangeListener;

    iget v5, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftIndex:I

    iget v6, p0, Lcom/edmodo/rangebar/RangeBar;->mRightIndex:I

    invoke-interface {v4, p0, v5, v6}, Lcom/edmodo/rangebar/RangeBar$OnRangeBarChangeListener;->onIndexChangeListener(Lcom/edmodo/rangebar/RangeBar;II)V

    goto :goto_d

    .line 642
    .end local v1    # "newLeftIndex":I
    .end local v2    # "newRightIndex":I
    :cond_6a
    iget-object v4, p0, Lcom/edmodo/rangebar/RangeBar;->mRightThumb:Lcom/edmodo/rangebar/Thumb;

    invoke-virtual {v4, p1}, Lcom/edmodo/rangebar/Thumb;->setX(F)V

    .line 643
    iget-object v4, p0, Lcom/edmodo/rangebar/RangeBar;->mRightThumb:Lcom/edmodo/rangebar/Thumb;

    invoke-direct {p0, v4}, Lcom/edmodo/rangebar/RangeBar;->releaseThumb(Lcom/edmodo/rangebar/Thumb;)V

    goto :goto_40
.end method

.method private pressThumb(Lcom/edmodo/rangebar/Thumb;)V
    .registers 4
    .param p1, "thumb"    # Lcom/edmodo/rangebar/Thumb;

    .prologue
    .line 697
    iget-boolean v0, p0, Lcom/edmodo/rangebar/RangeBar;->mFirstSetTickCount:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 698
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/edmodo/rangebar/RangeBar;->mFirstSetTickCount:Z

    .line 699
    :cond_8
    invoke-virtual {p1}, Lcom/edmodo/rangebar/Thumb;->press()V

    .line 700
    invoke-virtual {p0}, Lcom/edmodo/rangebar/RangeBar;->invalidate()V

    .line 701
    return-void
.end method

.method private rangeBarInit(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 486
    const-string v2, "OmpRangeBar"

    invoke-static {p1, v2}, Lmobisocial/util/ResUtil;->getStyleableArray(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v2

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 487
    .local v0, "ta":Landroid/content/res/TypedArray;
    const-string v2, "omp_seek_thumb_normal"

    invoke-static {p1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbImageNormal:I

    .line 488
    const-string v2, "omp_seek_thumb_pressed"

    invoke-static {p1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbColorPressed:I

    .line 492
    :try_start_1b
    const-string v2, "OmpRangeBar_omp_rb_tickCount"

    invoke-static {p1, v2}, Lmobisocial/util/ResUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 493
    .local v1, "tickCount":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/edmodo/rangebar/RangeBar;->isValidTickCount(I)Z

    move-result v2

    if-eqz v2, :cond_e8

    .line 496
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/edmodo/rangebar/RangeBar;->mTickCount:I

    .line 497
    const/4 v2, 0x0

    iput v2, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftIndex:I

    .line 498
    iget v2, p0, Lcom/edmodo/rangebar/RangeBar;->mTickCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/edmodo/rangebar/RangeBar;->mRightIndex:I

    .line 499
    iget-object v2, p0, Lcom/edmodo/rangebar/RangeBar;->mListener:Lcom/edmodo/rangebar/RangeBar$OnRangeBarChangeListener;

    if-eqz v2, :cond_50

    .line 500
    iget-object v2, p0, Lcom/edmodo/rangebar/RangeBar;->mListener:Lcom/edmodo/rangebar/RangeBar$OnRangeBarChangeListener;

    iget v3, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftIndex:I

    iget v4, p0, Lcom/edmodo/rangebar/RangeBar;->mRightIndex:I

    invoke-interface {v2, p0, v3, v4}, Lcom/edmodo/rangebar/RangeBar$OnRangeBarChangeListener;->onIndexChangeListener(Lcom/edmodo/rangebar/RangeBar;II)V

    .line 505
    :cond_50
    :goto_50
    const-string v2, "OmpRangeBar_omp_rb_tickHeight"

    invoke-static {p1, v2}, Lmobisocial/util/ResUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/edmodo/rangebar/RangeBar;->mTickHeightDP:F

    .line 506
    const-string v2, "OmpRangeBar_omp_rb_barWeight"

    invoke-static {p1, v2}, Lmobisocial/util/ResUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/edmodo/rangebar/RangeBar;->mBarWeight:F

    .line 507
    const-string v2, "OmpRangeBar_omp_rb_barColor"

    invoke-static {p1, v2}, Lmobisocial/util/ResUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const v3, -0x333334

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/edmodo/rangebar/RangeBar;->mBarColor:I

    .line 508
    const-string v2, "OmpRangeBar_omp_rb_connectingLineWeight"

    invoke-static {p1, v2}, Lmobisocial/util/ResUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/edmodo/rangebar/RangeBar;->mConnectingLineWeight:F

    .line 509
    const-string v2, "OmpRangeBar_omp_rb_connectingLineColor"

    invoke-static {p1, v2}, Lmobisocial/util/ResUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const v3, -0xcc4a1b

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/edmodo/rangebar/RangeBar;->mConnectingLineColor:I

    .line 510
    const-string v2, "OmpRangeBar_omp_rb_thumbRadius"

    invoke-static {p1, v2}, Lmobisocial/util/ResUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbRadiusDP:F

    .line 511
    const-string v2, "OmpRangeBar_omp_rb_thumbImageNormal"

    invoke-static {p1, v2}, Lmobisocial/util/ResUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const-string v3, "omp_seek_thumb_normal"

    invoke-static {p1, v3}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbImageNormal:I

    .line 512
    const-string v2, "OmpRangeBar_omp_rb_thumbImagePressed"

    invoke-static {p1, v2}, Lmobisocial/util/ResUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const-string v3, "omp_seek_thumb_pressed"

    invoke-static {p1, v3}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbImagePressed:I

    .line 513
    const-string v2, "OmpRangeBar_omp_rb_thumbColorNormal"

    invoke-static {p1, v2}, Lmobisocial/util/ResUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbColorNormal:I

    .line 514
    const-string v2, "OmpRangeBar_omp_rb_thumbColorPressed"

    invoke-static {p1, v2}, Lmobisocial/util/ResUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbColorPressed:I
    :try_end_e4
    .catchall {:try_start_1b .. :try_end_e4} :catchall_f1

    .line 516
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 518
    return-void

    .line 503
    :cond_e8
    :try_start_e8
    const-string v2, "RangeBar"

    const-string v3, "tickCount less than 2; invalid tickCount. XML input ignored."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ef
    .catchall {:try_start_e8 .. :try_end_ef} :catchall_f1

    goto/16 :goto_50

    .line 516
    .end local v1    # "tickCount":Ljava/lang/Integer;
    :catchall_f1
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method

.method private releaseThumb(Lcom/edmodo/rangebar/Thumb;)V
    .registers 4
    .param p1, "thumb"    # Lcom/edmodo/rangebar/Thumb;

    .prologue
    .line 710
    iget-object v1, p0, Lcom/edmodo/rangebar/RangeBar;->mBar:Lcom/edmodo/rangebar/Bar;

    invoke-virtual {v1, p1}, Lcom/edmodo/rangebar/Bar;->getNearestTickCoordinate(Lcom/edmodo/rangebar/Thumb;)F

    move-result v0

    .line 711
    .local v0, "nearestTickX":F
    invoke-virtual {p1, v0}, Lcom/edmodo/rangebar/Thumb;->setX(F)V

    .line 712
    invoke-virtual {p1}, Lcom/edmodo/rangebar/Thumb;->release()V

    .line 713
    invoke-virtual {p0}, Lcom/edmodo/rangebar/RangeBar;->invalidate()V

    .line 714
    return-void
.end method


# virtual methods
.method public getLeftIndex()I
    .registers 2

    .prologue
    .line 464
    iget v0, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftIndex:I

    return v0
.end method

.method public getRightIndex()I
    .registers 2

    .prologue
    .line 473
    iget v0, p0, Lcom/edmodo/rangebar/RangeBar;->mRightIndex:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 235
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 236
    iget-object v0, p0, Lcom/edmodo/rangebar/RangeBar;->mBar:Lcom/edmodo/rangebar/Bar;

    invoke-virtual {v0, p1}, Lcom/edmodo/rangebar/Bar;->draw(Landroid/graphics/Canvas;)V

    .line 237
    iget-object v0, p0, Lcom/edmodo/rangebar/RangeBar;->mConnectingLine:Lcom/edmodo/rangebar/ConnectingLine;

    iget-object v1, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftThumb:Lcom/edmodo/rangebar/Thumb;

    iget-object v2, p0, Lcom/edmodo/rangebar/RangeBar;->mRightThumb:Lcom/edmodo/rangebar/Thumb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/edmodo/rangebar/ConnectingLine;->draw(Landroid/graphics/Canvas;Lcom/edmodo/rangebar/Thumb;Lcom/edmodo/rangebar/Thumb;)V

    .line 238
    iget-object v0, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftThumb:Lcom/edmodo/rangebar/Thumb;

    invoke-virtual {v0, p1}, Lcom/edmodo/rangebar/Thumb;->draw(Landroid/graphics/Canvas;)V

    .line 239
    iget-object v0, p0, Lcom/edmodo/rangebar/RangeBar;->mRightThumb:Lcom/edmodo/rangebar/Thumb;

    invoke-virtual {v0, p1}, Lcom/edmodo/rangebar/Thumb;->draw(Landroid/graphics/Canvas;)V

    .line 240
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, -0x80000000

    .line 179
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 180
    .local v4, "measureWidthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 181
    .local v2, "measureHeightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 182
    .local v3, "measureWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 184
    .local v1, "measureHeight":I
    if-ne v4, v6, :cond_23

    .line 185
    move v5, v3

    .line 192
    .local v5, "width":I
    :goto_17
    if-ne v2, v6, :cond_2a

    .line 193
    iget v6, p0, Lcom/edmodo/rangebar/RangeBar;->mDefaultHeight:I

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 199
    .local v0, "height":I
    :goto_1f
    invoke-virtual {p0, v5, v0}, Lcom/edmodo/rangebar/RangeBar;->setMeasuredDimension(II)V

    .line 200
    return-void

    .line 186
    .end local v0    # "height":I
    .end local v5    # "width":I
    :cond_23
    if-ne v4, v7, :cond_27

    .line 187
    move v5, v3

    .restart local v5    # "width":I
    goto :goto_17

    .line 189
    .end local v5    # "width":I
    :cond_27
    iget v5, p0, Lcom/edmodo/rangebar/RangeBar;->mDefaultWidth:I

    .restart local v5    # "width":I
    goto :goto_17

    .line 194
    :cond_2a
    if-ne v2, v7, :cond_2e

    .line 195
    move v0, v1

    .restart local v0    # "height":I
    goto :goto_1f

    .line 197
    .end local v0    # "height":I
    :cond_2e
    iget v0, p0, Lcom/edmodo/rangebar/RangeBar;->mDefaultHeight:I

    .restart local v0    # "height":I
    goto :goto_1f
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 151
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_88

    move-object v0, p1

    .line 152
    check-cast v0, Landroid/os/Bundle;

    .line 153
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "TICK_COUNT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/edmodo/rangebar/RangeBar;->mTickCount:I

    .line 154
    const-string v1, "TICK_HEIGHT_DP"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/edmodo/rangebar/RangeBar;->mTickHeightDP:F

    .line 155
    const-string v1, "BAR_WEIGHT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/edmodo/rangebar/RangeBar;->mBarWeight:F

    .line 156
    const-string v1, "BAR_COLOR"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/edmodo/rangebar/RangeBar;->mBarColor:I

    .line 157
    const-string v1, "CONNECTING_LINE_WEIGHT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/edmodo/rangebar/RangeBar;->mConnectingLineWeight:F

    .line 158
    const-string v1, "CONNECTING_LINE_COLOR"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/edmodo/rangebar/RangeBar;->mConnectingLineColor:I

    .line 159
    const-string v1, "THUMB_IMAGE_NORMAL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbImageNormal:I

    .line 160
    const-string v1, "THUMB_IMAGE_PRESSED"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbImagePressed:I

    .line 161
    const-string v1, "THUMB_RADIUS_DP"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbRadiusDP:F

    .line 162
    const-string v1, "THUMB_COLOR_NORMAL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbColorNormal:I

    .line 163
    const-string v1, "THUMB_COLOR_PRESSED"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbColorPressed:I

    .line 164
    const-string v1, "LEFT_INDEX"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftIndex:I

    .line 165
    const-string v1, "RIGHT_INDEX"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/edmodo/rangebar/RangeBar;->mRightIndex:I

    .line 166
    const-string v1, "FIRST_SET_TICK_COUNT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/edmodo/rangebar/RangeBar;->mFirstSetTickCount:Z

    .line 167
    iget v1, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftIndex:I

    iget v2, p0, Lcom/edmodo/rangebar/RangeBar;->mRightIndex:I

    invoke-virtual {p0, v1, v2}, Lcom/edmodo/rangebar/RangeBar;->setThumbIndices(II)V

    .line 168
    const-string v1, "instanceState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 172
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_87
    return-void

    .line 170
    :cond_88
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_87
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 129
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 130
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "instanceState"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 131
    const-string v1, "TICK_COUNT"

    iget v2, p0, Lcom/edmodo/rangebar/RangeBar;->mTickCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    const-string v1, "TICK_HEIGHT_DP"

    iget v2, p0, Lcom/edmodo/rangebar/RangeBar;->mTickHeightDP:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 133
    const-string v1, "BAR_WEIGHT"

    iget v2, p0, Lcom/edmodo/rangebar/RangeBar;->mBarWeight:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 134
    const-string v1, "BAR_COLOR"

    iget v2, p0, Lcom/edmodo/rangebar/RangeBar;->mBarColor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    const-string v1, "CONNECTING_LINE_WEIGHT"

    iget v2, p0, Lcom/edmodo/rangebar/RangeBar;->mConnectingLineWeight:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 136
    const-string v1, "CONNECTING_LINE_COLOR"

    iget v2, p0, Lcom/edmodo/rangebar/RangeBar;->mConnectingLineColor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    const-string v1, "THUMB_IMAGE_NORMAL"

    iget v2, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbImageNormal:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    const-string v1, "THUMB_IMAGE_PRESSED"

    iget v2, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbImagePressed:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    const-string v1, "THUMB_RADIUS_DP"

    iget v2, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbRadiusDP:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 140
    const-string v1, "THUMB_COLOR_NORMAL"

    iget v2, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbColorNormal:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    const-string v1, "THUMB_COLOR_PRESSED"

    iget v2, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbColorPressed:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 142
    const-string v1, "LEFT_INDEX"

    iget v2, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    const-string v1, "RIGHT_INDEX"

    iget v2, p0, Lcom/edmodo/rangebar/RangeBar;->mRightIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    const-string v1, "FIRST_SET_TICK_COUNT"

    iget-boolean v2, p0, Lcom/edmodo/rangebar/RangeBar;->mFirstSetTickCount:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 145
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 20
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 204
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 205
    invoke-virtual {p0}, Lcom/edmodo/rangebar/RangeBar;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 208
    .local v2, "ctx":Landroid/content/Context;
    move/from16 v0, p2

    int-to-float v1, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v3, v1, v4

    .line 209
    .local v3, "yPos":F
    new-instance v1, Lcom/edmodo/rangebar/Thumb;

    iget v4, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbColorNormal:I

    iget v5, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbColorPressed:I

    iget v6, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbRadiusDP:F

    iget v7, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbImageNormal:I

    iget v8, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbImagePressed:I

    invoke-direct/range {v1 .. v8}, Lcom/edmodo/rangebar/Thumb;-><init>(Landroid/content/Context;FIIFII)V

    iput-object v1, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftThumb:Lcom/edmodo/rangebar/Thumb;

    .line 210
    new-instance v1, Lcom/edmodo/rangebar/Thumb;

    iget v4, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbColorNormal:I

    iget v5, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbColorPressed:I

    iget v6, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbRadiusDP:F

    iget v7, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbImageNormal:I

    iget v8, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbImagePressed:I

    invoke-direct/range {v1 .. v8}, Lcom/edmodo/rangebar/Thumb;-><init>(Landroid/content/Context;FIIFII)V

    iput-object v1, p0, Lcom/edmodo/rangebar/RangeBar;->mRightThumb:Lcom/edmodo/rangebar/Thumb;

    .line 212
    iget-object v1, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftThumb:Lcom/edmodo/rangebar/Thumb;

    invoke-virtual {v1}, Lcom/edmodo/rangebar/Thumb;->getHalfWidth()F

    move-result v6

    .line 213
    .local v6, "marginLeft":F
    move/from16 v0, p1

    int-to-float v1, v0

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v6

    sub-float v8, v1, v4

    .line 214
    .local v8, "barLength":F
    new-instance v4, Lcom/edmodo/rangebar/Bar;

    iget v9, p0, Lcom/edmodo/rangebar/RangeBar;->mTickCount:I

    iget v10, p0, Lcom/edmodo/rangebar/RangeBar;->mTickHeightDP:F

    iget v11, p0, Lcom/edmodo/rangebar/RangeBar;->mBarWeight:F

    iget v12, p0, Lcom/edmodo/rangebar/RangeBar;->mBarColor:I

    move-object v5, v2

    move v7, v3

    invoke-direct/range {v4 .. v12}, Lcom/edmodo/rangebar/Bar;-><init>(Landroid/content/Context;FFFIFFI)V

    iput-object v4, p0, Lcom/edmodo/rangebar/RangeBar;->mBar:Lcom/edmodo/rangebar/Bar;

    .line 216
    iget-object v1, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftThumb:Lcom/edmodo/rangebar/Thumb;

    iget v4, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftIndex:I

    int-to-float v4, v4

    iget v5, p0, Lcom/edmodo/rangebar/RangeBar;->mTickCount:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v4, v8

    add-float/2addr v4, v6

    invoke-virtual {v1, v4}, Lcom/edmodo/rangebar/Thumb;->setX(F)V

    .line 217
    iget-object v1, p0, Lcom/edmodo/rangebar/RangeBar;->mRightThumb:Lcom/edmodo/rangebar/Thumb;

    iget v4, p0, Lcom/edmodo/rangebar/RangeBar;->mRightIndex:I

    int-to-float v4, v4

    iget v5, p0, Lcom/edmodo/rangebar/RangeBar;->mTickCount:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v4, v8

    add-float/2addr v4, v6

    invoke-virtual {v1, v4}, Lcom/edmodo/rangebar/Thumb;->setX(F)V

    .line 219
    iget-object v1, p0, Lcom/edmodo/rangebar/RangeBar;->mBar:Lcom/edmodo/rangebar/Bar;

    iget-object v4, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftThumb:Lcom/edmodo/rangebar/Thumb;

    invoke-virtual {v1, v4}, Lcom/edmodo/rangebar/Bar;->getNearestTickIndex(Lcom/edmodo/rangebar/Thumb;)I

    move-result v13

    .line 220
    .local v13, "newLeftIndex":I
    iget-object v1, p0, Lcom/edmodo/rangebar/RangeBar;->mBar:Lcom/edmodo/rangebar/Bar;

    iget-object v4, p0, Lcom/edmodo/rangebar/RangeBar;->mRightThumb:Lcom/edmodo/rangebar/Thumb;

    invoke-virtual {v1, v4}, Lcom/edmodo/rangebar/Bar;->getNearestTickIndex(Lcom/edmodo/rangebar/Thumb;)I

    move-result v14

    .line 222
    .local v14, "newRightIndex":I
    iget v1, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftIndex:I

    if-ne v13, v1, :cond_87

    iget v1, p0, Lcom/edmodo/rangebar/RangeBar;->mRightIndex:I

    if-eq v14, v1, :cond_98

    .line 223
    :cond_87
    iput v13, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftIndex:I

    .line 224
    iput v14, p0, Lcom/edmodo/rangebar/RangeBar;->mRightIndex:I

    .line 225
    iget-object v1, p0, Lcom/edmodo/rangebar/RangeBar;->mListener:Lcom/edmodo/rangebar/RangeBar$OnRangeBarChangeListener;

    if-eqz v1, :cond_98

    .line 226
    iget-object v1, p0, Lcom/edmodo/rangebar/RangeBar;->mListener:Lcom/edmodo/rangebar/RangeBar$OnRangeBarChangeListener;

    iget v4, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftIndex:I

    iget v5, p0, Lcom/edmodo/rangebar/RangeBar;->mRightIndex:I

    invoke-interface {v1, p0, v4, v5}, Lcom/edmodo/rangebar/RangeBar$OnRangeBarChangeListener;->onIndexChangeListener(Lcom/edmodo/rangebar/RangeBar;II)V

    .line 230
    :cond_98
    new-instance v1, Lcom/edmodo/rangebar/ConnectingLine;

    iget v4, p0, Lcom/edmodo/rangebar/RangeBar;->mConnectingLineWeight:F

    iget v5, p0, Lcom/edmodo/rangebar/RangeBar;->mConnectingLineColor:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/edmodo/rangebar/ConnectingLine;-><init>(Landroid/content/Context;FFI)V

    iput-object v1, p0, Lcom/edmodo/rangebar/RangeBar;->mConnectingLine:Lcom/edmodo/rangebar/ConnectingLine;

    .line 231
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 245
    invoke-virtual {p0}, Lcom/edmodo/rangebar/RangeBar;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_9

    .line 262
    :goto_8
    return v0

    .line 248
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_42

    goto :goto_8

    .line 250
    :pswitch_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/edmodo/rangebar/RangeBar;->onActionDown(FF)V

    move v0, v1

    .line 251
    goto :goto_8

    .line 254
    :pswitch_1e
    invoke-virtual {p0}, Lcom/edmodo/rangebar/RangeBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 255
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/edmodo/rangebar/RangeBar;->onActionUp(FF)V

    move v0, v1

    .line 256
    goto :goto_8

    .line 258
    :pswitch_32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/edmodo/rangebar/RangeBar;->onActionMove(F)V

    .line 259
    invoke-virtual {p0}, Lcom/edmodo/rangebar/RangeBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    move v0, v1

    .line 260
    goto :goto_8

    .line 248
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_11
        :pswitch_1e
        :pswitch_32
        :pswitch_1e
    .end packed-switch
.end method

.method public setBarColor(I)V
    .registers 2
    .param p1, "barColor"    # I

    .prologue
    .line 335
    iput p1, p0, Lcom/edmodo/rangebar/RangeBar;->mBarColor:I

    .line 336
    invoke-direct {p0}, Lcom/edmodo/rangebar/RangeBar;->createBar()V

    .line 337
    return-void
.end method

.method public setBarWeight(F)V
    .registers 2
    .param p1, "barWeight"    # F

    .prologue
    .line 325
    iput p1, p0, Lcom/edmodo/rangebar/RangeBar;->mBarWeight:F

    .line 326
    invoke-direct {p0}, Lcom/edmodo/rangebar/RangeBar;->createBar()V

    .line 327
    return-void
.end method

.method public setConnectingLineColor(I)V
    .registers 2
    .param p1, "connectingLineColor"    # I

    .prologue
    .line 357
    iput p1, p0, Lcom/edmodo/rangebar/RangeBar;->mConnectingLineColor:I

    .line 358
    invoke-direct {p0}, Lcom/edmodo/rangebar/RangeBar;->createConnectingLine()V

    .line 359
    return-void
.end method

.method public setConnectingLineWeight(F)V
    .registers 2
    .param p1, "connectingLineWeight"    # F

    .prologue
    .line 346
    iput p1, p0, Lcom/edmodo/rangebar/RangeBar;->mConnectingLineWeight:F

    .line 347
    invoke-direct {p0}, Lcom/edmodo/rangebar/RangeBar;->createConnectingLine()V

    .line 348
    return-void
.end method

.method public setOnRangeBarChangeListener(Lcom/edmodo/rangebar/RangeBar$OnRangeBarChangeListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/edmodo/rangebar/RangeBar$OnRangeBarChangeListener;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/edmodo/rangebar/RangeBar;->mListener:Lcom/edmodo/rangebar/RangeBar$OnRangeBarChangeListener;

    .line 276
    return-void
.end method

.method public setThumbColorNormal(I)V
    .registers 2
    .param p1, "thumbColorNormal"    # I

    .prologue
    .line 402
    iput p1, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbColorNormal:I

    .line 403
    invoke-direct {p0}, Lcom/edmodo/rangebar/RangeBar;->createThumbs()V

    .line 404
    return-void
.end method

.method public setThumbColorPressed(I)V
    .registers 2
    .param p1, "thumbColorPressed"    # I

    .prologue
    .line 414
    iput p1, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbColorPressed:I

    .line 415
    invoke-direct {p0}, Lcom/edmodo/rangebar/RangeBar;->createThumbs()V

    .line 416
    return-void
.end method

.method public setThumbImageNormal(I)V
    .registers 2
    .param p1, "thumbImageNormalID"    # I

    .prologue
    .line 379
    iput p1, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbImageNormal:I

    .line 380
    invoke-direct {p0}, Lcom/edmodo/rangebar/RangeBar;->createThumbs()V

    .line 381
    return-void
.end method

.method public setThumbImagePressed(I)V
    .registers 2
    .param p1, "thumbImagePressedID"    # I

    .prologue
    .line 390
    iput p1, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbImagePressed:I

    .line 391
    invoke-direct {p0}, Lcom/edmodo/rangebar/RangeBar;->createThumbs()V

    .line 392
    return-void
.end method

.method public setThumbIndices(II)V
    .registers 6
    .param p1, "leftThumbIndex"    # I
    .param p2, "rightThumbIndex"    # I

    .prologue
    .line 426
    invoke-direct {p0, p1, p2}, Lcom/edmodo/rangebar/RangeBar;->indexOutOfRange(II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 427
    const-string v0, "RangeBar"

    const-string v1, "A thumb index is out of bounds. Check that it is between 0 and mTickCount - 1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A thumb index is out of bounds. Check that it is between 0 and mTickCount - 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_15
    iget-boolean v0, p0, Lcom/edmodo/rangebar/RangeBar;->mFirstSetTickCount:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/edmodo/rangebar/RangeBar;->mFirstSetTickCount:Z

    .line 432
    :cond_1d
    iput p1, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftIndex:I

    .line 433
    iput p2, p0, Lcom/edmodo/rangebar/RangeBar;->mRightIndex:I

    .line 434
    invoke-direct {p0}, Lcom/edmodo/rangebar/RangeBar;->createThumbs()V

    .line 435
    iget-object v0, p0, Lcom/edmodo/rangebar/RangeBar;->mListener:Lcom/edmodo/rangebar/RangeBar$OnRangeBarChangeListener;

    if-eqz v0, :cond_31

    .line 436
    iget-object v0, p0, Lcom/edmodo/rangebar/RangeBar;->mListener:Lcom/edmodo/rangebar/RangeBar$OnRangeBarChangeListener;

    iget v1, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftIndex:I

    iget v2, p0, Lcom/edmodo/rangebar/RangeBar;->mRightIndex:I

    invoke-interface {v0, p0, v1, v2}, Lcom/edmodo/rangebar/RangeBar$OnRangeBarChangeListener;->onIndexChangeListener(Lcom/edmodo/rangebar/RangeBar;II)V

    .line 439
    :cond_31
    invoke-virtual {p0}, Lcom/edmodo/rangebar/RangeBar;->invalidate()V

    .line 440
    invoke-virtual {p0}, Lcom/edmodo/rangebar/RangeBar;->requestLayout()V

    .line 441
    return-void
.end method

.method public setThumbRadius(F)V
    .registers 2
    .param p1, "thumbRadius"    # F

    .prologue
    .line 368
    iput p1, p0, Lcom/edmodo/rangebar/RangeBar;->mThumbRadiusDP:F

    .line 369
    invoke-direct {p0}, Lcom/edmodo/rangebar/RangeBar;->createThumbs()V

    .line 370
    return-void
.end method

.method public setTickCount(I)V
    .registers 6
    .param p1, "tickCount"    # I

    .prologue
    const/4 v3, 0x0

    .line 284
    invoke-direct {p0, p1}, Lcom/edmodo/rangebar/RangeBar;->isValidTickCount(I)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 285
    iput p1, p0, Lcom/edmodo/rangebar/RangeBar;->mTickCount:I

    .line 287
    iget-boolean v0, p0, Lcom/edmodo/rangebar/RangeBar;->mFirstSetTickCount:Z

    if-eqz v0, :cond_22

    .line 288
    iput v3, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftIndex:I

    .line 289
    iget v0, p0, Lcom/edmodo/rangebar/RangeBar;->mTickCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mRightIndex:I

    .line 290
    iget-object v0, p0, Lcom/edmodo/rangebar/RangeBar;->mListener:Lcom/edmodo/rangebar/RangeBar$OnRangeBarChangeListener;

    if-eqz v0, :cond_22

    .line 291
    iget-object v0, p0, Lcom/edmodo/rangebar/RangeBar;->mListener:Lcom/edmodo/rangebar/RangeBar$OnRangeBarChangeListener;

    iget v1, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftIndex:I

    iget v2, p0, Lcom/edmodo/rangebar/RangeBar;->mRightIndex:I

    invoke-interface {v0, p0, v1, v2}, Lcom/edmodo/rangebar/RangeBar$OnRangeBarChangeListener;->onIndexChangeListener(Lcom/edmodo/rangebar/RangeBar;II)V

    .line 294
    :cond_22
    iget v0, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftIndex:I

    iget v1, p0, Lcom/edmodo/rangebar/RangeBar;->mRightIndex:I

    invoke-direct {p0, v0, v1}, Lcom/edmodo/rangebar/RangeBar;->indexOutOfRange(II)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 295
    iput v3, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftIndex:I

    .line 296
    iget v0, p0, Lcom/edmodo/rangebar/RangeBar;->mTickCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/edmodo/rangebar/RangeBar;->mRightIndex:I

    .line 297
    iget-object v0, p0, Lcom/edmodo/rangebar/RangeBar;->mListener:Lcom/edmodo/rangebar/RangeBar$OnRangeBarChangeListener;

    if-eqz v0, :cond_41

    .line 298
    iget-object v0, p0, Lcom/edmodo/rangebar/RangeBar;->mListener:Lcom/edmodo/rangebar/RangeBar$OnRangeBarChangeListener;

    iget v1, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftIndex:I

    iget v2, p0, Lcom/edmodo/rangebar/RangeBar;->mRightIndex:I

    invoke-interface {v0, p0, v1, v2}, Lcom/edmodo/rangebar/RangeBar$OnRangeBarChangeListener;->onIndexChangeListener(Lcom/edmodo/rangebar/RangeBar;II)V

    .line 300
    :cond_41
    invoke-direct {p0}, Lcom/edmodo/rangebar/RangeBar;->createBar()V

    .line 301
    invoke-direct {p0}, Lcom/edmodo/rangebar/RangeBar;->createThumbs()V

    .line 306
    return-void

    .line 303
    :cond_48
    const-string v0, "RangeBar"

    const-string v1, "tickCount less than 2; invalid tickCount."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tickCount less than 2; invalid tickCount."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTickHeight(F)V
    .registers 2
    .param p1, "tickHeight"    # F

    .prologue
    .line 314
    iput p1, p0, Lcom/edmodo/rangebar/RangeBar;->mTickHeightDP:F

    .line 315
    invoke-direct {p0}, Lcom/edmodo/rangebar/RangeBar;->createBar()V

    .line 316
    return-void
.end method

.method public updateThumbIndices(II)V
    .registers 7
    .param p1, "leftThumbIndex"    # I
    .param p2, "rightThumbIndex"    # I

    .prologue
    .line 450
    iget-object v0, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftThumb:Lcom/edmodo/rangebar/Thumb;

    invoke-direct {p0}, Lcom/edmodo/rangebar/RangeBar;->getMarginLeft()F

    move-result v1

    int-to-float v2, p1

    iget v3, p0, Lcom/edmodo/rangebar/RangeBar;->mTickCount:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-direct {p0}, Lcom/edmodo/rangebar/RangeBar;->getBarLength()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/edmodo/rangebar/Thumb;->setX(F)V

    .line 451
    iget-object v0, p0, Lcom/edmodo/rangebar/RangeBar;->mRightThumb:Lcom/edmodo/rangebar/Thumb;

    invoke-direct {p0}, Lcom/edmodo/rangebar/RangeBar;->getMarginLeft()F

    move-result v1

    int-to-float v2, p2

    iget v3, p0, Lcom/edmodo/rangebar/RangeBar;->mTickCount:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-direct {p0}, Lcom/edmodo/rangebar/RangeBar;->getBarLength()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/edmodo/rangebar/Thumb;->setX(F)V

    .line 452
    iput p1, p0, Lcom/edmodo/rangebar/RangeBar;->mLeftIndex:I

    .line 453
    iput p2, p0, Lcom/edmodo/rangebar/RangeBar;->mRightIndex:I

    .line 454
    invoke-virtual {p0}, Lcom/edmodo/rangebar/RangeBar;->invalidate()V

    .line 455
    invoke-virtual {p0}, Lcom/edmodo/rangebar/RangeBar;->requestLayout()V

    .line 456
    return-void
.end method
