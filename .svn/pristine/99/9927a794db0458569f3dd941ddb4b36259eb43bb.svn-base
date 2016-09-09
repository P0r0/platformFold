.class public final Lcom/baidu/paysdk/storage/PayDataCache;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/paysdk/storage/PayDataCache$a;
    }
.end annotation


# static fields
.field public static final PAY_TYPE_BALANCE:Ljava/lang/String; = "balance"

.field public static final PAY_TYPE_COMPOSITE:Ljava/lang/String; = "composite"

.field public static final PAY_TYPE_CREDITPAY:Ljava/lang/String; = "credit_pay"

.field public static final PAY_TYPE_EASYPAY:Ljava/lang/String; = "easypay"

.field private static a:Lcom/baidu/paysdk/storage/PayDataCache;


# instance fields
.field private b:Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;

.field private c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/baidu/paysdk/datamodel/LBSDirectPayResponse;

.field private h:Lcom/baidu/wallet/core/beans/IBeanResponse;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/paysdk/storage/PayDataCache;->a:Lcom/baidu/paysdk/storage/PayDataCache;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->d:Z

    iput-boolean v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->e:Z

    iput-boolean v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->f:Z

    return-void
.end method

.method private a()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->balance:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayBalance;

    if-eqz v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/baidu/paysdk/storage/PayDataCache;
    .registers 2

    const-class v1, Lcom/baidu/paysdk/storage/PayDataCache;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/paysdk/storage/PayDataCache;->a:Lcom/baidu/paysdk/storage/PayDataCache;

    if-nez v0, :cond_e

    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache;

    invoke-direct {v0}, Lcom/baidu/paysdk/storage/PayDataCache;-><init>()V

    sput-object v0, Lcom/baidu/paysdk/storage/PayDataCache;->a:Lcom/baidu/paysdk/storage/PayDataCache;

    :cond_e
    sget-object v0, Lcom/baidu/paysdk/storage/PayDataCache;->a:Lcom/baidu/paysdk/storage/PayDataCache;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public canUseBalanceOneKeyPay(Landroid/content/Context;)Z
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/baidu/paysdk/storage/PayDataCache;->isCanUseBalance(Landroid/content/Context;)Lcom/baidu/paysdk/storage/PayDataCache$a;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/paysdk/storage/PayDataCache$a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v2, "key_pay_request"

    invoke-virtual {v0, v2}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    const/4 v2, 0x0

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->getOrderPrice()Ljava/lang/String;

    move-result-object v0

    :goto_22
    :try_start_22
    iget-object v2, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    iget-object v2, v2, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->account:Lcom/baidu/wallet/base/datamodel/UserData$UserModel$Account;

    iget-object v2, v2, Lcom/baidu/wallet/base/datamodel/UserData$UserModel$Account;->can_amount:Ljava/lang/String;

    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_42

    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3d} :catch_45

    move-result v0

    if-ltz v0, :cond_43

    const/4 v0, 0x1

    :goto_41
    move v1, v0

    :cond_42
    :goto_42
    return v1

    :cond_43
    move v0, v1

    goto :goto_41

    :catch_45
    move-exception v0

    goto :goto_42

    :cond_47
    move-object v0, v2

    goto :goto_22
.end method

