.class public Lcom/gionee/gsp/ui/drawable/GnBg;
.super Ljava/lang/Object;
.source "GnBg.java"


# static fields
.field public static MS_ROUND_DP:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const/16 v0, 0xa

    sput v0, Lcom/gionee/gsp/ui/drawable/GnBg;->MS_ROUND_DP:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "colorString"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 18
    sget v5, Lcom/gionee/gsp/ui/drawable/GnBg;->MS_ROUND_DP:I

    invoke-static {p0, v5}, Lcom/gionee/gsp/util/GnCommonUtil;->parsePxByDp(Landroid/content/Context;I)I

    move-result v5

    int-to-float v4, v5

    .line 19
    .local v4, "roundPx":F
    const/16 v5, 0x8

    new-array v3, v5, [F

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v5, 0x1

    aput v4, v3, v5

    const/4 v5, 0x2

    aput v4, v3, v5

    const/4 v5, 0x3

    aput v4, v3, v5

    const/4 v5, 0x4

    aput v4, v3, v5

    const/4 v5, 0x5

    aput v4, v3, v5

    const/4 v5, 0x6

    aput v4, v3, v5

    const/4 v5, 0x7

    aput v4, v3, v5

    .line 20
    .local v3, "outerR":[F
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v5, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v5, v3, v6, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v0, v5}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 21
    .local v0, "mDrawables":Landroid/graphics/drawable/ShapeDrawable;
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 22
    .local v1, "ms_reward_tip_title":I
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 24
    .local v2, "normalDrawable":Landroid/graphics/drawable/Drawable;
    return-object v2
.end method

.method public static getDrawableNoRound(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "colorString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 28
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v3, v4, v4, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 29
    .local v0, "mDrawables":Landroid/graphics/drawable/ShapeDrawable;
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 30
    .local v1, "ms_reward_tip_title":I
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 32
    .local v2, "normalDrawable":Landroid/graphics/drawable/Drawable;
    return-object v2
.end method
