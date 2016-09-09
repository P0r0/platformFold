.class Lcom/edmodo/rangebar/ConnectingLine;
.super Ljava/lang/Object;
.source "ConnectingLine.java"


# instance fields
.field private final mConnectingLineWeight:F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mY:F


# direct methods
.method constructor <init>(Landroid/content/Context;FFI)V
    .registers 9
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "y"    # F
    .param p3, "connectingLineWeight"    # F
    .param p4, "connectingLineColor"    # I

    .prologue
    const/4 v3, 0x1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 36
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v3, p3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/edmodo/rangebar/ConnectingLine;->mConnectingLineWeight:F

    .line 38
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/edmodo/rangebar/ConnectingLine;->mPaint:Landroid/graphics/Paint;

    .line 39
    iget-object v1, p0, Lcom/edmodo/rangebar/ConnectingLine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    iget-object v1, p0, Lcom/edmodo/rangebar/ConnectingLine;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/edmodo/rangebar/ConnectingLine;->mConnectingLineWeight:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 41
    iget-object v1, p0, Lcom/edmodo/rangebar/ConnectingLine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iput p2, p0, Lcom/edmodo/rangebar/ConnectingLine;->mY:F

    .line 43
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;Lcom/edmodo/rangebar/Thumb;Lcom/edmodo/rangebar/Thumb;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "leftThumb"    # Lcom/edmodo/rangebar/Thumb;
    .param p3, "rightThumb"    # Lcom/edmodo/rangebar/Thumb;

    .prologue
    .line 54
    invoke-virtual {p2}, Lcom/edmodo/rangebar/Thumb;->getX()F

    move-result v1

    iget v2, p0, Lcom/edmodo/rangebar/ConnectingLine;->mY:F

    invoke-virtual {p3}, Lcom/edmodo/rangebar/Thumb;->getX()F

    move-result v3

    iget v4, p0, Lcom/edmodo/rangebar/ConnectingLine;->mY:F

    iget-object v5, p0, Lcom/edmodo/rangebar/ConnectingLine;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 55
    return-void
.end method
