.class public Lcom/bbk/payment/payment/VivoPaymentManager;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/bbk/payment/payment/VivoPaymentManager;

.field private static c:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;


# instance fields
.field private a:Landroid/content/Context;

.field private d:Ljava/util/ArrayList;

.field private e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbk/payment/payment/VivoPaymentManager;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbk/payment/payment/VivoPaymentManager;->e:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/bbk/payment/payment/VivoPaymentManager;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a()Lcom/bbkmobile/iqoo/payment/model/OrderInfo;
    .registers 1

    sget-object v0, Lcom/bbk/payment/payment/VivoPaymentManager;->c:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 10

    const/4 v1, 0x0

    const-string v2, "mPaymentType"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    invoke-direct {v3}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;-><init>()V

    invoke-static {p0, p1, v3}, Lcom/bbk/payment/payment/VivoPaymentManager;->detectPayConditions(Landroid/content/Context;Landroid/os/Bundle;Lcom/bbkmobile/iqoo/payment/model/OrderInfo;)Z

    move-result v4

    const-string v5, "VivoPaymentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "startSDKSinglePaymentDirectly, result = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_27

    :cond_26
    :goto_26
    return-void

    :cond_27
    sput-object v3, Lcom/bbk/payment/payment/VivoPaymentManager;->c:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    const/4 v4, 0x1

    if-ne v2, v4, :cond_56

    new-instance v2, Lcom/bbkmobile/iqoo/payment/payment/PaymentGW;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "bbk_weixin"

    invoke-static {p0, v5}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lcom/bbkmobile/iqoo/payment/payment/PaymentGW;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_42
    if-eqz v2, :cond_26

    :try_start_44
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    new-instance v4, Lcom/bbk/payment/payment/b;

    invoke-direct {v4, p0}, Lcom/bbk/payment/payment/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1, v4, v3}, Lcom/bbkmobile/iqoo/payment/payment/PaymentGW;->payment(Landroid/app/Activity;Landroid/os/Handler;Lcom/bbkmobile/iqoo/payment/model/OrderInfo;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_50} :catch_51

    goto :goto_26

    :catch_51
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26

    :cond_56
    const/4 v4, 0x2

    if-ne v2, v4, :cond_70

    new-instance v2, Lcom/bbkmobile/iqoo/payment/payment/PaymentGW;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "bbk_alipay"

    invoke-static {p0, v5}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lcom/bbkmobile/iqoo/payment/payment/PaymentGW;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_42

    :cond_70
    move-object v2, v1

    goto :goto_42
.end method

