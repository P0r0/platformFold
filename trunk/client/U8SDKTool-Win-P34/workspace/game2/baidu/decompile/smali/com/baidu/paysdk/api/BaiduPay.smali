.class public Lcom/baidu/paysdk/api/BaiduPay;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;
    }
.end annotation


# static fields
.field public static final AMOUNT:Ljava/lang/String; = "pay_amount"

.field public static final PAY_FROM:Ljava/lang/String; = "pay_from"

.field public static final PAY_FROM_BALANCE_CHARGE:Ljava/lang/String; = "pay_from_balance_charge"

.field public static final PAY_FROM_BIND_CARD:Ljava/lang/String; = "pay_from_bind_card"

.field public static final PAY_FROM_HUA_FEI:Ljava/lang/String; = "pay_from_huafei"

.field public static final PAY_FROM_HUA_ZHUAN_ZHANG:Ljava/lang/String; = "pay_from_zhuanzhang"

.field public static final PAY_FROM_NFC_BUSCARD_CHARGE:Ljava/lang/String; = "pay_from_nfc_buscard_charge"

.field public static final PAY_FROM_TRAFFIC:Ljava/lang/String; = "pay_from_traffic"

.field public static final PAY_TYPE_KEY:Ljava/lang/String; = "type"

.field public static final TOKEN_VALUE_KEY:Ljava/lang/String; = "tokenValue"

.field public static final TYPE_FASE_PAY:I = 0x4

.field public static final TYPE_PAY_ALL:I = 0x0

.field public static final TYPE_SURPLUS:I = 0x1

.field public static final USER_TYPE_KEY:Ljava/lang/String; = "userType"

.field private static d:Lcom/baidu/paysdk/api/BaiduPay;

.field private static e:Ljava/lang/Object;


# instance fields
.field private a:Lcom/baidu/android/pay/PayCallBack;

.field private b:Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;

