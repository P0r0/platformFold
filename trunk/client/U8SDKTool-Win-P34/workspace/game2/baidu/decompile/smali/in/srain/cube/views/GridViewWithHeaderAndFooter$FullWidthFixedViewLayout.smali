.class Lin/srain/cube/views/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;
.super Landroid/widget/FrameLayout;
.source "GridViewWithHeaderAndFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/srain/cube/views/GridViewWithHeaderAndFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullWidthFixedViewLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lin/srain/cube/views/GridViewWithHeaderAndFooter;


# direct methods
.method public constructor <init>(Lin/srain/cube/views/GridViewWithHeaderAndFooter;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 431
    iput-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;->this$0:Lin/srain/cube/views/GridViewWithHeaderAndFooter;

    .line 432
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 433
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 437
    iget-object v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;->this$0:Lin/srain/cube/views/GridViewWithHeaderAndFooter;

    invoke-virtual {v1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;->getPaddingLeft()I

    move-result v2

    add-int v0, v1, v2

    .line 439
    .local v0, "realLeft":I
    if-eq v0, p2, :cond_13

    .line 440
    sub-int v1, v0, p2

    invoke-virtual {p0, v1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;->offsetLeftAndRight(I)V

    .line 442
    :cond_13
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 443
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 447
    iget-object v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;->this$0:Lin/srain/cube/views/GridViewWithHeaderAndFooter;

    invoke-virtual {v1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;->this$0:Lin/srain/cube/views/GridViewWithHeaderAndFooter;

    invoke-virtual {v2}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;->this$0:Lin/srain/cube/views/GridViewWithHeaderAndFooter;

    invoke-virtual {v2}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getPaddingRight()I

    move-result v2

    sub-int v0, v1, v2

    .line 448
    .local v0, "targetWidth":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 449
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 450
    return-void
.end method
