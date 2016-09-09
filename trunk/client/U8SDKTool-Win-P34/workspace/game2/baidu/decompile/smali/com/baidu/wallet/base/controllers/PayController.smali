.class public final Lcom/baidu/wallet/base/controllers/PayController;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/wallet/base/controllers/PayController$a;,
        Lcom/baidu/wallet/base/controllers/PayController$b;
    }
.end annotation


# static fields
.field public static final KEY_CHECK_PWD_COMPLETE_CARD:I = 0x0

.field public static final KEY_CHECK_PWD_PAY:I = 0x1

.field public static final SELECT_PAY_WAY_FROM_PWDPAY_ACT:I = 0x65

.field public static final SELECT_PAY_WAY_FROM_SMS_ACT:I = 0x66

.field public static final SELECT_PAY_WAY_FROM_WELCOME_ACT:I = 0x64

.field private static a:Lcom/baidu/wallet/base/controllers/PayController;


# instance fields
.field private b:Lcom/baidu/wallet/base/controllers/PayController$a;

.field private c:Lcom/baidu/wallet/base/controllers/PayController$b;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Class;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p2, :cond_a

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_a
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Lcom/baidu/wallet/core/BaseActivity;Landroid/os/Bundle;Ljava/lang/Class;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p2, :cond_a

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_a
    invoke-virtual {p1, v0}, Lcom/baidu/wallet/core/BaseActivity;->startActivityWithoutAnim(Landroid/content/Intent;)V

    return-void
.end method

.method public static getInstance()Lcom/baidu/wallet/base/controllers/PayController;
    .registers 1

    sget-object v0, Lcom/baidu/wallet/base/controllers/PayController;->a:Lcom/baidu/wallet/base/controllers/PayController;

    if-nez v0, :cond_b

    new-instance v0, Lcom/baidu/wallet/base/controllers/PayController;

    invoke-direct {v0}, Lcom/baidu/wallet/base/controllers/PayController;-><init>()V

    sput-object v0, Lcom/baidu/wallet/base/controllers/PayController;->a:Lcom/baidu/wallet/base/controllers/PayController;

    :cond_b
    sget-object v0, Lcom/baidu/wallet/base/controllers/PayController;->a:Lcom/baidu/wallet/base/controllers/PayController;

    return-object v0
.end method

.method public static priceToBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "0"

    :cond_8
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bindCardPay(Landroid/content/Context;Landroid/content/Intent;Z)V
    .registers 8

    if-eqz p2, :cond_45

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :goto_6
    if-nez v0, :cond_4b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    :goto_e
    const-string v0, "bind_is_first"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v2, "key_bind_card_request"

    invoke-virtual {v0, v2}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    if-nez v0, :cond_26

    new-instance v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-direct {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;-><init>()V

    :cond_26
    const/4 v2, 0x0

    iput v2, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    const-class v0, Lcom/baidu/paysdk/ui/BindCardImplActivity;

    invoke-direct {p0, p1, v1, v0}, Lcom/baidu/wallet/base/controllers/PayController;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Class;)V

    if-eqz p3, :cond_44

    instance-of v0, p1, Lcom/baidu/wallet/core/BaseActivity;

    if-eqz v0, :cond_44

    check-cast p1, Lcom/baidu/wallet/core/BaseActivity;

    invoke-virtual {p1}, Lcom/baidu/wallet/core/BaseActivity;->finishWithoutAnim()V

    :cond_44
    return-void

    :cond_45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_6

    :cond_4b
    move-object v1, v0

    goto :goto_e
.end method

