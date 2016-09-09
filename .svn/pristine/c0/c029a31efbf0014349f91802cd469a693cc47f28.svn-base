.class public Lcom/baidu/paysdk/beans/p;
.super Lcom/baidu/wallet/core/beans/BaseBean;


# instance fields
.field private a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

.field private b:Lcom/baidu/paysdk/datamodel/PwdRequest;

.field private c:Lcom/baidu/paysdk/datamodel/PayRequest;

.field private d:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/baidu/wallet/core/beans/BaseBean;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/paysdk/beans/p;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/beans/p;->b:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/beans/p;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/paysdk/beans/p;->d:Z

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_bind_card_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/beans/p;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pwd_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PwdRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/beans/p;->b:Lcom/baidu/paysdk/datamodel/PwdRequest;

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pay_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/beans/p;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    return-void
.end method

.method private a()Ljava/util/List;
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/baidu/paysdk/beans/p;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/PayRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    new-instance v2, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v3, "card_type"

    iget v4, v1, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->card_type:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v3, "bind_flag"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v3, "need_bind_card"

    const-string v4, "0"

    invoke-direct {v2, v3, v4}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v3, "reser"

    const-string v4, "phone_number"

    iget-object v5, v1, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->mobile:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/baidu/paysdk/PayUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v3, "card_no"

    const-string v4, "card_no"

    iget-object v5, v1, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->account_no:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/baidu/paysdk/PayUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v3, "true_name"

    iget-object v4, v1, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->true_name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v3, "key"

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/android/pay/SafePay;->getpwProxy()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/baidu/paysdk/beans/p;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/PayRequest;->mSmsCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8b

    new-instance v2, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v3, "message_vcode"

    iget-object v4, p0, Lcom/baidu/paysdk/beans/p;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v4, v4, Lcom/baidu/paysdk/datamodel/PayRequest;->mSmsCode:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8b
    iget-object v2, v1, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->account_bank_code:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9f

    new-instance v2, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v3, "account_bank_code"

    iget-object v4, v1, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->account_bank_code:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9f
    new-instance v2, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v3, "bank_code"

    iget-object v4, p0, Lcom/baidu/paysdk/beans/p;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v4, v4, Lcom/baidu/paysdk/datamodel/PayRequest;->mChannelNo:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v3, "sub_bank_code"

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->bank_code:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/baidu/paysdk/beans/p;->b:Lcom/baidu/paysdk/datamodel/PwdRequest;

    if-eqz v1, :cond_ef

    iget-object v1, p0, Lcom/baidu/paysdk/beans/p;->b:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/PwdRequest;->mPayPass:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ef

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getSeed()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/beans/p;->b:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/PwdRequest;->mPayPass:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/baidu/wallet/base/controllers/PasswordController;->handlePwd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v4, "mobilepwd"

    invoke-direct {v3, v4, v2}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/android/pay/SafePay;->encryptProxy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v3, "seed"

    invoke-direct {v2, v3, v1}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_ef
    return-object v0
.end method

