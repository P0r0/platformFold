.class public Lcom/baidu/balance/BalanceTransActivity;
.super Lcom/baidu/wallet/core/plugins/pluginfake/PluginBeanActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/balance/BalanceTransActivity$b;,
        Lcom/baidu/balance/BalanceTransActivity$a;
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/wallet/base/widget/PullToRefreshListView;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/view/View;

.field private d:Ljava/util/List;

.field private e:Lcom/baidu/balance/BalanceTransActivity$a;

.field private f:I

.field private g:I

.field private h:Z

.field private final i:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field

.field private j:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/baidu/wallet/core/plugins/pluginfake/PluginBeanActivity;-><init>()V

    iput v0, p0, Lcom/baidu/balance/BalanceTransActivity;->f:I

    iput v0, p0, Lcom/baidu/balance/BalanceTransActivity;->g:I

    iput-boolean v0, p0, Lcom/baidu/balance/BalanceTransActivity;->h:Z

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->i:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic a(Lcom/baidu/balance/BalanceTransActivity;)I
    .registers 2

    iget v0, p0, Lcom/baidu/balance/BalanceTransActivity;->g:I

    return v0
.end method

.method static synthetic a(Lcom/baidu/balance/BalanceTransActivity;I)I
    .registers 2

    iput p1, p0, Lcom/baidu/balance/BalanceTransActivity;->f:I

    return p1
.end method