.method public canUseCardOneKeyPay()Z
    .registers 4

    const/4 v1, 0x1

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasMobilePwd()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v2, "key_pay_request"

    invoke-virtual {v0, v2}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isOnlyUseDebitCard()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasEnableDebits()Z

    move-result v0

    if-eqz v0, :cond_37

    move v0, v1

    :goto_2a
    return v0

    :cond_2b
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasEnableCards()Z

    move-result v0

    if-eqz v0, :cond_37

    move v0, v1

    goto :goto_2a

    :cond_37
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public canUseCreditOneKeyPay(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/baidu/paysdk/storage/PayDataCache;->isCanUseCredit(Landroid/content/Context;)Lcom/baidu/paysdk/storage/PayDataCache$a;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/paysdk/storage/PayDataCache$a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public copyOrderPayment(Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;)V
    .registers 3

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->composite:Lcom/baidu/wallet/base/datamodel/PayData$Composite;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->composite:Lcom/baidu/wallet/base/datamodel/PayData$Composite;

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/base/datamodel/PayData$Composite;->copyOrderPayment(Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;)V

    goto :goto_2
.end method

.method public getAvailableCredit()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->credit_pay:Lcom/baidu/wallet/base/datamodel/PayData$CreditPay;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->credit_pay:Lcom/baidu/wallet/base/datamodel/PayData$CreditPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$CreditPay;->credit_info:Lcom/baidu/wallet/base/datamodel/PayData$CreditInfo;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->credit_pay:Lcom/baidu/wallet/base/datamodel/PayData$CreditPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$CreditPay;->credit_info:Lcom/baidu/wallet/base/datamodel/PayData$CreditInfo;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$CreditInfo;->available_credit:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->credit_pay:Lcom/baidu/wallet/base/datamodel/PayData$CreditPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$CreditPay;->credit_info:Lcom/baidu/wallet/base/datamodel/PayData$CreditInfo;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$CreditInfo;->available_credit:Ljava/lang/String;

    :goto_36
    return-object v0

    :cond_37
    const-string v0, "0"

    goto :goto_36
.end method

.method public getBalancePayPostInfo()Ljava/util/List;
    .registers 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->balance:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayBalance;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->balance:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayBalance;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayBalance;->post_info:Ljava/util/Map;

    if-eqz v0, :cond_4a

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Lcom/baidu/apollon/restnet/RestNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v1, v0}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_4a
    return-object v2
.end method

.method public getBalanceUnSupportReason()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v0, :cond_1f

    const-string v0, "0"

    iget-object v1, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->balance_support_status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->balance_unsupport_reason:Ljava/lang/String;

    :goto_1e
    return-object v0

    :cond_1f
    const-string v0, ""

    goto :goto_1e
.end method

