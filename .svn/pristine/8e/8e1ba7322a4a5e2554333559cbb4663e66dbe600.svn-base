.class public final Lcom/gionee/game/offlinesdk/utils/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gionee/game/offlinesdk/utils/R$string;,
        Lcom/gionee/game/offlinesdk/utils/R$color;,
        Lcom/gionee/game/offlinesdk/utils/R$dimen;,
        Lcom/gionee/game/offlinesdk/utils/R$drawable;,
        Lcom/gionee/game/offlinesdk/utils/R$id;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method static synthetic access$000(I)I
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 10
    invoke-static {p0}, Lcom/gionee/game/offlinesdk/utils/R;->parsePxByDp(I)I

    move-result v0

    return v0
.end method

.method private static parsePxByDp(I)I
    .registers 6
    .param p0, "dpValue"    # I

    .prologue
    .line 125
    invoke-static {}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 126
    .local v0, "context":Landroid/content/Context;
    const/4 v2, 0x1

    int-to-float v3, p0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v1, v2

    .line 128
    .local v1, "pxValue":I
    return v1
.end method
