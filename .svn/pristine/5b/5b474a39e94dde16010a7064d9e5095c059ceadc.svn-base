.class public Lmobisocial/omlet/overlaybar/util/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private mHorizontalSpacing:I

.field private mPaint:Landroid/graphics/Paint;

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const-string v1, "OmpFlowLayout"

    invoke-static {p1, v1}, Lmobisocial/util/ResUtil;->getStyleableArray(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 25
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_d
    const-string v1, "OmpFlowLayout_omp_horizontalSpacing"

    invoke-static {p1, v1}, Lmobisocial/util/ResUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lmobisocial/omlet/overlaybar/util/FlowLayout;->mHorizontalSpacing:I

    .line 26
    const-string v1, "OmpFlowLayout_omp_verticalSpacing"

    invoke-static {p1, v1}, Lmobisocial/util/ResUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lmobisocial/omlet/overlaybar/util/FlowLayout;->mVerticalSpacing:I
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_46

    .line 28
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/util/FlowLayout;->mPaint:Landroid/graphics/Paint;

    .line 31
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/util/FlowLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/util/FlowLayout;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/util/FlowLayout;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 34
    return-void

    .line 28
    :catchall_46
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 113
    instance-of v0, p1, Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 93
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v10

    .line 94
    .local v10, "more":Z
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;

    .line 95
    .local v9, "lp":Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;
    iget v0, v9, Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;->horizontalSpacing:I

    if-lez v0, :cond_56

    .line 96
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v1, v0

    .line 97
    .local v1, "x":F
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v11, v0, v3

    .line 98
    .local v11, "y":F
    const/high16 v0, 0x40800000    # 4.0f

    sub-float v2, v11, v0

    const/high16 v0, 0x40800000    # 4.0f

    add-float v4, v11, v0

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/util/FlowLayout;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 99
    iget v0, v9, Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;->horizontalSpacing:I

    int-to-float v0, v0

    add-float v3, v1, v0

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/util/FlowLayout;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v11

    move v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 100
    iget v0, v9, Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;->horizontalSpacing:I

    int-to-float v0, v0

    add-float v3, v1, v0

    const/high16 v0, 0x40800000    # 4.0f

    sub-float v4, v11, v0

    iget v0, v9, Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;->horizontalSpacing:I

    int-to-float v0, v0

    add-float v5, v1, v0

    const/high16 v0, 0x40800000    # 4.0f

    add-float v6, v11, v0

    iget-object v7, p0, Lmobisocial/omlet/overlaybar/util/FlowLayout;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 102
    .end local v1    # "x":F
    .end local v11    # "y":F
    :cond_56
    iget-boolean v0, v9, Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;->breakLine:Z

    if-eqz v0, :cond_8c

    .line 103
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v1, v0

    .line 104
    .restart local v1    # "x":F
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v2, v0, v3

    .line 105
    .local v2, "y":F
    const/high16 v0, 0x40c00000    # 6.0f

    add-float v4, v2, v0

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/util/FlowLayout;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 106
    const/high16 v0, 0x40c00000    # 6.0f

    add-float v5, v2, v0

    const/high16 v0, 0x40c00000    # 6.0f

    add-float v6, v1, v0

    const/high16 v0, 0x40c00000    # 6.0f

    add-float v7, v2, v0

    iget-object v8, p0, Lmobisocial/omlet/overlaybar/util/FlowLayout;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 108
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_8c
    return v10
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 13
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/util/FlowLayout;->generateDefaultLayoutParams()Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 118
    new-instance v0, Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/util/FlowLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/util/FlowLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 123
    new-instance v0, Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/util/FlowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;
    .registers 5
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 128
    new-instance v0, Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, v2}, Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .registers 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 83
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/util/FlowLayout;->getChildCount()I

    move-result v1

    .line 84
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_29

    .line 85
    invoke-virtual {p0, v2}, Lmobisocial/omlet/overlaybar/util/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;

    .line 87
    .local v3, "lp":Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;
    iget v4, v3, Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;->x:I

    iget v5, v3, Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;->y:I

    iget v6, v3, Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;->x:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v3, Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 89
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;
    :cond_29
    return-void
.end method

