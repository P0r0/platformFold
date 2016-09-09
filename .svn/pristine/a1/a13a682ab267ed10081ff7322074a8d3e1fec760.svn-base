.class public Lcom/baidu/bdgame/sdk/obf/nx;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field public a:Landroid/view/View;

.field b:Landroid/graphics/drawable/Drawable;

.field c:I

.field public d:Landroid/view/View;

.field public e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V
    .registers 7

    .prologue
    .line 32
    if-nez p1, :cond_a

    .line 33
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "List view item must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nx;->a:Landroid/view/View;

    if-eq v0, p1, :cond_29

    .line 38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nx;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/nx;->removeView(Landroid/view/View;)V

    .line 39
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/nx;->a:Landroid/view/View;

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_26

    if-eq v0, p0, :cond_26

    .line 42
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_26

    .line 43
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 46
    :cond_26
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/nx;->addView(Landroid/view/View;)V

    .line 50
    :cond_29
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nx;->d:Landroid/view/View;

    if-eq v0, p2, :cond_3d

    .line 51
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nx;->d:Landroid/view/View;

    if-eqz v0, :cond_36

    .line 52
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nx;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/nx;->removeView(Landroid/view/View;)V

    .line 54
    :cond_36
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/nx;->d:Landroid/view/View;

    .line 55
    if-eqz p2, :cond_3d

    .line 56
    invoke-virtual {p0, p2}, Lcom/baidu/bdgame/sdk/obf/nx;->addView(Landroid/view/View;)V

    .line 60
    :cond_3d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nx;->b:Landroid/graphics/drawable/Drawable;

    if-eq v0, p3, :cond_48

    .line 61
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/nx;->b:Landroid/graphics/drawable/Drawable;

    .line 62
    iput p4, p0, Lcom/baidu/bdgame/sdk/obf/nx;->c:I

    .line 63
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/nx;->invalidate()V

    .line 65
    :cond_48
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nx;->d:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 133
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nx;->d:Landroid/view/View;

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nx;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_20

    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1b

    .line 137
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/nx;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/nx;->c:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 139
    :cond_1b
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nx;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 141
    :cond_20
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 11

    .prologue
    const/4 v4, 0x0

    .line 110
    .line 112
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/nx;->getWidth()I

    move-result v0

    .line 113
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/nx;->getHeight()I

    move-result v1

    .line 115
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/nx;->d:Landroid/view/View;

    if-eqz v2, :cond_20

    .line 116
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/nx;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 117
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/nx;->d:Landroid/view/View;

    invoke-virtual {v3, v4, v4, v0, v2}, Landroid/view/View;->layout(IIII)V

    .line 118
    iput v2, p0, Lcom/baidu/bdgame/sdk/obf/nx;->e:I

    .line 119
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/nx;->a:Landroid/view/View;

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 128
    :goto_1f
    return-void

    .line 120
    :cond_20
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/nx;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_37

    .line 121
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/nx;->b:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/baidu/bdgame/sdk/obf/nx;->c:I

    invoke-virtual {v2, v4, v4, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 122
    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/nx;->c:I

    iput v2, p0, Lcom/baidu/bdgame/sdk/obf/nx;->e:I

    .line 123
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/nx;->a:Landroid/view/View;

    iget v3, p0, Lcom/baidu/bdgame/sdk/obf/nx;->c:I

    invoke-virtual {v2, v4, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_1f

    .line 125
    :cond_37
    iput v4, p0, Lcom/baidu/bdgame/sdk/obf/nx;->e:I

    .line 126
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/nx;->a:Landroid/view/View;

    invoke-virtual {v2, v4, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_1f
.end method

.method protected onMeasure(II)V
    .registers 10

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 73
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 74
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 79
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nx;->d:Landroid/view/View;

    if-eqz v0, :cond_59

    .line 80
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nx;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_4f

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v4, :cond_4f

    .line 82
    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/nx;->d:Landroid/view/View;

    .line 83
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 82
    invoke-virtual {v4, v3, v0}, Landroid/view/View;->measure(II)V

    .line 88
    :goto_26
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nx;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v1

    .line 94
    :goto_2d
    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/nx;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 95
    if-eqz v4, :cond_61

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v5, :cond_61

    .line 96
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nx;->a:Landroid/view/View;

    .line 97
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 96
    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 102
    :goto_44
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nx;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 104
    invoke-virtual {p0, v2, v0}, Lcom/baidu/bdgame/sdk/obf/nx;->setMeasuredDimension(II)V

    .line 105
    return-void

    .line 85
    :cond_4f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nx;->d:Landroid/view/View;

    .line 86
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 85
    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    goto :goto_26

    .line 89
    :cond_59
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nx;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6b

    .line 90
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/nx;->c:I

    add-int/2addr v0, v1

    goto :goto_2d

    .line 99
    :cond_61
    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/nx;->a:Landroid/view/View;

    .line 100
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 99
    invoke-virtual {v4, v3, v1}, Landroid/view/View;->measure(II)V

    goto :goto_44

    :cond_6b
    move v0, v1

    goto :goto_2d
.end method
