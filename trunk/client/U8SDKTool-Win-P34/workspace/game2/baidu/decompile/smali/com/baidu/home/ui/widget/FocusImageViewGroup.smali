.class public Lcom/baidu/home/ui/widget/FocusImageViewGroup;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/home/ui/widget/FocusImageViewGroup$c;,
        Lcom/baidu/home/ui/widget/FocusImageViewGroup$d;,
        Lcom/baidu/home/ui/widget/FocusImageViewGroup$b;,
        Lcom/baidu/home/ui/widget/FocusImageViewGroup$a;
    }
.end annotation


# static fields
.field public static final TOKEN_IS_EXPIRED:I = 0x70

.field private static final a:F

.field private static u:Ljava/util/ArrayList;


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:F

.field private m:F

.field private n:F

.field private o:Landroid/content/Context;

.field private p:Landroid/view/VelocityTracker;

.field private q:Lcom/baidu/home/ui/widget/FocusImageViewGroup$a;

.field private r:Landroid/widget/Scroller;

.field private s:[Lcom/baidu/home/ui/widget/FocusImageCellLayout;

.field private t:Lcom/baidu/home/ui/widget/FocusImageViewGroup$d;

.field private v:Ljava/lang/String;

.field private w:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$BannerItem;

.field private x:Landroid/util/AttributeSet;

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v0, 0x3f90624dd2f1a9fcL    # 0.016

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->a:F

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->u:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->c:I

    const/16 v0, -0x3e7

    iput v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->e:I

    iput v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->g:I

    iput v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->h:I

    iput v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->i:I

    iput v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->j:I

    iput-boolean v2, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->k:Z

    iput v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->y:I

    iput v2, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->z:I

    invoke-direct {p0, p1, p2}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p2, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->x:Landroid/util/AttributeSet;

    return-void
.end method

.method static synthetic a(Lcom/baidu/home/ui/widget/FocusImageViewGroup;)I
    .registers 3

    iget v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->i:I

    return v0
.end method

.method static synthetic a(Lcom/baidu/home/ui/widget/FocusImageViewGroup;I)I
    .registers 2

    iput p1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->i:I

    return p1
.end method

.method static synthetic a()Ljava/util/ArrayList;
    .registers 1

    sget-object v0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->u:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(IIZ)V
    .registers 10

    const/4 v2, 0x0

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getChildCount()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->e:I

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_25

    iget v3, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->f:I

    if-eq v0, v3, :cond_25

    iget v3, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->f:I

    invoke-virtual {p0, v3}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v1, v3, :cond_25

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    :cond_25
    const/4 v1, 0x1

    iget v3, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->f:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getWidth()I

    move-result v3

    mul-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getScrollX()I

    move-result v3

    sub-int v3, v0, v3

    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v0, v0, 0x3c

    iget-object v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->r:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_4e

    iget-object v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->r:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_4e
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lez v1, :cond_75

    int-to-float v4, v0

    int-to-float v0, v0

    int-to-float v1, v1

    const v5, 0x451c4000    # 2500.0f

    div-float/2addr v1, v5

    div-float/2addr v0, v1

    const v1, 0x3e6b851f    # 0.23f

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    float-to-int v5, v0

    :goto_62
    iget-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->r:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getScrollX()I

    move-result v1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->invalidate()V

    iget v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->z:I

    invoke-virtual {p0, v0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->a(I)V

    return-void

    :cond_75
    add-int/lit8 v5, v0, 0x64

    goto :goto_62
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    iput-object p1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->o:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->f:I

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/baidu/home/ui/widget/FocusImageCellLayout;

    iput-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->s:[Lcom/baidu/home/ui/widget/FocusImageCellLayout;

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->b:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->d:I

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->r:Landroid/widget/Scroller;

    iget-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->r:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    new-instance v0, Lcom/baidu/home/ui/widget/FocusImageViewGroup$d;

    invoke-direct {v0, p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup$d;-><init>(Lcom/baidu/home/ui/widget/FocusImageViewGroup;)V

    iput-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->t:Lcom/baidu/home/ui/widget/FocusImageViewGroup$d;

    invoke-direct {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->b()V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->p:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->p:Landroid/view/VelocityTracker;

    :cond_a
    iget-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->p:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private a(Lcom/baidu/home/datamodel/HomeCfgResponseVip$BannerItem;)V
    .registers 6

    if-eqz p1, :cond_a

    iget-object v0, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$BannerItem;->link_addr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    const-string v0, "3"

    iget-object v1, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$BannerItem;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "lbs"

    const-string v1, "picClicked-inner"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$BannerItem;->link_addr:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/wallet/api/BaiduWallet;->gotoWalletService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_2c
    const-string v0, "1"

    iget-object v1, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$BannerItem;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const-string v0, "lbs"

    const-string v1, "picClicked-url"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/baidu/paysdk/ui/LightappBrowseActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "jump_url"

    iget-object v2, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$BannerItem;->link_addr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    :cond_5c
    const-string v0, "2"

    iget-object v1, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$BannerItem;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$BannerItem;->link_addr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/api/BaiduWallet;->startPage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_a
.end method

.method static synthetic a(Lcom/baidu/home/ui/widget/FocusImageViewGroup;Lcom/baidu/home/datamodel/HomeCfgResponseVip$BannerItem;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->a(Lcom/baidu/home/datamodel/HomeCfgResponseVip$BannerItem;)V

    return-void
.end method

.method private a(FI)Z
    .registers 5

    int-to-float v0, p2

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x33d6bf95    # 1.0E-7f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static synthetic b(Lcom/baidu/home/ui/widget/FocusImageViewGroup;)I
    .registers 2

    iget v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->h:I

    return v0
.end method

.method private b()V
    .registers 8

    const/4 v6, 0x1

    const/4 v0, 0x0

    const/4 v5, -0x1

    iget v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->y:I

    if-ge v1, v6, :cond_6c

    iget-object v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->q:Lcom/baidu/home/ui/widget/FocusImageViewGroup$a;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->q:Lcom/baidu/home/ui/widget/FocusImageViewGroup$a;

    iget v2, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->z:I

    invoke-interface {v1, v0, v2}, Lcom/baidu/home/ui/widget/FocusImageViewGroup$a;->a(II)V

    :cond_12
    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->removeAllViews()V

    :goto_15
    if-ge v0, v6, :cond_6c

    iget-object v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->s:[Lcom/baidu/home/ui/widget/FocusImageCellLayout;

    aget-object v1, v1, v0

    if-nez v1, :cond_69

    iget-object v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->s:[Lcom/baidu/home/ui/widget/FocusImageCellLayout;

    new-instance v2, Lcom/baidu/home/ui/widget/FocusImageCellLayout;

    iget-object v3, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->o:Landroid/content/Context;

    iget-object v4, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->x:Landroid/util/AttributeSet;

    invoke-direct {v2, v3, v4}, Lcom/baidu/home/ui/widget/FocusImageCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->o:Landroid/content/Context;

    const-string v2, "wallet_home_focus_default"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->s:[Lcom/baidu/home/ui/widget/FocusImageCellLayout;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/baidu/home/ui/widget/FocusImageCellLayout;->getFocusView()Lcom/baidu/wallet/base/widget/NetImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/wallet/base/widget/NetImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->s:[Lcom/baidu/home/ui/widget/FocusImageCellLayout;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/baidu/home/ui/widget/FocusImageCellLayout;->getFocusView()Lcom/baidu/wallet/base/widget/NetImageView;

    move-result-object v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/baidu/wallet/base/widget/NetImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->s:[Lcom/baidu/home/ui/widget/FocusImageCellLayout;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2, v1}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->s:[Lcom/baidu/home/ui/widget/FocusImageCellLayout;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->o:Landroid/content/Context;

    const-string v3, "tag_pos"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/baidu/home/ui/widget/FocusImageCellLayout;->setTag(ILjava/lang/Object;)V

    :cond_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_6c
    return-void
.end method

.method private b(I)Z
    .registers 3

    if-ltz p1, :cond_a

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static synthetic c(Lcom/baidu/home/ui/widget/FocusImageViewGroup;)Lcom/baidu/home/ui/widget/FocusImageViewGroup$d;
    .registers 2

    iget-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->t:Lcom/baidu/home/ui/widget/FocusImageViewGroup$d;

    return-object v0
.end method

.method private c()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->p:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->p:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->p:Landroid/view/VelocityTracker;

    :cond_c
    return-void
.end method

.method static synthetic d(Lcom/baidu/home/ui/widget/FocusImageViewGroup;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->o:Landroid/content/Context;

    return-object v0
.end method

.method private d()V
    .registers 4

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getWidth()I

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getScrollX()I

    move-result v1

    shr-int/lit8 v2, v0, 0x1

    add-int/2addr v1, v2

    div-int v0, v1, v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->f:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x64

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->a(IIZ)V

    goto :goto_6
.end method

.method private e()V
    .registers 8

    const/4 v6, 0x1

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->w:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$BannerItem;

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->w:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$BannerItem;

    array-length v0, v0

    iput v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->z:I

    const/4 v0, 0x0

    :goto_d
    iget-object v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->w:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$BannerItem;

    array-length v1, v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_a2

    iget-object v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->s:[Lcom/baidu/home/ui/widget/FocusImageCellLayout;

    aget-object v1, v1, v0

    if-nez v1, :cond_57

    iget-object v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->s:[Lcom/baidu/home/ui/widget/FocusImageCellLayout;

    new-instance v2, Lcom/baidu/home/ui/widget/FocusImageCellLayout;

    iget-object v3, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->o:Landroid/content/Context;

    iget-object v4, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->x:Landroid/util/AttributeSet;

    invoke-direct {v2, v3, v4}, Lcom/baidu/home/ui/widget/FocusImageCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    aput-object v2, v1, v0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->s:[Lcom/baidu/home/ui/widget/FocusImageCellLayout;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2, v1}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->o:Landroid/content/Context;

    const-string v2, "wallet_home_focus_default"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->s:[Lcom/baidu/home/ui/widget/FocusImageCellLayout;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/baidu/home/ui/widget/FocusImageCellLayout;->getFocusView()Lcom/baidu/wallet/base/widget/NetImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/wallet/base/widget/NetImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->s:[Lcom/baidu/home/ui/widget/FocusImageCellLayout;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/baidu/home/ui/widget/FocusImageCellLayout;->getFocusView()Lcom/baidu/wallet/base/widget/NetImageView;

    move-result-object v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/baidu/wallet/base/widget/NetImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_57
    iget-object v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->s:[Lcom/baidu/home/ui/widget/FocusImageCellLayout;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/baidu/home/ui/widget/FocusImageCellLayout;->getFocusView()Lcom/baidu/wallet/base/widget/NetImageView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->v:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->w:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$BannerItem;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/baidu/home/datamodel/HomeCfgResponseVip$BannerItem;->pic_addr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/wallet/base/widget/NetImageView;->setImageUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->s:[Lcom/baidu/home/ui/widget/FocusImageCellLayout;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->o:Landroid/content/Context;

    const-string v3, "tag_pos"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/baidu/home/ui/widget/FocusImageCellLayout;->setTag(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->w:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$BannerItem;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->s:[Lcom/baidu/home/ui/widget/FocusImageCellLayout;

    aget-object v2, v2, v0

    new-instance v3, Lcom/baidu/home/ui/widget/a;

    invoke-direct {v3, p0, v1}, Lcom/baidu/home/ui/widget/a;-><init>(Lcom/baidu/home/ui/widget/FocusImageViewGroup;Lcom/baidu/home/datamodel/HomeCfgResponseVip$BannerItem;)V

    invoke-virtual {v2, v3}, Lcom/baidu/home/ui/widget/FocusImageCellLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d

    :cond_a2
    iget-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->t:Lcom/baidu/home/ui/widget/FocusImageViewGroup$d;

    invoke-virtual {v0, v6}, Lcom/baidu/home/ui/widget/FocusImageViewGroup$d;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->t:Lcom/baidu/home/ui/widget/FocusImageViewGroup$d;

    iget-object v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->t:Lcom/baidu/home/ui/widget/FocusImageViewGroup$d;

    invoke-virtual {v1, v6}, Lcom/baidu/home/ui/widget/FocusImageViewGroup$d;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/home/ui/widget/FocusImageViewGroup$d;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_6
.end method


# virtual methods
.method a(I)V
    .registers 5

    const/4 v2, 0x0

    iget v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4e

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->j:I

    :goto_e
    iget-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->q:Lcom/baidu/home/ui/widget/FocusImageViewGroup$a;

    if-eqz v0, :cond_4d

    iget v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->j:I

    invoke-virtual {p0, v0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->j:I

    invoke-virtual {p0, v0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->o:Landroid/content/Context;

    const-string v2, "tag_pos"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4d

    iget v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->j:I

    invoke-virtual {p0, v0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->o:Landroid/content/Context;

    const-string v2, "tag_pos"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->q:Lcom/baidu/home/ui/widget/FocusImageViewGroup$a;

    invoke-interface {v1, v0, p1}, Lcom/baidu/home/ui/widget/FocusImageViewGroup$a;->a(II)V

    :cond_4d
    return-void

    :cond_4e
    iget v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->e:I

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getChildCount()I

    move-result v1

    if-ne v0, v1, :cond_59

    iput v2, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->j:I

    goto :goto_e

    :cond_59
    iget v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->e:I

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->j:I

    goto :goto_e
.end method

.method public computeScroll()V
    .registers 5

    const/16 v3, -0x3e7

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->r:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->z:I

    if-le v0, v1, :cond_2c

    iget-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->r:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->m:F

    iget-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->r:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->r:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->postInvalidate()V

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    iget v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->e:I

    if-eq v0, v3, :cond_77

    iget v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->z:I

    if-le v0, v1, :cond_77

    iget v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_52

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->f:I

    iget v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->f:I

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->scrollTo(II)V

    :goto_4f
    iput v3, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->e:I

    goto :goto_2b

    :cond_52
    iget v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->e:I

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getChildCount()I

    move-result v1

    if-ne v0, v1, :cond_64

    iput v2, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->f:I

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->scrollTo(II)V

    goto :goto_4f

    :cond_64
    iget v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->e:I

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->f:I

    goto :goto_4f

    :cond_77
    iget v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->g:I

    if-ne v0, v1, :cond_2b

    iget v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->z:I

    if-le v0, v1, :cond_2b

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->n:F

    sub-float/2addr v0, v1

    sget v1, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->a:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->m:F

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getScrollX()I

    move-result v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getScrollY()I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_2b
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 14

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v10, 0x0

    iget v2, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->g:I

    if-eq v2, v1, :cond_1e

    iget v2, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->e:I

    const/16 v3, -0x3e7

    if-ne v2, v3, :cond_1e

    move v2, v1

    :goto_e
    if-eqz v2, :cond_20

    iget v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->f:I

    invoke-virtual {p0, v0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    move v2, v0

    goto :goto_e

    :cond_20
    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getDrawingTime()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v6, v3

    div-float v6, v2, v6

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getChildCount()I

    move-result v7

    cmpg-float v2, v6, v10

    if-gez v2, :cond_7b

    add-int/lit8 v1, v7, -0x1

    move v2, v1

    move v1, v0

    :goto_3c
    invoke-direct {p0, v2}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->b(I)Z

    move-result v8

    if-eqz v8, :cond_58

    if-nez v1, :cond_89

    if-nez v0, :cond_89

    mul-int v8, v7, v3

    neg-int v9, v8

    int-to-float v9, v9

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0, v2}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0, p1, v9, v4, v5}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    int-to-float v8, v8

    invoke-virtual {p1, v8, v10}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_58
    :goto_58
    invoke-direct {p0, v6, v2}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->a(FI)Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-direct {p0, v1}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->b(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    if-nez v1, :cond_91

    if-eqz v0, :cond_91

    mul-int v0, v7, v3

    int-to-float v2, v0

    invoke-virtual {p1, v2, v10}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0, v1}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v4, v5}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v10}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1d

    :cond_7b
    float-to-int v0, v6

    add-int/lit8 v2, v7, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    rem-int/2addr v0, v7

    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_3c

    :cond_89
    invoke-virtual {p0, v2}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v4, v5}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_58

    :cond_91
    invoke-virtual {p0, v1}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v4, v5}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1d
.end method

.method public getCurrentScreen()I
    .registers 4

    const/4 v2, 0x0

    iget v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->f:I

    if-gez v0, :cond_a

    iput v2, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->f:I

    :cond_7
    :goto_7
    iget v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->f:I

    return v0

    :cond_a
    iget v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->f:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_7

    iput v2, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->f:I

    goto :goto_7
.end method

.method public moveToNext()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->r:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->d()V

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->invalidate()V

    :cond_e
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->t:Lcom/baidu/home/ui/widget/FocusImageViewGroup$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/home/ui/widget/FocusImageViewGroup$d;->removeMessages(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->a(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_82

    :cond_f
    :goto_f
    iget v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->g:I

    if-eqz v0, :cond_7f

    :goto_13
    return v2

    :pswitch_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->l:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->c:I

    iget v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->z:I

    if-ne v0, v2, :cond_34

    iput v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->g:I

    :goto_26
    iget-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->t:Lcom/baidu/home/ui/widget/FocusImageViewGroup$d;

    invoke-virtual {v0, v2}, Lcom/baidu/home/ui/widget/FocusImageViewGroup$d;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->t:Lcom/baidu/home/ui/widget/FocusImageViewGroup$d;

    invoke-virtual {v0, v2}, Lcom/baidu/home/ui/widget/FocusImageViewGroup$d;->removeMessages(I)V

    goto :goto_f

    :cond_34
    iget-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->r:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_40

    move v0, v1

    :goto_3d
    iput v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->g:I

    goto :goto_26

    :cond_40
    move v0, v2

    goto :goto_3d

    :pswitch_42
    iget v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->c:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-eq v0, v3, :cond_f

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget v3, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->l:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->b:I

    shr-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_f

    invoke-virtual {p0, v2}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    iput v2, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->g:I

    iput v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->l:F

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->m:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-float v0, v4

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v3

    iput v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->n:F

    goto :goto_f

    :pswitch_77
    iput v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->g:I

    iput v3, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->c:I

    invoke-direct {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->c()V

    goto :goto_f

    :cond_7f
    move v2, v1

    goto :goto_13

    nop

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_14
        :pswitch_77
        :pswitch_42
        :pswitch_77
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 13

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_3
    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_26

    invoke-virtual {p0, v0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_23

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int v5, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v3, v2, v1, v5, v6}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v2, v4

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_26
    return-void
.end method

.method protected onMeasure(II)V
    .registers 16

    const/4 v12, -0x1

    const/4 v11, -0x2

    const/high16 v10, -0x80000000

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getChildCount()I

    move-result v6

    move v3, v1

    :goto_1a
    if-ge v3, v6, :cond_63

    invoke-virtual {p0, v3}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v0, :cond_3f

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_2e
    iget v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v8, :cond_51

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    :goto_38
    invoke-virtual {v7, v0, v2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1a

    :cond_3f
    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v12, :cond_48

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_2e

    :cond_48
    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v11, :cond_72

    invoke-static {v4, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_2e

    :cond_51
    iget v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v8, v12, :cond_5a

    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_38

    :cond_5a
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v11, :cond_70

    invoke-static {v4, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_38

    :cond_63
    iget-boolean v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->k:Z

    if-eqz v0, :cond_6f

    iget v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->f:I

    mul-int/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->scrollTo(II)V

    iput-boolean v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->k:Z

    :cond_6f
    return-void

    :cond_70
    move v2, v1

    goto :goto_38

    :cond_72
    move v0, v1

    goto :goto_2e
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    const/4 v7, -0x1

    const v5, 0x4e6e6b28    # 1.0E9f

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->z:I

    if-ne v0, v3, :cond_d

    move v0, v2

    :goto_c
    return v0

    :cond_d
    invoke-virtual {p0, v3}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    invoke-direct {p0, p1}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->a(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_152

    :cond_1a
    :goto_1a
    :pswitch_1a
    move v0, v3

    goto :goto_c

    :pswitch_1c
    iget-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->r:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->r:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->l:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->c:I

    goto :goto_1a

    :pswitch_36
    iput v3, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->g:I

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->m:F

    iget v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->c:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-eq v0, v7, :cond_1a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->l:F

    sub-float/2addr v1, v0

    iput v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->l:F

    cmpg-float v0, v1, v4

    if-gez v0, :cond_83

    iget v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->m:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_72

    iget v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->m:F

    iget v2, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->m:F

    neg-float v2, v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->m:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    div-float/2addr v0, v5

    iput v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->n:F

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->invalidate()V

    goto :goto_1a

    :cond_72
    iget v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->m:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->m:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    div-float/2addr v0, v5

    iput v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->n:F

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->invalidate()V

    goto :goto_1a

    :cond_83
    cmpl-float v0, v1, v4

    if-lez v0, :cond_1a

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->m:F

    sub-float/2addr v0, v2

    cmpl-float v2, v0, v4

    if-lez v2, :cond_1a

    iget v2, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->m:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-float/2addr v0, v2

    iput v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->m:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    div-float/2addr v0, v5

    iput v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->n:F

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->invalidate()V

    goto/16 :goto_1a

    :pswitch_b3
    iget v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->g:I

    if-ne v0, v3, :cond_101

    iget-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->p:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v4, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->d:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_123

    iget-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->p:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->c:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    :goto_cf
    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getScrollX()I

    move-result v4

    shr-int/lit8 v5, v1, 0x1

    add-int/2addr v4, v5

    div-int/2addr v4, v1

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    int-to-float v1, v1

    div-float v1, v5, v1

    const/16 v5, 0xc8

    if-le v0, v5, :cond_12e

    iget v5, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->f:I

    if-le v5, v7, :cond_12e

    int-to-float v5, v4

    cmpg-float v1, v1, v5

    if-gez v1, :cond_12b

    iget v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->f:I

    add-int/lit8 v1, v1, -0x1

    :goto_fa
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {p0, v1, v0, v3}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->a(IIZ)V

    :cond_101
    :goto_101
    iput v2, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->g:I

    iput v7, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->c:I

    invoke-direct {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->c()V

    iget-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->t:Lcom/baidu/home/ui/widget/FocusImageViewGroup$d;

    invoke-virtual {v0, v3}, Lcom/baidu/home/ui/widget/FocusImageViewGroup$d;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1a

    iget v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->z:I

    if-le v0, v3, :cond_1a

    iget-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->t:Lcom/baidu/home/ui/widget/FocusImageViewGroup$d;

    iget-object v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->t:Lcom/baidu/home/ui/widget/FocusImageViewGroup$d;

    invoke-virtual {v1, v3}, Lcom/baidu/home/ui/widget/FocusImageViewGroup$d;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v1, v4, v5}, Lcom/baidu/home/ui/widget/FocusImageViewGroup$d;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1a

    :cond_123
    iget-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->p:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    goto :goto_cf

    :cond_12b
    iget v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->f:I

    goto :goto_fa

    :cond_12e
    const/16 v5, -0xc8

    if-ge v0, v5, :cond_14e

    iget v5, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->f:I

    invoke-virtual {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_14e

    int-to-float v5, v4

    cmpl-float v1, v1, v5

    if-lez v1, :cond_14b

    iget v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->f:I

    add-int/lit8 v1, v1, 0x1

    :goto_143
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, v1, v0, v3}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->a(IIZ)V

    goto :goto_101

    :cond_14b
    iget v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->f:I

    goto :goto_143

    :cond_14e
    invoke-direct {p0, v4, v2, v3}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->a(IIZ)V

    goto :goto_101

    :pswitch_data_152
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_b3
        :pswitch_36
        :pswitch_b3
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

.method public setCurrFocusImagePos(Lcom/baidu/home/ui/widget/FocusImageViewGroup$a;)V
    .registers 5

    iput-object p1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->q:Lcom/baidu/home/ui/widget/FocusImageViewGroup$a;

    iget-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->q:Lcom/baidu/home/ui/widget/FocusImageViewGroup$a;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->q:Lcom/baidu/home/ui/widget/FocusImageViewGroup$a;

    iget v1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->f:I

    iget v2, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->z:I

    invoke-interface {v0, v1, v2}, Lcom/baidu/home/ui/widget/FocusImageViewGroup$a;->a(II)V

    :cond_f
    return-void
.end method

.method public setFocusConfigInfo([Lcom/baidu/home/datamodel/HomeCfgResponseVip$BannerItem;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->w:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$BannerItem;

    iput-object p2, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->v:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->e()V

    return-void
.end method

.method public setFocusImageEvent(Lcom/baidu/home/ui/widget/FocusImageViewGroup$b;)V
    .registers 2

    return-void
.end method

.method public submitPage(I)V
    .registers 2

    return-void
.end method
