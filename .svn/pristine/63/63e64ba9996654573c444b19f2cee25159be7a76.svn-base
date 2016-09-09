.class public Lcom/duoku/platform/download/widget/RoundImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private mRoundPath:Landroid/graphics/Path;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/download/widget/RoundImageView;->mRoundPath:Landroid/graphics/Path;

    .line 46
    invoke-direct {p0}, Lcom/duoku/platform/download/widget/RoundImageView;->setCompatibility()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/download/widget/RoundImageView;->mRoundPath:Landroid/graphics/Path;

    .line 41
    invoke-direct {p0}, Lcom/duoku/platform/download/widget/RoundImageView;->setCompatibility()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/download/widget/RoundImageView;->mRoundPath:Landroid/graphics/Path;

    .line 36
    invoke-direct {p0}, Lcom/duoku/platform/download/widget/RoundImageView;->setCompatibility()V

    .line 37
    return-void
.end method

.method private setCompatibility()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_b

    .line 30
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/duoku/platform/download/widget/RoundImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 32
    :cond_b
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .prologue
    .line 51
    iget-object v0, p0, Lcom/duoku/platform/download/widget/RoundImageView;->mRoundPath:Landroid/graphics/Path;

    if-nez v0, :cond_b

    .line 52
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/download/widget/RoundImageView;->mRoundPath:Landroid/graphics/Path;

    .line 54
    :cond_b
    iget-object v0, p0, Lcom/duoku/platform/download/widget/RoundImageView;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_16

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/download/widget/RoundImageView;->paint:Landroid/graphics/Paint;

    .line 58
    :cond_16
    iget-object v0, p0, Lcom/duoku/platform/download/widget/RoundImageView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object v0, p0, Lcom/duoku/platform/download/widget/RoundImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 61
    iget-object v1, p0, Lcom/duoku/platform/download/widget/RoundImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/duoku/platform/download/widget/RoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/duoku/platform/download/widget/RoundImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 71
    iget-object v1, p0, Lcom/duoku/platform/download/widget/RoundImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 73
    return-void
.end method
