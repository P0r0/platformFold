.class public Lcom/duoku/platform/download/widget/XCRoundRectImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DrawAllocation"
    }
.end annotation


# instance fields
.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/duoku/platform/download/widget/XCRoundRectImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/duoku/platform/download/widget/XCRoundRectImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/download/widget/XCRoundRectImageView;->paint:Landroid/graphics/Paint;

    .line 34
    return-void
.end method

.method private getRoundBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 67
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 69
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 73
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 74
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 75
    iget-object v4, p0, Lcom/duoku/platform/download/widget/XCRoundRectImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    iget-object v4, p0, Lcom/duoku/platform/download/widget/XCRoundRectImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 77
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 78
    iget-object v4, p0, Lcom/duoku/platform/download/widget/XCRoundRectImageView;->paint:Landroid/graphics/Paint;

    const v5, -0xbdbdbe

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    int-to-float v4, p2

    int-to-float v5, p2

    iget-object v6, p0, Lcom/duoku/platform/download/widget/XCRoundRectImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 80
    iget-object v3, p0, Lcom/duoku/platform/download/widget/XCRoundRectImageView;->paint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 81
    iget-object v3, p0, Lcom/duoku/platform/download/widget/XCRoundRectImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 82
    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 44
    invoke-virtual {p0}, Lcom/duoku/platform/download/widget/XCRoundRectImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_38

    .line 46
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 47
    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/duoku/platform/download/widget/XCRoundRectImageView;->getRoundBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 48
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 49
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/duoku/platform/download/widget/XCRoundRectImageView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/duoku/platform/download/widget/XCRoundRectImageView;->getHeight()I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 50
    iget-object v3, p0, Lcom/duoku/platform/download/widget/XCRoundRectImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    .line 51
    iget-object v3, p0, Lcom/duoku/platform/download/widget/XCRoundRectImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 56
    :goto_37
    return-void

    .line 54
    :cond_38
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_37
.end method
