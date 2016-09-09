.class public Lcom/bbk/payment/PaymentGridView;
.super Landroid/widget/GridView;


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/view/ViewConfiguration;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/payment/PaymentGridView;->c:Landroid/view/ViewConfiguration;

    iget-object v0, p0, Lcom/bbk/payment/PaymentGridView;->c:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/bbk/payment/PaymentGridView;->d:I

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_aa

    :cond_8
    :goto_8
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_c
    :goto_c
    return v0

    :pswitch_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/bbk/payment/PaymentGridView;->a:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/bbk/payment/PaymentGridView;->b:I

    goto :goto_8

    :pswitch_1c
    iget v0, p0, Lcom/bbk/payment/PaymentGridView;->a:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/bbk/payment/PaymentGridView;->d:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_42

    iget v0, p0, Lcom/bbk/payment/PaymentGridView;->b:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/bbk/payment/PaymentGridView;->d:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    :cond_42
    const/4 v0, 0x1

    goto :goto_c

    :pswitch_44
    iget-object v1, p0, Lcom/bbk/payment/PaymentGridView;->c:Landroid/view/ViewConfiguration;

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/bbk/payment/PaymentGridView;->d:I

    iget v1, p0, Lcom/bbk/payment/PaymentGridView;->a:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/bbk/payment/PaymentGridView;->d:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_72

    iget v1, p0, Lcom/bbk/payment/PaymentGridView;->b:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/bbk/payment/PaymentGridView;->d:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    :cond_72
    invoke-virtual {p0}, Lcom/bbk/payment/PaymentGridView;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_77
    if-ge v1, v2, :cond_c

    invoke-virtual {p0, v1}, Lcom/bbk/payment/PaymentGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_a6

    const-string v2, "PaymentGridView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "v"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v0}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_c

    :cond_a6
    add-int/lit8 v1, v1, 0x1

    goto :goto_77

    nop

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_d
        :pswitch_44
        :pswitch_1c
        :pswitch_44
    .end packed-switch
.end method
