.class public abstract Lcom/baidu/wallet/base/widget/PullToRefreshBase;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/wallet/base/widget/PullToRefreshBase$a;,
        Lcom/baidu/wallet/base/widget/PullToRefreshBase$OnRefreshListener;
    }
.end annotation


# instance fields
.field private a:F

.field private b:Lcom/baidu/wallet/base/widget/PullToRefreshBase$OnRefreshListener;

.field private c:Lcom/baidu/wallet/base/widget/LoadingLayout;

.field private d:Lcom/baidu/wallet/base/widget/LoadingLayout;

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

.field private n:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

.field private o:Landroid/view/View;

.field private p:Lcom/baidu/wallet/base/widget/PullToRefreshBase$a;

.field private q:Landroid/widget/FrameLayout;

.field private r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->a:F

    iput-boolean v2, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->g:Z

    iput-boolean v1, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->h:Z

    iput-boolean v1, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->i:Z

    iput-boolean v2, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->j:Z

    iput-boolean v1, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->k:Z

    sget-object v0, Lcom/baidu/wallet/base/widget/LoadingLayout$State;->NONE:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->m:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    sget-object v0, Lcom/baidu/wallet/base/widget/LoadingLayout$State;->NONE:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->n:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->r:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->a:F

    iput-boolean v2, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->g:Z

    iput-boolean v1, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->h:Z

    iput-boolean v1, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->i:Z

    iput-boolean v2, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->j:Z

    iput-boolean v1, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->k:Z

    sget-object v0, Lcom/baidu/wallet/base/widget/LoadingLayout$State;->NONE:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->m:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    sget-object v0, Lcom/baidu/wallet/base/widget/LoadingLayout$State;->NONE:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->n:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->r:I

    invoke-direct {p0, p1, p2}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->c:Lcom/baidu/wallet/base/widget/LoadingLayout;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->c:Lcom/baidu/wallet/base/widget/LoadingLayout;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/LoadingLayout;->getContentSize()I

    move-result v0

    :goto_b
    iget-object v2, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->d:Lcom/baidu/wallet/base/widget/LoadingLayout;

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->d:Lcom/baidu/wallet/base/widget/LoadingLayout;

    invoke-virtual {v2}, Lcom/baidu/wallet/base/widget/LoadingLayout;->getContentSize()I

    move-result v2

    :goto_15
    if-gez v0, :cond_53

    move v3, v1

    :goto_18
    if-gez v2, :cond_51

    move v0, v1

    :goto_1b
    iput v3, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->e:I

    iput v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->f:I

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->c:Lcom/baidu/wallet/base/widget/LoadingLayout;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->c:Lcom/baidu/wallet/base/widget/LoadingLayout;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/LoadingLayout;->getMeasuredHeight()I

    move-result v0

    :goto_29
    iget-object v2, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->d:Lcom/baidu/wallet/base/widget/LoadingLayout;

    if-eqz v2, :cond_33

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->d:Lcom/baidu/wallet/base/widget/LoadingLayout;

    invoke-virtual {v1}, Lcom/baidu/wallet/base/widget/LoadingLayout;->getMeasuredHeight()I

    move-result v1

    :cond_33
    if-nez v1, :cond_37

    iget v1, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->f:I

    :cond_37
    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->getPaddingTop()I

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->getPaddingBottom()I

    neg-int v0, v0

    neg-int v1, v1

    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->setPadding(IIII)V

    return-void

    :cond_4b
    move v0, v1

    goto :goto_b

    :cond_4d
    move v2, v1

    goto :goto_15

    :cond_4f
    move v0, v1

    goto :goto_29

    :cond_51
    move v0, v2

    goto :goto_1b

    :cond_53
    move v3, v0

    goto :goto_18
.end method

.method private a(I)V
    .registers 8

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->getSmoothScrollDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->a(IJJ)V

    return-void
.end method