.method public static detectPayConditions(Landroid/content/Context;Landroid/os/Bundle;Lcom/bbkmobile/iqoo/payment/model/OrderInfo;)Z
    .registers 9

    const/4 v1, 0x0

    if-eqz p1, :cond_9f

    const-string v0, "package"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8f

    invoke-virtual {p2, v0}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->setPackageN(Ljava/lang/String;)V

    const-string v0, "logOnOff"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->logOnOff:Z

    const-string v0, "transNo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_91

    invoke-virtual {p2, v0}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->setTransNo(Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_93

    invoke-virtual {p2, v0}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->setSignature(Ljava/lang/String;)V

    const-string v0, "useMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_95

    invoke-virtual {p2, v0}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->setUseMode(Ljava/lang/String;)V

    const-string v0, "productName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_97

    invoke-virtual {p2, v0}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->setProductName(Ljava/lang/String;)V

    const-string v0, "productDes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_99

    invoke-virtual {p2, v0}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->setProductDes(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/bbk/payment/payment/VivoPaymentManager;->getShprefsUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_75

    const-string v0, "userId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_75
    invoke-static {v0}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9b

    invoke-virtual {p2, v0}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->setUserId(Ljava/lang/String;)V

    const-string v0, "price"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_9d

    invoke-virtual {p2, v2, v3}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->setPrice(D)V

    const/4 v0, 0x1

    :goto_8e
    return v0

    :cond_8f
    move v0, v1

    goto :goto_8e

    :cond_91
    move v0, v1

    goto :goto_8e

    :cond_93
    move v0, v1

    goto :goto_8e

    :cond_95
    move v0, v1

    goto :goto_8e

    :cond_97
    move v0, v1

    goto :goto_8e

    :cond_99
    move v0, v1

    goto :goto_8e

    :cond_9b
    move v0, v1

    goto :goto_8e

    :cond_9d
    move v0, v1

    goto :goto_8e

    :cond_9f
    move v0, v1

    goto :goto_8e
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/bbk/payment/payment/VivoPaymentManager;
    .registers 2

    sget-object v0, Lcom/bbk/payment/payment/VivoPaymentManager;->b:Lcom/bbk/payment/payment/VivoPaymentManager;

    if-nez v0, :cond_b

    new-instance v0, Lcom/bbk/payment/payment/VivoPaymentManager;

    invoke-direct {v0, p0}, Lcom/bbk/payment/payment/VivoPaymentManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bbk/payment/payment/VivoPaymentManager;->b:Lcom/bbk/payment/payment/VivoPaymentManager;

    :cond_b
    sget-object v0, Lcom/bbk/payment/payment/VivoPaymentManager;->b:Lcom/bbk/payment/payment/VivoPaymentManager;

    return-object v0
.end method

.method public static getShprefsUserId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "VivoBaseAccount"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tempUuid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_17
    const-string v0, ""

    :cond_19
    return-object v0
.end method

.method public static payment(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "package"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getApkPluginStarted()Z

    move-result v1

    const-string v2, "package"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "packageName1="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",sdkStart="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->checkIfAPKExits(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3e

    if-eqz v1, :cond_3e

    const-string v0, "PaymentActivity"

    invoke-static {p0, p1, v0}, Lcom/bbk/payment/payment/VivoPaymentManager;->startPluginPayment(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    :goto_3d
    return-void

    :cond_3e
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/bbk/payment/PaymentActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "payment_params"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "bbk_alpha_scale_vertical"

    invoke-static {p0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getAnimId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "bbk_fade_out"

    invoke-static {p0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getAnimId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_3d
.end method

.method public static paymentInitial(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getApkPluginStarted()Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bbk/payment/payment/c;

    invoke-direct {v1, p0, p1, p2}, Lcom/bbk/payment/payment/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1d
    return-void

    :cond_1e
    const-string v0, "VivoPaymentManager"

    const-string v1, "error, appId is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public static paymentInitial(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getApkPluginStarted()Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bbk/payment/payment/d;

    invoke-direct {v1, p0, p1, p2}, Lcom/bbk/payment/payment/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static recharge(Landroid/content/Context;)V
    .registers 6

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getApkPluginStarted()Z

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "package"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "uid"

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getmainOpenId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->checkIfAPKExits(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2e

    if-eqz v1, :cond_2e

    const-string v0, "PaymentRechargeActivity"

    invoke-static {p0, v3, v0}, Lcom/bbk/payment/payment/VivoPaymentManager;->startPluginPayment(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    :goto_2d
    return-void

    :cond_2e
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2d
.end method

.method public static singlePayment(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "package"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getApkPluginStarted()Z

    move-result v1

    invoke-static {p0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->checkIfAPKExits(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "VivoPaymentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "packageName="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",sdkStart="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAPKExits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_46

    const-string v0, "PaymentActivity"

    invoke-static {p0, p1, v0}, Lcom/bbk/payment/payment/VivoPaymentManager;->startPluginSinglePayment(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    :goto_45
    return-void

    :cond_46
    new-instance v0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->showSinglePayUpdateDialog(Landroid/os/Bundle;)V

    goto :goto_45
.end method

.method public static singlePaymentDirectly(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "package"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getApkPluginStarted()Z

    move-result v1

    invoke-static {p0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->checkIfAPKExitsForSingle(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "VivoPaymentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "packageName = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",sdkStart = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",isAPKExits = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "mPaymentType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_81

    const-string v1, "030"

    invoke-static {v1, p0}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->saveEventValuesFromSinglePay(Ljava/lang/String;Landroid/content/Context;)V

    :cond_4d
    :goto_4d
    if-eqz v2, :cond_9a

    const-string v1, "com.vivo.sdkplugin"

    invoke-static {p0, v1}, Lcom/bbk/payment/util/UtilTool;->getVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_89

    const-string v0, "VivoPaymentManager"

    const-string v1, "startPluginSinglePaymentDirectly"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.vivo.sdkplugin"

    const-string v3, "com.bbkmobile.iqoo.payment.PaymentActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz p1, :cond_7d

    const-string v1, "payment_params"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_7d
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_80
    :goto_80
    return-void

    :cond_81
    if-ne v0, v6, :cond_4d

    const-string v1, "031"

    invoke-static {v1, p0}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->saveEventValuesFromSinglePay(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_4d

    :cond_89
    if-ne v0, v7, :cond_94

    new-instance v0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->showSinglePayUpdateDialogForced(Landroid/os/Bundle;)V

    goto :goto_80

    :cond_94
    if-ne v0, v6, :cond_80

    invoke-static {p0, p1}, Lcom/bbk/payment/payment/VivoPaymentManager;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_80

    :cond_9a
    const-string v1, "useWeixinPay"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_a5

    if-ne v0, v6, :cond_a9

    :cond_a5
    invoke-static {p0, p1}, Lcom/bbk/payment/payment/VivoPaymentManager;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_80

    :cond_a9
    new-instance v0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->showSinglePayUpdateDialogForced(Landroid/os/Bundle;)V

    goto :goto_80
.end method

.method public static startPluginPayment(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.vivo.sdkplugin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "com.bbk.payment."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz p1, :cond_25

    const-string v1, "payment_params"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_25
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startPluginSinglePayment(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.vivo.sdkplugin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "com.bbkmobile.iqoo.payment."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz p1, :cond_25

    const-string v1, "payment_params"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_25
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public payResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v1, p0, Lcom/bbk/payment/payment/VivoPaymentManager;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setTransNo(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setResult_code(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setPay_msg(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setPay_result(Z)V

    invoke-virtual {v0, p5}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setPay_gamePackageName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/payment/VivoPaymentManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->startServiceSendPayInfo(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/bbk/payment/payment/VivoPaymentManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_28

    return-void

    :cond_28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbk/payment/payment/OnVivoPayResultListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bbk/payment/payment/OnVivoPayResultListener;->payResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_21
.end method

.method public rechargeResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v1, p0, Lcom/bbk/payment/payment/VivoPaymentManager;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setUid(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setResult_code(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setPay_msg(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setPay_result(Z)V

    invoke-virtual {v0, p5}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setRecharge_gamePackageName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/payment/VivoPaymentManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->startServiceSendRechargeInfo(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/bbk/payment/payment/VivoPaymentManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_28

    return-void

    :cond_28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbk/payment/payment/OnVivoPayResultListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bbk/payment/payment/OnVivoPayResultListener;->rechargeResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_21
.end method

.method public registeListener(Lcom/bbk/payment/payment/OnVivoPayResultListener;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/bbk/payment/payment/VivoPaymentManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public registeSinglePayListener(Lcom/bbk/payment/payment/OnVivoSinglePayResultListener;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/bbk/payment/payment/VivoPaymentManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public singlePayResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v1, p0, Lcom/bbk/payment/payment/VivoPaymentManager;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setTransNo(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setResult_code(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setPay_msg(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setPay_result(Z)V

    invoke-virtual {v0, p5}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setPay_gamePackageName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/payment/VivoPaymentManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->startServiceSendSinglePayInfo(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/bbk/payment/payment/VivoPaymentManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_28

    return-void

    :cond_28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbk/payment/payment/OnVivoSinglePayResultListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bbk/payment/payment/OnVivoSinglePayResultListener;->payResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_21
.end method

.method public unRegistListener(Lcom/bbk/payment/payment/OnVivoPayResultListener;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/bbk/payment/payment/VivoPaymentManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public unRegistSinglePayListener(Lcom/bbk/payment/payment/OnVivoSinglePayResultListener;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/bbk/payment/payment/VivoPaymentManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method
