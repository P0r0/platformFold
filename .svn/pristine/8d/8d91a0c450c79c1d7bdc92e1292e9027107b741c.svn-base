.class public Lcom/baidu/wallet/base/widget/PullToRefreshListView;
.super Lcom/baidu/wallet/base/widget/PullToRefreshBase;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/baidu/wallet/base/widget/LoadingLayout;

.field private c:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/wallet/base/widget/PullToRefreshListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->setPullLoadEnabled(Z)V

    return-void
.end method

.method private a()Z
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->b:Lcom/baidu/wallet/base/widget/LoadingLayout;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->b:Lcom/baidu/wallet/base/widget/LoadingLayout;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/LoadingLayout;->getState()Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    move-result-object v0

    sget-object v1, Lcom/baidu/wallet/base/widget/LoadingLayout$State;->NO_MORE_DATA:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    if-ne v0, v1, :cond_10

    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method private b()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->a:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-interface {v2}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_10
    :goto_10
    return v0

    :cond_11
    iget-object v2, p0, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->a:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_27

    iget-object v2, p0, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->a:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    :goto_23
    if-gez v2, :cond_10

    move v0, v1

    goto :goto_10

    :cond_27
    move v2, v1

    goto :goto_23
.end method

.method private c()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->a:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-interface {v2}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_10
    :goto_10
    return v0

    :cond_11
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->a:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    add-int/lit8 v2, v2, -0x1

    if-lt v3, v2, :cond_4b

    iget-object v2, p0, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->a:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v3, v2

    iget-object v3, p0, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->a:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->a:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4b

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->a:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getBottom()I

    move-result v3

    if-le v2, v3, :cond_10

    move v0, v1

    goto :goto_10

    :cond_4b
    move v0, v1

    goto :goto_10
.end method


# virtual methods
.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
    .registers 4

    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-object v0
.end method

.method public getFooterLoadingLayout()Lcom/baidu/wallet/base/widget/LoadingLayout;
    .registers 2

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->isScrollLoadEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->b:Lcom/baidu/wallet/base/widget/LoadingLayout;

    :goto_8
    return-object v0

    :cond_9
    invoke-super {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->getFooterLoadingLayout()Lcom/baidu/wallet/base/widget/LoadingLayout;

    move-result-object v0

    goto :goto_8
.end method

.method protected isReadyForPullDown()Z
    .registers 2

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->b()Z

    move-result v0

    return v0
.end method

.method protected isReadyForPullUp()Z
    .registers 2

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->c()Z

    move-result v0

    return v0
.end method

.method public onPullUpRefreshComplete()V
    .registers 3

    invoke-super {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->onPullUpRefreshComplete()V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->b:Lcom/baidu/wallet/base/widget/LoadingLayout;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->b:Lcom/baidu/wallet/base/widget/LoadingLayout;

    sget-object v1, Lcom/baidu/wallet/base/widget/LoadingLayout$State;->RESET:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/LoadingLayout;->setState(Lcom/baidu/wallet/base/widget/LoadingLayout$State;)V

    :cond_e
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 6

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_9
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->isScrollLoadEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->a()Z

    move-result v0

    if-eqz v0, :cond_1a

    if-eqz p2, :cond_11

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1a

    :cond_11
    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->isReadyForPullUp()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->startLoading()V

    :cond_1a
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_23
    return-void
.end method

.method public setHasMoreData(Z)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->b:Lcom/baidu/wallet/base/widget/LoadingLayout;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->b:Lcom/baidu/wallet/base/widget/LoadingLayout;

    if-eqz p1, :cond_1b

    sget-object v0, Lcom/baidu/wallet/base/widget/LoadingLayout$State;->RESET:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    :goto_a
    invoke-virtual {v1, v0}, Lcom/baidu/wallet/base/widget/LoadingLayout;->setState(Lcom/baidu/wallet/base/widget/LoadingLayout$State;)V

    :cond_d
    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->getFooterLoadingLayout()Lcom/baidu/wallet/base/widget/LoadingLayout;

    move-result-object v1

    if-eqz v1, :cond_1a

    if-eqz p1, :cond_1e

    sget-object v0, Lcom/baidu/wallet/base/widget/LoadingLayout$State;->RESET:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    :goto_17
    invoke-virtual {v1, v0}, Lcom/baidu/wallet/base/widget/LoadingLayout;->setState(Lcom/baidu/wallet/base/widget/LoadingLayout$State;)V

    :cond_1a
    return-void

    :cond_1b
    sget-object v0, Lcom/baidu/wallet/base/widget/LoadingLayout$State;->NO_MORE_DATA:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    goto :goto_a

    :cond_1e
    sget-object v0, Lcom/baidu/wallet/base/widget/LoadingLayout$State;->NO_MORE_DATA:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    goto :goto_17
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setRefreshingText(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->getHeaderLoadingLayout()Lcom/baidu/wallet/base/widget/LoadingLayout;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->getHeaderLoadingLayout()Lcom/baidu/wallet/base/widget/LoadingLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/base/widget/LoadingLayout;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    :cond_14
    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->getFooterLoadingLayout()Lcom/baidu/wallet/base/widget/LoadingLayout;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->getFooterLoadingLayout()Lcom/baidu/wallet/base/widget/LoadingLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/base/widget/LoadingLayout;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    goto :goto_6
.end method

.method public setScrollLoadEnabled(Z)V
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->isScrollLoadEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    invoke-super {p0, p1}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->setScrollLoadEnabled(Z)V

    if-eqz p1, :cond_2b

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->b:Lcom/baidu/wallet/base/widget/LoadingLayout;

    if-nez v0, :cond_24

    new-instance v0, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->b:Lcom/baidu/wallet/base/widget/LoadingLayout;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->b:Lcom/baidu/wallet/base/widget/LoadingLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_24
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->b:Lcom/baidu/wallet/base/widget/LoadingLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/LoadingLayout;->show(Z)V

    goto :goto_7

    :cond_2b
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->b:Lcom/baidu/wallet/base/widget/LoadingLayout;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->b:Lcom/baidu/wallet/base/widget/LoadingLayout;

    invoke-virtual {v0, v3}, Lcom/baidu/wallet/base/widget/LoadingLayout;->show(Z)V

    goto :goto_7
.end method

.method protected startLoading()V
    .registers 3

    invoke-super {p0}, Lcom/baidu/wallet/base/widget/PullToRefreshBase;->startLoading()V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->b:Lcom/baidu/wallet/base/widget/LoadingLayout;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->b:Lcom/baidu/wallet/base/widget/LoadingLayout;

    sget-object v1, Lcom/baidu/wallet/base/widget/LoadingLayout$State;->REFRESHING:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/LoadingLayout;->setState(Lcom/baidu/wallet/base/widget/LoadingLayout$State;)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->b:Lcom/baidu/wallet/base/widget/LoadingLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/LoadingLayout;->setVisibility(I)V

    :cond_14
    return-void
.end method