.method private a(II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->scrollTo(II)V

    return-void
.end method

.method private a(IJJ)V
    .registers 14

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->p:Lcom/baidu/wallet/base/widget/PullToRefreshBase$a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->p:Lcom/baidu/wallet/base/widget/PullToRefreshBase$a;

    invoke-static {v0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase$a;->a(Lcom/baidu/wallet/base/widget/PullToRefreshBase$a;)V

    :cond_9
    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->b()I

    move-result v2

    if-eq v2, p1, :cond_2c

    const/4 v0, 0x1

    move v7, v0

    :goto_11
    if-eqz v7, :cond_1e

    new-instance v0, Lcom/baidu/wallet/base/widget/PullToRefreshBase$a;

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/baidu/wallet/base/widget/PullToRefreshBase$a;-><init>(Lcom/baidu/wallet/base/widget/PullToRefreshBase;IIJLcom/baidu/wallet/base/widget/x;)V

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->p:Lcom/baidu/wallet/base/widget/PullToRefreshBase$a;

    :cond_1e
    if-eqz v7, :cond_2b

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_2f

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->p:Lcom/baidu/wallet/base/widget/PullToRefreshBase$a;

    invoke-virtual {p0, v0, p4, p5}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    const/4 v0, 0x0

    move v7, v0

    goto :goto_11

    :cond_2f
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->p:Lcom/baidu/wallet/base/widget/PullToRefreshBase$a;

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    goto :goto_2b
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->setOrientation(I)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->l:I

    invoke-virtual {p0, p1, p2}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->createHeaderLoadingLayout(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/baidu/wallet/base/widget/LoadingLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->c:Lcom/baidu/wallet/base/widget/LoadingLayout;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->createFooterLoadingLayout(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/baidu/wallet/base/widget/LoadingLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->d:Lcom/baidu/wallet/base/widget/LoadingLayout;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->o:Landroid/view/View;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->o:Landroid/view/View;

    if-nez v0, :cond_2c

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Refreshable view can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->o:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->addRefreshableView(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->addHeaderAndFooter(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/baidu/wallet/base/widget/x;

    invoke-direct {v1, p0}, Lcom/baidu/wallet/base/widget/x;-><init>(Lcom/baidu/wallet/base/widget/PullToRefreshBase;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/wallet/base/widget/PullToRefreshBase;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->a()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/wallet/base/widget/PullToRefreshBase;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/wallet/base/widget/PullToRefreshBase;IJJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->a(IJJ)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/wallet/base/widget/PullToRefreshBase;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->b(Z)V

    return-void
.end method

.method private a(Z)V
    .registers 6

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->isPullRefreshing()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    sget-object v0, Lcom/baidu/wallet/base/widget/LoadingLayout$State;->REFRESHING:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->m:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    sget-object v0, Lcom/baidu/wallet/base/widget/LoadingLayout$State;->REFRESHING:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->onStateChanged(Lcom/baidu/wallet/base/widget/LoadingLayout$State;Z)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->c:Lcom/baidu/wallet/base/widget/LoadingLayout;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->c:Lcom/baidu/wallet/base/widget/LoadingLayout;

    sget-object v1, Lcom/baidu/wallet/base/widget/LoadingLayout$State;->REFRESHING:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/LoadingLayout;->setState(Lcom/baidu/wallet/base/widget/LoadingLayout$State;)V

    :cond_1c
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->b:Lcom/baidu/wallet/base/widget/PullToRefreshBase$OnRefreshListener;

    if-eqz v0, :cond_6

    new-instance v0, Lcom/baidu/wallet/base/widget/ad;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/base/widget/ad;-><init>(Lcom/baidu/wallet/base/widget/PullToRefreshBase;)V

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->getSmoothScrollDuration()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6
.end method

.method private b()I
    .registers 2

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->getScrollY()I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/baidu/wallet/base/widget/PullToRefreshBase;)Lcom/baidu/wallet/base/widget/LoadingLayout;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->c:Lcom/baidu/wallet/base/widget/LoadingLayout;

    return-object v0
.end method

.method private b(II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->scrollBy(II)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/wallet/base/widget/PullToRefreshBase;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->a(Z)V

    return-void
.end method

.method private b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->j:Z

    return-void
.end method

.method static synthetic c(Lcom/baidu/wallet/base/widget/PullToRefreshBase;)Lcom/baidu/wallet/base/widget/LoadingLayout;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->d:Lcom/baidu/wallet/base/widget/LoadingLayout;

    return-object v0
.end method

.method private c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->j:Z

    return v0
.end method

.method static synthetic d(Lcom/baidu/wallet/base/widget/PullToRefreshBase;)I
    .registers 2

    iget v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->e:I

    return v0
.end method

.method static synthetic e(Lcom/baidu/wallet/base/widget/PullToRefreshBase;)Lcom/baidu/wallet/base/widget/PullToRefreshBase$OnRefreshListener;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->b:Lcom/baidu/wallet/base/widget/PullToRefreshBase$OnRefreshListener;

    return-object v0
.end method


# virtual methods
.method protected addHeaderAndFooter(Landroid/content/Context;)V
    .registers 7

    const/4 v4, -0x1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->c:Lcom/baidu/wallet/base/widget/LoadingLayout;

    iget-object v2, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->d:Lcom/baidu/wallet/base/widget/LoadingLayout;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/baidu/wallet/base/widget/LoadingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne p0, v3, :cond_16

    invoke-virtual {p0, v1}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->removeView(Landroid/view/View;)V

    :cond_16
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1a
    if-eqz v2, :cond_28

    invoke-virtual {v2}, Lcom/baidu/wallet/base/widget/LoadingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_25

    invoke-virtual {p0, v2}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->removeView(Landroid/view/View;)V

    :cond_25
    invoke-virtual {p0, v2, v4, v0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_28
    return-void
.end method

.method protected addRefreshableView(Landroid/content/Context;Landroid/view/View;)V
    .registers 7

    const/4 v3, -0x1

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->q:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2, v3, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->q:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected createFooterLoadingLayout(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/baidu/wallet/base/widget/LoadingLayout;
    .registers 4

    new-instance v0, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;

    invoke-direct {v0, p1}, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected createHeaderLoadingLayout(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/baidu/wallet/base/widget/LoadingLayout;
    .registers 4

    new-instance v0, Lcom/baidu/wallet/base/widget/HeaderLoadingLayout;

    invoke-direct {v0, p1}, Lcom/baidu/wallet/base/widget/HeaderLoadingLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected abstract createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end method

.method public doPullRefreshing(ZJ)V
    .registers 6

    new-instance v0, Lcom/baidu/wallet/base/widget/ab;

    invoke-direct {v0, p0, p1}, Lcom/baidu/wallet/base/widget/ab;-><init>(Lcom/baidu/wallet/base/widget/PullToRefreshBase;Z)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getFooterLoadingLayout()Lcom/baidu/wallet/base/widget/LoadingLayout;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->d:Lcom/baidu/wallet/base/widget/LoadingLayout;

    return-object v0
.end method

.method public getHeaderLoadingLayout()Lcom/baidu/wallet/base/widget/LoadingLayout;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->c:Lcom/baidu/wallet/base/widget/LoadingLayout;

    return-object v0
.end method

.method public getRefreshableView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->o:Landroid/view/View;

    return-object v0
.end method

.method protected getSmoothScrollDuration()J
    .registers 3

    const-wide/16 v0, 0x96

    return-wide v0
.end method

.method public isPullLoadEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->h:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->d:Lcom/baidu/wallet/base/widget/LoadingLayout;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected isPullLoading()Z
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->n:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    sget-object v1, Lcom/baidu/wallet/base/widget/LoadingLayout$State;->REFRESHING:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isPullRefreshEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->g:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->c:Lcom/baidu/wallet/base/widget/LoadingLayout;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected isPullRefreshing()Z
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->m:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    sget-object v1, Lcom/baidu/wallet/base/widget/LoadingLayout$State;->REFRESHING:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected abstract isReadyForPullDown()Z
.end method

.method protected abstract isReadyForPullUp()Z
.end method

.method public isScrollLoadEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->i:Z

    return v0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->c()Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->isPullLoadEnabled()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->isPullRefreshEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1e

    if-ne v2, v1, :cond_21

    :cond_1e
    iput-boolean v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->k:Z

    goto :goto_8

    :cond_21
    if-eqz v2, :cond_29

    iget-boolean v3, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->k:Z

    if-eqz v3, :cond_29

    move v0, v1

    goto :goto_8

    :cond_29
    packed-switch v2, :pswitch_data_a6

    :cond_2c
    :goto_2c
    :pswitch_2c
    iget-boolean v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->k:Z

    goto :goto_8

    :pswitch_2f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->a:F

    iput-boolean v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->k:Z

    goto :goto_2c

    :pswitch_38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->a:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->l:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_56

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->isPullRefreshing()Z

    move-result v3

    if-nez v3, :cond_56

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->isPullLoading()Z

    move-result v3

    if-eqz v3, :cond_2c

    :cond_56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->a:F

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->isPullRefreshEnabled()Z

    move-result v3

    if-eqz v3, :cond_85

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->isReadyForPullDown()Z

    move-result v3

    if-eqz v3, :cond_85

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gtz v3, :cond_78

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_79

    :cond_78
    move v0, v1

    :cond_79
    iput-boolean v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->k:Z

    iget-boolean v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->k:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->o:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_2c

    :cond_85
    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->isPullLoadEnabled()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->isReadyForPullUp()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gtz v3, :cond_a1

    const/high16 v3, -0x41000000    # -0.5f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_a2

    :cond_a1
    move v0, v1

    :cond_a2
    iput-boolean v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->k:Z

    goto :goto_2c

    nop

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2c
        :pswitch_38
    .end packed-switch
.end method

.method public onPullDownRefreshComplete()V
    .registers 5

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->isPullRefreshing()Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/baidu/wallet/base/widget/LoadingLayout$State;->RESET:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->m:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    sget-object v0, Lcom/baidu/wallet/base/widget/LoadingLayout$State;->RESET:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->onStateChanged(Lcom/baidu/wallet/base/widget/LoadingLayout$State;Z)V

    new-instance v0, Lcom/baidu/wallet/base/widget/z;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/base/widget/z;-><init>(Lcom/baidu/wallet/base/widget/PullToRefreshBase;)V

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->getSmoothScrollDuration()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->resetHeaderLayout()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->b(Z)V

    :cond_23
    return-void
.end method

.method public onPullUpRefreshComplete()V
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->isPullLoading()Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Lcom/baidu/wallet/base/widget/LoadingLayout$State;->RESET:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->n:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    sget-object v0, Lcom/baidu/wallet/base/widget/LoadingLayout$State;->RESET:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->onStateChanged(Lcom/baidu/wallet/base/widget/LoadingLayout$State;Z)V

    new-instance v0, Lcom/baidu/wallet/base/widget/aa;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/base/widget/aa;-><init>(Lcom/baidu/wallet/base/widget/PullToRefreshBase;)V

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->getSmoothScrollDuration()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->resetFooterLayout()V

    invoke-direct {p0, v1}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->b(Z)V

    :cond_22
    return-void
.end method

.method protected final onSizeChanged(IIII)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->a()V

    invoke-virtual {p0, p1, p2}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->refreshRefreshableViewSize(II)V

    new-instance v0, Lcom/baidu/wallet/base/widget/y;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/base/widget/y;-><init>(Lcom/baidu/wallet/base/widget/PullToRefreshBase;)V

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onStateChanged(Lcom/baidu/wallet/base/widget/LoadingLayout$State;Z)V
    .registers 3

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const/high16 v4, 0x40200000    # 2.5f

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_86

    :cond_b
    :goto_b
    return v1

    :pswitch_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->a:F

    iput-boolean v1, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->k:Z

    goto :goto_b

    :pswitch_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->a:F

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->a:F

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->isPullRefreshEnabled()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->isReadyForPullDown()Z

    move-result v3

    if-eqz v3, :cond_35

    div-float v1, v2, v4

    invoke-virtual {p0, v1}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->pullHeaderLayout(F)V

    move v1, v0

    goto :goto_b

    :cond_35
    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->isPullLoadEnabled()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->isReadyForPullUp()Z

    move-result v3

    if-eqz v3, :cond_48

    div-float v1, v2, v4

    invoke-virtual {p0, v1}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->pullFooterLayout(F)V

    move v1, v0

    goto :goto_b

    :cond_48
    iput-boolean v1, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->k:Z

    goto :goto_b

    :pswitch_4b
    iget-boolean v2, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->k:Z

    if-eqz v2, :cond_b

    iput-boolean v1, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->k:Z

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->isReadyForPullDown()Z

    move-result v2

    if-eqz v2, :cond_69

    iget-boolean v2, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->g:Z

    if-eqz v2, :cond_83

    iget-object v2, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->m:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    sget-object v3, Lcom/baidu/wallet/base/widget/LoadingLayout$State;->RELEASE_TO_REFRESH:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    if-ne v2, v3, :cond_83

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->startRefreshing()V

    :goto_64
    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->resetHeaderLayout()V

    move v1, v0

    goto :goto_b

    :cond_69
    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->isReadyForPullUp()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->isPullLoadEnabled()Z

    move-result v2

    if-eqz v2, :cond_7f

    iget-object v2, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->n:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    sget-object v3, Lcom/baidu/wallet/base/widget/LoadingLayout$State;->RELEASE_TO_REFRESH:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    if-ne v2, v3, :cond_7f

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->startLoading()V

    move v1, v0

    :cond_7f
    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->resetFooterLayout()V

    goto :goto_b

    :cond_83
    move v0, v1

    goto :goto_64

    nop

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_c
        :pswitch_4b
        :pswitch_15
        :pswitch_4b
    .end packed-switch
.end method

.method protected pullFooterLayout(F)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->b()I

    move-result v0

    cmpl-float v1, p1, v3

    if-lez v1, :cond_14

    int-to-float v0, v0

    sub-float/2addr v0, p1

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_14

    invoke-direct {p0, v2, v2}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->a(II)V

    :cond_13
    :goto_13
    return-void

    :cond_14
    float-to-int v0, p1

    neg-int v0, v0

    invoke-direct {p0, v2, v0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->b(II)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->d:Lcom/baidu/wallet/base/widget/LoadingLayout;

    if-eqz v0, :cond_33

    iget v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->f:I

    if-eqz v0, :cond_33

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->f:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->d:Lcom/baidu/wallet/base/widget/LoadingLayout;

    invoke-virtual {v1, v0}, Lcom/baidu/wallet/base/widget/LoadingLayout;->onPull(F)V

    :cond_33
    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->isPullLoadEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->isPullLoading()Z

    move-result v1

    if-nez v1, :cond_13

    iget v1, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->f:I

    if-le v0, v1, :cond_5c

    sget-object v0, Lcom/baidu/wallet/base/widget/LoadingLayout$State;->RELEASE_TO_REFRESH:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->n:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    :goto_4f
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->d:Lcom/baidu/wallet/base/widget/LoadingLayout;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->n:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/LoadingLayout;->setState(Lcom/baidu/wallet/base/widget/LoadingLayout$State;)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->n:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    invoke-virtual {p0, v0, v2}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->onStateChanged(Lcom/baidu/wallet/base/widget/LoadingLayout$State;Z)V

    goto :goto_13

    :cond_5c
    sget-object v0, Lcom/baidu/wallet/base/widget/LoadingLayout$State;->PULL_TO_REFRESH:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->n:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    goto :goto_4f
.end method

.method protected pullHeaderLayout(F)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->b()I

    move-result v0

    cmpg-float v1, p1, v2

    if-gez v1, :cond_14

    int-to-float v1, v0

    sub-float/2addr v1, p1

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_14

    invoke-direct {p0, v3, v3}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->a(II)V

    :cond_13
    :goto_13
    return-void

    :cond_14
    iget v1, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->r:I

    if-lez v1, :cond_24

    cmpl-float v1, p1, v2

    if-lez v1, :cond_24

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->r:I

    if-ge v0, v1, :cond_13

    :cond_24
    float-to-int v0, p1

    neg-int v0, v0

    invoke-direct {p0, v3, v0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->b(II)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->c:Lcom/baidu/wallet/base/widget/LoadingLayout;

    if-eqz v0, :cond_43

    iget v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->e:I

    if-eqz v0, :cond_43

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->e:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->c:Lcom/baidu/wallet/base/widget/LoadingLayout;

    invoke-virtual {v1, v0}, Lcom/baidu/wallet/base/widget/LoadingLayout;->onPull(F)V

    :cond_43
    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->isPullRefreshEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->isPullRefreshing()Z

    move-result v1

    if-nez v1, :cond_13

    iget v1, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->e:I

    if-le v0, v1, :cond_6d

    sget-object v0, Lcom/baidu/wallet/base/widget/LoadingLayout$State;->RELEASE_TO_REFRESH:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->m:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    :goto_5f
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->c:Lcom/baidu/wallet/base/widget/LoadingLayout;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->m:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/LoadingLayout;->setState(Lcom/baidu/wallet/base/widget/LoadingLayout$State;)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->m:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->onStateChanged(Lcom/baidu/wallet/base/widget/LoadingLayout$State;Z)V

    goto :goto_13

    :cond_6d
    sget-object v0, Lcom/baidu/wallet/base/widget/LoadingLayout$State;->PULL_TO_REFRESH:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->m:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    goto :goto_5f
.end method

.method protected refreshRefreshableViewSize(II)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->q:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq v1, p2, :cond_17

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_17
    return-void
.end method

.method protected resetFooterLayout()V
    .registers 5

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->isPullLoading()Z

    move-result v1

    if-eqz v1, :cond_17

    iget v2, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->f:I

    if-gt v0, v2, :cond_17

    invoke-direct {p0, v3}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->a(I)V

    :goto_16
    return-void

    :cond_17
    if-eqz v1, :cond_1f

    iget v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->f:I

    invoke-direct {p0, v0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->a(I)V

    goto :goto_16

    :cond_1f
    invoke-direct {p0, v3}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->a(I)V

    goto :goto_16
.end method

.method protected resetHeaderLayout()V
    .registers 5

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->isPullRefreshing()Z

    move-result v1

    if-eqz v1, :cond_17

    iget v2, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->e:I

    if-gt v0, v2, :cond_17

    invoke-direct {p0, v3}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->a(I)V

    :goto_16
    return-void

    :cond_17
    if-eqz v1, :cond_20

    iget v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->e:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->a(I)V

    goto :goto_16

    :cond_20
    invoke-direct {p0, v3}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->a(I)V

    goto :goto_16
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->c:Lcom/baidu/wallet/base/widget/LoadingLayout;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->c:Lcom/baidu/wallet/base/widget/LoadingLayout;

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/base/widget/LoadingLayout;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->d:Lcom/baidu/wallet/base/widget/LoadingLayout;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->d:Lcom/baidu/wallet/base/widget/LoadingLayout;

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/base/widget/LoadingLayout;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    :cond_12
    return-void
.end method

.method public setMaxPullOffset(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->r:I

    return-void
.end method

.method public setOnRefreshListener(Lcom/baidu/wallet/base/widget/PullToRefreshBase$OnRefreshListener;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->b:Lcom/baidu/wallet/base/widget/PullToRefreshBase$OnRefreshListener;

    return-void
.end method

.method public setOrientation(I)V
    .registers 4

    const/4 v0, 0x1

    if-eq v0, p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This class only supports VERTICAL orientation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method public setPullLoadEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->h:Z

    return-void
.end method

.method public setPullRefreshEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->g:Z

    return-void
.end method

.method public setScrollLoadEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->i:Z

    return-void
.end method

.method public showPullRefreshing(ZJ)V
    .registers 6

    new-instance v0, Lcom/baidu/wallet/base/widget/ac;

    invoke-direct {v0, p0, p1}, Lcom/baidu/wallet/base/widget/ac;-><init>(Lcom/baidu/wallet/base/widget/PullToRefreshBase;Z)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected startLoading()V
    .registers 5

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->isPullLoading()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    sget-object v0, Lcom/baidu/wallet/base/widget/LoadingLayout$State;->REFRESHING:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->n:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    sget-object v0, Lcom/baidu/wallet/base/widget/LoadingLayout$State;->REFRESHING:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->onStateChanged(Lcom/baidu/wallet/base/widget/LoadingLayout$State;Z)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->d:Lcom/baidu/wallet/base/widget/LoadingLayout;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->d:Lcom/baidu/wallet/base/widget/LoadingLayout;

    sget-object v1, Lcom/baidu/wallet/base/widget/LoadingLayout$State;->REFRESHING:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/LoadingLayout;->setState(Lcom/baidu/wallet/base/widget/LoadingLayout$State;)V

    :cond_1c
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->b:Lcom/baidu/wallet/base/widget/PullToRefreshBase$OnRefreshListener;

    if-eqz v0, :cond_6

    new-instance v0, Lcom/baidu/wallet/base/widget/ae;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/base/widget/ae;-><init>(Lcom/baidu/wallet/base/widget/PullToRefreshBase;)V

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->getSmoothScrollDuration()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6
.end method

.method protected startRefreshing()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->a(Z)V

    return-void
.end method
