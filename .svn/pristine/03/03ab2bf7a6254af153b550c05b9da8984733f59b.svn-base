.class public abstract Lcom/baidu/wallet/base/widget/LoadingLayout;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/wallet/base/widget/LoadingLayout$1;,
        Lcom/baidu/wallet/base/widget/LoadingLayout$State;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

.field private c:Lcom/baidu/wallet/base/widget/LoadingLayout$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/wallet/base/widget/LoadingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/wallet/base/widget/LoadingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/baidu/wallet/base/widget/LoadingLayout$State;->NONE:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/LoadingLayout;->b:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    sget-object v0, Lcom/baidu/wallet/base/widget/LoadingLayout$State;->NONE:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/LoadingLayout;->c:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/wallet/base/widget/LoadingLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected abstract createLoadingView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end method

.method public abstract getContentSize()I
.end method

.method protected getPreState()Lcom/baidu/wallet/base/widget/LoadingLayout$State;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/LoadingLayout;->c:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    return-object v0
.end method

.method public getState()Lcom/baidu/wallet/base/widget/LoadingLayout$State;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/LoadingLayout;->b:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    return-object v0
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    invoke-virtual {p0, p1, p2}, Lcom/baidu/wallet/base/widget/LoadingLayout;->createLoadingView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/LoadingLayout;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/LoadingLayout;->a:Landroid/view/View;

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Loading view can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/LoadingLayout;->a:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/baidu/wallet/base/widget/LoadingLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onNoMoreData()V
    .registers 1

    return-void
.end method

.method public onPull(F)V
    .registers 2

    return-void
.end method

.method protected onPullToRefresh()V
    .registers 1

    return-void
.end method

.method protected onRefreshing()V
    .registers 1

    return-void
.end method

.method protected onReleaseToRefresh()V
    .registers 1

    return-void
.end method

.method protected onReset()V
    .registers 1

    return-void
.end method

.method protected onStateChanged(Lcom/baidu/wallet/base/widget/LoadingLayout$State;Lcom/baidu/wallet/base/widget/LoadingLayout$State;)V
    .registers 5

    sget-object v0, Lcom/baidu/wallet/base/widget/LoadingLayout$1;->a:[I

    invoke-virtual {p1}, Lcom/baidu/wallet/base/widget/LoadingLayout$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    :goto_b
    return-void

    :pswitch_c
    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/LoadingLayout;->onReset()V

    goto :goto_b

    :pswitch_10
    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/LoadingLayout;->onReleaseToRefresh()V

    goto :goto_b

    :pswitch_14
    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/LoadingLayout;->onPullToRefresh()V

    goto :goto_b

    :pswitch_18
    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/LoadingLayout;->onRefreshing()V

    goto :goto_b

    :pswitch_1c
    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/LoadingLayout;->onNoMoreData()V

    goto :goto_b

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_c
        :pswitch_10
        :pswitch_14
        :pswitch_18
        :pswitch_1c
    .end packed-switch
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .registers 2

    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .registers 2

    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .registers 2

    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .registers 2

    return-void
.end method

.method public setState(Lcom/baidu/wallet/base/widget/LoadingLayout$State;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/LoadingLayout;->b:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    if-eq v0, p1, :cond_f

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/LoadingLayout;->b:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/LoadingLayout;->c:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    iput-object p1, p0, Lcom/baidu/wallet/base/widget/LoadingLayout;->b:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/LoadingLayout;->c:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    invoke-virtual {p0, p1, v0}, Lcom/baidu/wallet/base/widget/LoadingLayout;->onStateChanged(Lcom/baidu/wallet/base/widget/LoadingLayout$State;Lcom/baidu/wallet/base/widget/LoadingLayout$State;)V

    :cond_f
    return-void
.end method

.method public show(Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/LoadingLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x1

    :goto_8
    if-ne p1, v1, :cond_d

    :cond_a
    :goto_a
    return-void

    :cond_b
    move v1, v0

    goto :goto_8

    :cond_d
    iget-object v1, p0, Lcom/baidu/wallet/base/widget/LoadingLayout;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_a

    if-eqz p1, :cond_23

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1a
    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/LoadingLayout;->requestLayout()V

    if-eqz p1, :cond_26

    :goto_1f
    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/LoadingLayout;->setVisibility(I)V

    goto :goto_a

    :cond_23
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1a

    :cond_26
    const/4 v0, 0x4

    goto :goto_1f
.end method
