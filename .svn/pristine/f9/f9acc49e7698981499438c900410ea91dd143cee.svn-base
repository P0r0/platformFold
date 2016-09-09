.class public final Lcom/baidu/wallet/base/controllers/PasswordController;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;
    }
.end annotation


# static fields
.field private static a:Lcom/baidu/wallet/base/controllers/PasswordController;


# instance fields
.field private b:Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;

.field private c:Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;

.field private d:Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;

.field private e:Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;

.field private f:Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;

.field private g:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/base/controllers/PasswordController;->g:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    invoke-static {p0}, Lcom/baidu/wallet/core/utils/Md5Utils;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePcPwd. MD5UCS2. pwd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_23

    invoke-static {p0}, Lcom/baidu/wallet/core/utils/Md5Utils;->toMD5UCS2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1c
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :cond_22
    return-object v0

    :cond_23
    invoke-static {p0}, Lcom/baidu/wallet/core/utils/Md5Utils;->toMD5NoEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c
.end method

.method public static getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;
    .registers 1

    sget-object v0, Lcom/baidu/wallet/base/controllers/PasswordController;->a:Lcom/baidu/wallet/base/controllers/PasswordController;

    if-nez v0, :cond_b

    new-instance v0, Lcom/baidu/wallet/base/controllers/PasswordController;

    invoke-direct {v0}, Lcom/baidu/wallet/base/controllers/PasswordController;-><init>()V

    sput-object v0, Lcom/baidu/wallet/base/controllers/PasswordController;->a:Lcom/baidu/wallet/base/controllers/PasswordController;

    :cond_b
    sget-object v0, Lcom/baidu/wallet/base/controllers/PasswordController;->a:Lcom/baidu/wallet/base/controllers/PasswordController;

    return-object v0
.end method

