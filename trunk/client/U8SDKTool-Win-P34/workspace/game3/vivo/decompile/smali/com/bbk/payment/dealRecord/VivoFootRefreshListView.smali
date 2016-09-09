.class public Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;
.super Landroid/widget/ListView;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private a:F

.field private b:Landroid/widget/Scroller;

.field private c:Landroid/widget/AbsListView$OnScrollListener;

.field private d:Lcom/bbk/payment/dealRecord/VivoFootRefreshListView$VivoPullRefreshListener;

.field private e:Lcom/bbk/payment/dealRecord/VivoListViewHeader;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/TextView;

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Lcom/bbk/payment/dealRecord/VivoListViewFooter;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->a:F

    iput-boolean v2, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->i:Z

    iput-boolean v1, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->j:Z

    iput-boolean v2, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->l:Z

    iput-boolean v1, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->n:Z

    invoke-direct {p0, p1}, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->a:F

    iput-boolean v2, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->i:Z

    iput-boolean v1, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->j:Z

    iput-boolean v2, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->l:Z

    iput-boolean v1, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->n:Z

    invoke-direct {p0, p1}, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->a:F

    iput-boolean v2, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->i:Z

    iput-boolean v1, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->j:Z

    iput-boolean v2, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->l:Z

    iput-boolean v1, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->n:Z

    invoke-direct {p0, p1}, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->f:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private a()V
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    instance-of v0, v0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView$OnXScrollListener;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    check-cast v0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView$OnXScrollListener;

    invoke-interface {v0, p0}, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView$OnXScrollListener;->onXScrolling(Landroid/view/View;)V

    :cond_d
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->b:Landroid/widget/Scroller;

    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    new-instance v0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;

    invoke-direct {v0, p1}, Lcom/bbk/payment/dealRecord/VivoListViewHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->e:Lcom/bbk/payment/dealRecord/VivoListViewHeader;

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->e:Lcom/bbk/payment/dealRecord/VivoListViewHeader;

    const-string v1, "id"

    const-string v2, "xlistview_header_content"

    invoke-static {p1, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->f:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->e:Lcom/bbk/payment/dealRecord/VivoListViewHeader;

    const-string v1, "id"

    const-string v2, "xlistview_header_time"

    invoke-static {p1, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->e:Lcom/bbk/payment/dealRecord/VivoListViewHeader;

    invoke-virtual {p0, v0}, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->addHeaderView(Landroid/view/View;)V

    new-instance v0, Lcom/bbk/payment/dealRecord/VivoListViewFooter;

    invoke-direct {v0, p1}, Lcom/bbk/payment/dealRecord/VivoListViewFooter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->k:Lcom/bbk/payment/dealRecord/VivoListViewFooter;

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->e:Lcom/bbk/payment/dealRecord/VivoListViewHeader;

    invoke-virtual {v0}, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/bbk/payment/dealRecord/i;

    invoke-direct {v1, p0}, Lcom/bbk/payment/dealRecord/i;-><init>(Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;I)V
    .registers 2

    iput p1, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->h:I

    return-void
.end method

.method private b()V
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->e:Lcom/bbk/payment/dealRecord/VivoListViewHeader;

    invoke-virtual {v0}, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->getVisiableHeight()I

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-boolean v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->j:Z

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->h:I

    if-le v2, v0, :cond_9

    :cond_12
    iget-boolean v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->j:Z

    if-eqz v0, :cond_2d

    iget v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->h:I

    if-le v2, v0, :cond_2d

    iget v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->h:I

    move v3, v0

    :goto_1d
    iput v1, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->p:I

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->b:Landroid/widget/Scroller;

    sub-int v4, v3, v2

    const/16 v5, 0x190

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->invalidate()V

    goto :goto_9

    :cond_2d
    move v3, v1

    goto :goto_1d
.end method

.method static synthetic b(Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->c()V

    return-void
.end method

.method private c()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->m:Z

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->k:Lcom/bbk/payment/dealRecord/VivoListViewFooter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->setState(I)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->d:Lcom/bbk/payment/dealRecord/VivoFootRefreshListView$VivoPullRefreshListener;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->d:Lcom/bbk/payment/dealRecord/VivoFootRefreshListView$VivoPullRefreshListener;

    invoke-interface {v0}, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView$VivoPullRefreshListener;->onLoadMore()V

    :cond_12
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .registers 3

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->p:I

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->e:Lcom/bbk/payment/dealRecord/VivoListViewHeader;

    iget-object v1, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->b:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->setVisiableHeight(I)V

    :goto_17
    invoke-virtual {p0}, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->postInvalidate()V

    invoke-direct {p0}, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->a()V

    :cond_1d
    invoke-super {p0}, Landroid/widget/ListView;->computeScroll()V

    return-void

    :cond_21
    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->k:Lcom/bbk/payment/dealRecord/VivoListViewFooter;

    iget-object v1, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->b:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->setBottomMargin(I)V

    goto :goto_17
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 6

    iput p4, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->o:I

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_b
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_9
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    const v6, 0x3fe66666    # 1.8f

    const/4 v5, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->a:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->a:F

    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_13a

    :pswitch_1b
    const-string v0, "bbbbbbbbbbbbbbb"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    iput v2, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->a:F

    invoke-virtual {p0}, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_fe

    iget-boolean v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->i:Z

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->e:Lcom/bbk/payment/dealRecord/VivoListViewHeader;

    invoke-virtual {v0}, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->getVisiableHeight()I

    move-result v0

    iget v1, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->h:I

    if-le v0, v1, :cond_4c

    const-string v0, "4444444444444"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->j:Z

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->e:Lcom/bbk/payment/dealRecord/VivoListViewHeader;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->setState(I)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->d:Lcom/bbk/payment/dealRecord/VivoFootRefreshListView$VivoPullRefreshListener;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->d:Lcom/bbk/payment/dealRecord/VivoFootRefreshListView$VivoPullRefreshListener;

    invoke-interface {v0}, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView$VivoPullRefreshListener;->onRefresh()V

    :cond_4c
    invoke-direct {p0}, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->b()V

    :cond_4f
    :goto_4f
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_54
    const-string v0, "11111111111111111111"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->a:F

    goto :goto_4f

    :pswitch_60
    const-string v0, "aaaaaaaaaaaaaaa"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->a:F

    sub-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->a:F

    invoke-virtual {p0}, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_bb

    iget-object v2, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->e:Lcom/bbk/payment/dealRecord/VivoListViewHeader;

    invoke-virtual {v2}, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->getVisiableHeight()I

    move-result v2

    if-gtz v2, :cond_84

    cmpl-float v2, v0, v5

    if-lez v2, :cond_bb

    :cond_84
    const-string v2, "2222222222222222222222222"

    invoke-static {v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    div-float/2addr v0, v6

    iget-object v2, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->e:Lcom/bbk/payment/dealRecord/VivoListViewHeader;

    float-to-int v0, v0

    iget-object v3, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->e:Lcom/bbk/payment/dealRecord/VivoListViewHeader;

    invoke-virtual {v3}, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->getVisiableHeight()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v2, v0}, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->setVisiableHeight(I)V

    iget-boolean v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->i:Z

    if-eqz v0, :cond_ae

    iget-boolean v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->j:Z

    if-nez v0, :cond_ae

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->e:Lcom/bbk/payment/dealRecord/VivoListViewHeader;

    invoke-virtual {v0}, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->getVisiableHeight()I

    move-result v0

    iget v2, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->h:I

    if-le v0, v2, :cond_b5

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->e:Lcom/bbk/payment/dealRecord/VivoListViewHeader;

    invoke-virtual {v0, v4}, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->setState(I)V

    :cond_ae
    :goto_ae
    invoke-virtual {p0, v1}, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->setSelection(I)V

    invoke-direct {p0}, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->a()V

    goto :goto_4f

    :cond_b5
    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->e:Lcom/bbk/payment/dealRecord/VivoListViewHeader;

    invoke-virtual {v0, v1}, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->setState(I)V

    goto :goto_ae

    :cond_bb
    invoke-virtual {p0}, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->getLastVisiblePosition()I

    move-result v2

    iget v3, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->o:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_4f

    iget-object v2, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->k:Lcom/bbk/payment/dealRecord/VivoListViewFooter;

    invoke-virtual {v2}, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->getBottomMargin()I

    move-result v2

    if-gtz v2, :cond_d1

    cmpg-float v2, v0, v5

    if-gez v2, :cond_4f

    :cond_d1
    const-string v2, "33333333333333333"

    invoke-static {v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    neg-float v0, v0

    div-float/2addr v0, v6

    iget-object v2, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->k:Lcom/bbk/payment/dealRecord/VivoListViewFooter;

    invoke-virtual {v2}, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->getBottomMargin()I

    move-result v2

    float-to-int v0, v0

    add-int/2addr v0, v2

    iget-boolean v2, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->l:Z

    if-eqz v2, :cond_f1

    iget-boolean v2, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->m:Z

    if-nez v2, :cond_f1

    const/16 v2, 0x32

    if-lt v0, v2, :cond_f8

    iget-object v1, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->k:Lcom/bbk/payment/dealRecord/VivoListViewFooter;

    invoke-virtual {v1, v4}, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->setState(I)V

    :cond_f1
    :goto_f1
    iget-object v1, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->k:Lcom/bbk/payment/dealRecord/VivoListViewFooter;

    invoke-virtual {v1, v0}, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->setBottomMargin(I)V

    goto/16 :goto_4f

    :cond_f8
    iget-object v2, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->k:Lcom/bbk/payment/dealRecord/VivoListViewFooter;

    invoke-virtual {v2, v1}, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->setState(I)V

    goto :goto_f1

    :cond_fe
    invoke-virtual {p0}, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->getLastVisiblePosition()I

    move-result v0

    iget v2, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->o:I

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_4f

    const-string v0, "5555555555555555"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->l:Z

    if-eqz v0, :cond_122

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->k:Lcom/bbk/payment/dealRecord/VivoListViewFooter;

    invoke-virtual {v0}, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->getBottomMargin()I

    move-result v0

    const/16 v2, 0x32

    if-le v0, v2, :cond_122

    iget-boolean v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->m:Z

    if-nez v0, :cond_122

    invoke-direct {p0}, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->c()V

    :cond_122
    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->k:Lcom/bbk/payment/dealRecord/VivoListViewFooter;

    invoke-virtual {v0}, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->getBottomMargin()I

    move-result v2

    if-lez v2, :cond_4f

    iput v4, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->p:I

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->b:Landroid/widget/Scroller;

    neg-int v4, v2

    const/16 v5, 0x190

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->invalidate()V

    goto/16 :goto_4f

    :pswitch_data_13a
    .packed-switch 0x0
        :pswitch_54
        :pswitch_1b
        :pswitch_60
    .end packed-switch
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 3

    iget-boolean v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->n:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->n:Z

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->k:Lcom/bbk/payment/dealRecord/VivoListViewFooter;

    invoke-virtual {p0, v0}, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->addFooterView(Landroid/view/View;)V

    :cond_c
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setPullLoadEnable(Z)V
    .registers 5

    const/4 v2, 0x0

    iput-boolean p1, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->l:Z

    iget-boolean v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->l:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->k:Lcom/bbk/payment/dealRecord/VivoListViewFooter;

    invoke-virtual {v0}, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->hide()V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->k:Lcom/bbk/payment/dealRecord/VivoListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v2}, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->setFooterDividersEnabled(Z)V

    :goto_15
    return-void

    :cond_16
    iput-boolean v2, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->m:Z

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->k:Lcom/bbk/payment/dealRecord/VivoListViewFooter;

    invoke-virtual {v0}, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->show()V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->k:Lcom/bbk/payment/dealRecord/VivoListViewFooter;

    invoke-virtual {v0, v2}, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->setState(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->setFooterDividersEnabled(Z)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->k:Lcom/bbk/payment/dealRecord/VivoListViewFooter;

    new-instance v1, Lcom/bbk/payment/dealRecord/j;

    invoke-direct {v1, p0}, Lcom/bbk/payment/dealRecord/j;-><init>(Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;)V

    invoke-virtual {v0, v1}, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_15
.end method

.method public setPullRefreshEnable(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->i:Z

    iget-boolean v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->i:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->f:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->f:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_c
.end method

.method public setPullRefreshListener(Lcom/bbk/payment/dealRecord/VivoFootRefreshListView$VivoPullRefreshListener;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->d:Lcom/bbk/payment/dealRecord/VivoFootRefreshListView$VivoPullRefreshListener;

    return-void
.end method

.method public setRefreshTime(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public stopLoadMore()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->m:Z

    if-eqz v0, :cond_c

    iput-boolean v1, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->m:Z

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->k:Lcom/bbk/payment/dealRecord/VivoListViewFooter;

    invoke-virtual {v0, v1}, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->setState(I)V

    :cond_c
    return-void
.end method

.method public stopRefresh()V
    .registers 2

    iget-boolean v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->j:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->j:Z

    invoke-direct {p0}, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->b()V

    :cond_a
    return-void
.end method
