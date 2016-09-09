.class public Lcom/bbk/payment/util/RotateTextView;
.super Landroid/widget/TextView;


# instance fields
.field private a:I

.field private b:F

.field private c:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v3, p0, Lcom/bbk/payment/util/RotateTextView;->a:I

    iput v2, p0, Lcom/bbk/payment/util/RotateTextView;->b:F

    iput v2, p0, Lcom/bbk/payment/util/RotateTextView;->c:F

    const-string v0, "http://www.baidu.com/apk/res/custom"

    const-string v1, "rotate"

    invoke-interface {p2, v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bbk/payment/util/RotateTextView;->a:I

    const-string v0, "http://www.baidu.com/apk/res/custom"

    const-string v1, "translateX"

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/bbk/payment/util/RotateTextView;->b:F

    const-string v0, "http://www.baidu.com/apk/res/custom"

    const-string v1, "translateY"

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/bbk/payment/util/RotateTextView;->c:F

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    invoke-virtual {p0}, Lcom/bbk/payment/util/RotateTextView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/bbk/payment/util/RotateTextView;->b:F

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/bbk/payment/util/RotateTextView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/bbk/payment/util/RotateTextView;->c:F

    mul-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/bbk/payment/util/RotateTextView;->a:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