.method protected onMeasure(II)V
    .registers 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 38
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/util/FlowLayout;->getPaddingRight()I

    move-result v18

    sub-int v16, v17, v18

    .line 39
    .local v16, "widthSize":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 40
    .local v15, "widthMode":I
    if-eqz v15, :cond_89

    const/4 v8, 0x1

    .line 41
    .local v8, "growHeight":Z
    :goto_11
    const/4 v14, 0x0

    .line 42
    .local v14, "width":I
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/util/FlowLayout;->getPaddingTop()I

    move-result v9

    .line 43
    .local v9, "height":I
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/util/FlowLayout;->getPaddingLeft()I

    move-result v7

    .line 44
    .local v7, "currentWidth":I
    const/4 v6, 0x0

    .line 45
    .local v6, "currentHeight":I
    const/4 v3, 0x0

    .line 46
    .local v3, "breakLine":Z
    const/4 v12, 0x0

    .line 47
    .local v12, "newLine":Z
    const/4 v13, 0x0

    .line 48
    .local v13, "spacing":I
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/util/FlowLayout;->getChildCount()I

    move-result v5

    .line 49
    .local v5, "count":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_23
    if-ge v10, v5, :cond_8d

    .line 50
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lmobisocial/omlet/overlaybar/util/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 51
    .local v4, "child":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v4, v1, v2}, Lmobisocial/omlet/overlaybar/util/FlowLayout;->measureChild(Landroid/view/View;II)V

    .line 52
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;

    .line 53
    .local v11, "lp":Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v13, v0, Lmobisocial/omlet/overlaybar/util/FlowLayout;->mHorizontalSpacing:I

    .line 54
    iget v0, v11, Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;->horizontalSpacing:I

    move/from16 v17, v0

    if-ltz v17, :cond_46

    .line 55
    iget v13, v11, Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;->horizontalSpacing:I

    .line 57
    :cond_46
    if-eqz v8, :cond_8b

    if-nez v3, :cond_56

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    add-int v17, v17, v7

    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_8b

    .line 58
    :cond_56
    move-object/from16 v0, p0

    iget v0, v0, Lmobisocial/omlet/overlaybar/util/FlowLayout;->mVerticalSpacing:I

    move/from16 v17, v0

    add-int v17, v17, v6

    add-int v9, v9, v17

    .line 59
    const/4 v6, 0x0

    .line 60
    sub-int v17, v7, v13

    move/from16 v0, v17

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 61
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/util/FlowLayout;->getPaddingLeft()I

    move-result v7

    .line 62
    const/4 v12, 0x1

    .line 66
    :goto_6e
    iput v7, v11, Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;->x:I

    .line 67
    iput v9, v11, Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;->y:I

    .line 68
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    add-int v17, v17, v13

    add-int v7, v7, v17

    .line 69
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 70
    iget-boolean v3, v11, Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;->breakLine:Z

    .line 49
    add-int/lit8 v10, v10, 0x1

    goto :goto_23

    .line 40
    .end local v3    # "breakLine":Z
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "count":I
    .end local v6    # "currentHeight":I
    .end local v7    # "currentWidth":I
    .end local v8    # "growHeight":Z
    .end local v9    # "height":I
    .end local v10    # "i":I
    .end local v11    # "lp":Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;
    .end local v12    # "newLine":Z
    .end local v13    # "spacing":I
    .end local v14    # "width":I
    :cond_89
    const/4 v8, 0x0

    goto :goto_11

    .line 64
    .restart local v3    # "breakLine":Z
    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "count":I
    .restart local v6    # "currentHeight":I
    .restart local v7    # "currentWidth":I
    .restart local v8    # "growHeight":Z
    .restart local v9    # "height":I
    .restart local v10    # "i":I
    .restart local v11    # "lp":Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;
    .restart local v12    # "newLine":Z
    .restart local v13    # "spacing":I
    .restart local v14    # "width":I
    :cond_8b
    const/4 v12, 0x0

    goto :goto_6e

    .line 72
    .end local v4    # "child":Landroid/view/View;
    .end local v11    # "lp":Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;
    :cond_8d
    if-nez v12, :cond_97

    .line 73
    sub-int v17, v7, v13

    move/from16 v0, v17

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 75
    :cond_97
    add-int/2addr v9, v6

    .line 76
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/util/FlowLayout;->getPaddingRight()I

    move-result v17

    add-int v14, v14, v17

    .line 77
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/util/FlowLayout;->getPaddingBottom()I

    move-result v17

    add-int v9, v9, v17

    .line 78
    move/from16 v0, p1

    invoke-static {v14, v0}, Lmobisocial/omlet/overlaybar/util/FlowLayout;->resolveSize(II)I

    move-result v17

    move/from16 v0, p2

    invoke-static {v9, v0}, Lmobisocial/omlet/overlaybar/util/FlowLayout;->resolveSize(II)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lmobisocial/omlet/overlaybar/util/FlowLayout;->setMeasuredDimension(II)V

    .line 79
    return-void
.end method
