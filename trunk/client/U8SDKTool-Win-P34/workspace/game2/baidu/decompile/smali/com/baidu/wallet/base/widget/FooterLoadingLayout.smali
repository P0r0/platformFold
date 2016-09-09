.class Lcom/baidu/wallet/base/widget/FooterLoadingLayout;
.super Lcom/baidu/wallet/base/widget/LoadingLayout;


# instance fields
.field private a:Landroid/widget/ProgressBar;

.field private b:Landroid/widget/TextView;

.field private c:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/wallet/base/widget/LoadingLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/baidu/wallet/base/widget/LoadingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bd_wallet_progress_footer"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;->a:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bd_wallet_loadmore_text"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;->b:Landroid/widget/TextView;

    sget-object v0, Lcom/baidu/wallet/base/widget/LoadingLayout$State;->RESET:Lcom/baidu/wallet/base/widget/LoadingLayout$State;

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;->setState(Lcom/baidu/wallet/base/widget/LoadingLayout$State;)V

    return-void
.end method


# virtual methods
.method protected createLoadingView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wallet_base_load_more"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContentSize()I
    .registers 3

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bd_wallet_footer_height"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->dimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected onNoMoreData()V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bd_wallet_no_more"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onRefreshing()V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;->c:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bd_wallet_refresh_loading"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_22
    return-void

    :cond_23
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_22
.end method

.method protected onReset()V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;->c:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bd_wallet_refresh_loading"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_17
.end method

.method protected onStateChanged(Lcom/baidu/wallet/base/widget/LoadingLayout$State;Lcom/baidu/wallet/base/widget/LoadingLayout$State;)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;->a:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;->b:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-super {p0, p1, p2}, Lcom/baidu/wallet/base/widget/LoadingLayout;->onStateChanged(Lcom/baidu/wallet/base/widget/LoadingLayout$State;Lcom/baidu/wallet/base/widget/LoadingLayout$State;)V

    return-void
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .registers 2

    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iput-object p1, p0, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;->c:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/FooterLoadingLayout;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    return-void
.end method
