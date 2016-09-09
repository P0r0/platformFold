.class public Lcom/baidu/paysdk/datamodel/PayRequest;
.super Lcom/baidu/wallet/core/beans/BeanRequestBase;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;
    }
.end annotation


# static fields
.field public static CARD_NOT_SELECTED:I = 0x0

.field private static final CASHIER_TYPE_ZHUAN_ZHANG:Ljava/lang/String; = "1"

.field public static final DISCOUNT_FLAG_FALSE:Ljava/lang/String; = "0"

.field public static final DISCOUNT_FLAG_TRUE:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String; = "PayRequest"

.field private static final serialVersionUID:J = 0x6b805d6eca96d86eL


# instance fields
.field private isHasShowPassFreeCheckBox:Z

.field public isPayByMktSolution:Z

.field public mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

.field private mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

.field private mCashierType:Ljava/lang/String;

.field public mChannelNo:Ljava/lang/String;

.field public mGoodName:Ljava/lang/String;

.field public mGoodsCategory:Ljava/lang/String;

.field public mMktSolution:Lcom/baidu/paysdk/datamodel/ErrorContentResponse$MktSolution;

.field public mNeedOpenPassFree:Ljava/lang/String;

.field public mOrderNo:Ljava/lang/String;

.field public mParams:Ljava/lang/String;

.field public mPayFrom:Ljava/lang/String;

.field private mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

.field private mPrice:Ljava/lang/String;

.field public mRemotePayHostName:Ljava/lang/String;

.field public mRemotePayUserAccountName:Ljava/lang/String;

.field public mRemotePayUserId:Ljava/lang/String;

.field public mSmsCode:Ljava/lang/String;

.field public mSpNO:Ljava/lang/String;

.field public mUseVcodeToPay:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Lcom/baidu/paysdk/datamodel/PayRequest;->CARD_NOT_SELECTED:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/baidu/wallet/core/beans/BeanRequestBase;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mUseVcodeToPay:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mChannelNo:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->isPayByMktSolution:Z

    iput-boolean v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->isHasShowPassFreeCheckBox:Z

    return-void
.end method