.method public getBondCards()[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->getBondCards()[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getCanAmount()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->getCanAmount()Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const-string v0, "0"

    goto :goto_12
.end method

.method public getCanBalance()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->getCanAmount()Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const-string v0, "0"

    goto :goto_12
.end method

.method public getCashBackDesc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->misc:Lcom/baidu/wallet/base/datamodel/UserData$Misc;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->misc:Lcom/baidu/wallet/base/datamodel/UserData$Misc;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$Misc;->cashback_desc:Ljava/lang/String;

    :goto_10
    return-object v0

    :cond_11
    const-string v0, ""

    goto :goto_10
.end method

.method public getCreditDisableTips()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->credit_pay:Lcom/baidu/wallet/base/datamodel/PayData$CreditPay;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->credit_pay:Lcom/baidu/wallet/base/datamodel/PayData$CreditPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$CreditPay;->disable_msg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->credit_pay:Lcom/baidu/wallet/base/datamodel/PayData$CreditPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$CreditPay;->disable_msg:Ljava/lang/String;

    :goto_28
    return-object v0

    :cond_29
    const-string v0, ""

    goto :goto_28
.end method

.method public getCreditPayDispayName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->credit_pay:Lcom/baidu/wallet/base/datamodel/PayData$CreditPay;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->credit_pay:Lcom/baidu/wallet/base/datamodel/PayData$CreditPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$CreditPay;->display_name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->credit_pay:Lcom/baidu/wallet/base/datamodel/PayData$CreditPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$CreditPay;->display_name:Ljava/lang/String;

    :goto_28
    return-object v0

    :cond_29
    const-string v0, ""

    goto :goto_28
.end method

.method public getCreditPayPostInfo()Ljava/util/List;
    .registers 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->credit_pay:Lcom/baidu/wallet/base/datamodel/PayData$CreditPay;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->credit_pay:Lcom/baidu/wallet/base/datamodel/PayData$CreditPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$CreditPay;->post_info:Ljava/util/Map;

    if-eqz v0, :cond_4a

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Lcom/baidu/apollon/restnet/RestNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v1, v0}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_4a
    return-object v2
.end method

.method public getDefaultPayType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->default_pay_type_display:Ljava/lang/String;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getEnableBondCards()[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->getEnableBondCards()[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getFormatUserName()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/baidu/paysdk/storage/PayDataCache;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasMobilePwd()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public getInsideTransOrder()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->misc:Lcom/baidu/wallet/base/datamodel/UserData$Misc;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->misc:Lcom/baidu/wallet/base/datamodel/UserData$Misc;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/UserData$Misc;->getInsideTransOrder()Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const-string v0, ""

    goto :goto_12
.end method

.method public getLBSDirectPayResponse()Lcom/baidu/paysdk/datamodel/LBSDirectPayResponse;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->g:Lcom/baidu/paysdk/datamodel/LBSDirectPayResponse;

    return-object v0
.end method

.method public getPayPostInfo()Ljava/util/List;
    .registers 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->post_info:Ljava/util/Map;

    if-eqz v0, :cond_4a

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Lcom/baidu/apollon/restnet/RestNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v1, v0}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_4a
    return-object v2
.end method

.method public getPayResponse()Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    return-object v0
.end method

.method public getPayStateContent()Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->b:Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;

    return-object v0
.end method

.method public getSellerUserId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/UserData$SP;->getSellerUserId()Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const-string v0, ""

    goto :goto_12
.end method

.method public getSpGoodsName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->getSpGoodsName()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public getSpName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->getSpName()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public getTransferAccountConfig()Lcom/baidu/wallet/core/beans/IBeanResponse;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->h:Lcom/baidu/wallet/core/beans/IBeanResponse;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->certificate_code:Ljava/lang/String;

    :goto_10
    return-object v0

    :cond_11
    const-string v0, ""

    goto :goto_10
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->true_name:Ljava/lang/String;

    :goto_10
    return-object v0

    :cond_11
    const-string v0, ""

    goto :goto_10
.end method

.method public hasBondCards()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->hasBindCards()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hasBondDebits()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->hasBindDebits()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hasCanAmount()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->hasCanAmount()Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public hasCreditPay()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->credit_pay:Lcom/baidu/wallet/base/datamodel/PayData$CreditPay;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public hasEnableCards()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->hasEnableCards()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hasEnableCardsForFindPWD()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->getEnableCardsForFindPWD()[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    move-result-object v0

    if-eqz v0, :cond_11

    array-length v0, v0

    if-lez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public hasEnableDebits()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->hasEnableDebits()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hasMobilePwd()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->hasMobilePwd()Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isBalanceEnough(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->isBalanceEnough(Ljava/lang/String;)Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isCanUseBalance(Landroid/content/Context;)Lcom/baidu/paysdk/storage/PayDataCache$a;
    .registers 5

    const/4 v2, 0x0

    if-nez p1, :cond_f

    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache$a;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/baidu/paysdk/storage/PayDataCache$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->isSupportBalance()Z

    move-result v0

    if-nez v0, :cond_33

    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache$a;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    iget-object v2, v2, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->balance_unsupport_reason:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/baidu/paysdk/storage/PayDataCache$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :cond_33
    invoke-virtual {p0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasMobilePwd()Z

    move-result v0

    if-nez v0, :cond_49

    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache$a;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ebpay_nobalance_pwd"

    invoke-static {p1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/paysdk/storage/PayDataCache$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :cond_49
    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->account:Lcom/baidu/wallet/base/datamodel/UserData$UserModel$Account;

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->account:Lcom/baidu/wallet/base/datamodel/UserData$UserModel$Account;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/UserData$UserModel$Account;->hasCanAmount()Z

    move-result v0

    if-nez v0, :cond_87

    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache$a;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ebpay_nobalance_order"

    invoke-static {p1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/paysdk/storage/PayDataCache$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :cond_77
    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache$a;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ebpay_nobalance_order"

    invoke-static {p1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/paysdk/storage/PayDataCache$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :cond_87
    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pay_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_c5

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isBalanceCharge()Z

    move-result v1

    if-eqz v1, :cond_ac

    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache$a;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ebpay_nobalance_balance"

    invoke-static {p1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/paysdk/storage/PayDataCache$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_ac
    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->getCalcPayment()Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isSelectedActivitys()Z

    move-result v0

    if-eqz v0, :cond_c5

    if-eqz v1, :cond_c5

    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache$a;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->balance_select_desc:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lcom/baidu/paysdk/storage/PayDataCache$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_c5
    invoke-direct {p0}, Lcom/baidu/paysdk/storage/PayDataCache;->a()Z

    move-result v0

    if-nez v0, :cond_dc

    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache$a;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ebpay_nobalance_sp"

    invoke-static {p1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/paysdk/storage/PayDataCache$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_dc
    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache$a;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/baidu/paysdk/storage/PayDataCache$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_e
.end method

.method public isCanUseCredit(Landroid/content/Context;)Lcom/baidu/paysdk/storage/PayDataCache$a;
    .registers 5

    const/4 v2, 0x0

    if-nez p1, :cond_f

    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache$a;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/baidu/paysdk/storage/PayDataCache$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasMobilePwd()Z

    move-result v0

    if-nez v0, :cond_21

    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache$a;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/baidu/paysdk/storage/PayDataCache$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :cond_21
    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->credit_pay:Lcom/baidu/wallet/base/datamodel/PayData$CreditPay;

    if-nez v0, :cond_3f

    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache$a;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "\u4e0d\u652f\u6301\u8be5\u652f\u4ed8\u65b9\u5f0f"

    invoke-direct {v0, v1, v2}, Lcom/baidu/paysdk/storage/PayDataCache$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :cond_3f
    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->credit_pay:Lcom/baidu/wallet/base/datamodel/PayData$CreditPay;

    if-eqz v0, :cond_73

    const-string v0, "1"

    iget-object v1, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->credit_pay:Lcom/baidu/wallet/base/datamodel/PayData$CreditPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$CreditPay;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache$a;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v2, v2, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->credit_pay:Lcom/baidu/wallet/base/datamodel/PayData$CreditPay;

    iget-object v2, v2, Lcom/baidu/wallet/base/datamodel/PayData$CreditPay;->disable_msg:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/baidu/paysdk/storage/PayDataCache$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :cond_73
    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pay_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_94

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isSelectedActivitys()Z

    move-result v0

    if-eqz v0, :cond_94

    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache$a;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "\u6682\u4e0d\u652f\u6301\u7ec4\u5408\u652f\u4ed8"

    invoke-direct {v0, v1, v2}, Lcom/baidu/paysdk/storage/PayDataCache$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_94
    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache$a;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/baidu/paysdk/storage/PayDataCache$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_e
.end method

.method public isRemotePay()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->f:Z

    return v0
.end method

.method public isShowCreditPay()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->credit_pay:Lcom/baidu/wallet/base/datamodel/PayData$CreditPay;

    if-eqz v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method public isUseOneKeyPay(Landroid/content/Context;)Z
    .registers 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/baidu/paysdk/storage/PayDataCache;->canUseCardOneKeyPay()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0, p1}, Lcom/baidu/paysdk/storage/PayDataCache;->isCanUseCredit(Landroid/content/Context;)Lcom/baidu/paysdk/storage/PayDataCache$a;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/paysdk/storage/PayDataCache$a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v1

    goto :goto_8

    :cond_19
    invoke-virtual {p0, p1}, Lcom/baidu/paysdk/storage/PayDataCache;->canUseBalanceOneKeyPay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v1

    goto :goto_8

    :cond_21
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public ismPpChecked()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->d:Z

    return v0
.end method

.method public ismPpHome()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->e:Z

    return v0
.end method

.method public setCashBackDesc(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->misc:Lcom/baidu/wallet/base/datamodel/UserData$Misc;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->misc:Lcom/baidu/wallet/base/datamodel/UserData$Misc;

    iput-object p1, v0, Lcom/baidu/wallet/base/datamodel/UserData$Misc;->cashback_desc:Ljava/lang/String;

    :cond_10
    return-void
.end method

.method public setHasPwd()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->setHasMobilePwd()V

    :cond_11
    return-void
.end method

.method public setIsRemotePay(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/paysdk/storage/PayDataCache;->f:Z

    return-void
.end method

.method public setLBSDirectPayResponse(Lcom/baidu/paysdk/datamodel/LBSDirectPayResponse;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/storage/PayDataCache;->g:Lcom/baidu/paysdk/datamodel/LBSDirectPayResponse;

    return-void
.end method

.method public setPayReslutContent(Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/storage/PayDataCache;->b:Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;

    return-void
.end method

.method public setPayResponse(Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    return-void
.end method

.method public setTransferAccountConfig(Lcom/baidu/wallet/core/beans/IBeanResponse;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/storage/PayDataCache;->h:Lcom/baidu/wallet/core/beans/IBeanResponse;

    return-void
.end method

.method public setmPpChecked(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/paysdk/storage/PayDataCache;->d:Z

    return-void
.end method

.method public setmPpHome(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/paysdk/storage/PayDataCache;->e:Z

    return-void
.end method
