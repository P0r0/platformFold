.class public Lcom/lylc/widget/circularprogressbar/CircularProgressBar;
.super Landroid/widget/ProgressBar;
.source "CircularProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lylc/widget/circularprogressbar/CircularProgressBar$ProgressAnimationListener;
    }
.end annotation


# static fields
.field private static final STROKE_WIDTH:I = 0x14

.field private static final TAG:Ljava/lang/String; = "CircularProgressBar"


# instance fields
.field private final mBackgroundColorPaint:Landroid/graphics/Paint;

.field private final mCircleBounds:Landroid/graphics/RectF;

.field private mHasShadow:Z

.field private final mProgressColorPaint:Landroid/graphics/Paint;

.field private mShadowColor:I

.field private mStrokeWidth:I

.field private mSubTitle:Ljava/lang/String;

.field private final mSubtitlePaint:Landroid/graphics/Paint;

.field private mTitle:Ljava/lang/String;

.field private final mTitlePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mTitle:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mSubTitle:Ljava/lang/String;

    .line 51
    const/16 v0, 0x14

    iput v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mStrokeWidth:I

    .line 53
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mCircleBounds:Landroid/graphics/RectF;

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mProgressColorPaint:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mBackgroundColorPaint:Landroid/graphics/Paint;

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mTitlePaint:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mSubtitlePaint:Landroid/graphics/Paint;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mHasShadow:Z

    .line 65
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mShadowColor:I

    .line 78
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->init(Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mTitle:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mSubTitle:Ljava/lang/String;

    .line 51
    const/16 v0, 0x14

    iput v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mStrokeWidth:I

    .line 53
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mCircleBounds:Landroid/graphics/RectF;

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mProgressColorPaint:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mBackgroundColorPaint:Landroid/graphics/Paint;

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mTitlePaint:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mSubtitlePaint:Landroid/graphics/Paint;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mHasShadow:Z

    .line 65
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mShadowColor:I

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->init(Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mTitle:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mSubTitle:Ljava/lang/String;

    .line 51
    const/16 v0, 0x14

    iput v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mStrokeWidth:I

    .line 53
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mCircleBounds:Landroid/graphics/RectF;

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mProgressColorPaint:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mBackgroundColorPaint:Landroid/graphics/Paint;

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mTitlePaint:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mSubtitlePaint:Landroid/graphics/Paint;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mHasShadow:Z

    .line 65
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mShadowColor:I

    .line 88
    invoke-virtual {p0, p2, p3}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->init(Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method


# virtual methods
.method public animateProgressTo(IIJLcom/lylc/widget/circularprogressbar/CircularProgressBar$ProgressAnimationListener;)V
    .registers 11
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "duration"    # J
    .param p5, "listener"    # Lcom/lylc/widget/circularprogressbar/CircularProgressBar$ProgressAnimationListener;

    .prologue
    .line 185
    if-eqz p1, :cond_5

    .line 186
    invoke-virtual {p0, p1}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->setProgress(I)V

    .line 187
    :cond_5
    const-string v1, "animateProgress"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    int-to-float v4, p1

    aput v4, v2, v3

    const/4 v3, 0x1

    int-to-float v4, p2

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 188
    .local v0, "progressBarAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 190
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 191
    new-instance v1, Lcom/lylc/widget/circularprogressbar/CircularProgressBar$1;

    invoke-direct {v1, p0, p2, p5}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar$1;-><init>(Lcom/lylc/widget/circularprogressbar/CircularProgressBar;ILcom/lylc/widget/circularprogressbar/CircularProgressBar$ProgressAnimationListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 214
    new-instance v1, Lcom/lylc/widget/circularprogressbar/CircularProgressBar$2;

    invoke-direct {v1, p0, p5}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar$2;-><init>(Lcom/lylc/widget/circularprogressbar/CircularProgressBar;Lcom/lylc/widget/circularprogressbar/CircularProgressBar$ProgressAnimationListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 227
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 228
    return-void
.end method

.method public getHasShadow()Z
    .registers 2

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mHasShadow:Z

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/util/AttributeSet;I)V
    .registers 13
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "style"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 93
    const/4 v4, 0x0

    invoke-virtual {p0, v9, v4}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->setLayerType(ILandroid/graphics/Paint;)V

    .line 94
    invoke-virtual {p0}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "OmpCircularProgressBar"

    invoke-static {v5, v6}, Lmobisocial/util/ResUtil;->getStyleableArray(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {v4, p1, v5, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 97
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "OmpCircularProgressBar_omp_cpb_hasShadow"

    invoke-static {v4, v5}, Lmobisocial/util/ResUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mHasShadow:Z

    .line 98
    invoke-virtual {p0}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "OmpCircularProgressBar_omp_cpb_progressColor"

    invoke-static {v4, v5}, Lmobisocial/util/ResUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "color":Ljava/lang/String;
    if-nez v1, :cond_164

    .line 100
    iget-object v4, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mProgressColorPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "omp_cpb_circular_progress_default_progress"

    invoke-static {v5, v6}, Lmobisocial/util/ResUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    :goto_4f
    invoke-virtual {p0}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "OmpCircularProgressBar_omp_cpb_backgroundColor"

    invoke-static {v4, v5}, Lmobisocial/util/ResUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 104
    if-nez v1, :cond_16f

    .line 105
    iget-object v4, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mBackgroundColorPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "omp_cpb_circular_progress_default_background"

    invoke-static {v5, v6}, Lmobisocial/util/ResUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    :goto_72
    invoke-virtual {p0}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "OmpCircularProgressBar_omp_cpb_titleColor"

    invoke-static {v4, v5}, Lmobisocial/util/ResUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 109
    if-nez v1, :cond_17a

    .line 110
    iget-object v4, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "omp_cpb_circular_progress_default_title"

    invoke-static {v5, v6}, Lmobisocial/util/ResUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    :goto_95
    invoke-virtual {p0}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "OmpCircularProgressBar_omp_cpb_subtitleColor"

    invoke-static {v4, v5}, Lmobisocial/util/ResUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 114
    if-nez v1, :cond_185

    .line 115
    iget-object v4, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mSubtitlePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "omp_cpb_circular_progress_default_subtitle"

    invoke-static {v5, v6}, Lmobisocial/util/ResUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    :goto_b8
    invoke-virtual {p0}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "OmpCircularProgressBar_omp_cpb_title"

    invoke-static {v4, v5}, Lmobisocial/util/ResUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "t":Ljava/lang/String;
    if-eqz v3, :cond_ca

    .line 120
    iput-object v3, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mTitle:Ljava/lang/String;

    .line 121
    :cond_ca
    invoke-virtual {p0}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "OmpCircularProgressBar_omp_cpb_subtitle"

    invoke-static {v4, v5}, Lmobisocial/util/ResUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 122
    if-eqz v3, :cond_dc

    .line 123
    iput-object v3, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mSubTitle:Ljava/lang/String;

    .line 124
    :cond_dc
    invoke-virtual {p0}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "OmpCircularProgressBar_omp_cpb_strokeWidth"

    invoke-static {v4, v5}, Lmobisocial/util/ResUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x14

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mStrokeWidth:I

    .line 125
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    iget-object v4, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mProgressColorPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    iget-object v4, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mProgressColorPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 128
    iget-object v4, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mProgressColorPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mStrokeWidth:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 129
    iget-object v4, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mBackgroundColorPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 130
    iget-object v4, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mBackgroundColorPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 131
    iget-object v4, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mBackgroundColorPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mStrokeWidth:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 132
    iget-object v4, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mTitlePaint:Landroid/graphics/Paint;

    const/high16 v5, 0x42700000    # 60.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 133
    iget-object v4, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mTitlePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 134
    iget-object v4, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 135
    iget-object v4, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mTitlePaint:Landroid/graphics/Paint;

    const-string v5, "Roboto-Thin"

    invoke-static {v5, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 136
    iget-object v4, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mTitlePaint:Landroid/graphics/Paint;

    const v5, 0x3dcccccd    # 0.1f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, -0x777778

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 137
    iget-object v4, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mSubtitlePaint:Landroid/graphics/Paint;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 138
    iget-object v4, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mSubtitlePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 139
    iget-object v4, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mSubtitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 140
    iget-object v4, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mSubtitlePaint:Landroid/graphics/Paint;

    const-string v5, "Roboto-Thin"

    invoke-static {v5, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 142
    return-void

    .line 102
    .end local v3    # "t":Ljava/lang/String;
    :cond_164
    iget-object v4, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mProgressColorPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4f

    .line 107
    :cond_16f
    iget-object v4, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mBackgroundColorPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_72

    .line 112
    :cond_17a
    iget-object v4, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mTitlePaint:Landroid/graphics/Paint;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_95

    .line 117
    :cond_185
    iget-object v4, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mSubtitlePaint:Landroid/graphics/Paint;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_b8
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v12, 0x43b40000    # 360.0f

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    .line 146
    monitor-enter p0

    :try_start_6
    iget-object v1, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mCircleBounds:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mBackgroundColorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 147
    invoke-virtual {p0}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->getProgress()I

    move-result v6

    .line 148
    .local v6, "prog":I
    invoke-virtual {p0}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->getMax()I

    move-result v0

    if-lez v0, :cond_aa

    int-to-float v0, v6

    invoke-virtual {p0}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float v3, v0, v12

    .line 149
    .local v3, "scale":F
    :goto_25
    iget-boolean v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mHasShadow:Z

    if-eqz v0, :cond_35

    .line 150
    iget-object v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mProgressColorPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mShadowColor:I

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 151
    :cond_35
    iget-object v1, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mCircleBounds:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mProgressColorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 152
    iget-object v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a5

    .line 153
    invoke-virtual {p0}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mTitlePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    div-float/2addr v1, v11

    sub-float/2addr v0, v1

    float-to-int v8, v0

    .line 154
    .local v8, "xPos":I
    invoke-virtual {p0}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v9, v0, 0x2

    .line 155
    .local v9, "yPos":I
    iget-object v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iget-object v1, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 156
    .local v7, "titleHeight":F
    iget-object v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mSubTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 157
    int-to-float v0, v9

    div-float v1, v7, v11

    add-float/2addr v0, v1

    float-to-int v9, v0

    .line 159
    :cond_7e
    iget-object v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mTitle:Ljava/lang/String;

    int-to-float v1, v8

    int-to-float v2, v9

    iget-object v4, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 160
    int-to-float v0, v9

    add-float/2addr v0, v7

    float-to-int v9, v0

    .line 161
    invoke-virtual {p0}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mSubtitlePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mSubTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    div-float/2addr v1, v11

    sub-float/2addr v0, v1

    float-to-int v8, v0

    .line 162
    iget-object v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mSubTitle:Ljava/lang/String;

    int-to-float v1, v8

    int-to-float v2, v9

    iget-object v4, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mSubtitlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 164
    .end local v7    # "titleHeight":F
    .end local v8    # "xPos":I
    .end local v9    # "yPos":I
    :cond_a5
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_a8
    .catchall {:try_start_6 .. :try_end_a8} :catchall_ad

    .line 165
    monitor-exit p0

    return-void

    .end local v3    # "scale":F
    :cond_aa
    move v3, v10

    .line 148
    goto/16 :goto_25

    .line 146
    .end local v6    # "prog":I
    :catchall_ad
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onMeasure(II)V
    .registers 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x41a00000    # 20.0f

    .line 169
    invoke-virtual {p0}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v3, p2}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->getDefaultSize(II)I

    move-result v0

    .line 170
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v3, p1}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->getDefaultSize(II)I

    move-result v2

    .line 171
    .local v2, "width":I
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 172
    .local v1, "min":I
    add-int/lit8 v3, v1, 0x28

    add-int/lit8 v4, v1, 0x28

    invoke-virtual {p0, v3, v4}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->setMeasuredDimension(II)V

    .line 173
    iget-object v3, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mCircleBounds:Landroid/graphics/RectF;

    add-int/lit8 v4, v1, 0x14

    int-to-float v4, v4

    add-int/lit8 v5, v1, 0x14

    int-to-float v5, v5

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 174
    return-void
.end method

.method public declared-synchronized setHasShadow(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .prologue
    .line 251
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mHasShadow:Z

    .line 252
    invoke-virtual {p0}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->invalidate()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 253
    monitor-exit p0

    return-void

    .line 251
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProgress(I)V
    .registers 3
    .param p1, "progress"    # I

    .prologue
    .line 178
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 181
    invoke-virtual {p0}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->invalidate()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 182
    monitor-exit p0

    return-void

    .line 178
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setShadow(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 256
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mShadowColor:I

    .line 257
    invoke-virtual {p0}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->invalidate()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 258
    monitor-exit p0

    return-void

    .line 256
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSubTitle(Ljava/lang/String;)V
    .registers 3
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 236
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mSubTitle:Ljava/lang/String;

    .line 237
    invoke-virtual {p0}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->invalidate()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 238
    monitor-exit p0

    return-void

    .line 236
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSubTitleColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 241
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mSubtitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    invoke-virtual {p0}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->invalidate()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 243
    monitor-exit p0

    return-void

    .line 241
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTitle(Ljava/lang/String;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 231
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mTitle:Ljava/lang/String;

    .line 232
    invoke-virtual {p0}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->invalidate()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 233
    monitor-exit p0

    return-void

    .line 231
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTitleColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 246
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 247
    invoke-virtual {p0}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->invalidate()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 248
    monitor-exit p0

    return-void

    .line 246
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
