.class public Lcom/bbkmobile/iqoo/payment/weixin/WinxinPay;
.super Lcom/bbkmobile/iqoo/payment/payment/PaymentType;


# static fields
.field public static mCpAppid:Ljava/lang/String;

.field public static mWeiXingCallBack:Landroid/os/Handler;


# instance fields
.field private a:Lcom/tencent/mm/sdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Lcom/bbkmobile/iqoo/payment/payment/PaymentType;-><init>()V

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/weixin/WinxinPay;->context:Landroid/app/Activity;

    new-instance v0, Lcom/bbkmobile/iqoo/payment/weixin/WeixinPayHelper;

    invoke-direct {v0, p1}, Lcom/bbkmobile/iqoo/payment/weixin/WeixinPayHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/weixin/WinxinPay;->paymentHelper:Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;

    return-void
.end method


# virtual methods
.method public doPayment(Ljava/lang/String;)Z
    .registers 10

    const/4 v6, 0x1

    const/4 v0, 0x0

    const-string v1, "WinxinPay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "***********onPostExecute result signParams==========="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_16
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/weixin/WinxinPay;->context:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v2

    iput-object v2, p0, Lcom/bbkmobile/iqoo/payment/weixin/WinxinPay;->a:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    const-string v2, "WinxinPay"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "***********api.isWXAppInstalled()="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/bbkmobile/iqoo/payment/weixin/WinxinPay;->a:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v4}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/weixin/WinxinPay;->a:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v2

    if-nez v2, :cond_53

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/weixin/WinxinPay;->context:Landroid/app/Activity;

    const-string v2, "\u8bf7\u5148\u5b89\u88c5\u5fae\u4fe1\u529f\u80fd"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_52
    return v0

    :cond_53
    new-instance v2, Lcom/tencent/mm/sdk/modelpay/PayReq;

    invoke-direct {v2}, Lcom/tencent/mm/sdk/modelpay/PayReq;-><init>()V

    const-string v3, "appid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/sdk/modelpay/PayReq;->appId:Ljava/lang/String;

    iget-object v3, v2, Lcom/tencent/mm/sdk/modelpay/PayReq;->appId:Ljava/lang/String;

    sput-object v3, Lcom/bbkmobile/iqoo/payment/weixin/WinxinPay;->mCpAppid:Ljava/lang/String;

    const-string v3, "partnerid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/sdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    const-string v3, "prepayid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/sdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    const-string v3, "noncestr"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/sdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    const-string v3, "timestamp"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/sdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    const-string v3, "package"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/sdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    const-string v3, "sign"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/mm/sdk/modelpay/PayReq;->sign:Ljava/lang/String;

    new-instance v1, Lcom/tencent/mm/sdk/modelpay/PayReq$Options;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/modelpay/PayReq$Options;-><init>()V

    iput-object v1, v2, Lcom/tencent/mm/sdk/modelpay/PayReq;->options:Lcom/tencent/mm/sdk/modelpay/PayReq$Options;

    iget-object v1, v2, Lcom/tencent/mm/sdk/modelpay/PayReq;->options:Lcom/tencent/mm/sdk/modelpay/PayReq$Options;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bbkmobile/iqoo/payment/weixin/WinxinPay;->context:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".wxapi.WXSPayEntryActivity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/mm/sdk/modelpay/PayReq$Options;->callbackClassName:Ljava/lang/String;

    const-string v1, "WinxinPay"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "req.options.callbackClassName="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/tencent/mm/sdk/modelpay/PayReq;->options:Lcom/tencent/mm/sdk/modelpay/PayReq$Options;

    iget-object v4, v4, Lcom/tencent/mm/sdk/modelpay/PayReq$Options;->callbackClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/weixin/WinxinPay;->a:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    iget-object v3, v2, Lcom/tencent/mm/sdk/modelpay/PayReq;->appId:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_d7} :catch_f4

    move-result v1

    :try_start_d8
    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/weixin/WinxinPay;->a:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0, v2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_dd} :catch_124

    move-result v0

    :try_start_de
    const-string v1, "WinxinPay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8c03\u8d77\u652f\u4ed8\u7684package\u4e32\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_f2} :catch_f4

    goto/16 :goto_52

    :catch_f4
    move-exception v1

    :goto_f5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/weixin/WinxinPay;->callback:Landroid/os/Handler;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bbkmobile/iqoo/payment/weixin/WinxinPay;->context:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/bbkmobile/iqoo/payment/weixin/WinxinPay;->context:Landroid/app/Activity;

    const-string v5, "bbk_pay_sys_error"

    invoke-static {v4, v5}, Lcom/bbkmobile/iqoo/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

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

    invoke-static {v1, v6, v2}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->handlerMessage(Landroid/os/Handler;ILjava/lang/String;)V

    goto/16 :goto_52

    :catch_124
    move-exception v0

    move-object v7, v0

    move v0, v1

    move-object v1, v7

    goto :goto_f5
.end method

.method public startpayment(Landroid/app/Activity;Landroid/os/Handler;Lcom/bbkmobile/iqoo/payment/model/OrderInfo;)V
    .registers 8

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/weixin/WinxinPay;->context:Landroid/app/Activity;

    iput-object p3, p0, Lcom/bbkmobile/iqoo/payment/weixin/WinxinPay;->orderInfo:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    iput-object p2, p0, Lcom/bbkmobile/iqoo/payment/weixin/WinxinPay;->callback:Landroid/os/Handler;

    sput-object p2, Lcom/bbkmobile/iqoo/payment/weixin/WinxinPay;->mWeiXingCallBack:Landroid/os/Handler;

    const/4 v0, 0x7

    :try_start_9
    iput v0, p0, Lcom/bbkmobile/iqoo/payment/weixin/WinxinPay;->paymentType:I

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/weixin/WinxinPay;->prepareForPayment()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "bbk_pay_sys_error"

    invoke-static {p1, v3}, Lcom/bbkmobile/iqoo/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

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

    invoke-static {p2, v0, v1}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->handlerMessage(Landroid/os/Handler;ILjava/lang/String;)V

    goto :goto_e
.end method
