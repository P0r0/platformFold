.class public final Lcom/baidu/wallet/api/BaiduWallet;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/wallet/api/BaiduWallet$IHasBalanceCallback;
    }
.end annotation


# static fields
.field public static final SERVICE_ID_BALANCE:J = 0x20L

.field public static final SERVICE_ID_COUPON:J = 0x40L

.field public static final SERVICE_ID_MY_BANK:J = 0x4L

.field public static final SERVICE_ID_O2OPARSE:J = 0x80L

.field public static final SERVICE_ID_PHONE_CHARGE:J = 0x1L

.field public static final SERVICE_ID_RECORD:J = 0x10L

.field public static final SERVICE_ID_SECURITY_CENETR:J = 0x8L

.field public static final SERVICE_ID_SUPER_TRANSFER:J = 0x2L

.field public static final SERVICE_ID_WALLET_CASHBACK:J = 0x2000L

.field public static final SERVICE_ID_WALLET_NFC_CHARGE:J = 0x400L

.field public static final SERVICE_ID_WALLET_O2OSCANNER:J = 0x800L

.field public static final SERVICE_ID_WALLET_SCANCODE:J = 0x200L

.field public static final SERVICE_ID_WALLET_SCORE:J = 0x100L

.field public static final SERVICE_ID_WALLET_TRAFFIC:J = 0x1000L

.field public static final WALLET_REQUEST_CODE_FEEDBACK:I = 0x2

.field public static final WALLET_REQUEST_CODE_O2OSCANNER:I = 0x1

.field private static b:Lcom/baidu/wallet/api/BaiduWallet;


# instance fields
.field private a:Lcom/baidu/wallet/api/IWalletListener;

.field private c:Lcom/baidu/paysdk/api/BaiduPay;

.field private d:Lcom/baidu/wallet/a;

.field private e:Lcom/baidu/sapi2/utils/enums/Domain;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/wallet/api/BaiduWallet;Lcom/baidu/paysdk/api/BaiduPay;)Lcom/baidu/paysdk/api/BaiduPay;
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/api/BaiduWallet;->c:Lcom/baidu/paysdk/api/BaiduPay;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/wallet/api/BaiduWallet;Lcom/baidu/wallet/a;)Lcom/baidu/wallet/a;
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/wallet/api/BaiduWallet;)Lcom/baidu/wallet/api/IWalletListener;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 8

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/baidu/wallet/api/BaiduWallet;->e:Lcom/baidu/sapi2/utils/enums/Domain;

    if-nez v1, :cond_63

    sget-object v1, Lcom/baidu/sapi2/utils/enums/Domain;->DOMAIN_ONLINE:Lcom/baidu/sapi2/utils/enums/Domain;

    iput-object v1, p0, Lcom/baidu/wallet/api/BaiduWallet;->e:Lcom/baidu/sapi2/utils/enums/Domain;

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/baidu/wallet/core/DebugConfig;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/core/DebugConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/wallet/core/DebugConfig;->getEnvironment()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QA"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_64

    sget-object v1, Lcom/baidu/sapi2/utils/enums/Domain;->DOMAIN_QA:Lcom/baidu/sapi2/utils/enums/Domain;

    iput-object v1, p0, Lcom/baidu/wallet/api/BaiduWallet;->e:Lcom/baidu/sapi2/utils/enums/Domain;

    :goto_1e
    new-instance v1, Lcom/baidu/sapi2/SapiConfiguration$Builder;

    invoke-direct {v1, p1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "bdwalletsdk"

    const-string v3, "1"

    const-string v4, "3s9y80v8ipz8huoh9k06hurn2lia5eez"

    invoke-virtual {v1, v2, v3, v4}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->setProductLineInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/sapi2/SapiConfiguration$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/wallet/api/BaiduWallet;->e:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v1, v2}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->setRuntimeEnvironment(Lcom/baidu/sapi2/utils/enums/Domain;)Lcom/baidu/sapi2/SapiConfiguration$Builder;

    move-result-object v1

    sget-object v2, Lcom/baidu/sapi2/utils/enums/BindType;->IMPLICIT:Lcom/baidu/sapi2/utils/enums/BindType;

    invoke-virtual {v1, v2}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->setSocialBindType(Lcom/baidu/sapi2/utils/enums/BindType;)Lcom/baidu/sapi2/SapiConfiguration$Builder;

    move-result-object v1

    sget-object v2, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->DISABLED:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    invoke-virtual {v1, v2}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->initialShareStrategy(Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;)Lcom/baidu/sapi2/SapiConfiguration$Builder;

    move-result-object v1

    new-instance v2, Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;

    sget-object v3, Lcom/baidu/sapi2/utils/enums/Switch;->ON:Lcom/baidu/sapi2/utils/enums/Switch;

    sget-object v4, Lcom/baidu/sapi2/utils/enums/Switch;->ON:Lcom/baidu/sapi2/utils/enums/Switch;

    sget-object v5, Lcom/baidu/sapi2/utils/enums/Switch;->ON:Lcom/baidu/sapi2/utils/enums/Switch;

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;-><init>(Lcom/baidu/sapi2/utils/enums/Switch;Lcom/baidu/sapi2/utils/enums/Switch;Lcom/baidu/sapi2/utils/enums/Switch;)V

    invoke-virtual {v1, v2}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->smsLoginConfig(Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;)Lcom/baidu/sapi2/SapiConfiguration$Builder;

    move-result-object v1

    sget-object v2, Lcom/baidu/sapi2/utils/enums/Switch;->ON:Lcom/baidu/sapi2/utils/enums/Switch;

    invoke-virtual {v1, v2}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->configurableViewLayout(Lcom/baidu/sapi2/utils/enums/Switch;)Lcom/baidu/sapi2/SapiConfiguration$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->debug(Z)Lcom/baidu/sapi2/SapiConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->build()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v0

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/SapiAccountManager;->init(Lcom/baidu/sapi2/SapiConfiguration;)V

    :cond_63
    return-void

    :cond_64
    const-string v3, "RD"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_71

    sget-object v1, Lcom/baidu/sapi2/utils/enums/Domain;->DOMAIN_RD:Lcom/baidu/sapi2/utils/enums/Domain;

    iput-object v1, p0, Lcom/baidu/wallet/api/BaiduWallet;->e:Lcom/baidu/sapi2/utils/enums/Domain;

    goto :goto_1e

    :cond_71
    move v0, v1

    goto :goto_1e
