.class public Lcom/bbk/payment/tenpay/TencentPay;
.super Lcom/bbk/payment/payment/PaymentType;


# static fields
.field public static appId:Ljava/lang/String;

.field public static mTencentPayCallBack:Landroid/os/Handler;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

.field protected payHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Lcom/bbk/payment/payment/PaymentType;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/bbk/payment/tenpay/TencentPay;->a:Ljava/lang/String;

    new-instance v0, Lcom/bbk/payment/tenpay/a;

    invoke-direct {v0, p0}, Lcom/bbk/payment/tenpay/a;-><init>(Lcom/bbk/payment/tenpay/TencentPay;)V

    iput-object v0, p0, Lcom/bbk/payment/tenpay/TencentPay;->payHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/bbk/payment/tenpay/TencentPay;->context:Landroid/app/Activity;

    new-instance v0, Lcom/bbk/payment/tenpay/TencentPayHelper;

    invoke-direct {v0, p1}, Lcom/bbk/payment/tenpay/TencentPayHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/bbk/payment/tenpay/TencentPay;->paymentHelper:Lcom/bbk/payment/payment/PaymentHelper;

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/tenpay/TencentPay;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/tenpay/TencentPay;->context:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public IsMqqInstalled()Z
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/tenpay/TencentPay;->b:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    invoke-interface {v0}, Lcom/tencent/mobileqq/openpay/api/IOpenApi;->isMobileQQInstalled()Z

    move-result v0

    return v0
.end method

.method public IsMqqSupportPay()Z
    .registers 3

    iget-object v0, p0, Lcom/bbk/payment/tenpay/TencentPay;->b:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    const-string v1, "pay"

    invoke-interface {v0, v1}, Lcom/tencent/mobileqq/openpay/api/IOpenApi;->isMobileQQSupportApi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public doPayment(Ljava/lang/String;)Z
    .registers 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "qwallet"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bbk/payment/tenpay/TencentPay;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/payment/tenpay/TencentPay;->a:Ljava/lang/String;

    const-string v0, "TencentPay"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call out tenpay activity result sign="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;

    invoke-direct {v1}, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;-><init>()V

    const-string v2, "appId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->appId:Ljava/lang/String;

    iget-object v2, v1, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->appId:Ljava/lang/String;

    sput-object v2, Lcom/bbk/payment/tenpay/TencentPay;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbk/payment/tenpay/TencentPay;->context:Landroid/app/Activity;

    sget-object v3, Lcom/bbk/payment/tenpay/TencentPay;->appId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/mobileqq/openpay/api/OpenApiFactory;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    move-result-object v2

    iput-object v2, p0, Lcom/bbk/payment/tenpay/TencentPay;->b:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    invoke-virtual {p0}, Lcom/bbk/payment/tenpay/TencentPay;->IsMqqInstalled()Z

    move-result v2

    if-nez v2, :cond_6a

    iget-object v0, p0, Lcom/bbk/payment/tenpay/TencentPay;->context:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bbk/payment/tenpay/TencentPay;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_no_installed_qq"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_69
    :goto_69
    return v6

    :cond_6a
    invoke-virtual {p0}, Lcom/bbk/payment/tenpay/TencentPay;->IsMqqSupportPay()Z

    move-result v2

    if-nez v2, :cond_b6

    iget-object v0, p0, Lcom/bbk/payment/tenpay/TencentPay;->context:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bbk/payment/tenpay/TencentPay;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_no_supportpay_qq"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_86} :catch_87

    goto :goto_69

    :catch_87
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/bbk/payment/tenpay/TencentPay;->mTencentPayCallBack:Landroid/os/Handler;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bbk/payment/tenpay/TencentPay;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/tenpay/TencentPay;->context:Landroid/app/Activity;

    const-string v4, "bbk_pay_sys_error"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "#9999"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/bbk/payment/util/UtilTool;->handlerMessage(Landroid/os/Handler;ILjava/lang/String;)V

    goto :goto_69

    :cond_b6
    :try_start_b6
    iget-object v2, p0, Lcom/bbk/payment/tenpay/TencentPay;->orderInfo:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v2}, Lcom/bbk/payment/model/OrderInfo;->getRechargeOrderNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->serialNumber:Ljava/lang/String;

    const-string v2, "TencentPay"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "call out tenpay activity result callbackScheme="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/bbk/payment/tenpay/TencentPay;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/bbk/payment/tenpay/TencentPay;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->callbackScheme:Ljava/lang/String;

    const-string v2, "tokenId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->tokenId:Ljava/lang/String;

    iget-object v2, v1, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->tokenId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f4

    iget-object v2, p0, Lcom/bbk/payment/tenpay/TencentPay;->context:Landroid/app/Activity;

    const-string v3, "tokenId is null."

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_f4
    const-string v2, "pubAcc"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->pubAcc:Ljava/lang/String;

    const-string v2, "pubAccHint"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->pubAccHint:Ljava/lang/String;

    const-string v2, "nonce"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->nonce:Ljava/lang/String;

    const-string v2, "timeStamp"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->timeStamp:J

    const-string v2, "bargainorId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->bargainorId:Ljava/lang/String;

    const-string v2, "sigType"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->sigType:Ljava/lang/String;

    const-string v2, "sig"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->sig:Ljava/lang/String;

    const-string v0, "TencentPay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "call out tenpay  api.checkParams()="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->checkParams()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->checkParams()Z

    move-result v0

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/bbk/payment/tenpay/TencentPay;->b:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    invoke-interface {v0, v1}, Lcom/tencent/mobileqq/openpay/api/IOpenApi;->execApi(Lcom/tencent/mobileqq/openpay/data/base/BaseApi;)Z
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_14f} :catch_87

    goto/16 :goto_69
