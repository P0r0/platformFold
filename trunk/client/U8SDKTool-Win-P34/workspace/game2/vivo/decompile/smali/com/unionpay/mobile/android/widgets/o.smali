.class public final Lcom/unionpay/mobile/android/widgets/o;
.super Landroid/view/View;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const v0, -0x777778

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/unionpay/mobile/android/widgets/o;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/o;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/o;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/o;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/o;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/o;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iput p3, p0, Lcom/unionpay/mobile/android/widgets/o;->b:I

    return-void
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/unionpay/mobile/android/widgets/o;->b:I

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/o;->getHeight()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/o;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v5, p0, Lcom/unionpay/mobile/android/widgets/o;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    const/4 v0, 0x1

    iget v2, p0, Lcom/unionpay/mobile/android/widgets/o;->b:I

    if-ne v0, v2, :cond_1b

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/o;->getWidth()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/o;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/unionpay/mobile/android/widgets/o;->a:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    move v5, v3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1b
.end method