.method private b(Z)Ljava/util/List;
    .registers 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v3, "card_type"

    if-eqz p1, :cond_10e

    const/4 v0, 0x1

    :goto_c
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v2, "bind_flag"

    const-string v3, "0"

    invoke-direct {v0, v2, v3}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v2, "need_bind_card"

    const-string v3, "1"

    invoke-direct {v0, v2, v3}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v2, "message_vcode"

    iget-object v3, p0, Lcom/baidu/paysdk/beans/p;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mSmsVCode:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v2, "reser"

    const-string v3, "phone_number"

    iget-object v4, p0, Lcom/baidu/paysdk/beans/p;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v4, v4, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mPhone:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/baidu/paysdk/PayUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v2, "card_no"

    const-string v3, "card_no"

    iget-object v4, p0, Lcom/baidu/paysdk/beans/p;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v4, v4, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBankCard:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/baidu/paysdk/PayUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_90

    new-instance v0, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v2, "valid_date"

    const-string v3, "valid_date"

    iget-object v4, p0, Lcom/baidu/paysdk/beans/p;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v4}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmValidDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/paysdk/PayUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v2, "cvv2"

    const-string v3, "cvv2"

    iget-object v4, p0, Lcom/baidu/paysdk/beans/p;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v4, v4, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mCvv:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/baidu/paysdk/PayUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_90
    new-instance v0, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v2, "key"

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/android/pay/SafePay;->getpwProxy()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v2, "true_name"

    iget-object v3, p0, Lcom/baidu/paysdk/beans/p;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mName:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/paysdk/beans/p;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mIdCard:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_da

    new-instance v0, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v2, "identity_type"

    const-string v3, "1"

    invoke-direct {v0, v2, v3}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v2, "identity_code"

    const-string v3, "identity_code"

    iget-object v4, p0, Lcom/baidu/paysdk/beans/p;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v4, v4, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mIdCard:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/baidu/paysdk/PayUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_da
    new-instance v0, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v2, "account_bank_code"

    iget-object v3, p0, Lcom/baidu/paysdk/beans/p;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v3}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getChannelNo()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v2, "bank_code"

    iget-object v3, p0, Lcom/baidu/paysdk/beans/p;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v3}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getChannelNo()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v2, "sub_bank_code"

    iget-object v3, p0, Lcom/baidu/paysdk/beans/p;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBankNo:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/paysdk/beans/p;->b:Lcom/baidu/paysdk/datamodel/PwdRequest;

    if-nez v0, :cond_111

    move-object v0, v1

    :goto_10d
    return-object v0

    :cond_10e
    const/4 v0, 0x2

    goto/16 :goto_c

    :cond_111
    iget-object v0, p0, Lcom/baidu/paysdk/beans/p;->b:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mPayPass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13f

    iget-object v0, p0, Lcom/baidu/paysdk/beans/p;->b:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mConfirmPayPass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_185

    iget-object v0, p0, Lcom/baidu/paysdk/beans/p;->b:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mPayPass:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/wallet/base/controllers/PasswordController;->handlePwdSimple(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/android/pay/SafePay;->encryptProxy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v3, "mobilepwd"

    invoke-direct {v2, v3, v0}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13f
    :goto_13f
    iget-object v0, p0, Lcom/baidu/paysdk/beans/p;->b:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mConfirmPayPass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_183

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getSeed()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/paysdk/beans/p;->b:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/PwdRequest;->mConfirmPayPass:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/baidu/wallet/base/controllers/PasswordController;->handlePwd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v4, "confirm_mobilepwd"

    invoke-direct {v3, v4, v2}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/android/pay/SafePay;->encryptProxy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v3, "seed"

    invoke-direct {v2, v3, v0}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v2, "mobile_pwd_psp"

    iget-object v3, p0, Lcom/baidu/paysdk/beans/p;->b:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/PwdRequest;->mConfirmPayPass:Ljava/lang/String;

    invoke-static {v3}, Lcom/baidu/wallet/base/controllers/PasswordController;->handlePwdForPassport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_183
    move-object v0, v1

    goto :goto_10d

    :cond_185
    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getSeed()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/paysdk/beans/p;->b:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/PwdRequest;->mPayPass:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/baidu/wallet/base/controllers/PasswordController;->handlePwd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v4, "mobilepwd"

    invoke-direct {v3, v4, v2}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/android/pay/SafePay;->encryptProxy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v3, "seed"

    invoke-direct {v2, v3, v0}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13f
.end method

.method private c(Z)Ljava/util/List;
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/paysdk/storage/PayDataCache;->hasMobilePwd()Z

    move-result v1

    if-eqz v1, :cond_2e

    new-instance v1, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v2, "bind_flag"

    const-string v3, "1"

    invoke-direct {v1, v2, v3}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v2, "need_bind_card"

    const-string v3, "0"

    invoke-direct {v1, v2, v3}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_27
    iget-object v1, p0, Lcom/baidu/paysdk/beans/p;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    if-nez v1, :cond_47

    :cond_2d
    :goto_2d
    return-object v0

    :cond_2e
    new-instance v1, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v2, "bind_flag"

    const-string v3, "0"

    invoke-direct {v1, v2, v3}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v2, "need_bind_card"

    const-string v3, "1"

    invoke-direct {v1, v2, v3}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_47
    iget-object v1, p0, Lcom/baidu/paysdk/beans/p;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    iget-object v2, p0, Lcom/baidu/paysdk/beans/p;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mCardInfoUpdateContent:Lcom/baidu/paysdk/datamodel/ErrorContentResponse;

    iget-object v3, v1, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->need_true_name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_63

    new-instance v3, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v4, "need_true_name"

    iget-object v5, v1, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->need_true_name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_63
    iget-object v3, v1, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->need_identity_code:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_77

    new-instance v3, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v4, "need_identity_code"

    iget-object v5, v1, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->need_identity_code:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_77
    iget-object v3, v1, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->need_identity_type:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8b

    new-instance v3, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v4, "need_identity_type"

    iget-object v5, v1, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->need_identity_type:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8b
    if-eqz v2, :cond_22a

    invoke-virtual {v2}, Lcom/baidu/paysdk/datamodel/ErrorContentResponse;->isNeedPhoneNum()Z

    move-result v3

    if-eqz v3, :cond_22a

    new-instance v3, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v4, "need_phone_num"

    iget-object v5, v2, Lcom/baidu/paysdk/datamodel/ErrorContentResponse;->need_phone_num:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9f
    :goto_9f
    if-eqz p1, :cond_26c

    new-instance v3, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v4, "card_type"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_240

    invoke-virtual {v2}, Lcom/baidu/paysdk/datamodel/ErrorContentResponse;->isNeedValidCode()Z

    move-result v3

    if-eqz v3, :cond_240

    new-instance v3, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v4, "need_cvv2"

    iget-object v5, v2, Lcom/baidu/paysdk/datamodel/ErrorContentResponse;->need_cvv2:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c4
    :goto_c4
    if-eqz v2, :cond_256

    invoke-virtual {v2}, Lcom/baidu/paysdk/datamodel/ErrorContentResponse;->isNeedValidDate()Z

    move-result v3

    if-eqz v3, :cond_256

    new-instance v3, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v4, "need_valid_date"

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/ErrorContentResponse;->need_valid_date:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d8
    :goto_d8
    new-instance v2, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v3, "valid_date"

    const-string v4, "valid_date"

    iget-object v5, p0, Lcom/baidu/paysdk/beans/p;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v5}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmValidDate()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/paysdk/PayUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v3, "cvv2"

    const-string v4, "cvv2"

    iget-object v5, p0, Lcom/baidu/paysdk/beans/p;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v5, v5, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mCvv:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/baidu/paysdk/PayUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_102
    new-instance v2, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v3, "message_vcode"

    iget-object v4, p0, Lcom/baidu/paysdk/beans/p;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v4, v4, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mSmsVCode:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v3, "reser"

    const-string v4, "phone_number"

    iget-object v5, p0, Lcom/baidu/paysdk/beans/p;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v5, v5, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mPhone:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/baidu/paysdk/PayUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v3, "card_no"

    const-string v4, "card_no"

    iget-object v5, p0, Lcom/baidu/paysdk/beans/p;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v5, v5, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBankCard:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/baidu/paysdk/PayUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v3, "key"

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/android/pay/SafePay;->getpwProxy()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v3, "true_name"

    iget-object v4, p0, Lcom/baidu/paysdk/beans/p;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v4, v4, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/baidu/paysdk/beans/p;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mIdCard:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_182

    new-instance v2, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v3, "identity_type"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v3, "identity_code"

    const-string v4, "identity_code"

    iget-object v5, p0, Lcom/baidu/paysdk/beans/p;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v5, v5, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mIdCard:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/baidu/paysdk/PayUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_182
    new-instance v2, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v3, "bank_code"

    iget-object v4, p0, Lcom/baidu/paysdk/beans/p;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v4}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getChannelNo()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v3, "sub_bank_code"

    iget-object v4, v1, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->bank_code:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->account_bank_code:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b2

    new-instance v2, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v3, "account_bank_code"

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->account_bank_code:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b2
    iget-object v1, p0, Lcom/baidu/paysdk/beans/p;->b:Lcom/baidu/paysdk/datamodel/PwdRequest;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/baidu/paysdk/beans/p;->b:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/PwdRequest;->mPayPass:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e4

    iget-object v1, p0, Lcom/baidu/paysdk/beans/p;->b:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/PwdRequest;->mConfirmPayPass:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27d

    iget-object v1, p0, Lcom/baidu/paysdk/beans/p;->b:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/PwdRequest;->mPayPass:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/wallet/base/controllers/PasswordController;->handlePwdSimple(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/android/pay/SafePay;->encryptProxy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v3, "mobilepwd"

    invoke-direct {v2, v3, v1}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e4
    :goto_1e4
    iget-object v1, p0, Lcom/baidu/paysdk/beans/p;->b:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/PwdRequest;->mConfirmPayPass:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getSeed()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/beans/p;->b:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/PwdRequest;->mConfirmPayPass:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/baidu/wallet/base/controllers/PasswordController;->handlePwd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v4, "confirm_mobilepwd"

    invoke-direct {v3, v4, v2}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/android/pay/SafePay;->encryptProxy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v3, "seed"

    invoke-direct {v2, v3, v1}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v2, "mobile_pwd_psp"

    iget-object v3, p0, Lcom/baidu/paysdk/beans/p;->b:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/PwdRequest;->mConfirmPayPass:Ljava/lang/String;

    invoke-static {v3}, Lcom/baidu/wallet/base/controllers/PasswordController;->handlePwdForPassport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2d

    :cond_22a
    iget-object v3, v1, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->need_phone_num:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9f

    new-instance v3, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v4, "need_phone_num"

    iget-object v5, v1, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->need_phone_num:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9f

    :cond_240
    iget-object v3, v1, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->need_cvv2:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c4

    new-instance v3, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v4, "need_cvv2"

    iget-object v5, v1, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->need_cvv2:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c4

    :cond_256
    iget-object v2, v1, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->need_valid_date:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d8

    new-instance v2, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v3, "need_valid_date"

    iget-object v4, v1, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->need_valid_date:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d8

    :cond_26c
    new-instance v2, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v3, "card_type"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_102

    :cond_27d
    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getSeed()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/beans/p;->b:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/PwdRequest;->mPayPass:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/baidu/wallet/base/controllers/PasswordController;->handlePwd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v4, "mobilepwd"

    invoke-direct {v3, v4, v2}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/android/pay/SafePay;->encryptProxy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v3, "seed"

    invoke-direct {v2, v3, v1}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e4
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/paysdk/beans/p;->d:Z

    return-void
.end method

.method public execBean()V
    .registers 3

    const-class v0, Lcom/baidu/paysdk/datamodel/PayResponse;

    const-class v1, Lcom/baidu/paysdk/datamodel/ErrorContentResponse;

    invoke-super {p0, v0, v1}, Lcom/baidu/wallet/core/beans/BaseBean;->execBean(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method public generateRequestParam()Ljava/util/List;
    .registers 7

    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget-boolean v3, p0, Lcom/baidu/paysdk/beans/p;->d:Z

    if-eqz v3, :cond_e2

    invoke-direct {p0}, Lcom/baidu/paysdk/beans/p;->a()Ljava/util/List;

    move-result-object v0

    :goto_b
    iget-object v3, p0, Lcom/baidu/paysdk/beans/p;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v3, :cond_27

    iget-object v3, p0, Lcom/baidu/paysdk/beans/p;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/PayRequest;->mUseVcodeToPay:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_27

    new-instance v3, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v4, "use_vcode_to_pay"

    iget-object v5, p0, Lcom/baidu/paysdk/beans/p;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v5, v5, Lcom/baidu/paysdk/datamodel/PayRequest;->mUseVcodeToPay:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    iget-object v3, p0, Lcom/baidu/paysdk/beans/p;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v3, :cond_11c

    iget-object v3, p0, Lcom/baidu/paysdk/beans/p;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-boolean v3, v3, Lcom/baidu/paysdk/datamodel/PayRequest;->isPayByMktSolution:Z

    if-eqz v3, :cond_11c

    iget-object v3, p0, Lcom/baidu/paysdk/beans/p;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/PayRequest;->mMktSolution:Lcom/baidu/paysdk/datamodel/ErrorContentResponse$MktSolution;

    if-eqz v3, :cond_11c

    iget-object v3, p0, Lcom/baidu/paysdk/beans/p;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/PayRequest;->mMktSolution:Lcom/baidu/paysdk/datamodel/ErrorContentResponse$MktSolution;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/ErrorContentResponse$MktSolution;->easypay_amount:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_53

    new-instance v3, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v4, "pay_amount"

    iget-object v5, p0, Lcom/baidu/paysdk/beans/p;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v5, v5, Lcom/baidu/paysdk/datamodel/PayRequest;->mMktSolution:Lcom/baidu/paysdk/datamodel/ErrorContentResponse$MktSolution;

    iget-object v5, v5, Lcom/baidu/paysdk/datamodel/ErrorContentResponse$MktSolution;->easypay_amount:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_53
    iget-object v3, p0, Lcom/baidu/paysdk/beans/p;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v4, p0, Lcom/baidu/paysdk/beans/p;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v4, v4, Lcom/baidu/paysdk/datamodel/PayRequest;->mMktSolution:Lcom/baidu/paysdk/datamodel/ErrorContentResponse$MktSolution;

    iget-object v4, v4, Lcom/baidu/paysdk/datamodel/ErrorContentResponse$MktSolution;->activity_list:[Lcom/baidu/wallet/base/datamodel/PayData$Discount;

    invoke-virtual {v3, v4}, Lcom/baidu/paysdk/datamodel/PayRequest;->getSelectedDiscountIds([Lcom/baidu/wallet/base/datamodel/PayData$Discount;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_70

    new-instance v1, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v4, "activity_id"

    invoke-direct {v1, v4, v3}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    :cond_70
    iget-object v3, p0, Lcom/baidu/paysdk/beans/p;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v4, p0, Lcom/baidu/paysdk/beans/p;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v4, v4, Lcom/baidu/paysdk/datamodel/PayRequest;->mMktSolution:Lcom/baidu/paysdk/datamodel/ErrorContentResponse$MktSolution;

    iget-object v4, v4, Lcom/baidu/paysdk/datamodel/ErrorContentResponse$MktSolution;->coupon_list:[Lcom/baidu/wallet/base/datamodel/PayData$Coupon;

    invoke-virtual {v3, v4}, Lcom/baidu/paysdk/datamodel/PayRequest;->getSelectedCouponIds([Lcom/baidu/wallet/base/datamodel/PayData$Coupon;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8e

    add-int/lit8 v1, v1, 0x1

    new-instance v4, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v5, "coupon_id"

    invoke-direct {v4, v5, v3}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8e
    iget-object v3, p0, Lcom/baidu/paysdk/beans/p;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/PayRequest;->mMktSolution:Lcom/baidu/paysdk/datamodel/ErrorContentResponse$MktSolution;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/ErrorContentResponse$MktSolution;->balance_amount:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ac

    add-int/lit8 v1, v1, 0x1

    new-instance v3, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v4, "balance_pay_amount"

    iget-object v5, p0, Lcom/baidu/paysdk/beans/p;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v5, v5, Lcom/baidu/paysdk/datamodel/PayRequest;->mMktSolution:Lcom/baidu/paysdk/datamodel/ErrorContentResponse$MktSolution;

    iget-object v5, v5, Lcom/baidu/paysdk/datamodel/ErrorContentResponse$MktSolution;->balance_amount:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_ac
    :goto_ac
    if-lt v1, v2, :cond_19d

    new-instance v1, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v2, "composite_flag"

    const-string v3, "1"

    invoke-direct {v1, v2, v3}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_ba
    iget-object v1, p0, Lcom/baidu/paysdk/beans/p;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v1, :cond_1ab

    iget-object v1, p0, Lcom/baidu/paysdk/beans/p;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/PayRequest;->mNeedOpenPassFree:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1ab

    new-instance v1, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v2, "need_open_passfree"

    iget-object v3, p0, Lcom/baidu/paysdk/beans/p;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/PayRequest;->mNeedOpenPassFree:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_d6
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/paysdk/storage/PayDataCache;->getPayPostInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_e1
    return-object v0

    :cond_e2
    iget-object v3, p0, Lcom/baidu/paysdk/beans/p;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    if-nez v3, :cond_ec

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_e1

    :cond_ec
    iget-object v3, p0, Lcom/baidu/paysdk/beans/p;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget v3, v3, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    if-nez v3, :cond_101

    iget-object v3, p0, Lcom/baidu/paysdk/beans/p;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v3}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getCardType()I

    move-result v3

    if-ne v3, v1, :cond_fb

    move v0, v1

    :cond_fb
    invoke-direct {p0, v0}, Lcom/baidu/paysdk/beans/p;->b(Z)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_b

    :cond_101
    iget-object v3, p0, Lcom/baidu/paysdk/beans/p;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget v3, v3, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    if-ne v3, v2, :cond_116

    iget-object v3, p0, Lcom/baidu/paysdk/beans/p;->a:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v3}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getCardType()I

    move-result v3

    if-ne v3, v1, :cond_110

    move v0, v1

    :cond_110
    invoke-direct {p0, v0}, Lcom/baidu/paysdk/beans/p;->c(Z)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_b

    :cond_116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_e1

    :cond_11c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/baidu/paysdk/beans/p;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v4}, Lcom/baidu/paysdk/datamodel/PayRequest;->getSelectedDiscountIds()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_137

    iget-object v1, p0, Lcom/baidu/paysdk/beans/p;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->getSelectedDiscountIds()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_137
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14f

    new-instance v4, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v5, "activity_id"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14f
    new-instance v3, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v4, "pay_amount"

    iget-object v5, p0, Lcom/baidu/paysdk/beans/p;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v5}, Lcom/baidu/paysdk/datamodel/PayRequest;->getEasyPayAmount()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/baidu/paysdk/beans/p;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v3}, Lcom/baidu/paysdk/datamodel/PayRequest;->getSelectedCouponIds()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17d

    new-instance v3, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v4, "coupon_id"

    iget-object v5, p0, Lcom/baidu/paysdk/beans/p;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v5}, Lcom/baidu/paysdk/datamodel/PayRequest;->getSelectedCouponIds()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    :cond_17d
    iget-object v3, p0, Lcom/baidu/paysdk/beans/p;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v3}, Lcom/baidu/paysdk/datamodel/PayRequest;->getBalancePayAmount()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/wallet/core/utils/StringUtils;->isAmountMoreThanZero(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ac

    new-instance v3, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v4, "balance_pay_amount"

    iget-object v5, p0, Lcom/baidu/paysdk/beans/p;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v5}, Lcom/baidu/paysdk/datamodel/PayRequest;->getBalancePayAmount()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_ac

    :cond_19d
    new-instance v1, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v2, "composite_flag"

    const-string v3, "0"

    invoke-direct {v1, v2, v3}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ba

    :cond_1ab
    new-instance v1, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v2, "need_open_passfree"

    const-string v3, "0"

    invoke-direct {v1, v2, v3}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d6
.end method

.method public getBeanId()I
    .registers 2

    const/16 v0, 0xd

    return v0
.end method

.method public getEncode()Ljava/lang/String;
    .registers 2

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/paysdk/beans/p;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/wallet/core/DebugConfig;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/core/DebugConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/wallet/core/DebugConfig;->getWalletHttpsHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/_u/cashdesk/wireless_pay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