.end method

.method public startRecharge(Landroid/app/Activity;Landroid/os/Handler;Lcom/bbk/payment/model/OrderInfo;)V
    .registers 9

    iput-object p1, p0, Lcom/bbk/payment/tenpay/TencentPay;->context:Landroid/app/Activity;

    sput-object p2, Lcom/bbk/payment/tenpay/TencentPay;->mTencentPayCallBack:Landroid/os/Handler;

    iput-object p3, p0, Lcom/bbk/payment/tenpay/TencentPay;->orderInfo:Lcom/bbk/payment/model/OrderInfo;

    const/16 v0, 0x8

    :try_start_8
    iput v0, p0, Lcom/bbk/payment/tenpay/TencentPay;->paymentType:I

    invoke-virtual {p0}, Lcom/bbk/payment/tenpay/TencentPay;->prepareForPayment()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/bbk/payment/tenpay/TencentPay;->mTencentPayCallBack:Landroid/os/Handler;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "bbk_pay_sys_error"

    invoke-static {p1, v4}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "#9999"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bbk/payment/util/UtilTool;->handlerMessage(Landroid/os/Handler;ILjava/lang/String;)V

    goto :goto_d
.end method

.method public startpayment(Landroid/app/Activity;Landroid/os/Handler;Lcom/bbk/payment/model/OrderInfo;)V
    .registers 9

    iput-object p1, p0, Lcom/bbk/payment/tenpay/TencentPay;->context:Landroid/app/Activity;

    iput-object p3, p0, Lcom/bbk/payment/tenpay/TencentPay;->orderInfo:Lcom/bbk/payment/model/OrderInfo;

    iput-object p2, p0, Lcom/bbk/payment/tenpay/TencentPay;->callback:Landroid/os/Handler;

    sput-object p2, Lcom/bbk/payment/tenpay/TencentPay;->mTencentPayCallBack:Landroid/os/Handler;

    const/16 v0, 0x8

    :try_start_a
    iput v0, p0, Lcom/bbk/payment/tenpay/TencentPay;->paymentType:I

    invoke-virtual {p0}, Lcom/bbk/payment/tenpay/TencentPay;->prepareForPayment()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/bbk/payment/tenpay/TencentPay;->mTencentPayCallBack:Landroid/os/Handler;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "bbk_pay_sys_error"

    invoke-static {p1, v4}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "#9999"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bbk/payment/util/UtilTool;->handlerMessage(Landroid/os/Handler;ILjava/lang/String;)V

    goto :goto_f
.end method