.method private a()V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi",
            "NewApi"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v1, "bd_wallet_pull_up_view"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/balance/BalanceTransActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/PullToRefreshListView;

    iput-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->a:Lcom/baidu/wallet/base/widget/PullToRefreshListView;

    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->a:Lcom/baidu/wallet/base/widget/PullToRefreshListView;

    invoke-virtual {v0, v3}, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->setPullLoadEnabled(Z)V

    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->a:Lcom/baidu/wallet/base/widget/PullToRefreshListView;

    invoke-virtual {v0, v4}, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->setPullRefreshEnabled(Z)V

    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->a:Lcom/baidu/wallet/base/widget/PullToRefreshListView;

    invoke-virtual {v0, v4}, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->setScrollLoadEnabled(Z)V

    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->a:Lcom/baidu/wallet/base/widget/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->b:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/baidu/balance/BalanceTransActivity;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v2, "bd_wallet_white"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/baidu/balance/BalanceTransActivity;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v2, "bd_wallet_white"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->b:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_75

    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->b:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    :cond_75
    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v1, "bd_wallet_empty_list"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/balance/BalanceTransActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/baidu/balance/BalanceTransActivity;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v2, "bd_wallet_do"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/baidu/balance/b;

    invoke-direct {v1, p0}, Lcom/baidu/balance/b;-><init>(Lcom/baidu/balance/BalanceTransActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/baidu/balance/BalanceTransActivity$a;

    iget-object v1, p0, Lcom/baidu/balance/BalanceTransActivity;->b:Landroid/widget/ListView;

    invoke-direct {v0, p0, v1, v5}, Lcom/baidu/balance/BalanceTransActivity$a;-><init>(Lcom/baidu/balance/BalanceTransActivity;Landroid/widget/ListView;Lcom/baidu/balance/b;)V

    iput-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->e:Lcom/baidu/balance/BalanceTransActivity$a;

    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/baidu/balance/BalanceTransActivity;->e:Lcom/baidu/balance/BalanceTransActivity$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->a:Lcom/baidu/wallet/base/widget/PullToRefreshListView;

    new-instance v1, Lcom/baidu/balance/c;

    invoke-direct {v1, p0}, Lcom/baidu/balance/c;-><init>(Lcom/baidu/balance/BalanceTransActivity;)V

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->setOnRefreshListener(Lcom/baidu/wallet/base/widget/PullToRefreshBase$OnRefreshListener;)V

    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/baidu/balance/d;

    invoke-direct {v1, p0}, Lcom/baidu/balance/d;-><init>(Lcom/baidu/balance/BalanceTransActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/balance/BalanceTransActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/balance/BalanceTransActivity;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->c:Landroid/view/View;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/baidu/balance/BalanceTransActivity;->getActivity()Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    move-result-object v0

    if-nez v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/balance/BalanceTransActivity;->getActivity()Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    move-result-object v1

    const-string v2, "bd_wallet_error_tip"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/balance/BalanceTransActivity;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/balance/BalanceTransActivity;->getActivity()Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    move-result-object v2

    const-string v3, "bd_wallet_do"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget v2, p0, Lcom/baidu/balance/BalanceTransActivity;->g:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_69

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5e

    :goto_3b
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/baidu/balance/BalanceTransActivity;->getActivity()Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    move-result-object v0

    const-string v2, "bd_wallet_reload"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_4e
    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->e:Lcom/baidu/balance/BalanceTransActivity$a;

    invoke-virtual {v0}, Lcom/baidu/balance/BalanceTransActivity$a;->notifyDataSetChanged()V

    goto :goto_b

    :cond_5e
    invoke-virtual {p0}, Lcom/baidu/balance/BalanceTransActivity;->getActivity()Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    move-result-object v2

    const-string v3, "bd_wallet_load_error"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3b

    :cond_69
    iget v2, p0, Lcom/baidu/balance/BalanceTransActivity;->g:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8c

    invoke-virtual {p0}, Lcom/baidu/balance/BalanceTransActivity;->getActivity()Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    move-result-object v2

    const-string v3, "bd_wallet_not_login"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/baidu/balance/BalanceTransActivity;->getActivity()Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    move-result-object v0

    const-string v2, "bd_wallet_login_now"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4e

    :cond_8c
    invoke-virtual {p0}, Lcom/baidu/balance/BalanceTransActivity;->getActivity()Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    move-result-object v2

    const-string v3, "bd_wallet_no_record"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4e
.end method

.method private a(Z)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/baidu/balance/BalanceTransActivity;->getActivity()Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BDWalletContentFragement. queryRecords. curr page = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/balance/BalanceTransActivity;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Lcom/baidu/balance/BalanceTransActivity;->getActivity()Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    :cond_2b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/balance/BalanceTransActivity;->h:Z

    invoke-static {}, Lcom/baidu/balance/beans/BalanceBeanFactory;->getInstance()Lcom/baidu/balance/beans/BalanceBeanFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/balance/BalanceTransActivity;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const/4 v2, 0x4

    const-string v3, "BalanceTransActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/balance/beans/BalanceBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/balance/beans/b;

    iget v1, p0, Lcom/baidu/balance/BalanceTransActivity;->f:I

    invoke-virtual {v0, v1}, Lcom/baidu/balance/beans/b;->a(I)V

    invoke-virtual {v0, p0}, Lcom/baidu/balance/beans/b;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    invoke-virtual {v0}, Lcom/baidu/balance/beans/b;->execBean()V

    goto :goto_6
.end method

.method static synthetic b(Lcom/baidu/balance/BalanceTransActivity;)Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;
    .registers 2

    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    return-object v0
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/balance/BalanceTransActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/balance/BalanceTransActivity;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/baidu/balance/BalanceTransActivity;->getActivity()Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    new-instance v1, Lcom/baidu/balance/e;

    invoke-direct {v1, p0}, Lcom/baidu/balance/e;-><init>(Lcom/baidu/balance/BalanceTransActivity;)V

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/api/BaiduWallet;->login(Lcom/baidu/wallet/api/ILoginBackListener;)V

    goto :goto_6
.end method

.method static synthetic c(Lcom/baidu/balance/BalanceTransActivity;)Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;
    .registers 2

    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/balance/BalanceTransActivity;)I
    .registers 2

    iget v0, p0, Lcom/baidu/balance/BalanceTransActivity;->f:I

    return v0
.end method

.method static synthetic e(Lcom/baidu/balance/BalanceTransActivity;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->j:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic f(Lcom/baidu/balance/BalanceTransActivity;)Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;
    .registers 2

    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    return-object v0
.end method

.method static synthetic g(Lcom/baidu/balance/BalanceTransActivity;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/baidu/balance/BalanceTransActivity;)Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;
    .registers 2

    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    return-object v0
.end method

.method static synthetic i(Lcom/baidu/balance/BalanceTransActivity;)Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;
    .registers 2

    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    return-object v0
.end method

.method static synthetic j(Lcom/baidu/balance/BalanceTransActivity;)Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;
    .registers 2

    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    return-object v0
.end method

.method static synthetic k(Lcom/baidu/balance/BalanceTransActivity;)Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;
    .registers 2

    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    return-object v0
.end method

.method static synthetic l(Lcom/baidu/balance/BalanceTransActivity;)Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;
    .registers 2

    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    return-object v0
.end method

.method static synthetic m(Lcom/baidu/balance/BalanceTransActivity;)Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;
    .registers 2

    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    return-object v0
.end method


# virtual methods
.method public handleFailure(IILjava/lang/String;)V
    .registers 8

    const/4 v3, 0x0

    const/16 v2, 0x138b

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/wallet/core/plugins/pluginfake/PluginBeanActivity;->handleFailure(IILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/balance/BalanceTransActivity;->getActivity()Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    if-ne p2, v2, :cond_47

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/balance/BalanceTransActivity;->g:I

    invoke-direct {p0, v3}, Lcom/baidu/balance/BalanceTransActivity;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/api/BaiduWallet;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/wallet/api/BaiduWallet;->handlerWalletError(I)V

    invoke-virtual {p0}, Lcom/baidu/balance/BalanceTransActivity;->getActivity()Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/AccountManager;->logout()V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    invoke-virtual {p0}, Lcom/baidu/balance/BalanceTransActivity;->getActivity()Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_43
    invoke-virtual {p0}, Lcom/baidu/balance/BalanceTransActivity;->finish()V

    :cond_46
    :goto_46
    return-void

    :cond_47
    iget v0, p0, Lcom/baidu/balance/BalanceTransActivity;->f:I

    if-nez v0, :cond_52

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/balance/BalanceTransActivity;->g:I

    invoke-direct {p0, v3}, Lcom/baidu/balance/BalanceTransActivity;->a(Ljava/lang/String;)V

    goto :goto_46

    :cond_52
    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->a:Lcom/baidu/wallet/base/widget/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->onPullUpRefreshComplete()V

    goto :goto_46
.end method

.method public handleResponse(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/baidu/balance/BalanceTransActivity;->getActivity()Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/balance/BalanceTransActivity;->a:Lcom/baidu/wallet/base/widget/PullToRefreshListView;

    iget-object v4, p0, Lcom/baidu/balance/BalanceTransActivity;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v5, "bd_wallet_refresh_time"

    invoke-static {v4, v5}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/baidu/balance/BalanceTransActivity;->i:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/baidu/balance/BalanceTransActivity;->a:Lcom/baidu/wallet/base/widget/PullToRefreshListView;

    invoke-virtual {v2}, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->onPullUpRefreshComplete()V

    iget-object v2, p0, Lcom/baidu/balance/BalanceTransActivity;->a:Lcom/baidu/wallet/base/widget/PullToRefreshListView;

    invoke-virtual {v2}, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->onPullDownRefreshComplete()V

    check-cast p2, Lcom/baidu/balance/datamodel/BalanceTransResponse;

    iput v1, p0, Lcom/baidu/balance/BalanceTransActivity;->g:I

    if-eqz p2, :cond_9b

    iget-object v2, p2, Lcom/baidu/balance/datamodel/BalanceTransResponse;->account_info:[Lcom/baidu/balance/datamodel/BalanceTransResponse$AccountInfo;

    if-eqz v2, :cond_9b

    iget-object v2, p2, Lcom/baidu/balance/datamodel/BalanceTransResponse;->account_info:[Lcom/baidu/balance/datamodel/BalanceTransResponse$AccountInfo;

    array-length v2, v2

    if-lez v2, :cond_9b

    iget v2, p0, Lcom/baidu/balance/BalanceTransActivity;->f:I

    if-nez v2, :cond_54

    iget-object v2, p0, Lcom/baidu/balance/BalanceTransActivity;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/baidu/balance/BalanceTransActivity;->j:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    :cond_54
    iget v2, p0, Lcom/baidu/balance/BalanceTransActivity;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/baidu/balance/BalanceTransActivity;->f:I

    iget-object v2, p0, Lcom/baidu/balance/BalanceTransActivity;->d:Ljava/util/List;

    iget-object v3, p2, Lcom/baidu/balance/datamodel/BalanceTransResponse;->account_info:[Lcom/baidu/balance/datamodel/BalanceTransResponse$AccountInfo;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryRecords. handleMessage. list size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/balance/BalanceTransActivity;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/balance/BalanceTransActivity;->e:Lcom/baidu/balance/BalanceTransActivity$a;

    invoke-virtual {v2}, Lcom/baidu/balance/BalanceTransActivity$a;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/baidu/balance/BalanceTransActivity;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p2, Lcom/baidu/balance/datamodel/BalanceTransResponse;->total_count:I

    if-ge v2, v3, :cond_99

    :goto_90
    iget-object v1, p0, Lcom/baidu/balance/BalanceTransActivity;->a:Lcom/baidu/wallet/base/widget/PullToRefreshListView;

    invoke-virtual {v1, v0}, Lcom/baidu/wallet/base/widget/PullToRefreshListView;->setHasMoreData(Z)V

    invoke-direct {p0}, Lcom/baidu/balance/BalanceTransActivity;->b()V

    :cond_98
    :goto_98
    return-void

    :cond_99
    move v0, v1

    goto :goto_90

    :cond_9b
    const-string v0, "queryRecords. handleMessage. \u6ca1\u6709\u4ea4\u6613\u8bb0\u5f55"

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/balance/BalanceTransActivity;->f:I

    if-nez v0, :cond_98

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/balance/BalanceTransActivity;->a(Ljava/lang/String;)V

    goto :goto_98
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/baidu/wallet/core/plugins/pluginfake/PluginBeanActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v1, "wallet_balance_trans"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/balance/BalanceTransActivity;->setContentView(I)V

    const-string v0, "wallet_balance_history"

    invoke-virtual {p0, v0}, Lcom/baidu/balance/BalanceTransActivity;->initActionBar(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->j:Ljava/util/Set;

    invoke-direct {p0}, Lcom/baidu/balance/BalanceTransActivity;->a()V

    iget-boolean v0, p0, Lcom/baidu/balance/BalanceTransActivity;->h:Z

    if-nez v0, :cond_2c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/balance/BalanceTransActivity;->d:Ljava/util/List;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/balance/BalanceTransActivity;->a(Z)V

    :cond_2c
    return-void
.end method

.method public onDestroy()V
    .registers 3

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanManager;->getInstance()Lcom/baidu/wallet/core/beans/BeanManager;

    move-result-object v0

    const-string v1, "BalanceTransActivity"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanManager;->removeAllBeans(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/baidu/wallet/core/plugins/pluginfake/PluginBeanActivity;->onDestroy()V

    return-void
.end method