.method public static getSeed()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x40

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static handlePcPwd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/4 v4, 0x0

    const-string v0, "PasswordController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePcPwd. pwd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", seed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/baidu/wallet/base/controllers/PasswordController;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/baidu/wallet/base/controllers/PasswordController;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PasswordController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePcPwd. pwd1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/baidu/wallet/base/controllers/PasswordController;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PasswordController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePcPwd. pwd2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/android/pay/SafePay;->encryptProxy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static handlePwd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    invoke-static {p0}, Lcom/baidu/wallet/base/controllers/PasswordController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/base/controllers/PasswordController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PasswordController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePwd. pwd1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/base/controllers/PasswordController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PasswordController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePwd. pwd2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/android/pay/SafePay;->encryptProxy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static handlePwdForPassport(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v0

    invoke-static {p0}, Lcom/baidu/wallet/core/utils/Md5Utils;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/wallet/core/utils/Md5Utils;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/android/pay/SafePay;->encryptProxy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static handlePwdSimple(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    invoke-static {p0}, Lcom/baidu/wallet/base/controllers/PasswordController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/base/controllers/PasswordController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkPwd(Landroid/content/Context;Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/wallet/base/controllers/PasswordController;->checkPwd(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;)V

    return-void
.end method

.method public checkPwd(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;)V
    .registers 7

    iput-object p3, p0, Lcom/baidu/wallet/base/controllers/PasswordController;->b:Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;

    new-instance v0, Lcom/baidu/paysdk/datamodel/PwdRequest;

    invoke-direct {v0}, Lcom/baidu/paysdk/datamodel/PwdRequest;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mFrom:I

    const/4 v1, 0x2

    iput v1, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mRequestType:I

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PwdRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/paysdk/ui/PwdCheckActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "check_pwd_form_type_key"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2a
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {p1}, Lcom/baidu/wallet/core/utils/BaiduWalletUtils;->startActivityAnim(Landroid/content/Context;)V

    return-void
.end method

.method public checkPwdFail(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/base/controllers/PasswordController;->b:Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/wallet/base/controllers/PasswordController;->b:Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;

    invoke-interface {v0, p1, p2}, Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;->onFail(ILjava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/wallet/base/controllers/PasswordController;->b:Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;

    :cond_c
    return-void
.end method

.method public checkPwdSucceed(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/controllers/PasswordController;->b:Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/wallet/base/controllers/PasswordController;->b:Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;

    invoke-interface {v0, p1}, Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;->onSucceed(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/wallet/base/controllers/PasswordController;->b:Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;

    :cond_c
    return-void
.end method

.method public editPwd(Landroid/content/Context;Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;)V
    .registers 6

    iput-object p2, p0, Lcom/baidu/wallet/base/controllers/PasswordController;->d:Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;

    new-instance v0, Lcom/baidu/paysdk/datamodel/PwdRequest;

    invoke-direct {v0}, Lcom/baidu/paysdk/datamodel/PwdRequest;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mFrom:I

    const/4 v1, 0x1

    iput v1, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mRequestType:I

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PwdRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/paysdk/ui/PwdCheckActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public editPwdFail(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/base/controllers/PasswordController;->d:Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/wallet/base/controllers/PasswordController;->d:Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;

    invoke-interface {v0, p1, p2}, Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;->onFail(ILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method public editPwdSucceed(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/controllers/PasswordController;->d:Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/wallet/base/controllers/PasswordController;->d:Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;

    invoke-interface {v0, p1}, Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;->onSucceed(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/wallet/base/controllers/PasswordController;->d:Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;

    :cond_c
    return-void
.end method

.method public fogetPasswd(Landroid/content/Context;Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;)V
    .registers 7

    const-string v0, "forgetPWD"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_a

    :goto_9
    return-void

    :cond_a
    if-nez p1, :cond_13

    const/4 v0, -0x1

    const-string v1, ""

    invoke-interface {p2, v0, v1}, Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;->onFail(ILjava/lang/String;)V

    goto :goto_9

    :cond_13
    iput-object p2, p0, Lcom/baidu/wallet/base/controllers/PasswordController;->e:Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;

    new-instance v1, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-direct {v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;-><init>()V

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasBondCards()Z

    move-result v0

    if-eqz v0, :cond_42

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/baidu/paysdk/ui/SelectBindCardActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x4

    iput v2, v1, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    :goto_2e
    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v2

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    :cond_42
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/baidu/paysdk/ui/BindCardImplActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x3

    iput v2, v1, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    goto :goto_2e
.end method

.method public forgetPasswdSucceed(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/controllers/PasswordController;->e:Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/wallet/base/controllers/PasswordController;->e:Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;

    invoke-interface {v0, p1}, Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;->onSucceed(Ljava/lang/String;)V

    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/wallet/base/controllers/PasswordController;->e:Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;

    return-void
.end method

.method public getMobilePassword(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/baidu/wallet/base/controllers/PasswordController;->g:Ljava/util/Map;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/baidu/wallet/base/controllers/PasswordController;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/baidu/wallet/base/controllers/PasswordController;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/android/pay/SafePay;->localDecryptProxy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_2c
    move-object v0, v1

    goto :goto_8
.end method

.method public removeMobilePassWord()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/controllers/PasswordController;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public setMobilePassword(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/baidu/wallet/base/controllers/PasswordController;->g:Ljava/util/Map;

    invoke-static {p1}, Lcom/baidu/paysdk/storage/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/baidu/android/pay/SafePay;->localEncryptProxy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    return-void
.end method

.method public setPassByUserFail(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/controllers/PasswordController;->f:Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/wallet/base/controllers/PasswordController;->f:Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;

    invoke-interface {v0, p1}, Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;->onChangeFailed(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public setPassByUserSucceed(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/controllers/PasswordController;->f:Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/wallet/base/controllers/PasswordController;->f:Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;

    invoke-interface {v0}, Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;->onChangeSucceed()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/wallet/base/controllers/PasswordController;->f:Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;

    :cond_c
    return-void
.end method

.method public setPasswdByUser(Landroid/content/Context;Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;)V
    .registers 6

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasBondCards()Z

    move-result v0

    if-eqz v0, :cond_35

    iput-object p2, p0, Lcom/baidu/wallet/base/controllers/PasswordController;->f:Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;

    new-instance v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-direct {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->needSetPwd:Z

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    const/4 v1, 0x5

    iput v1, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/paysdk/ui/SelectBindCardActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_35
    invoke-static {}, Lcom/baidu/paysdk/api/BaiduPay;->getInstance()Lcom/baidu/paysdk/api/BaiduPay;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/paysdk/api/BaiduPay;->doBindCard(Landroid/content/Context;Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;)V

    goto :goto_2
.end method

.method public setPwd(Landroid/content/Context;ZLcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;)V
    .registers 7

    if-eqz p3, :cond_4

    iput-object p3, p0, Lcom/baidu/wallet/base/controllers/PasswordController;->c:Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;

    :cond_4
    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pwd_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    if-eqz p2, :cond_33

    if-eqz v0, :cond_33

    instance-of v1, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;

    if-eqz v1, :cond_33

    check-cast v0, Lcom/baidu/paysdk/datamodel/PwdRequest;

    :goto_18
    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PwdRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_33
    new-instance v0, Lcom/baidu/paysdk/datamodel/PwdRequest;

    invoke-direct {v0}, Lcom/baidu/paysdk/datamodel/PwdRequest;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mFrom:I

    goto :goto_18
.end method

.method public setPwdFail(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/base/controllers/PasswordController;->c:Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/wallet/base/controllers/PasswordController;->c:Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;

    invoke-interface {v0, p1, p2}, Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;->onFail(ILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method public setPwdSucceed(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/controllers/PasswordController;->c:Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/wallet/base/controllers/PasswordController;->c:Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;

    invoke-interface {v0, p1}, Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;->onSucceed(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/wallet/base/controllers/PasswordController;->c:Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;

    :cond_c
    return-void
.end method
