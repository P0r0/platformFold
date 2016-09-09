.class public Lcom/bbk/payment/payment/VivoPaymentManager;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/bbk/payment/payment/VivoPaymentManager;


# instance fields
.field private a:Landroid/content/Context;

.field private c:Ljava/util/ArrayList;

.field private d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbk/payment/payment/VivoPaymentManager;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbk/payment/payment/VivoPaymentManager;->d:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/bbk/payment/payment/VivoPaymentManager;->a:Landroid/content/Context;

    return-void
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

    new-instance v1, Lcom/bbk/payment/payment/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/bbk/payment/payment/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

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

    new-instance v1, Lcom/bbk/payment/payment/c;

    invoke-direct {v1, p0, p1, p2}, Lcom/bbk/payment/payment/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

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

    const-string v1, "signature"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    if-eqz p1, :cond_2a

    const-string v1, "payment_params"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2a
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

    iget-object v0, p0, Lcom/bbk/payment/payment/VivoPaymentManager;->c:Ljava/util/ArrayList;

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

    iget-object v0, p0, Lcom/bbk/payment/payment/VivoPaymentManager;->c:Ljava/util/ArrayList;

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

    iget-object v0, p0, Lcom/bbk/payment/payment/VivoPaymentManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public registeSinglePayListener(Lcom/bbk/payment/payment/OnVivoSinglePayResultListener;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/bbk/payment/payment/VivoPaymentManager;->d:Ljava/util/ArrayList;

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

    check-cast v0, Lcom/bbk/payment/payment/OnVivoSinglePayResultListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bbk/payment/payment/OnVivoSinglePayResultListener;->payResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_21
.end method

.method public unRegistListener(Lcom/bbk/payment/payment/OnVivoPayResultListener;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/bbk/payment/payment/VivoPaymentManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public unRegistSinglePayListener(Lcom/bbk/payment/payment/OnVivoSinglePayResultListener;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/bbk/payment/payment/VivoPaymentManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method
