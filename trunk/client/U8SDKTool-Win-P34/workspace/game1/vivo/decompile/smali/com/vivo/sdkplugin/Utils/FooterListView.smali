.class public Lcom/vivo/sdkplugin/Utils/FooterListView;
.super Landroid/widget/ListView;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Lcom/vivo/sdkplugin/Utils/FooterListView$LoadCallBack;

.field private e:Z

.field private f:Z

.field private g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/vivo/sdkplugin/Utils/FooterListView;->e:Z

    iput-boolean v2, p0, Lcom/vivo/sdkplugin/Utils/FooterListView;->f:Z

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/FooterListView;->g:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/vivo/sdkplugin/Utils/FooterListView;->setCacheColorHint(I)V

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/Utils/FooterListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHeight(I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setWidth(I)V

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/Utils/FooterListView;->addHeaderView(Landroid/view/View;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/Utils/FooterListView;->a:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/FooterListView;->a:Landroid/view/LayoutInflater;

    const-string v1, "layout"

    const-string v2, "pull_to_refresh_footer"

    invoke-static {p1, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/Utils/FooterListView;->b:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/FooterListView;->b:Landroid/widget/LinearLayout;

    const-string v1, "id"

    const-string v2, "footerview_loading"

    invoke-static {p1, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/Utils/FooterListView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/vivo/sdkplugin/Utils/FooterListView;->setFooterViewLoading(Z)V

    invoke-virtual {p0, p0}, Lcom/vivo/sdkplugin/Utils/FooterListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method public addFooterView()V
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/FooterListView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/Utils/FooterListView;->addFooterView(Landroid/view/View;)V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 7

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/Utils/FooterListView;->e:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    if-eq p3, p4, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/Utils/FooterListView;->f:Z

    :cond_a
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/Utils/FooterListView;->getFooterViewsCount()I

    move-result v0

    if-gtz v0, :cond_4

    if-eq p3, p4, :cond_4

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/Utils/FooterListView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/Utils/FooterListView;->getLastVisiblePosition()I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/FooterListView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/Utils/FooterListView;->addFooterView(Landroid/view/View;)V

    goto :goto_4
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 6

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/FooterListView;->g:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const-string v0, "InfoMoreListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getFooterViewsCount()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/Utils/FooterListView;->getFooterViewsCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mIsFootLoading"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/sdkplugin/Utils/FooterListView;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getCount()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/Utils/FooterListView;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getLastVisiblePosition()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/Utils/FooterListView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/Utils/FooterListView;->e:Z

    if-nez v0, :cond_57

    :cond_56
    :goto_56
    return-void

    :cond_57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/Utils/FooterListView;->setFooterViewLoading(Z)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/Utils/FooterListView;->getFooterViewsCount()I

    move-result v0

    if-lez v0, :cond_56

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/Utils/FooterListView;->f:Z

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/Utils/FooterListView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/Utils/FooterListView;->getLastVisiblePosition()I

    move-result v1

    if-ne v0, v1, :cond_56

    if-nez p2, :cond_56

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/FooterListView;->d:Lcom/vivo/sdkplugin/Utils/FooterListView$LoadCallBack;

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/FooterListView;->d:Lcom/vivo/sdkplugin/Utils/FooterListView$LoadCallBack;

    invoke-interface {v0}, Lcom/vivo/sdkplugin/Utils/FooterListView$LoadCallBack;->onLoadData()V

    goto :goto_56
.end method

.method public removeFooter()V
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/FooterListView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/Utils/FooterListView;->removeFooterView(Landroid/view/View;)Z

    return-void
.end method

.method public setFooterViewLoading(Z)V
    .registers 4

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/FooterListView;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/FooterListView;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_8
.end method

.method public setLoadDataListener(Lcom/vivo/sdkplugin/Utils/FooterListView$LoadCallBack;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/FooterListView;->d:Lcom/vivo/sdkplugin/Utils/FooterListView$LoadCallBack;

    return-void
.end method

.method public setNeedFooterView(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vivo/sdkplugin/Utils/FooterListView;->e:Z

    return-void
.end method

.method public setmIsAuto(Z)V
    .registers 2

    return-void
.end method
