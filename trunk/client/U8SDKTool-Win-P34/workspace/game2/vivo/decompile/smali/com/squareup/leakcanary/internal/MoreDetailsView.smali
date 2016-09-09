.class public final Lcom/squareup/leakcanary/internal/MoreDetailsView;
.super Landroid/view/View;
.source "MoreDetailsView.java"


# static fields
.field private static final iconPaint:Landroid/graphics/Paint;


# instance fields
.field private opened:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 19
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/squareup/leakcanary/internal/MoreDetailsView;->iconPaint:Landroid/graphics/Paint;

    const v1, -0x7b593b

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/MoreDetailsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/squareup/leakcanary/internal/LeakCanaryUi;->dpToPixel(FLandroid/content/res/Resources;)F

    move-result v0

    .line 25
    .local v0, "strokeSize":F
    sget-object v1, Lcom/squareup/leakcanary/internal/MoreDetailsView;->iconPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 26
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/MoreDetailsView;->getWidth()I

    move-result v11

    .line 30
    .local v11, "width":I
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/MoreDetailsView;->getHeight()I

    move-result v10

    .line 31
    .local v10, "height":I
    div-int/lit8 v8, v10, 0x2

    .line 32
    .local v8, "halfHeight":I
    div-int/lit8 v9, v11, 0x2

    .line 33
    .local v9, "halfWidth":I
    iget-boolean v0, p0, Lcom/squareup/leakcanary/internal/MoreDetailsView;->opened:Z

    if-eqz v0, :cond_1b

    .line 34
    int-to-float v2, v8

    int-to-float v3, v11

    int-to-float v4, v8

    sget-object v5, Lcom/squareup/leakcanary/internal/MoreDetailsView;->iconPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 40
    :goto_1a
    return-void

    .line 37
    :cond_1b
    int-to-float v2, v8

    int-to-float v3, v11

    int-to-float v4, v8

    sget-object v5, Lcom/squareup/leakcanary/internal/MoreDetailsView;->iconPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 38
    int-to-float v3, v9

    int-to-float v5, v9

    int-to-float v6, v10

    sget-object v7, Lcom/squareup/leakcanary/internal/MoreDetailsView;->iconPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1a
.end method

.method public setOpened(Z)V
    .registers 3
    .param p1, "opened"    # Z

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/squareup/leakcanary/internal/MoreDetailsView;->opened:Z

    if-eq p1, v0, :cond_9

    .line 44
    iput-boolean p1, p0, Lcom/squareup/leakcanary/internal/MoreDetailsView;->opened:Z

    .line 45
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/MoreDetailsView;->invalidate()V

    .line 47
    :cond_9
    return-void
.end method
