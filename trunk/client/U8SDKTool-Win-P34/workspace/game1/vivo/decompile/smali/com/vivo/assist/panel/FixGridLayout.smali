.class public Lcom/vivo/assist/panel/FixGridLayout;
.super Landroid/view/ViewGroup;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/vivo/assist/panel/FixGridLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/vivo/assist/panel/FixGridLayout;->getHeight()I

    move-result v1

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const v3, -0xffff01

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 20

    iget v5, p0, Lcom/vivo/assist/panel/FixGridLayout;->a:I

    iget v6, p0, Lcom/vivo/assist/panel/FixGridLayout;->b:I

    sub-int v0, p4, p2

    div-int/2addr v0, v5

    if-gez v0, :cond_a

    const/4 v0, 0x1

    :cond_a
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/vivo/assist/panel/FixGridLayout;->getChildCount()I

    move-result v7

    const/4 v1, 0x0

    move v13, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v13

    :goto_17
    if-lt v4, v7, :cond_1a

    return-void

    :cond_1a
    invoke-virtual {p0, v4}, Lcom/vivo/assist/panel/FixGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int v11, v5, v9

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v3

    sub-int v12, v6, v10

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v2

    add-int/2addr v9, v11

    add-int/2addr v10, v12

    invoke-virtual {v8, v11, v12, v9, v10}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v8, v0, -0x1

    if-lt v1, v8, :cond_3f

    const/4 v1, 0x0

    const/4 v3, 0x0

    add-int/2addr v2, v6

    :goto_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v3, v5

    goto :goto_3c
.end method

.method protected onMeasure(II)V
    .registers 8

    const/high16 v2, -0x80000000

    iget v0, p0, Lcom/vivo/assist/panel/FixGridLayout;->a:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v0, p0, Lcom/vivo/assist/panel/FixGridLayout;->b:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/vivo/assist/panel/FixGridLayout;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    :goto_13
    if-lt v0, v3, :cond_27

    iget v0, p0, Lcom/vivo/assist/panel/FixGridLayout;->a:I

    mul-int/2addr v0, v3

    invoke-static {v0, p1}, Lcom/vivo/assist/panel/FixGridLayout;->resolveSize(II)I

    move-result v0

    iget v1, p0, Lcom/vivo/assist/panel/FixGridLayout;->b:I

    mul-int/2addr v1, v3

    invoke-static {v1, p2}, Lcom/vivo/assist/panel/FixGridLayout;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vivo/assist/panel/FixGridLayout;->setMeasuredDimension(II)V

    return-void

    :cond_27
    invoke-virtual {p0, v0}, Lcom/vivo/assist/panel/FixGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method public setmCellHeight(I)V
    .registers 2

    iput p1, p0, Lcom/vivo/assist/panel/FixGridLayout;->b:I

    invoke-virtual {p0}, Lcom/vivo/assist/panel/FixGridLayout;->requestLayout()V

    return-void
.end method

.method public setmCellWidth(I)V
    .registers 2

    iput p1, p0, Lcom/vivo/assist/panel/FixGridLayout;->a:I

    invoke-virtual {p0}, Lcom/vivo/assist/panel/FixGridLayout;->requestLayout()V

    return-void
.end method