.field private c:Lcom/baidu/android/pay/BindBack;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/paysdk/api/BaiduPay;->d:Lcom/baidu/paysdk/api/BaiduPay;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/paysdk/api/BaiduPay;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;Ljava/util/Map;)V
    .registers 12

    const/high16 v6, 0x10000000

    const/4 v5, 0x0

    iput-object p3, p0, Lcom/baidu/paysdk/api/BaiduPay;->a:Lcom/baidu/android/pay/PayCallBack;

    invoke-static {p1}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v3

    const/4 v2, 0x0

    const-string v0, ""

    if-eqz p4, :cond_ef

    const-string v0, "userType"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "tokenValue"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_34

    :try_start_24
    new-instance v2, Lcom/baidu/wallet/base/datamodel/AccountManager$User;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4, v1}, Lcom/baidu/wallet/base/datamodel/AccountManager$User;-><init>(Lcom/baidu/wallet/base/datamodel/AccountManager;ILjava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_34} :catch_44

    :cond_34
    :goto_34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4f

    :cond_40
    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->callBackClientCancel()V

    :goto_43
    return-void

    :catch_44
    move-exception v2

    new-instance v2, Lcom/baidu/wallet/base/datamodel/AccountManager$User;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4, v1}, Lcom/baidu/wallet/base/datamodel/AccountManager$User;-><init>(Lcom/baidu/wallet/base/datamodel/AccountManager;ILjava/lang/String;)V

    goto :goto_34

    :cond_4f
    const-string v0, "pay_from"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v2, :cond_60

    invoke-static {p1, v2}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;Lcom/baidu/wallet/base/datamodel/AccountManager$User;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/baidu/wallet/base/datamodel/AccountManager;->sync(Lcom/baidu/wallet/base/datamodel/AccountManager$User;)V

    :cond_60
    new-instance v2, Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-direct {v2}, Lcom/baidu/paysdk/datamodel/PayRequest;-><init>()V

    invoke-virtual {v2, v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->setPayFrom(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/paysdk/storage/PayDataCache;->isRemotePay()Z

    move-result v1

    if-eqz v1, :cond_90

    const-string v1, "pass_uid"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/baidu/paysdk/datamodel/PayRequest;->mRemotePayUserId:Ljava/lang/String;

    const-string v1, "pass_user_name"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/baidu/paysdk/datamodel/PayRequest;->mRemotePayUserAccountName:Ljava/lang/String;

    const-string v1, "Key_Remote_Pay_HostName"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/baidu/paysdk/datamodel/PayRequest;->mRemotePayHostName:Ljava/lang/String;

    :cond_90
    const-string v1, "pay_from_balance_charge"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f4

    const-string v0, "pay_amount"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->initBalanceChargeOrder(Ljava/lang/String;)V

    :goto_a3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doPay. order info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    invoke-virtual {v2}, Lcom/baidu/paysdk/datamodel/PayRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/paysdk/ui/WelcomeActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/paysdk/storage/PayDataCache;->isRemotePay()Z

    move-result v1

    if-eqz v1, :cond_de

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_de
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_f8

    check-cast p1, Landroid/app/Activity;

    const v1, 0xa008

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p1, v5, v5}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_43

    :cond_ef
    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->callBackClientCancel()V

    goto/16 :goto_43

    :cond_f4
    invoke-virtual {v2, p2}, Lcom/baidu/paysdk/datamodel/PayRequest;->initOrder(Ljava/lang/String;)V

    goto :goto_a3

    :cond_f8
    instance-of v1, p1, Lcom/baidu/wallet/core/BaseActivity;

    if-eqz v1, :cond_103

    check-cast p1, Lcom/baidu/wallet/core/BaseActivity;

    invoke-virtual {p1, v0}, Lcom/baidu/wallet/core/BaseActivity;->startActivityWithoutAnim(Landroid/content/Intent;)V

    goto/16 :goto_43

    :cond_103
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_43
.end method

.method public static getInstance()Lcom/baidu/paysdk/api/BaiduPay;
    .registers 2

    sget-object v1, Lcom/baidu/paysdk/api/BaiduPay;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/paysdk/api/BaiduPay;->d:Lcom/baidu/paysdk/api/BaiduPay;

    if-nez v0, :cond_e

    new-instance v0, Lcom/baidu/paysdk/api/BaiduPay;

    invoke-direct {v0}, Lcom/baidu/paysdk/api/BaiduPay;-><init>()V

    sput-object v0, Lcom/baidu/paysdk/api/BaiduPay;->d:Lcom/baidu/paysdk/api/BaiduPay;

    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    sget-object v0, Lcom/baidu/paysdk/api/BaiduPay;->d:Lcom/baidu/paysdk/api/BaiduPay;

    return-object v0

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method


# virtual methods
.method public clearBindCallback()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/paysdk/api/BaiduPay;->b:Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;

    return-void
.end method

.method public clearBindCallbackExt()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/paysdk/api/BaiduPay;->c:Lcom/baidu/android/pay/BindBack;

    return-void
.end method

.method public clearPayBack()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/paysdk/api/BaiduPay;->a:Lcom/baidu/android/pay/PayCallBack;

    return-void
.end method

.method public doBindCard(Landroid/content/Context;Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;)V
    .registers 6

    if-nez p2, :cond_3

    :goto_2
    return-void

    :cond_3
    if-nez p1, :cond_b

    const-string v0, ""

    invoke-interface {p2, v0}, Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;->onChangeFailed(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    iput-object p2, p0, Lcom/baidu/paysdk/api/BaiduPay;->b:Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;

    new-instance v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-direct {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/paysdk/ui/BindCardImplActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method public doBindCardExt(Landroid/content/Context;Lcom/baidu/android/pay/BindBack;Ljava/util/Map;)V
    .registers 11

    const/4 v6, 0x0

    iput-object p2, p0, Lcom/baidu/paysdk/api/BaiduPay;->c:Lcom/baidu/android/pay/BindBack;

    invoke-static {p1}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v3

    const/4 v2, 0x0

    if-eqz p3, :cond_4b

    const-string v0, "userType"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "tokenValue"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_30

    :try_start_20
    new-instance v2, Lcom/baidu/wallet/base/datamodel/AccountManager$User;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4, v1}, Lcom/baidu/wallet/base/datamodel/AccountManager$User;-><init>(Lcom/baidu/wallet/base/datamodel/AccountManager;ILjava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_30} :catch_40

    :cond_30
    :goto_30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4f

    :cond_3c
    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->callBackClientCancel()V

    :goto_3f
    return-void

    :catch_40
    move-exception v2

    new-instance v2, Lcom/baidu/wallet/base/datamodel/AccountManager$User;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4, v1}, Lcom/baidu/wallet/base/datamodel/AccountManager$User;-><init>(Lcom/baidu/wallet/base/datamodel/AccountManager;ILjava/lang/String;)V

    goto :goto_30

    :cond_4b
    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->callBackClientCancel()V

    goto :goto_3f

    :cond_4f
    if-eqz v2, :cond_58

    invoke-static {p1, v2}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;Lcom/baidu/wallet/base/datamodel/AccountManager$User;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/wallet/base/datamodel/AccountManager;->sync(Lcom/baidu/wallet/base/datamodel/AccountManager$User;)V

    :cond_58
    new-instance v3, Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-direct {v3}, Lcom/baidu/paysdk/datamodel/PayRequest;-><init>()V

    const-string v0, "pay_from_bind_card"

    invoke-virtual {v3, v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->setPayFrom(Ljava/lang/String;)V

    const-string v0, "sp_no"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/baidu/paysdk/datamodel/PayRequest;->mSpNO:Ljava/lang/String;

    const-string v0, "order_no"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/baidu/paysdk/datamodel/PayRequest;->mOrderNo:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_80
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cf

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x1

    if-le v0, v5, :cond_10d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_80

    :cond_cf
    iput-object v2, v3, Lcom/baidu/paysdk/datamodel/PayRequest;->mParams:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    invoke-virtual {v3}, Lcom/baidu/paysdk/datamodel/PayRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/paysdk/ui/WelcomeActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_f4

    check-cast p1, Landroid/app/Activity;

    const v1, 0xa008

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p1, v6, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_3f

    :cond_f4
    instance-of v1, p1, Lcom/baidu/wallet/core/BaseActivity;

    if-eqz v1, :cond_ff

    check-cast p1, Lcom/baidu/wallet/core/BaseActivity;

    invoke-virtual {p1, v0}, Lcom/baidu/wallet/core/BaseActivity;->startActivityWithoutAnim(Landroid/content/Intent;)V

    goto/16 :goto_3f

    :cond_ff
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3f

    :cond_10d
    move-object v0, v2

    goto :goto_a7
.end method

.method public doPay(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;Ljava/util/Map;)V
    .registers 7

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/storage/PayDataCache;->setIsRemotePay(Z)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/paysdk/api/BaiduPay;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;Ljava/util/Map;)V

    return-void
.end method

.method public doRemotePay(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;Ljava/util/Map;)V
    .registers 7

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/storage/PayDataCache;->setIsRemotePay(Z)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/paysdk/api/BaiduPay;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;Ljava/util/Map;)V

    return-void
.end method

.method public finish()V
    .registers 1

    invoke-virtual {p0}, Lcom/baidu/paysdk/api/BaiduPay;->clearPayBack()V

    return-void
.end method

.method public getBindCallback()Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/api/BaiduPay;->b:Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;

    return-object v0
.end method

.method public getBindCallbackExt()Lcom/baidu/android/pay/BindBack;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/api/BaiduPay;->c:Lcom/baidu/android/pay/BindBack;

    return-object v0
.end method

.method public getPayBack()Lcom/baidu/android/pay/PayCallBack;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/api/BaiduPay;->a:Lcom/baidu/android/pay/PayCallBack;

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/util/Map;Lcom/baidu/android/pay/InitCallBack;)V
    .registers 6

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    if-eqz p3, :cond_9

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Lcom/baidu/android/pay/InitCallBack;->onComplete(Z)V

    :cond_9
    const-string v1, "init"

    const-string v0, "sp"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public jumpWapCashier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "jump_url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
