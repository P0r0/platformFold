.class public Lmobisocial/omlet/overlaybar/ui/view/VerticalSeekBar;
.super Landroid/widget/SeekBar;
.source "VerticalSeekBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 44
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 45
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/VerticalSeekBar;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 46
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 47
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 39
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p2, p1}, Landroid/widget/SeekBar;->onMeasure(II)V

    .line 40
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/VerticalSeekBar;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/VerticalSeekBar;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmobisocial/omlet/overlaybar/ui/view/VerticalSeekBar;->setMeasuredDimension(II)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 41
    monitor-exit p0

    return-void

    .line 39
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 34
    invoke-super {p0, p2, p1, p4, p3}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    .line 35
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/VerticalSeekBar;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_8

    .line 67
    :goto_7
    return v1

    .line 54
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_54

    .line 67
    :goto_f
    const/4 v1, 0x1

    goto :goto_7

    .line 58
    :pswitch_11
    const/4 v0, 0x0

    .line 59
    .local v0, "i":I
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/VerticalSeekBar;->getMax()I

    move-result v2

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/VerticalSeekBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/VerticalSeekBar;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v0, v2, v3

    .line 60
    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/view/VerticalSeekBar;->setProgress(I)V

    .line 61
    const-string v2, "Progress"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/VerticalSeekBar;->getProgress()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/VerticalSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/VerticalSeekBar;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3, v1, v1}, Lmobisocial/omlet/overlaybar/ui/view/VerticalSeekBar;->onSizeChanged(IIII)V

    goto :goto_f

    .line 54
    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method
