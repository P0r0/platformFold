.class public Lcom/baidu/paysdk/ui/PwdManagerActivity;
.super Lcom/baidu/wallet/core/beans/BeanActivity;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Z

.field private h:Z

.field private i:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

.field private j:Z

.field private k:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;-><init>()V

    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->g:Z

    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->h:Z

    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->j:Z

    return-void
.end method

.method static synthetic a(Lcom/baidu/paysdk/ui/PwdManagerActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .registers 4

    const/4 v2, 0x0

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->i:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->i:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->i:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->hasMobilePwd()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->h:Z

    :cond_2e
    :goto_2e
    return-void

    :cond_2f
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->i:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->i:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->hasMobilePwd()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2e

    :cond_54
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->i:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->i:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->i:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-nez v0, :cond_2e

    :cond_62
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2e
.end method

.method static synthetic a(Lcom/baidu/wallet/core/BaseActivity;)V
    .registers 1

    invoke-static {p0}, Lcom/baidu/paysdk/ui/PwdManagerActivity;->clearTasksTopOf(Lcom/baidu/wallet/core/BaseActivity;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/paysdk/ui/PwdManagerActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->g:Z

    return p1
.end method

.method private b()V
    .registers 2

    const-string v0, "bd_wallet_phone_pwd"

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdManagerActivity;->initActionBar(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdManagerActivity;->c()V

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdManagerActivity;->d()V

    return-void
.end method

.method static synthetic b(Lcom/baidu/paysdk/ui/PwdManagerActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdManagerActivity;->e()V

    return-void
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->a:Landroid/content/Context;

    const-string v1, "modify_forget_layout"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->k:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->a:Landroid/content/Context;

    const-string v1, "bd_wallet_modify_pwd"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->b:Landroid/view/ViewGroup;

    new-instance v1, Lcom/baidu/paysdk/ui/bj;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/bj;-><init>(Lcom/baidu/paysdk/ui/PwdManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2e
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->a:Landroid/content/Context;

    const-string v1, "bd_wallet_forget_pwd"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->c:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->c:Landroid/view/ViewGroup;

    new-instance v1, Lcom/baidu/paysdk/ui/bl;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/bl;-><init>(Lcom/baidu/paysdk/ui/PwdManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4c
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->a:Landroid/content/Context;

    const-string v1, "bd_wallet_set_pwd"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->d:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->d:Landroid/view/ViewGroup;

    new-instance v1, Lcom/baidu/paysdk/ui/bn;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/bn;-><init>(Lcom/baidu/paysdk/ui/PwdManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6a
    return-void
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->a:Landroid/content/Context;

    const-string v1, "bd_wallet_my_bank_network_not_avail"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/baidu/paysdk/ui/bo;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/bo;-><init>(Lcom/baidu/paysdk/ui/PwdManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->a:Landroid/content/Context;

    const-string v1, "bd_wallet_get_info_error"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->f:Landroid/widget/TextView;

    return-void
.end method

.method private e()V
    .registers 4

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/api/BaiduWallet;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    const/4 v1, 0x6

    const-string v2, "PhonePwdActivity"

    invoke-virtual {v0, p0, v1, v2}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/UserInfoBean;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/UserInfoBean;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/UserInfoBean;->execBean()V

    const/4 v0, -0x1

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    :goto_23
    return-void

    :cond_24
    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    new-instance v1, Lcom/baidu/paysdk/ui/bp;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/bp;-><init>(Lcom/baidu/paysdk/ui/PwdManagerActivity;)V

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/api/BaiduWallet;->login(Lcom/baidu/wallet/api/ILoginBackListener;)V

    goto :goto_23
.end method


# virtual methods
.method public handleFailure(IILjava/lang/String;)V
    .registers 5

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/wallet/core/beans/BeanActivity;->handleFailure(IILjava/lang/String;)V

    return-void
.end method

.method public handleResponse(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x8

    check-cast p2, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iput-object p2, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->i:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->i:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_60

    iput-boolean v3, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->j:Z

    iput-boolean v2, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->g:Z

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->i:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->i:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->hasMobilePwd()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iput-boolean v3, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->h:Z

    :cond_3a
    :goto_3a
    return-void

    :cond_3b
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->i:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->i:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->hasMobilePwd()Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3a

    :cond_60
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->i:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->i:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->i:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-nez v0, :cond_3a

    :cond_6e
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3a
.end method

.method public onBackPressed()V
    .registers 5

    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "reload_userinfo"

    iget-boolean v3, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->j:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/baidu/paysdk/ui/PwdManagerActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdManagerActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/baidu/wallet/core/beans/BeanActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdManagerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdManagerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "bd_wallet_pwd_manager"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdManagerActivity;->setContentView(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdManagerActivity;->setRequestedOrientation(I)V

    if-nez p1, :cond_2d

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getPayResponse()Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->i:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    :goto_26
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdManagerActivity;->b()V

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdManagerActivity;->a()V

    return-void

    :cond_2d
    const-string v0, "mUserInfoContent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->i:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    goto :goto_26
.end method

.method public onDestroy()V
    .registers 3

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanManager;->getInstance()Lcom/baidu/wallet/core/beans/BeanManager;

    move-result-object v0

    const-string v1, "PhonePwdActivity"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanManager;->removeAllBeans(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;->onPause()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_14

    invoke-static {}, Lcom/baidu/wallet/core/utils/NFCUtil;->getInstance()Lcom/baidu/wallet/core/utils/NFCUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdManagerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/utils/NFCUtil;->disableForegroundDispatch(Landroid/app/Activity;)V

    :cond_14
    return-void
.end method

.method public onResume()V
    .registers 4

    const/4 v2, 0x0

    const/16 v1, 0x8

    invoke-super {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;->onResume()V

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/api/BaiduWallet;->isLogin()Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_24
    :goto_24
    iget-boolean v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->g:Z

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdManagerActivity;->e()V

    :cond_2b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_3c

    invoke-static {}, Lcom/baidu/wallet/core/utils/NFCUtil;->getInstance()Lcom/baidu/wallet/core/utils/NFCUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdManagerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/utils/NFCUtil;->enableForegroundDispatch(Landroid/app/Activity;)V

    :cond_3c
    return-void

    :cond_3d
    iget-boolean v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->h:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_24
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/baidu/wallet/core/beans/BeanActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "mUserInfoContent"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdManagerActivity;->i:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method