.end method

.method static synthetic a(Lcom/baidu/wallet/api/BaiduWallet;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->c(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/wallet/api/BaiduWallet;)Lcom/baidu/paysdk/api/BaiduPay;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->c:Lcom/baidu/paysdk/api/BaiduPay;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .registers 2

    invoke-static {p1}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->initMTJForOnce(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic c(Lcom/baidu/wallet/api/BaiduWallet;)Lcom/baidu/wallet/a;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    return-object v0
.end method

.method private c(Landroid/content/Context;)V
    .registers 5

    invoke-virtual {p0}, Lcom/baidu/wallet/api/BaiduWallet;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p1}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/wallet/api/BaiduWallet;->getLoginType()I

    move-result v1

    invoke-virtual {p0}, Lcom/baidu/wallet/api/BaiduWallet;->getLoginToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/base/datamodel/AccountManager;->saveBdussOrToken(ILjava/lang/String;)V

    :goto_15
    return-void

    :cond_16
    invoke-static {p1}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/AccountManager;->logout()V

    goto :goto_15
.end method

.method public static getInstance()Lcom/baidu/wallet/api/BaiduWallet;
    .registers 1

    sget-object v0, Lcom/baidu/wallet/api/BaiduWallet;->b:Lcom/baidu/wallet/api/BaiduWallet;

    if-nez v0, :cond_b

    new-instance v0, Lcom/baidu/wallet/api/BaiduWallet;

    invoke-direct {v0}, Lcom/baidu/wallet/api/BaiduWallet;-><init>()V

    sput-object v0, Lcom/baidu/wallet/api/BaiduWallet;->b:Lcom/baidu/wallet/api/BaiduWallet;

    :cond_b
    sget-object v0, Lcom/baidu/wallet/api/BaiduWallet;->b:Lcom/baidu/wallet/api/BaiduWallet;

    return-object v0
.end method


# virtual methods
.method public accessWalletBalance(Landroid/content/Context;)V
    .registers 6

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->c(Landroid/content/Context;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/wallet/core/beans/BeanConstants;->mHasHomePage:Z

    invoke-static {}, Lcom/baidu/paysdk/PrivacyProtectionCheck;->getInstance()Lcom/baidu/paysdk/PrivacyProtectionCheck;

    move-result-object v0

    const-wide/16 v2, 0x20

    invoke-virtual {v0, p1, v2, v3}, Lcom/baidu/paysdk/PrivacyProtectionCheck;->checkPwdActivity(Landroid/content/Context;J)V

    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->b(Landroid/content/Context;)V

    goto :goto_2
.end method

.method public accessWalletCoupon(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/baidu/wallet/a;->a()Lcom/baidu/wallet/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    :cond_a
    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/baidu/wallet/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->b(Landroid/content/Context;)V

    return-void
.end method

.method public accessWalletService(Landroid/content/Context;JLjava/lang/String;)V
    .registers 7

    if-eqz p1, :cond_8

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    if-nez v0, :cond_13

    invoke-static {}, Lcom/baidu/wallet/a;->a()Lcom/baidu/wallet/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    :cond_13
    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/wallet/a;->a(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_8
.end method

.method public checkCashBack(Landroid/content/Context;)V
    .registers 6

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->c(Landroid/content/Context;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/wallet/core/beans/BeanConstants;->mHasHomePage:Z

    invoke-static {}, Lcom/baidu/paysdk/PrivacyProtectionCheck;->getInstance()Lcom/baidu/paysdk/PrivacyProtectionCheck;

    move-result-object v0

    const-wide/16 v2, 0x2000

    invoke-virtual {v0, p1, v2, v3}, Lcom/baidu/paysdk/PrivacyProtectionCheck;->checkPwdActivity(Landroid/content/Context;J)V

    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->b(Landroid/content/Context;)V

    goto :goto_2
.end method

.method public checkMyBankInfo(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/baidu/wallet/a;->a()Lcom/baidu/wallet/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    :cond_a
    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/a;->f(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->b(Landroid/content/Context;)V

    return-void
.end method

.method public checkSecurityCenter(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/baidu/wallet/a;->a()Lcom/baidu/wallet/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    :cond_a
    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->c(Landroid/content/Context;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/wallet/core/beans/BeanConstants;->mHasHomePage:Z

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/a;->g(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->b(Landroid/content/Context;)V

    return-void
.end method

.method public checkTransRecords(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/baidu/wallet/api/BaiduWallet;->checkTransRecords(Landroid/content/Context;Z)V

    return-void
.end method

.method public checkTransRecords(Landroid/content/Context;Z)V
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    invoke-interface {v0}, Lcom/baidu/wallet/api/IWalletListener;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    if-nez v0, :cond_17

    invoke-static {}, Lcom/baidu/wallet/a;->a()Lcom/baidu/wallet/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    :cond_17
    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->c(Landroid/content/Context;)V

    sput-boolean v1, Lcom/baidu/wallet/core/beans/BeanConstants;->mHasHomePage:Z

    if-eqz p2, :cond_2e

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/wallet/core/beans/BeanConstants;->mTransRecordChcek:Z

    invoke-static {}, Lcom/baidu/paysdk/PrivacyProtectionCheck;->getInstance()Lcom/baidu/paysdk/PrivacyProtectionCheck;

    move-result-object v0

    const-wide/16 v2, 0x10

    invoke-virtual {v0, p1, v2, v3}, Lcom/baidu/paysdk/PrivacyProtectionCheck;->checkPwdActivity(Landroid/content/Context;J)V

    :goto_2a
    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->b(Landroid/content/Context;)V

    return-void

    :cond_2e
    sput-boolean v1, Lcom/baidu/wallet/core/beans/BeanConstants;->mTransRecordChcek:Z

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/a;->h(Landroid/content/Context;)V

    goto :goto_2a

    :cond_36
    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    new-instance v1, Lcom/baidu/wallet/api/d;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/wallet/api/d;-><init>(Lcom/baidu/wallet/api/BaiduWallet;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lcom/baidu/wallet/api/IWalletListener;->login(Lcom/baidu/wallet/api/ILoginBackListener;)V

    goto :goto_2a

    :cond_45
    const-string v0, "wallet_base_please_login"

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_2a
.end method

.method public doBankcardDetection(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/baidu/wallet/a;->a()Lcom/baidu/wallet/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    :cond_a
    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/a;->i(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->b(Landroid/content/Context;)V

    return-void
.end method

.method public doBind(Landroid/content/Context;Lcom/baidu/android/pay/BindBack;Ljava/util/Map;)V
    .registers 6

    if-eqz p1, :cond_8

    if-eqz p3, :cond_8

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/wallet/api/BaiduWallet;->doInnerBind(Landroid/content/Context;Lcom/baidu/android/pay/BindBack;Ljava/util/Map;)V

    :goto_7
    return-void

    :cond_8
    const/16 v0, -0xa

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/baidu/android/pay/BindBack;->onBindResult(ILjava/lang/String;)V

    goto :goto_7
.end method

.method public doBusCardChargeNFC(Landroid/content/Context;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-gt v0, v1, :cond_10

    const-string v0, "wallet_base_low_sdkversion_tip"

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    if-nez v0, :cond_1a

    invoke-static {}, Lcom/baidu/wallet/a;->a()Lcom/baidu/wallet/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    :cond_1a
    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/a;->j(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->b(Landroid/content/Context;)V

    goto :goto_f
.end method

.method public doCheckNew(Landroid/content/Context;Lcom/baidu/android/pay/CheckNewListener;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/baidu/wallet/a;->a()Lcom/baidu/wallet/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    :cond_a
    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/wallet/a;->a(Landroid/content/Context;Lcom/baidu/android/pay/CheckNewListener;)V

    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->b(Landroid/content/Context;)V

    return-void
.end method

.method public doInnerBind(Landroid/content/Context;Lcom/baidu/android/pay/BindBack;Ljava/util/Map;)V
    .registers 7

    invoke-static {}, Lcom/baidu/wallet/base/stastics/ABTestUtil;->getInstance()Lcom/baidu/wallet/base/stastics/ABTestUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/base/stastics/ABTestUtil;->getABTest(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/api/BaiduWallet;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, "userType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/wallet/api/BaiduWallet;->getLoginType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tokenValue"

    invoke-virtual {p0}, Lcom/baidu/wallet/api/BaiduWallet;->getLoginToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/baidu/paysdk/api/BaiduPay;->getInstance()Lcom/baidu/paysdk/api/BaiduPay;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/paysdk/api/BaiduPay;->doBindCardExt(Landroid/content/Context;Lcom/baidu/android/pay/BindBack;Ljava/util/Map;)V

    :goto_3d
    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->b(Landroid/content/Context;)V

    return-void

    :cond_41
    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    new-instance v1, Lcom/baidu/wallet/api/b;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/baidu/wallet/api/b;-><init>(Lcom/baidu/wallet/api/BaiduWallet;Ljava/util/Map;Landroid/content/Context;Lcom/baidu/android/pay/BindBack;)V

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/api/BaiduWallet;->login(Lcom/baidu/wallet/api/ILoginBackListener;)V

    goto :goto_3d
.end method

.method public doInnerPay(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;Ljava/util/Map;)V
    .registers 12

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/api/BaiduWallet;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->c:Lcom/baidu/paysdk/api/BaiduPay;

    if-nez v0, :cond_14

    invoke-static {}, Lcom/baidu/paysdk/api/BaiduPay;->getInstance()Lcom/baidu/paysdk/api/BaiduPay;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->c:Lcom/baidu/paysdk/api/BaiduPay;

    :cond_14
    const-string v0, "userType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/wallet/api/BaiduWallet;->getLoginType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tokenValue"

    invoke-virtual {p0}, Lcom/baidu/wallet/api/BaiduWallet;->getLoginToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->isRemotePay()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->c:Lcom/baidu/paysdk/api/BaiduPay;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/paysdk/api/BaiduPay;->doRemotePay(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;Ljava/util/Map;)V

    :goto_48
    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->b(Landroid/content/Context;)V

    return-void

    :cond_4c
    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->c:Lcom/baidu/paysdk/api/BaiduPay;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/paysdk/api/BaiduPay;->doPay(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;Ljava/util/Map;)V

    goto :goto_48

    :cond_52
    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v6

    new-instance v0, Lcom/baidu/wallet/api/c;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/wallet/api/c;-><init>(Lcom/baidu/wallet/api/BaiduWallet;Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;)V

    invoke-virtual {v6, v0}, Lcom/baidu/wallet/api/BaiduWallet;->login(Lcom/baidu/wallet/api/ILoginBackListener;)V

    goto :goto_48
.end method

.method public doPay(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;)V
    .registers 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "userType"

    invoke-virtual {p0}, Lcom/baidu/wallet/api/BaiduWallet;->getLoginType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tokenValue"

    invoke-virtual {p0}, Lcom/baidu/wallet/api/BaiduWallet;->getLoginToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/baidu/wallet/api/BaiduWallet;->doPay(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;Ljava/util/Map;)V

    return-void
.end method

.method public doPay(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;Ljava/util/Map;)V
    .registers 7

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/storage/PayDataCache;->setIsRemotePay(Z)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/baidu/wallet/api/BaiduWallet;->doInnerPay(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;Ljava/util/Map;)V

    return-void
.end method

.method public doPreparePayForLBS(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;Ljava/util/Map;Lcom/baidu/paysdk/datamodel/LBSDirectPayResponse;)V
    .registers 8

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/storage/PayDataCache;->setIsRemotePay(Z)V

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/baidu/paysdk/storage/PayDataCache;->setLBSDirectPayResponse(Lcom/baidu/paysdk/datamodel/LBSDirectPayResponse;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/baidu/wallet/api/BaiduWallet;->doInnerPay(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;Ljava/util/Map;)V

    return-void
.end method

.method public doRemotePay(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;Ljava/util/Map;)V
    .registers 8

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/api/BaiduWallet;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_6e

    if-nez p4, :cond_11

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    :cond_11
    const-string v0, "userType"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_21

    const-string v0, "tokenValue"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6e

    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loginType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/wallet/api/BaiduWallet;->getLoginType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/wallet/api/BaiduWallet;->getLoginToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;)V

    const-string v0, "userType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/wallet/api/BaiduWallet;->getLoginType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tokenValue"

    invoke-virtual {p0}, Lcom/baidu/wallet/api/BaiduWallet;->getLoginToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6e
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/storage/PayDataCache;->setIsRemotePay(Z)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/baidu/wallet/api/BaiduWallet;->doInnerPay(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;Ljava/util/Map;)V

    return-void
.end method

.method public doWalletPhoneCharge(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/baidu/wallet/a;->a()Lcom/baidu/wallet/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    :cond_a
    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/a;->d(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->b(Landroid/content/Context;)V

    return-void
.end method

.method public doWalletScanCode(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/baidu/wallet/a;->a()Lcom/baidu/wallet/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    :cond_a
    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/a;->c(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->b(Landroid/content/Context;)V

    return-void
.end method

.method public doWalletSuperTransfer(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/baidu/wallet/a;->a()Lcom/baidu/wallet/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    :cond_a
    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/a;->b(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->b(Landroid/content/Context;)V

    return-void
.end method

.method public getBindCardAmount(Landroid/content/Context;Lcom/baidu/android/pay/UserInfoQueryListener;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/baidu/wallet/a;->a()Lcom/baidu/wallet/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    :cond_a
    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/wallet/a;->b(Landroid/content/Context;Lcom/baidu/android/pay/UserInfoQueryListener;)V

    return-void
.end method

.method public getLoginData()Ljava/util/Map;
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_b
    const-string v2, "getLoginData"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_13} :catch_18

    move-result-object v0

    if-nez v0, :cond_1b

    move-object v0, v1

    :goto_17
    return-object v0

    :catch_18
    move-exception v0

    move-object v0, v1

    goto :goto_17

    :cond_1b
    :try_start_1b
    iget-object v2, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_23} :catch_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_1b .. :try_end_23} :catch_2b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1b .. :try_end_23} :catch_2e

    move-result-object v0

    :goto_24
    if-nez v0, :cond_31

    move-object v0, v1

    goto :goto_17

    :catch_28
    move-exception v0

    move-object v0, v1

    goto :goto_24

    :catch_2b
    move-exception v0

    move-object v0, v1

    goto :goto_24

    :catch_2e
    move-exception v0

    move-object v0, v1

    goto :goto_24

    :cond_31
    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_38

    check-cast v0, Ljava/util/Map;

    goto :goto_17

    :cond_38
    move-object v0, v1

    goto :goto_17
.end method

.method public getLoginToken()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/api/BaiduWallet;->getLoginData()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1d

    const-string v1, "pass_bduss"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    :goto_1c
    return-object v0

    :cond_1d
    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    invoke-interface {v0}, Lcom/baidu/wallet/api/IWalletListener;->getLoginToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_24
    const-string v0, ""

    goto :goto_1c
.end method

.method public getLoginType()I
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    if-eqz v0, :cond_29

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/api/BaiduWallet;->getLoginData()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_22

    const-string v1, "loginType"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    :try_start_1c
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_21

    move-result v0

    :goto_20
    return v0

    :catch_21
    move-exception v0

    :cond_22
    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    invoke-interface {v0}, Lcom/baidu/wallet/api/IWalletListener;->getLoginType()I

    move-result v0

    goto :goto_20

    :cond_29
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public getPassUid()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/wallet/api/BaiduWallet;->getLoginData()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_13

    const-string v0, "pass_uid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_13
    return-object v0
.end method

.method public getPassUserName()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/wallet/api/BaiduWallet;->getLoginData()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_13

    const-string v0, "pass_user_name"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_13
    return-object v0
.end method

.method public getWaitingRecvCount(Landroid/content/Context;Lcom/baidu/android/pay/UserInfoQueryListener;)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->c(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/wallet/a;->a()Lcom/baidu/wallet/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/wallet/a;->a(Landroid/content/Context;Lcom/baidu/android/pay/UserInfoQueryListener;)V

    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->b(Landroid/content/Context;)V

    goto :goto_2
.end method

.method public getWalletServiceList(Landroid/content/Context;)J
    .registers 4

    const-wide/16 v0, 0xfff

    return-wide v0
.end method

.method public gotoWalletService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    :try_start_6
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/baidu/wallet/api/BaiduWallet;->accessWalletService(Landroid/content/Context;JLjava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_e

    :cond_d
    :goto_d
    return-void

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method public handleWalletRequestForFeedBack()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    instance-of v0, v0, Lcom/baidu/wallet/api/IWalletHomeListener;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    check-cast v0, Lcom/baidu/wallet/api/IWalletHomeListener;

    invoke-interface {v0}, Lcom/baidu/wallet/api/IWalletHomeListener;->handleWalletRequestForFeedBack()V

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public handleWalletRequestForParseO2OBarcode()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    instance-of v0, v0, Lcom/baidu/wallet/api/IWalletHomeListener;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    check-cast v0, Lcom/baidu/wallet/api/IWalletHomeListener;

    invoke-interface {v0}, Lcom/baidu/wallet/api/IWalletHomeListener;->handleWalletRequestForParseO2OBarcode()V

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public handlerWalletError(I)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    invoke-interface {v0, p1}, Lcom/baidu/wallet/api/IWalletListener;->handlerWalletError(I)V

    :cond_9
    return-void
.end method

.method public hasNewBalance(Landroid/content/Context;Lcom/baidu/wallet/api/BaiduWallet$IHasBalanceCallback;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/baidu/wallet/a;->a()Lcom/baidu/wallet/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    :cond_a
    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/wallet/a;->a(Landroid/content/Context;Lcom/baidu/wallet/api/BaiduWallet$IHasBalanceCallback;)V

    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->b(Landroid/content/Context;)V

    return-void
.end method

.method public init(Landroid/content/Context;Ljava/util/Map;Lcom/baidu/android/pay/InitCallBack;)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->c:Lcom/baidu/paysdk/api/BaiduPay;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/baidu/paysdk/api/BaiduPay;->getInstance()Lcom/baidu/paysdk/api/BaiduPay;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->c:Lcom/baidu/paysdk/api/BaiduPay;

    :cond_a
    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->c:Lcom/baidu/paysdk/api/BaiduPay;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/paysdk/api/BaiduPay;->init(Landroid/content/Context;Ljava/util/Map;Lcom/baidu/android/pay/InitCallBack;)V

    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->b(Landroid/content/Context;)V

    return-void
.end method

.method public initWallet(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/baidu/wallet/passport/LoginImpl;

    invoke-direct {v0, p1}, Lcom/baidu/wallet/passport/LoginImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->initWallet(Lcom/baidu/wallet/api/IWalletListener;Landroid/content/Context;)V

    return-void
.end method

.method public initWallet(Lcom/baidu/wallet/api/IWalletListener;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    new-instance v0, Lcom/baidu/wallet/api/a;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/api/a;-><init>(Lcom/baidu/wallet/api/BaiduWallet;)V

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/PassUtil;->registerPassNormalize(Lcom/baidu/wallet/core/utils/PassUtil$IPassNormalize;)V

    invoke-static {p2}, Lcom/baidu/wallet/core/i;->a(Landroid/content/Context;)V

    return-void
.end method

.method public isInnerPassLogin()Z
    .registers 3

    const-string v0, "simplify"

    sget-object v1, Lcom/baidu/wallet/core/beans/BeanConstants;->CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    instance-of v0, v0, Lcom/baidu/wallet/passport/LoginImpl;

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isLogin()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    invoke-interface {v0}, Lcom/baidu/wallet/api/IWalletListener;->isLogin()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public login(Lcom/baidu/wallet/api/ILoginBackListener;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    invoke-interface {v0, p1}, Lcom/baidu/wallet/api/IWalletListener;->login(Lcom/baidu/wallet/api/ILoginBackListener;)V

    :goto_9
    return-void

    :cond_a
    const/4 v0, -0x1

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/baidu/wallet/api/ILoginBackListener;->onFail(ILjava/lang/String;)V

    goto :goto_9
.end method

.method public onLoginChange(Landroid/content/Context;Ljava/util/Map;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    invoke-interface {v0, p1, p2}, Lcom/baidu/wallet/api/IWalletListener;->onLoginChanaged(Landroid/content/Context;Ljava/util/Map;)V

    :cond_9
    return-void
.end method

.method public parseO2OBarcode(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    :try_start_6
    const-string v0, "utf-8"

    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_b} :catch_29

    move-result-object p2

    :goto_c
    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->c(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://m.baidu.com/lightapp/3345414?page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/wallet/api/BaiduWallet;->startPage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_25
    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->b(Landroid/content/Context;)V

    return-void

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_c

    :cond_2e
    const-string v0, "bd_wallet_o2o_error"

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_25
.end method

.method public setDebugOn(Landroid/content/Context;Z)V
    .registers 4

    if-eqz p2, :cond_a

    invoke-static {p1}, Lcom/baidu/wallet/core/DebugConfig;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/core/DebugConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/DebugConfig;->changeQA()V

    :goto_9
    return-void

    :cond_a
    invoke-static {p1}, Lcom/baidu/wallet/core/DebugConfig;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/core/DebugConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/DebugConfig;->changeOnline()V

    goto :goto_9
.end method

.method public setPassDomain(Lcom/baidu/sapi2/utils/enums/Domain;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/api/BaiduWallet;->e:Lcom/baidu/sapi2/utils/enums/Domain;

    return-void
.end method

.method public startBankDetection(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Lcom/baidu/wallet/a;->a()Lcom/baidu/wallet/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/a;->i(Landroid/content/Context;)V

    return-void
.end method

.method public startPage(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    invoke-interface {v0, p2}, Lcom/baidu/wallet/api/IWalletListener;->startPage(Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    const-string v0, "bd_wallet_load_fail"

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_9
.end method

.method public startWallet(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    if-nez v1, :cond_6

    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    if-nez v1, :cond_10

    invoke-static {}, Lcom/baidu/wallet/a;->a()Lcom/baidu/wallet/a;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    :cond_10
    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->c(Landroid/content/Context;)V

    sput-boolean v0, Lcom/baidu/wallet/core/beans/BeanConstants;->mHasHomePage:Z

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/a;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->b(Landroid/content/Context;)V

    const/4 v0, 0x1

    goto :goto_5
.end method
