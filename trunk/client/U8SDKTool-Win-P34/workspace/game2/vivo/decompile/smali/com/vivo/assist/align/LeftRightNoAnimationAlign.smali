.class public Lcom/vivo/assist/align/LeftRightNoAnimationAlign;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/assist/align/AlignStrategy;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public align(Landroid/content/Context;Lcom/vivo/assist/widget/AssistView;Lcom/vivo/assist/AssistWindowManager;II)I
    .registers 13

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/vivo/assist/widget/AssistView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p4

    invoke-virtual {p2}, Lcom/vivo/assist/widget/AssistView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p5

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2, v3}, Lcom/vivo/assist/widget/AssistView;->getRectInFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p3}, Lcom/vivo/assist/AssistWindowManager;->getLcdHeight()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual {p3}, Lcom/vivo/assist/AssistWindowManager;->getStatusHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {p3}, Lcom/vivo/assist/AssistWindowManager;->getLcdWidth()I

    move-result v6

    sub-int/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v5, v1, :cond_4d

    const/4 v1, 0x2

    invoke-virtual {p3}, Lcom/vivo/assist/AssistWindowManager;->getLcdWidth()I

    move-result v5

    invoke-virtual {p2}, Lcom/vivo/assist/widget/AssistView;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, v5, v3}, Lcom/vivo/assist/AssistWindowManager;->updateAssistButtonPos(II)V

    :goto_44
    if-nez v2, :cond_47

    const/4 v0, 0x4

    :cond_47
    if-nez v4, :cond_4b

    or-int/lit8 v0, v0, 0x8

    :cond_4b
    or-int/2addr v0, v1

    return v0

    :cond_4d
    const/4 v1, 0x1

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, v0, v3}, Lcom/vivo/assist/AssistWindowManager;->updateAssistButtonPos(II)V

    goto :goto_44
.end method
