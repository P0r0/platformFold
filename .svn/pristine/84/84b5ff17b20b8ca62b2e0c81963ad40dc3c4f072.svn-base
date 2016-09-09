.class public Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/beans/IBeanResponse;
.implements Ljava/io/Serializable;


# static fields
.field public static final HIDDEN_ADD_BANKCARD_BTN:Ljava/lang/String; = "0"

.field public static final SHOW_ADD_BANKCARD_BTN:Ljava/lang/String; = "1"

.field private static final serialVersionUID:J = 0x146f8b4d10975203L


# instance fields
.field public add_bank_card_enabled:Ljava/lang/String;

.field public misc:Lcom/baidu/wallet/base/datamodel/UserData$Misc;

.field public pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

.field public sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

.field public user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->add_bank_card_enabled:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public canUsePcPwdVerify()Z
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v0, :cond_12

    const-string v0, "1"

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->can_use_pcpwd_verify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public checkResponseValidity()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v3, "key_pay_request"

    invoke-virtual {v0, v3}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_25

    const-string v3, "pay_from_bind_card"

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->getPayFrom()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v0, :cond_23

    move v0, v1

    :goto_21
    move v1, v0

    :cond_22
    :goto_22
    return v1

    :cond_23
    move v0, v2

    goto :goto_21

    :cond_25
    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    if-nez v0, :cond_22

    :cond_37
    move v1, v2

    goto :goto_22

    :cond_39
    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->post_info:Ljava/util/Map;

    if-nez v0, :cond_22

    :cond_53
    move v1, v2

    goto :goto_22
.end method

.method public getBondCards()[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->bind_card_arr:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getBondDebitCards()[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;
    .registers 8

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->bind_card_arr:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    if-eqz v0, :cond_3b

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v2, v0, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->bind_card_arr:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1f
    if-ge v0, v3, :cond_2e

    aget-object v4, v2, v0

    iget v5, v4, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->card_type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2b

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_2e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    :goto_3a
    return-object v0

    :cond_3b
    const/4 v0, 0x0

    goto :goto_3a
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->display_name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->display_name:Ljava/lang/String;

    :goto_12
    return-object v0

    :cond_13
    const-string v0, ""

    goto :goto_12
.end method

.method public getEnableBondCards()[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;
    .registers 8

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->bind_card_arr:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    if-eqz v0, :cond_46

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v2, v0, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->bind_card_arr:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1f
    if-ge v0, v3, :cond_39

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->isCompled()Z

    move-result v5

    if-eqz v5, :cond_36

    const-string v5, "1"

    iget-object v6, v4, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->card_state:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_39
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    :goto_45
    return-object v0

    :cond_46
    const/4 v0, 0x0

    goto :goto_45
.end method

.method public getEnableCardsForFindPWD()[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;
    .registers 7

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->bind_card_arr:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    if-eqz v0, :cond_3c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v2, v0, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->bind_card_arr:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1f
    if-ge v0, v3, :cond_2f

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->getCanFindPWDBySms()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_2f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    :goto_3b
    return-object v0

    :cond_3c
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method public getSpGoodsName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$SP;->goods_name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$SP;->goods_name:Ljava/lang/String;

    :goto_12
    return-object v0

    :cond_13
    const-string v0, ""

    goto :goto_12
.end method

.method public getSpName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$SP;->sp_company:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$SP;->sp_company:Ljava/lang/String;

    :goto_12
    return-object v0

    :cond_13
    const-string v0, ""

    goto :goto_12
.end method

.method public hasBindCards()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->bind_card_arr:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->bind_card_arr:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    array-length v1, v1

    if-lez v1, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0
.end method

.method public hasBindDebits()Z
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->bind_card_arr:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v2, v1, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->bind_card_arr:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    array-length v3, v2

    move v1, v0

    :goto_11
    if-ge v1, v3, :cond_1b

    aget-object v4, v2, v1

    iget v4, v4, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->card_type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1c

    const/4 v0, 0x1

    :cond_1b
    return v0

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method

.method public hasEnableCards()Z
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->bind_card_arr:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v2, v1, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->bind_card_arr:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    array-length v3, v2

    move v1, v0

    :goto_11
    if-ge v1, v3, :cond_26

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->isCompled()Z

    move-result v5

    if-eqz v5, :cond_27

    const-string v5, "1"

    iget-object v4, v4, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->card_state:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v0, 0x1

    :cond_26
    return v0

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method

.method public hasEnableDebits()Z
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->bind_card_arr:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v2, v1, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->bind_card_arr:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    array-length v3, v2

    move v1, v0

    :goto_11
    if-ge v1, v3, :cond_2b

    aget-object v4, v2, v1

    iget v5, v4, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->card_type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2c

    invoke-virtual {v4}, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->isCompled()Z

    move-result v5

    if-eqz v5, :cond_2c

    const-string v5, "1"

    iget-object v4, v4, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->card_state:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const/4 v0, 0x1

    :cond_2b
    return v0

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method

.method public hasPwd()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->hasMobilePwd()Z

    move-result v0

    return v0
.end method

.method public hasSupportCards()Z
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->bind_card_arr:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v2, v1, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->bind_card_arr:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    array-length v3, v2

    move v1, v0

    :goto_11
    if-ge v1, v3, :cond_20

    aget-object v4, v2, v1

    const-string v5, "1"

    iget-object v4, v4, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->card_state:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    const/4 v0, 0x1

    :cond_20
    return v0

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method

.method public setHasPwd()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->setHasMobilePwd()V

    return-void
.end method

.method public storeResponse(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/storage/PayDataCache;->setPayResponse(Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;)V

    return-void
.end method