.method public bindExtSuccess(Lcom/baidu/wallet/core/BaseActivity;Ljava/lang/Object;)V
    .registers 6

    const/4 v2, 0x1

    check-cast p2, Lcom/baidu/paysdk/datamodel/BindCardResponse;

    new-instance v0, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;

    invoke-direct {v0}, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;-><init>()V

    iget-object v1, p2, Lcom/baidu/paysdk/datamodel/BindCardResponse;->notify:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->notify:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->cash_amount:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->total_amount:Ljava/lang/String;

    iget-object v1, p2, Lcom/baidu/paysdk/datamodel/BindCardResponse;->activity_desc:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->pay_detail_info:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->isPaySuccess:Z

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/paysdk/storage/PayDataCache;->setPayReslutContent(Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;)V

    const-string v1, "pay_result_from_bind"

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/baidu/wallet/base/controllers/PayController;->paySucess(Lcom/baidu/wallet/core/BaseActivity;Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;ZLjava/lang/String;)V

    return-void
.end method

.method public bindFail(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x2

    invoke-static {}, Lcom/baidu/paysdk/api/BaiduPay;->getInstance()Lcom/baidu/paysdk/api/BaiduPay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/api/BaiduPay;->getBindCallback()Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;

    move-result-object v0

    invoke-static {}, Lcom/baidu/paysdk/api/BaiduPay;->getInstance()Lcom/baidu/paysdk/api/BaiduPay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/paysdk/api/BaiduPay;->getBindCallbackExt()Lcom/baidu/android/pay/BindBack;

    move-result-object v1

    if-eqz v0, :cond_25

    invoke-interface {v0, p1}, Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;->onChangeFailed(Ljava/lang/String;)V

    :cond_16
    :goto_16
    invoke-static {}, Lcom/baidu/paysdk/api/BaiduPay;->getInstance()Lcom/baidu/paysdk/api/BaiduPay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/api/BaiduPay;->clearBindCallback()V

    invoke-static {}, Lcom/baidu/paysdk/api/BaiduPay;->getInstance()Lcom/baidu/paysdk/api/BaiduPay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/api/BaiduPay;->clearBindCallbackExt()V

    return-void

    :cond_25
    if-eqz v1, :cond_16

    new-instance v0, Lcom/baidu/paysdk/PayCallBackManager$PayStateModle;

    const-string v2, ""

    invoke-direct {v0, v3, v2}, Lcom/baidu/paysdk/PayCallBackManager$PayStateModle;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/baidu/paysdk/PayCallBackManager$PayStateModle;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/baidu/android/pay/BindBack;->onBindResult(ILjava/lang/String;)V

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->clearPaySdkRequestCache()V

    goto :goto_16
.end method

.method public bindSuccess()V
    .registers 2

    invoke-static {}, Lcom/baidu/paysdk/api/BaiduPay;->getInstance()Lcom/baidu/paysdk/api/BaiduPay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/api/BaiduPay;->getBindCallback()Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;->onChangeSucceed()V

    :cond_d
    invoke-static {}, Lcom/baidu/paysdk/api/BaiduPay;->getInstance()Lcom/baidu/paysdk/api/BaiduPay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/api/BaiduPay;->clearBindCallback()V

    invoke-static {}, Lcom/baidu/wallet/core/BaseActivity;->exitEbpay()V

    return-void
.end method

.method public completeCardPay(Landroid/content/Context;Lcom/baidu/wallet/base/datamodel/CardData$BondCard;)V
    .registers 6

    new-instance v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-direct {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    iput-object p2, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/paysdk/ui/BindCardImplActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public confirmPayInfo(Lcom/baidu/wallet/core/BaseActivity;Lcom/baidu/wallet/base/controllers/PayController$a;)V
    .registers 5

    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iput-object p2, p0, Lcom/baidu/wallet/base/controllers/PayController;->b:Lcom/baidu/wallet/base/controllers/PayController$a;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/paysdk/ui/ConfirmPayOrderActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/baidu/wallet/core/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4
.end method

.method public getIConfirmPayCallback()Lcom/baidu/wallet/base/controllers/PayController$a;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/controllers/PayController;->b:Lcom/baidu/wallet/base/controllers/PayController$a;

    return-object v0
.end method

.method public gotoDiscountPage(Lcom/baidu/wallet/core/BaseActivity;Lcom/baidu/wallet/base/controllers/PayController$b;)V
    .registers 5

    iput-object p2, p0, Lcom/baidu/wallet/base/controllers/PayController;->c:Lcom/baidu/wallet/base/controllers/PayController$b;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/baidu/paysdk/ui/DiscountListActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/baidu/wallet/core/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public gotoPwdPay(Lcom/baidu/wallet/core/BaseActivity;Landroid/content/Intent;)V
    .registers 5

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :goto_6
    const-class v1, Lcom/baidu/paysdk/ui/PwdPayActivity;

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/wallet/base/controllers/PayController;->a(Lcom/baidu/wallet/core/BaseActivity;Landroid/os/Bundle;Ljava/lang/Class;)V

    invoke-virtual {p1}, Lcom/baidu/wallet/core/BaseActivity;->finishWithoutAnim()V

    return-void

    :cond_f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_6
.end method

.method public gotoSelectPayWay(ILcom/baidu/wallet/core/BaseActivity;)V
    .registers 9

    const/4 v5, 0x0

    const/16 v4, 0x66

    const/16 v3, 0x65

    const/16 v2, 0x64

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-ne v2, p1, :cond_21

    const-class v1, Lcom/baidu/paysdk/ui/SelectPayWayActivity;

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "from"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-class v0, Lcom/baidu/paysdk/ui/SelectPayWayActivity;

    invoke-direct {p0, p2, v5, v0}, Lcom/baidu/wallet/base/controllers/PayController;->a(Lcom/baidu/wallet/core/BaseActivity;Landroid/os/Bundle;Ljava/lang/Class;)V

    invoke-virtual {p2}, Lcom/baidu/wallet/core/BaseActivity;->finishWithoutAnim()V

    :cond_20
    :goto_20
    return-void

    :cond_21
    if-ne v3, p1, :cond_33

    const-class v1, Lcom/baidu/paysdk/ui/SelectPayWayActivity;

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "from"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x3e8

    invoke-virtual {p2, v0, v1}, Lcom/baidu/wallet/core/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_20

    :cond_33
    if-ne v4, p1, :cond_20

    const-class v1, Lcom/baidu/paysdk/ui/SelectPayWayActivity;

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "from"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-class v0, Lcom/baidu/paysdk/ui/SelectPayWayActivity;

    invoke-direct {p0, p2, v5, v0}, Lcom/baidu/wallet/base/controllers/PayController;->a(Lcom/baidu/wallet/core/BaseActivity;Landroid/os/Bundle;Ljava/lang/Class;)V

    invoke-virtual {p2}, Lcom/baidu/wallet/core/BaseActivity;->finishWithoutAnim()V

    goto :goto_20
.end method

.method public onConfirmPay()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/controllers/PayController;->b:Lcom/baidu/wallet/base/controllers/PayController$a;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/wallet/base/controllers/PayController;->b:Lcom/baidu/wallet/base/controllers/PayController$a;

    invoke-interface {v0}, Lcom/baidu/wallet/base/controllers/PayController$a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/wallet/base/controllers/PayController;->b:Lcom/baidu/wallet/base/controllers/PayController$a;

    :cond_c
    return-void
.end method

.method public onDiscountConfirmed(Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/controllers/PayController;->c:Lcom/baidu/wallet/base/controllers/PayController$b;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/wallet/base/controllers/PayController;->c:Lcom/baidu/wallet/base/controllers/PayController$b;

    invoke-interface {v0, p1}, Lcom/baidu/wallet/base/controllers/PayController$b;->a(Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/wallet/base/controllers/PayController;->c:Lcom/baidu/wallet/base/controllers/PayController$b;

    :cond_c
    return-void
.end method

.method public payPaying(Lcom/baidu/wallet/core/BaseActivity;Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;ZLjava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    if-eqz p2, :cond_8

    iput-boolean v0, p2, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->isPaySuccess:Z

    :cond_8
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/paysdk/storage/PayDataCache;->setPayReslutContent(Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;)V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_pay_result_type"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/baidu/paysdk/ui/PayResultActivity;

    invoke-virtual {p1, v0, v1}, Lcom/baidu/wallet/core/BaseActivity;->startActivityWithExtras(Landroid/os/Bundle;Ljava/lang/Class;)V

    :goto_24
    return-void

    :cond_25
    const-class v0, Lcom/baidu/paysdk/ui/PayResultActivity;

    invoke-virtual {p1, v0}, Lcom/baidu/wallet/core/BaseActivity;->startActivity(Ljava/lang/Class;)V

    goto :goto_24
.end method

.method public paySucess(Lcom/baidu/wallet/core/BaseActivity;Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;ZLjava/lang/String;)V
    .registers 9

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pay_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    const-string v1, ""

    if-eqz v0, :cond_54

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PayRequest;->mSpNO:Ljava/lang/String;

    :goto_12
    const-string v1, "@timePay"

    const-string v2, ""

    const-string v3, "0"

    invoke-static {p1, v1, v2, v3}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/wallet/core/utils/LogUtil;->mark()V

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    if-eqz p3, :cond_4b

    const-string v1, "bindPaySuccess"

    :goto_26
    invoke-static {p1, v1, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2e

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->isPaySuccess:Z

    :cond_2e
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/paysdk/storage/PayDataCache;->setPayReslutContent(Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;)V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_pay_result_type"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/baidu/paysdk/ui/PayResultActivity;

    invoke-virtual {p1, v0, v1}, Lcom/baidu/wallet/core/BaseActivity;->startActivityWithExtras(Landroid/os/Bundle;Ljava/lang/Class;)V

    :goto_4a
    return-void

    :cond_4b
    const-string v1, "onekeyPaySuccess"

    goto :goto_26

    :cond_4e
    const-class v0, Lcom/baidu/paysdk/ui/PayResultActivity;

    invoke-virtual {p1, v0}, Lcom/baidu/wallet/core/BaseActivity;->startActivity(Ljava/lang/Class;)V

    goto :goto_4a

    :cond_54
    move-object v0, v1

    goto :goto_12
.end method

.method public selectCompletCards(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_47

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    :goto_11
    const-string v0, "bind_is_first"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v2, "key_bind_card_request"

    invoke-virtual {v0, v2}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    if-nez v0, :cond_2a

    new-instance v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-direct {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;-><init>()V

    :cond_2a
    const/4 v2, 0x2

    iput v2, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    const-class v0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;

    invoke-direct {p0, p1, v1, v0}, Lcom/baidu/wallet/base/controllers/PayController;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Class;)V

    instance-of v0, p1, Lcom/baidu/wallet/core/BaseActivity;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/baidu/wallet/core/BaseActivity;

    invoke-virtual {p1}, Lcom/baidu/wallet/core/BaseActivity;->finishWithoutAnim()V

    goto :goto_4

    :cond_47
    move-object v1, v0

    goto :goto_11
.end method

.method public updateCardInfoPay(Landroid/content/Context;Lcom/baidu/paysdk/datamodel/ErrorContentResponse;)V
    .registers 6

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_bind_card_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v1

    const-string v2, "key_pay_request"

    invoke-virtual {v1, v2}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v1

    check-cast v1, Lcom/baidu/paysdk/datamodel/PayRequest;

    if-nez v0, :cond_31

    new-instance v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-direct {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;-><init>()V

    const/4 v2, 0x2

    iput v2, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/PayRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    :cond_31
    iput-object p2, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mCardInfoUpdateContent:Lcom/baidu/paysdk/datamodel/ErrorContentResponse;

    instance-of v0, p1, Lcom/baidu/paysdk/ui/BindCardBaseActivity;

    if-eqz v0, :cond_3d

    check-cast p1, Lcom/baidu/paysdk/ui/BindCardBaseActivity;

    invoke-virtual {p1}, Lcom/baidu/paysdk/ui/BindCardBaseActivity;->loadCvv2()V

    :goto_3c
    return-void

    :cond_3d
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/paysdk/ui/BindCardImplActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3c
.end method
