.class public Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

.field protected context:Landroid/app/Activity;

.field protected installDialog:Landroid/app/ProgressDialog;

.field protected mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bbkmobile/iqoo/payment/payment/a;

    invoke-direct {v0, p0}, Lcom/bbkmobile/iqoo/payment/payment/a;-><init>(Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;)V

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;->a:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    return-void
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


# virtual methods
.method protected checkForUpdate(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;->detectForUpdate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public detectCardPayResult(Lcom/bbkmobile/iqoo/payment/model/OrderInfo;I)Ljava/lang/String;
    .registers 15

    const/4 v1, 0x0

    const/4 v10, 0x6

    const/4 v2, 0x0

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v0, "#0.00"

    invoke-direct {v3, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/bbkmobile/iqoo/payment/model/DeviceInfo;

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-direct {v4, v0}, Lcom/bbkmobile/iqoo/payment/model/DeviceInfo;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x9

    new-array v5, v0, [Lorg/apache/http/NameValuePair;

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "version"

    const-string v7, "1.0.0"

    invoke-direct {v0, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v5, v1

    const/4 v6, 0x1

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "imei"

    invoke-virtual {v4}, Lcom/bbkmobile/iqoo/payment/model/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_eb

    const-string v0, "865409018526878"

    :goto_2d
    invoke-direct {v7, v8, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v0, 0x2

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "model"

    invoke-virtual {v4}, Lcom/bbkmobile/iqoo/payment/model/DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v0

    const/4 v0, 0x3

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "sdkver"

    invoke-virtual {v4}, Lcom/bbkmobile/iqoo/payment/model/DeviceInfo;->getVersionNeme()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v7, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v0

    const/4 v0, 0x4

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "packageName"

    invoke-virtual {p1}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getPackageN()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v5, v0

    const/4 v0, 0x5

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "signature"

    invoke-virtual {p1}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getSignature()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v5, v0

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "signMethod"

    const-string v6, "MD5"

    invoke-direct {v0, v4, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v5, v10

    const/4 v0, 0x7

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "vivoOrder"

    invoke-virtual {p1}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getTransNo()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v5, v0

    const/16 v0, 0x8

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "orderAmount"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getPrice()D

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v6, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v5, v0

    const-string v0, "1"

    move v3, v1

    move-object v1, v2

    move-object v2, v0

    :goto_a8
    :try_start_a8
    new-instance v0, Lcom/bbkmobile/iqoo/payment/network/NetworkRequestAgent;

    iget-object v4, p0, Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-direct {v0, v4}, Lcom/bbkmobile/iqoo/payment/network/NetworkRequestAgent;-><init>(Landroid/content/Context;)V

    const-string v4, "https://pay.vivo.com.cn/vivoPay/card/queryStatus"

    invoke-virtual {v0, v4, v5}, Lcom/bbkmobile/iqoo/payment/network/NetworkRequestAgent;->sendRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "PaymentHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "detect cardPay result done,response message="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "respCode"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "200"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_134

    const-string v6, "payResult"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_e1} :catch_12e

    move-result-object v1

    :try_start_e2
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e7} :catch_f1

    move-result v2

    if-nez v2, :cond_10a

    :cond_ea
    :goto_ea
    return-object v0

    :cond_eb
    invoke-virtual {v4}, Lcom/bbkmobile/iqoo/payment/model/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2d

    :catch_f1
    move-exception v2

    :goto_f2
    const-string v4, "PaymentHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "detect cardPay result failed,error="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10a
    add-int/lit8 v2, v3, 0x1

    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11b

    if-ge v2, v10, :cond_11b

    const-wide/16 v6, 0x4e20

    :try_start_118
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11b
    .catch Ljava/lang/InterruptedException; {:try_start_118 .. :try_end_11b} :catch_129

    :cond_11b
    :goto_11b
    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ea

    if-ge v2, v10, :cond_ea

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_a8

    :catch_129
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_11b

    :catch_12e
    move-exception v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v11

    goto :goto_f2

    :cond_134
    move-object v0, v1

    goto :goto_ea
.end method

.method protected detectForUpdate(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public detectPayParameter(Lcom/bbkmobile/iqoo/payment/model/OrderInfo;)Z
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "payment_params"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_102

    const-string v0, "package"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ba

    invoke-virtual {p1, v0}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->setPackageN(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;->a:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v3, v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGamePackageName(Ljava/lang/String;)V

    const-string v0, "logOnOff"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->logOnOff:Z

    const-string v0, "transNo"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c3

    invoke-virtual {p1, v0}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->setTransNo(Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_cc

    invoke-virtual {p1, v0}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->setSignature(Ljava/lang/String;)V

    const-string v0, "useMode"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d5

    invoke-virtual {p1, v0}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->setUseMode(Ljava/lang/String;)V

    const-string v0, "productName"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_de

    invoke-virtual {p1, v0}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->setProductName(Ljava/lang/String;)V

    const-string v0, "productDes"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e7

    invoke-virtual {p1, v0}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->setProductDes(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;->getShprefsUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_88

    const-string v0, "userId"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_88
    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f0

    invoke-virtual {p1, v0}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->setUserId(Ljava/lang/String;)V

    const-string v0, "price"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_f9

    invoke-virtual {p1, v2, v3}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->setPrice(D)V

    const-string v0, "PaymentHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "order info="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_b9
    return v0

    :cond_ba
    const-string v0, "PaymentHelper"

    const-string v2, "miss param=package"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_b9

    :cond_c3
    const-string v0, "PaymentHelper"

    const-string v2, "miss param=transNo"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_b9

    :cond_cc
    const-string v0, "PaymentHelper"

    const-string v2, "miss param=signature"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_b9

    :cond_d5
    const-string v0, "PaymentHelper"

    const-string v2, "miss param=usemode"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_b9

    :cond_de
    const-string v0, "PaymentHelper"

    const-string v2, "miss param=name"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_b9

    :cond_e7
    const-string v0, "PaymentHelper"

    const-string v2, "miss param=desc"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_b9

    :cond_f0
    const-string v0, "PaymentHelper"

    const-string v2, "miss param=userId"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_b9

    :cond_f9
    const-string v0, "PaymentHelper"

    const-string v2, "miss param=price"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_b9

    :cond_102
    move v0, v1

    goto :goto_b9
.end method

.method protected getAppPackageName()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method protected getAssetsName()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public initialPay(Lcom/bbkmobile/iqoo/payment/model/OrderInfo;I)Lorg/json/JSONObject;
    .registers 16

    const/4 v12, 0x3

    const/4 v2, 0x4

    const/4 v0, 0x0

    :try_start_3
    new-instance v4, Lcom/bbkmobile/iqoo/payment/model/DeviceInfo;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-direct {v4, v1}, Lcom/bbkmobile/iqoo/payment/model/DeviceInfo;-><init>(Landroid/content/Context;)V

    new-instance v5, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v5, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    if-ne v2, p2, :cond_19a

    const/16 v1, 0x11

    new-array v1, v1, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "cardAmt"

    invoke-virtual {p1}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getCard_amount()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v1, v3

    const/4 v3, 0x1

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "cardNo"

    invoke-virtual {p1}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getCard_num()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v1, v3

    const/4 v3, 0x2

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "cardPwd"

    invoke-virtual {p1}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getCard_pwd()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v1, v3

    const/4 v3, 0x3

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "frpid"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getCard_type()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v1, v3

    move-object v3, v1

    move v1, v2

    :goto_5e
    add-int/lit8 v6, v1, 0x1

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "version"

    const-string v9, "1.0.0"

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v1

    add-int/lit8 v7, v6, 0x1

    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "imei"

    invoke-virtual {v4}, Lcom/bbkmobile/iqoo/payment/model/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1a2

    const-string v1, "865409018526878"

    :goto_79
    invoke-direct {v8, v9, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v3, v6

    add-int/lit8 v1, v7, 0x1

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "model"

    invoke-virtual {v4}, Lcom/bbkmobile/iqoo/payment/model/DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v7

    add-int/lit8 v6, v1, 0x1

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "orderFrom"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v1

    add-int/lit8 v1, v6, 0x1

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "packageName"

    invoke-virtual {p1}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getPackageN()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v6

    add-int/lit8 v6, v1, 0x1

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "signature"

    invoke-virtual {p1}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getSignature()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v1

    add-int/lit8 v1, v6, 0x1

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "signMethod"

    const-string v9, "MD5"

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v6

    add-int/lit8 v6, v1, 0x1

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "vivoOrder"

    invoke-virtual {p1}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getTransNo()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v1

    add-int/lit8 v7, v6, 0x1

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "orderAmount"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getPrice()D

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v3, v6

    const-string v1, "PaymentHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "price="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getPrice()D

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->sPayType:I

    if-eqz v1, :cond_1a8

    add-int/lit8 v1, v7, 0x1

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "payTypeFront"

    const-string v8, "1"

    invoke-direct {v5, v6, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v7

    const-string v5, "PaymentHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "initialPay, paymentType = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " paymentFront = 1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13d
    add-int/lit8 v5, v1, 0x1

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "uid"

    invoke-virtual {p1}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getUserId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v1

    add-int/lit8 v1, v5, 0x1

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "sdkver"

    invoke-virtual {v4}, Lcom/bbkmobile/iqoo/payment/model/DeviceInfo;->getVersionNeme()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v7, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v5

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "origin"

    iget-object v6, p0, Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-static {v6}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getValOrigin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v1

    new-instance v4, Lcom/bbkmobile/iqoo/payment/network/NetworkRequestAgent;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-direct {v4, v1}, Lcom/bbkmobile/iqoo/payment/network/NetworkRequestAgent;-><init>(Landroid/content/Context;)V

    if-ne p2, v12, :cond_1ee

    const-string v1, "https://pay.vivo.com.cn/vivoPay/tenpay/submitOrder"

    :goto_175
    sget-boolean v2, Lcom/bbkmobile/iqoo/payment/util/Constants;->TEST_FLAG:Z

    if-eqz v2, :cond_17c

    :goto_179
    array-length v2, v3

    if-lt v0, v2, :cond_1f6

    :cond_17c
    invoke-virtual {v4, v1, v3}, Lcom/bbkmobile/iqoo/payment/network/NetworkRequestAgent;->sendRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PaymentHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send initial payment done,response message="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_19a
    const/16 v1, 0xd

    new-array v1, v1, [Lorg/apache/http/NameValuePair;

    move-object v3, v1

    move v1, v0

    goto/16 :goto_5e

    :cond_1a2
    invoke-virtual {v4}, Lcom/bbkmobile/iqoo/payment/model/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_79

    :cond_1a8
    add-int/lit8 v1, v7, 0x1

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "payTypeFront"

    const-string v8, "0"

    invoke-direct {v5, v6, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v7

    const-string v5, "PaymentHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "initialPay, paymentType = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " paymentFront = 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1cf
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1cf} :catch_1d1

    goto/16 :goto_13d

    :catch_1d1
    move-exception v0

    const-string v1, "PaymentHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send initial payment failed,error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    throw v0

    :cond_1ee
    if-ne p2, v2, :cond_1f3

    :try_start_1f0
    const-string v1, "https://pay.vivo.com.cn/vivoPay/card/submitOrder"

    goto :goto_175

    :cond_1f3
    const-string v1, "https://pay.vivo.com.cn/vivoPay/submitOrder"

    goto :goto_175

    :cond_1f6
    const-string v2, "PaymentHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "initialPay, nameValuePairs"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_216
    .catch Ljava/lang/Exception; {:try_start_1f0 .. :try_end_216} :catch_1d1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_179
.end method

.method public installPayPlugin()I
    .registers 7

    const/4 v1, 0x3

    const/4 v2, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->generatePluginCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;->retrieveFromAssets(Ljava/lang/String;)V

    const-string v0, "755"

    invoke-static {v0, v3}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->chmod(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_4d

    :try_start_10
    invoke-static {v3}, Lcom/bbkmobile/iqoo/payment/util/InstallHelper;->installSlient(Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_13} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_4d

    move-result v0

    if-eqz v0, :cond_26

    :try_start_16
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_25
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_25} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_25} :catch_6c

    move v0, v1

    :cond_26
    :goto_26
    :try_start_26
    const-string v1, "PaymentHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "install payment plugin result="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3a} :catch_71

    :goto_3a
    return v0

    :catch_3b
    move-exception v0

    :try_start_3c
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4b} :catch_6c

    move v0, v1

    goto :goto_26

    :catch_4d
    move-exception v0

    move-object v1, v0

    move v0, v2

    :goto_50
    const-string v2, "PaymentHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "occur in install payment plugin,error="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3a

    :catch_6c
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    goto :goto_50

    :catch_71
    move-exception v1

    goto :goto_50
.end method

.method protected isMobileInstallApp(Landroid/content/Context;)Z
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;->getAppPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_19

    move v0, v1

    :goto_18
    return v0

    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_18
.end method

.method protected retrieveFromAssets(Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;->getAssetsName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PaymentHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "assetsName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_30
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_40

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :cond_40
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_30
.end method

.method protected showInstallAppDialog(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public updatePayForFail(Lcom/bbkmobile/iqoo/payment/model/OrderInfo;I)Z
    .registers 14

    const/4 v10, 0x3

    const/4 v3, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/bbkmobile/iqoo/payment/model/DeviceInfo;

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-direct {v2, v0}, Lcom/bbkmobile/iqoo/payment/model/DeviceInfo;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x9

    new-array v4, v0, [Lorg/apache/http/NameValuePair;

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "version"

    const-string v6, "1.0.0"

    invoke-direct {v0, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v4, v1

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "imei"

    invoke-virtual {v2}, Lcom/bbkmobile/iqoo/payment/model/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d4

    const-string v0, "865409018526878"

    :goto_25
    invoke-direct {v5, v6, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v4, v3

    const/4 v0, 0x2

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "model"

    invoke-virtual {v2}, Lcom/bbkmobile/iqoo/payment/model/DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v4, v0

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "orderFrom"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v4, v10

    const/4 v0, 0x4

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "packageName"

    invoke-virtual {p1}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getPackageN()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v4, v0

    const/4 v0, 0x5

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "signature"

    invoke-virtual {p1}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getSignature()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v4, v0

    const/4 v0, 0x6

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "signMethod"

    const-string v6, "MD5"

    invoke-direct {v2, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v4, v0

    const/4 v0, 0x7

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "vivoOrder"

    invoke-virtual {p1}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getTransNo()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v4, v0

    const/16 v0, 0x8

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "orderAmount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getPrice()D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v4, v0

    move v2, v1

    :goto_98
    :try_start_98
    new-instance v0, Lcom/bbkmobile/iqoo/payment/network/NetworkRequestAgent;

    iget-object v5, p0, Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-direct {v0, v5}, Lcom/bbkmobile/iqoo/payment/network/NetworkRequestAgent;-><init>(Landroid/content/Context;)V

    const-string v5, "https://pay.vivo.com.cn/vivoPay/voidOrder"

    invoke-virtual {v0, v5, v4}, Lcom/bbkmobile/iqoo/payment/network/NetworkRequestAgent;->sendRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "PaymentHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "notify cancel payment done,response message="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "respCode"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "200"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_c9} :catch_da

    move-result v0

    if-eqz v0, :cond_cd

    move v2, v3

    :cond_cd
    :goto_cd
    add-int/lit8 v0, v1, 0x1

    if-nez v2, :cond_d3

    if-lt v0, v10, :cond_f7

    :cond_d3
    return v2

    :cond_d4
    invoke-virtual {v2}, Lcom/bbkmobile/iqoo/payment/model/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_25

    :catch_da
    move-exception v0

    const-string v5, "PaymentHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "notify fail payment to server failed,error="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_cd

    :cond_f7
    move v1, v0

    goto :goto_98
.end method
