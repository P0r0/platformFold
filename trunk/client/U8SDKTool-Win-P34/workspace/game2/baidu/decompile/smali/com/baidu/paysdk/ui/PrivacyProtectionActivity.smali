.class public Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;
.super Lcom/baidu/wallet/core/beans/BeanActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;


# instance fields
.field private a:Landroid/widget/ImageButton;

.field private b:Z

.field private c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;->b:Z

    return-void
.end method

.method private a()V
    .registers 3

    const-string v0, "bd_wallet_security_switch"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;->a:Landroid/widget/ImageButton;

    invoke-static {p0}, Lcom/baidu/paysdk/storage/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;->b:Z

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;->a:Landroid/widget/ImageButton;

    const-string v1, "wallet_base_btn_pressed_on"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_22
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v0, Lcom/baidu/wallet/core/beans/BeanConstants;->mHasHomePage:Z

    if-nez v0, :cond_50

    const-string v0, "bd_wallet_security_tip_text"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "bd_wallet_pay_security_pp_tip1"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_40
    return-void

    :cond_41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;->b:Z

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;->a:Landroid/widget/ImageButton;

    const-string v1, "wallet_base_btn_default_off"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_22

    :cond_50
    const-string v0, "bd_wallet_security_tip_text"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "bd_wallet_pay_security_pp_tip"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_40
.end method

.method static synthetic a(Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;->d()V

    return-void
.end method

.method private b()V
    .registers 4

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    const/4 v1, 0x6

    const-string v2, "PrivacyProtectionActivity"

    invoke-virtual {v0, p0, v1, v2}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/UserInfoBean;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/UserInfoBean;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/UserInfoBean;->execBean()V

    const/4 v0, -0x1

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;->e()V

    return-void
.end method

.method private c()V
    .registers 3

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v0

    new-instance v1, Lcom/baidu/paysdk/ui/az;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/az;-><init>(Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/baidu/wallet/base/controllers/PasswordController;->checkPwd(Landroid/content/Context;Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;)V

    return-void
.end method

.method private d()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;->b:Z

    if-nez v0, :cond_20

    iput-boolean v2, p0, Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;->b:Z

    invoke-static {p0, v2}, Lcom/baidu/paysdk/storage/a;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;->a:Landroid/widget/ImageButton;

    const-string v1, "wallet_base_btn_pressed_on"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_16
    const-string v0, "bd_wallet_pay_security_set_success"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_20
    iput-boolean v1, p0, Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;->b:Z

    invoke-static {p0, v1}, Lcom/baidu/paysdk/storage/a;->a(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/storage/PayDataCache;->setmPpChecked(Z)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;->a:Landroid/widget/ImageButton;

    const-string v1, "wallet_base_btn_default_off"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_16
.end method

.method private e()V
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;->b:Z

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;->b()V

    :goto_7
    return-void

    :cond_8
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;->c()V

    goto :goto_7
.end method


# virtual methods
.method public handleFailure(IILjava/lang/String;)V
    .registers 7

    const v1, 0x186c4

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    const v0, 0x186c3

    if-eq p2, v0, :cond_e

    if-ne p2, v1, :cond_1f

    :cond_e
    const/4 v0, 0x1

    if-ne p2, v1, :cond_12

    const/4 v0, 0x2

    :cond_12
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/baidu/paysdk/ui/ba;

    invoke-direct {v2, p0}, Lcom/baidu/paysdk/ui/ba;-><init>(Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;)V

    invoke-static {v1, p3, v0, v2}, Lcom/baidu/wallet/core/utils/PassUtil;->passNormalized(Landroid/content/Context;Ljava/lang/String;ILcom/baidu/wallet/core/utils/PassUtil$IPassNormalize;)V

    :goto_1e
    return-void

    :cond_1f
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/wallet/core/beans/BeanActivity;->handleFailure(IILjava/lang/String;)V

    invoke-static {p0, p3}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1e
.end method

.method public handleResponse(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 6

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    check-cast p2, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iput-object p2, p0, Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->hasMobilePwd()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;->c()V

    :goto_1f
    return-void

    :cond_20
    const/16 v0, 0x19

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    goto :goto_1f
.end method

.method public onChangeFailed(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onChangeSucceed()V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;->d()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;->a:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_7

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;->e()V

    :cond_7
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/baidu/wallet/core/beans/BeanActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "bd_wallet_activity_pp"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;->setContentView(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;->setRequestedOrientation(I)V

    const-string v0, "bd_wallet_pay_security_pp"

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;->initActionBar(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;->a()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanManager;->getInstance()Lcom/baidu/wallet/core/beans/BeanManager;

    move-result-object v0

    const-string v1, "PrivacyProtectionActivity"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanManager;->removeAllBeans(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;->onDestroy()V

    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 5

    packed-switch p1, :pswitch_data_34

    invoke-super {p0, p1, p2}, Lcom/baidu/wallet/core/beans/BeanActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    :goto_6
    return-void

    :pswitch_7
    check-cast p2, Lcom/baidu/wallet/base/widget/PromptDialog;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/baidu/wallet/base/widget/PromptDialog;->setCanceledOnTouchOutside(Z)V

    const-string v0, "bd_wallet_pay_security_set_pay_pwd_tip"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/baidu/wallet/base/widget/PromptDialog;->setMessage(Ljava/lang/String;)V

    const-string v0, "ebpay_cancel"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/baidu/paysdk/ui/bb;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/bb;-><init>(Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;)V

    invoke-virtual {p2, v0, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setNegativeBtn(ILandroid/view/View$OnClickListener;)V

    const-string v0, "bd_wallet_pay_security_prompt_set"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/baidu/paysdk/ui/bc;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/bc;-><init>(Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;)V

    invoke-virtual {p2, v0, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setPositiveBtn(ILandroid/view/View$OnClickListener;)V

    goto :goto_6

    nop

    :pswitch_data_34
    .packed-switch 0x19
        :pswitch_7
    .end packed-switch
.end method