.method private getDefaultBankCardIdx(I)I
    .registers 10

    const/4 v1, 0x0

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getBondCards()[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    move-result-object v3

    if-eqz v3, :cond_e

    array-length v0, v3

    if-nez v0, :cond_11

    :cond_e
    sget p1, Lcom/baidu/paysdk/datamodel/PayRequest;->CARD_NOT_SELECTED:I

    :cond_10
    :goto_10
    return p1

    :cond_11
    sget v0, Lcom/baidu/paysdk/datamodel/PayRequest;->CARD_NOT_SELECTED:I

    if-ne p1, v0, :cond_10

    const/4 v0, 0x1

    array-length v4, v3

    move v2, v1

    move p1, v1

    :goto_19
    if-ge v2, v4, :cond_2e

    aget-object v5, v3, v2

    const-string v6, "1"

    iget-object v7, v5, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->card_state:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-virtual {v5}, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->isCompled()Z

    move-result v0

    if-eqz v0, :cond_33

    move v0, v1

    :cond_2e
    if-eqz v0, :cond_39

    sget p1, Lcom/baidu/paysdk/datamodel/PayRequest;->CARD_NOT_SELECTED:I

    goto :goto_10

    :cond_33
    move v0, v1

    :cond_34
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_39
    array-length v0, v3

    if-lt p1, v0, :cond_10

    move p1, v1

    goto :goto_10
.end method

.method public static isMaximumBondCards()Z
    .registers 2

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getPayResponse()Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->getBondCards()[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    move-result-object v0

    if-eqz v0, :cond_14

    array-length v0, v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static toastIfNotEmpty(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p0, p1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method private useDefaultPayType(Landroid/content/Context;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "errorDefaultPaytype"

    const-string v1, ""

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/paysdk/storage/PayDataCache;->getDefaultPayType()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/paysdk/storage/PayDataCache;->canUseBalanceOneKeyPay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_24

    sget v0, Lcom/baidu/paysdk/datamodel/PayRequest;->CARD_NOT_SELECTED:I

    invoke-virtual {p0, p1, v4, v3, v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->calcPayPrice(Landroid/content/Context;ZZI)Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    :goto_23
    return-void

    :cond_24
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/paysdk/storage/PayDataCache;->canUseCreditOneKeyPay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_37

    sget v0, Lcom/baidu/paysdk/datamodel/PayRequest;->CARD_NOT_SELECTED:I

    invoke-virtual {p0, p1, v3, v4, v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->calcPayPrice(Landroid/content/Context;ZZI)Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    goto :goto_23

    :cond_37
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->canUseCardOneKeyPay()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-virtual {p0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isSelectedActivitys()Z

    move-result v0

    if-eqz v0, :cond_51

    const/4 v0, 0x0

    sget v1, Lcom/baidu/paysdk/datamodel/PayRequest;->CARD_NOT_SELECTED:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->getRemoutePayPrice(Landroid/content/Context;Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;I)Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    goto :goto_23

    :cond_51
    sget v0, Lcom/baidu/paysdk/datamodel/PayRequest;->CARD_NOT_SELECTED:I

    invoke-virtual {p0, p1, v3, v3, v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->calcPayPrice(Landroid/content/Context;ZZI)Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    goto :goto_23

    :cond_5a
    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->callBackClientCancel()V

    goto :goto_23
.end method


# virtual methods
.method public calcPayPrice(Landroid/content/Context;ZZI)Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;
    .registers 12

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    invoke-direct {v2}, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;-><init>()V

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPrice:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c4

    const-string v0, ""

    move-object v1, v0

    :goto_12
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getCanBalance()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceTotalAmount:Ljava/lang/String;

    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_81

    iput-boolean v5, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->creditIsEnable:Z

    const-string v0, ""

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->creditTip:Ljava/lang/String;

    iput-object v1, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->creditPayAmount:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/paysdk/storage/PayDataCache;->isCanUseBalance(Landroid/content/Context;)Lcom/baidu/paysdk/storage/PayDataCache$a;

    move-result-object v1

    iput-boolean v6, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceIsEnable:Z

    const-string v0, ""

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balancePayAmount:Ljava/lang/String;

    iget-object v0, v1, Lcom/baidu/paysdk/storage/PayDataCache$a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7a

    const-string v0, "ebpay_unsupport_paywith_umoney"

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceTip:Ljava/lang/String;

    :goto_4b
    iput-boolean v6, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easypayIsEnable:Z

    const-string v0, ""

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyPrice:Ljava/lang/String;

    const-string v0, "ebpay_unsupport_paywith_umoney"

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyTip:Ljava/lang/String;

    sget v0, Lcom/baidu/paysdk/datamodel/PayRequest;->CARD_NOT_SELECTED:I

    iput v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->bankCardSelectedIdx:I

    :goto_5d
    const-string v0, "PayRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u3010\u524d\u7aef\u8ba1\u7b97\u91d1\u989d\u3011"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_7a
    iget-object v0, v1, Lcom/baidu/paysdk/storage/PayDataCache$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceTip:Ljava/lang/String;

    goto :goto_4b

    :cond_81
    if-eqz p2, :cond_13e

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/paysdk/storage/PayDataCache;->canUseBalanceOneKeyPay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d3

    iput-boolean v5, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceIsEnable:Z

    iput-object v1, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balancePayAmount:Ljava/lang/String;

    iput-object v1, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceTransAmount:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceTip:Ljava/lang/String;

    iput-boolean v6, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easypayIsEnable:Z

    const-string v0, ""

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyPrice:Ljava/lang/String;

    const-string v0, "ebpay_balance_enough_pay"

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyTip:Ljava/lang/String;

    sget v0, Lcom/baidu/paysdk/datamodel/PayRequest;->CARD_NOT_SELECTED:I

    iput v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->bankCardSelectedIdx:I

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/paysdk/storage/PayDataCache;->isCanUseCredit(Landroid/content/Context;)Lcom/baidu/paysdk/storage/PayDataCache$a;

    move-result-object v1

    iget-object v0, v1, Lcom/baidu/paysdk/storage/PayDataCache$a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c6

    iput-boolean v5, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->creditIsEnable:Z

    const-string v0, ""

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->creditPayAmount:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->creditTip:Ljava/lang/String;

    goto :goto_5d

    :cond_c6
    iput-boolean v6, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->creditIsEnable:Z

    const-string v0, ""

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->creditPayAmount:Ljava/lang/String;

    iget-object v0, v1, Lcom/baidu/paysdk/storage/PayDataCache$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->creditTip:Ljava/lang/String;

    goto :goto_5d

    :cond_d3
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getCanAmount()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    iput-boolean v5, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceIsEnable:Z

    const-string v3, ""

    iput-object v3, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceTip:Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceTransAmount:Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balancePayAmount:Ljava/lang/String;

    iput-boolean v5, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easypayIsEnable:Z

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyPrice:Ljava/lang/String;

    invoke-direct {p0, p4}, Lcom/baidu/paysdk/datamodel/PayRequest;->getDefaultBankCardIdx(I)I

    move-result v0

    iput v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->bankCardSelectedIdx:I

    iget v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->bankCardSelectedIdx:I

    sget v1, Lcom/baidu/paysdk/datamodel/PayRequest;->CARD_NOT_SELECTED:I

    if-ne v0, v1, :cond_12e

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/paysdk/storage/PayDataCache;->isCanUseCredit(Landroid/content/Context;)Lcom/baidu/paysdk/storage/PayDataCache$a;

    move-result-object v1

    iget-object v0, v1, Lcom/baidu/paysdk/storage/PayDataCache$a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_120

    iput-boolean v5, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->creditIsEnable:Z

    const-string v0, ""

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->creditPayAmount:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->creditTip:Ljava/lang/String;

    goto/16 :goto_5d

    :cond_120
    iput-boolean v6, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->creditIsEnable:Z

    const-string v0, ""

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->creditPayAmount:Ljava/lang/String;

    iget-object v0, v1, Lcom/baidu/paysdk/storage/PayDataCache$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->creditTip:Ljava/lang/String;

    goto/16 :goto_5d

    :cond_12e
    iput-boolean v6, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->creditIsEnable:Z

    const-string v0, ""

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->creditPayAmount:Ljava/lang/String;

    const-string v0, "ebpay_unsupport_grouppay"

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->creditTip:Ljava/lang/String;

    goto/16 :goto_5d

    :cond_13e
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/paysdk/storage/PayDataCache;->isCanUseBalance(Landroid/content/Context;)Lcom/baidu/paysdk/storage/PayDataCache$a;

    move-result-object v4

    iget-object v0, v4, Lcom/baidu/paysdk/storage/PayDataCache$a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a5

    iput-boolean v5, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceIsEnable:Z

    const-string v0, ""

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceTip:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balancePayAmount:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v3}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/baidu/paysdk/storage/PayDataCache;->isBalanceEnough(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19a

    invoke-virtual {v3}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceTransAmount:Ljava/lang/String;

    :goto_16e
    iput-boolean v5, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easypayIsEnable:Z

    iput-object v1, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyPrice:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyTip:Ljava/lang/String;

    invoke-direct {p0, p4}, Lcom/baidu/paysdk/datamodel/PayRequest;->getDefaultBankCardIdx(I)I

    move-result v0

    iput v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->bankCardSelectedIdx:I

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/paysdk/storage/PayDataCache;->isCanUseCredit(Landroid/content/Context;)Lcom/baidu/paysdk/storage/PayDataCache$a;

    move-result-object v1

    iget-object v0, v1, Lcom/baidu/paysdk/storage/PayDataCache$a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b6

    iput-boolean v5, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->creditIsEnable:Z

    const-string v0, ""

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->creditPayAmount:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->creditTip:Ljava/lang/String;

    goto/16 :goto_5d

    :cond_19a
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getCanAmount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceTransAmount:Ljava/lang/String;

    goto :goto_16e

    :cond_1a5
    iput-boolean v6, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceIsEnable:Z

    iget-object v0, v4, Lcom/baidu/paysdk/storage/PayDataCache$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceTip:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceTransAmount:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balancePayAmount:Ljava/lang/String;

    goto :goto_16e

    :cond_1b6
    iput-boolean v6, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->creditIsEnable:Z

    const-string v0, ""

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->creditPayAmount:Ljava/lang/String;

    iget-object v0, v1, Lcom/baidu/paysdk/storage/PayDataCache$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->creditTip:Ljava/lang/String;

    goto/16 :goto_5d

    :cond_1c4
    move-object v1, v0

    goto/16 :goto_12
.end method

.method public checkRequestValidity()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "pay_from_balance_charge"

    iget-object v3, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPrice:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    :cond_14
    :goto_14
    return v0

    :cond_15
    move v0, v1

    goto :goto_14

    :cond_17
    const-string v2, "pay_from_bind_card"

    iget-object v3, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mSpNO:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_39

    iget-object v2, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mOrderNo:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_39

    iget-object v2, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mParams:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_39
    move v0, v1

    goto :goto_14

    :cond_3b
    iget-object v2, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mSpNO:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_53

    iget-object v2, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mOrderNo:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_53

    iget-object v2, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPrice:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_53
    move v0, v1

    goto :goto_14
.end method

.method public clearMktSolution()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->isPayByMktSolution:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mMktSolution:Lcom/baidu/paysdk/datamodel/ErrorContentResponse$MktSolution;

    return-void
.end method

.method public getActivityCoupon()[Lcom/baidu/wallet/base/datamodel/PayData$Coupon;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->coupon_list:[Lcom/baidu/wallet/base/datamodel/PayData$Coupon;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getActivityDiscount()[Lcom/baidu/wallet/base/datamodel/PayData$Discount;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->activity_list:[Lcom/baidu/wallet/base/datamodel/PayData$Discount;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getBalancePayAmount()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balancePayAmount:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    const-string v0, ""

    goto :goto_8
.end method

.method public getCalcPayment()Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    return-object v0
.end method

.method public getDiscountAmount()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->total_discount_amount:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    const-string v0, ""

    goto :goto_8
.end method

.method public getEasyPayAmount()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyPrice:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_e
    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPrice:Ljava/lang/String;

    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyPrice:Ljava/lang/String;

    goto :goto_10
.end method

.method public getNeedToPayAmount()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPrice:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->total_discount_amount:Ljava/lang/String;

    if-eqz v1, :cond_1e

    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->total_discount_amount:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    :cond_1e
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrderPrice()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getPayFrom()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    :cond_8
    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getPayPrice()Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    return-object v0
.end method

.method public getRemoutePayPrice(Landroid/content/Context;Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;I)Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;
    .registers 10

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    :cond_6
    new-instance v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    invoke-direct {v2}, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;-><init>()V

    if-nez p2, :cond_f

    move-object v0, v2

    :goto_e
    return-object v0

    :cond_f
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getCanBalance()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceTotalAmount:Ljava/lang/String;

    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->balance_trans_amount:Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceTransAmount:Ljava/lang/String;

    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->balance_amount:Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balancePayAmount:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/paysdk/storage/PayDataCache;->isCanUseBalance(Landroid/content/Context;)Lcom/baidu/paysdk/storage/PayDataCache$a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isSelectedActivitys()Z

    move-result v0

    if-eqz v0, :cond_cf

    iput-boolean v4, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceIsEnable:Z

    iget-object v0, v1, Lcom/baidu/paysdk/storage/PayDataCache$a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_c9

    iget-object v0, v1, Lcom/baidu/paysdk/storage/PayDataCache$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceTip:Ljava/lang/String;

    :cond_41
    :goto_41
    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->easypay_amount:Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyPrice:Ljava/lang/String;

    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->easypay_amount:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isPaytypeEnable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easypayIsEnable:Z

    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->easypay_select_desc:Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyTip:Ljava/lang/String;

    iget-boolean v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easypayIsEnable:Z

    if-eqz v0, :cond_5b

    invoke-direct {p0, p3}, Lcom/baidu/paysdk/datamodel/PayRequest;->getDefaultBankCardIdx(I)I

    move-result v0

    iput v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->bankCardSelectedIdx:I

    :cond_5b
    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pay_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/paysdk/storage/PayDataCache;->isCanUseCredit(Landroid/content/Context;)Lcom/baidu/paysdk/storage/PayDataCache$a;

    move-result-object v5

    iget-object v1, v5, Lcom/baidu/paysdk/storage/PayDataCache$a;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_107

    iget-boolean v1, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceIsEnable:Z

    iget-object v5, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balancePayAmount:Ljava/lang/String;

    invoke-virtual {p0, v1, v5}, Lcom/baidu/paysdk/datamodel/PayRequest;->isPaytypeChecked(ZLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_117

    move v1, v3

    :goto_84
    if-eqz v0, :cond_114

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isSelectedActivitys()Z

    move-result v0

    if-eqz v0, :cond_114

    add-int/lit8 v0, v1, 0x1

    :goto_8e
    iget-boolean v1, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easypayIsEnable:Z

    if-eqz v1, :cond_9a

    iget v1, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->bankCardSelectedIdx:I

    sget v5, Lcom/baidu/paysdk/datamodel/PayRequest;->CARD_NOT_SELECTED:I

    if-eq v1, v5, :cond_9a

    add-int/lit8 v0, v0, 0x1

    :cond_9a
    if-le v0, v3, :cond_fc

    iput-boolean v4, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->creditIsEnable:Z

    const-string v0, ""

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->creditPayAmount:Ljava/lang/String;

    const-string v0, "ebpay_select_credit_unsupport_others"

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->creditTip:Ljava/lang/String;

    :goto_aa
    const-string v0, "PayRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u3010\u540e\u7aef\u8ba1\u7b97\u91d1\u989d\u3011"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_e

    :cond_c9
    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->balance_select_desc:Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceTip:Ljava/lang/String;

    goto/16 :goto_41

    :cond_cf
    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->balance_trans_amount:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isPaytypeEnable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceIsEnable:Z

    iget-boolean v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceIsEnable:Z

    if-nez v0, :cond_e7

    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->balance_select_desc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f9

    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->balance_select_desc:Ljava/lang/String;

    :goto_e5
    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceTip:Ljava/lang/String;

    :cond_e7
    iget-object v0, v1, Lcom/baidu/paysdk/storage/PayDataCache$a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, v1, Lcom/baidu/paysdk/storage/PayDataCache$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceTip:Ljava/lang/String;

    goto/16 :goto_41

    :cond_f9
    const-string v0, ""

    goto :goto_e5

    :cond_fc
    iput-boolean v3, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->creditIsEnable:Z

    const-string v0, ""

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->creditPayAmount:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->creditTip:Ljava/lang/String;

    goto :goto_aa

    :cond_107
    iput-boolean v4, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->creditIsEnable:Z

    const-string v0, ""

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->creditPayAmount:Ljava/lang/String;

    iget-object v0, v5, Lcom/baidu/paysdk/storage/PayDataCache$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->creditTip:Ljava/lang/String;

    goto :goto_aa

    :cond_114
    move v0, v1

    goto/16 :goto_8e

    :cond_117
    move v1, v4

    goto/16 :goto_84
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/baidu/paysdk/datamodel/PayRequest;->setBelongPaySdk()V

    const-string v0, "key_pay_request"

    return-object v0
.end method

.method public getSelectedCouponIds()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->coupon_list:[Lcom/baidu/wallet/base/datamodel/PayData$Coupon;

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->getSelectedCouponIds([Lcom/baidu/wallet/base/datamodel/PayData$Coupon;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getSelectedCouponIds([Lcom/baidu/wallet/base/datamodel/PayData$Coupon;)Ljava/lang/String;
    .registers 10

    const/4 v1, 0x0

    if-nez p1, :cond_6

    const-string v0, ""

    :goto_5
    return-object v0

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    const/16 v4, 0x2c

    array-length v5, p1

    move v2, v1

    :goto_10
    if-ge v2, v5, :cond_29

    aget-object v6, p1, v2

    invoke-virtual {v6}, Lcom/baidu/wallet/base/datamodel/PayData$Coupon;->getSelected()Z

    move-result v7

    if-eqz v7, :cond_22

    if-eqz v0, :cond_25

    move v0, v1

    :goto_1d
    iget-object v6, v6, Lcom/baidu/wallet/base/datamodel/PayData$Coupon;->id:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getSelectedDiscountIds()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->activity_list:[Lcom/baidu/wallet/base/datamodel/PayData$Discount;

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->getSelectedDiscountIds([Lcom/baidu/wallet/base/datamodel/PayData$Discount;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getSelectedDiscountIds([Lcom/baidu/wallet/base/datamodel/PayData$Discount;)Ljava/lang/String;
    .registers 10

    const/4 v1, 0x0

    if-nez p1, :cond_6

    const-string v0, ""

    :goto_5
    return-object v0

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    const/16 v4, 0x2c

    array-length v5, p1

    move v2, v1

    :goto_10
    if-ge v2, v5, :cond_29

    aget-object v6, p1, v2

    invoke-virtual {v6}, Lcom/baidu/wallet/base/datamodel/PayData$Discount;->getSelected()Z

    move-result v7

    if-eqz v7, :cond_22

    if-eqz v0, :cond_25

    move v0, v1

    :goto_1d
    iget-object v6, v6, Lcom/baidu/wallet/base/datamodel/PayData$Discount;->id:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public hasCashDeskCode()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mParams:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mParams:Ljava/lang/String;

    const-string v2, "cashdesk_code"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public hasDiscountOrCoupon()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->activity_list:[Lcom/baidu/wallet/base/datamodel/PayData$Discount;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->activity_list:[Lcom/baidu/wallet/base/datamodel/PayData$Discount;

    array-length v1, v1

    if-lez v1, :cond_13

    :cond_12
    :goto_12
    return v0

    :cond_13
    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->coupon_list:[Lcom/baidu/wallet/base/datamodel/PayData$Coupon;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->coupon_list:[Lcom/baidu/wallet/base/datamodel/PayData$Coupon;

    array-length v1, v1

    if-gtz v1, :cond_12

    :cond_24
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public initBalanceChargeOrder(Ljava/lang/String;)V
    .registers 4

    const-string v0, "\u4f59\u989d\u5145\u503c"

    iput-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mGoodName:Ljava/lang/String;

    :try_start_4
    invoke-static {p1}, Lcom/baidu/wallet/core/utils/StringUtils;->yuan2Fen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPrice:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_22

    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "total_amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPrice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mParams:Ljava/lang/String;

    return-void

    :catch_22
    move-exception v0

    const-string v0, "0"

    iput-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPrice:Ljava/lang/String;

    goto :goto_a
.end method

.method public initOrder(Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mParams:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mParams:Ljava/lang/String;

    const-string v1, "input_charset=1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a0

    const-string v0, "PayRequest"

    const-string v1, "\u8ba2\u5355\u4e3agbk\u7f16\u7801"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    :try_start_15
    const-string v1, "gbk"

    invoke-static {p1, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PayRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gbkParams="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/baidu/wallet/core/utils/EncodeUtils;->gbk2utf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PayRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8f6c utf8 tmpParam="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_4f} :catch_a9

    :goto_4f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a7

    :goto_55
    const-string v1, "SP_NO"

    invoke-virtual {p0, v0, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->getSinalParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mSpNO:Ljava/lang/String;

    const-string v1, "ORDER_NO"

    invoke-virtual {p0, v0, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->getSinalParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mOrderNo:Ljava/lang/String;

    const-string v1, "TOTAL_AMOUNT"

    invoke-virtual {p0, v0, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->getSinalParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPrice:Ljava/lang/String;

    const-string v1, "GOODS_NAME"

    invoke-virtual {p0, v0, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->getSinalParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mGoodName:Ljava/lang/String;

    const-string v1, "GOODS_CATEGORY"

    invoke-virtual {p0, v0, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->getSinalParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mGoodsCategory:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mGoodName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8d

    const-string v1, "GOODS_DESC"

    invoke-virtual {p0, v0, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->getSinalParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mGoodName:Ljava/lang/String;

    :cond_8d
    const-string v1, "CASHIER_TYPE"

    invoke-virtual {p0, v0, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->getSinalParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCashierType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isZhuanZhangCashier()Z

    move-result v0

    if-eqz v0, :cond_9f

    const-string v0, "pay_from_zhuanzhang"

    iput-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    :cond_9f
    return-void

    :cond_a0
    const-string v0, "PayRequest"

    const-string v1, "\u8ba2\u5355\u4e3autf-8\u7f16\u7801"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a7
    move-object v0, p1

    goto :goto_55

    :catch_a9
    move-exception v1

    goto :goto_4f
.end method

.method public initPayPrice(Landroid/content/Context;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/paysdk/storage/PayDataCache;->isUseOneKeyPay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "bindCardToPay"

    const-string v1, ""

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    sget v1, Lcom/baidu/paysdk/datamodel/PayRequest;->CARD_NOT_SELECTED:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->getRemoutePayPrice(Landroid/content/Context;Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;I)Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    :goto_23
    return-void

    :cond_24
    sget v0, Lcom/baidu/paysdk/datamodel/PayRequest;->CARD_NOT_SELECTED:I

    invoke-virtual {p0, p1, v3, v3, v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->calcPayPrice(Landroid/content/Context;ZZI)Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    goto :goto_23

    :cond_2d
    const-string v0, "meetOneKeyPay"

    const-string v1, ""

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/paysdk/storage/PayDataCache;->getDefaultPayType()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "balance"

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/paysdk/storage/PayDataCache;->getDefaultPayType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/paysdk/storage/PayDataCache;->isCanUseBalance(Landroid/content/Context;)Lcom/baidu/paysdk/storage/PayDataCache$a;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/paysdk/storage/PayDataCache$a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/paysdk/storage/PayDataCache;->canUseBalanceOneKeyPay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_72

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->canUseCardOneKeyPay()Z

    move-result v0

    if-eqz v0, :cond_7b

    :cond_72
    sget v0, Lcom/baidu/paysdk/datamodel/PayRequest;->CARD_NOT_SELECTED:I

    invoke-virtual {p0, p1, v4, v3, v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->calcPayPrice(Landroid/content/Context;ZZI)Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    goto :goto_23

    :cond_7b
    invoke-direct {p0, p1}, Lcom/baidu/paysdk/datamodel/PayRequest;->useDefaultPayType(Landroid/content/Context;)V

    goto :goto_23

    :cond_7f
    invoke-direct {p0, p1}, Lcom/baidu/paysdk/datamodel/PayRequest;->useDefaultPayType(Landroid/content/Context;)V

    goto :goto_23

    :cond_83
    const-string v0, "credit_pay"

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/paysdk/storage/PayDataCache;->getDefaultPayType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/paysdk/storage/PayDataCache;->canUseCreditOneKeyPay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a7

    sget v0, Lcom/baidu/paysdk/datamodel/PayRequest;->CARD_NOT_SELECTED:I

    invoke-virtual {p0, p1, v3, v4, v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->calcPayPrice(Landroid/content/Context;ZZI)Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    goto/16 :goto_23

    :cond_a7
    invoke-direct {p0, p1}, Lcom/baidu/paysdk/datamodel/PayRequest;->useDefaultPayType(Landroid/content/Context;)V

    goto/16 :goto_23

    :cond_ac
    const-string v0, "easypay"

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/paysdk/storage/PayDataCache;->getDefaultPayType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d5

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->canUseCardOneKeyPay()Z

    move-result v0

    if-eqz v0, :cond_d0

    sget v0, Lcom/baidu/paysdk/datamodel/PayRequest;->CARD_NOT_SELECTED:I

    invoke-virtual {p0, p1, v3, v3, v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->calcPayPrice(Landroid/content/Context;ZZI)Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    goto/16 :goto_23

    :cond_d0
    invoke-direct {p0, p1}, Lcom/baidu/paysdk/datamodel/PayRequest;->useDefaultPayType(Landroid/content/Context;)V

    goto/16 :goto_23

    :cond_d5
    const-string v0, "composite"

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/paysdk/storage/PayDataCache;->getDefaultPayType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ff

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->canUseCardOneKeyPay()Z

    move-result v0

    if-eqz v0, :cond_fa

    const/4 v0, 0x0

    sget v1, Lcom/baidu/paysdk/datamodel/PayRequest;->CARD_NOT_SELECTED:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->getRemoutePayPrice(Landroid/content/Context;Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;I)Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    goto/16 :goto_23

    :cond_fa
    invoke-direct {p0, p1}, Lcom/baidu/paysdk/datamodel/PayRequest;->useDefaultPayType(Landroid/content/Context;)V

    goto/16 :goto_23

    :cond_ff
    invoke-direct {p0, p1}, Lcom/baidu/paysdk/datamodel/PayRequest;->useDefaultPayType(Landroid/content/Context;)V

    goto/16 :goto_23
.end method

.method public isBalanceCharge()Z
    .registers 3

    const-string v0, "pay_from_balance_charge"

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isHasShowPassFreeCheckBox()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->isHasShowPassFreeCheckBox:Z

    return v0
.end method

.method public isHuaFeiCharge()Z
    .registers 3

    const-string v0, "pay_from_huafei"

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNFCCharge()Z
    .registers 3

    const-string v0, "pay_from_nfc_buscard_charge"

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOnlyUseDebitCard()Z
    .registers 2

    invoke-virtual {p0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isZhuanZhang()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isBalanceCharge()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isNFCCharge()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isPaytypeChecked(ZLjava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v1

    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_a
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_1a

    :goto_f
    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-lez v0, :cond_23

    const/4 v0, 0x1

    :goto_18
    move v1, v0

    goto :goto_3

    :catch_1a
    move-exception v0

    new-instance v0, Ljava/math/BigDecimal;

    const-string v2, "0"

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_f

    :cond_23
    move v0, v1

    goto :goto_18
.end method

.method public isPaytypeEnable(Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_f

    :goto_5
    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-lez v0, :cond_18

    const/4 v0, 0x1

    :goto_e
    return v0

    :catch_f
    move-exception v0

    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_18
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public isSelectedActivitys()Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/baidu/paysdk/datamodel/PayRequest;->getSelectedCouponIds()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/paysdk/datamodel/PayRequest;->getSelectedDiscountIds()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isTrafficCharge()Z
    .registers 3

    const-string v0, "pay_from_traffic"

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTransfer()Ljava/lang/String;
    .registers 3

    const-string v0, "pay_from_zhuanzhang"

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "1"

    :goto_c
    return-object v0

    :cond_d
    const-string v0, "pay_from_balance_charge"

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "2"

    goto :goto_c

    :cond_1a
    const-string v0, "0"

    goto :goto_c
.end method

.method public isZhuanZhang()Z
    .registers 3

    const-string v0, "pay_from_zhuanzhang"

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isZhuanZhangCashier()Z
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCashierType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "1"

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCashierType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public restoreCalcResponse(Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    :cond_4
    return-void
.end method

.method public restorePayPrice(Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    :cond_4
    return-void
.end method

.method public savePayPrice(Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    return-void
.end method

.method public setCalcPayment(Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    return-void
.end method

.method public setHasShowPassFreeCheckBox(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->isHasShowPassFreeCheckBox:Z

    return-void
.end method

.method public setMktSolution(Lcom/baidu/paysdk/datamodel/ErrorContentResponse$MktSolution;)V
    .registers 3

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->isPayByMktSolution:Z

    iput-object p1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mMktSolution:Lcom/baidu/paysdk/datamodel/ErrorContentResponse$MktSolution;

    :cond_7
    return-void
.end method

.method public setPayFrom(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    return-void
.end method
