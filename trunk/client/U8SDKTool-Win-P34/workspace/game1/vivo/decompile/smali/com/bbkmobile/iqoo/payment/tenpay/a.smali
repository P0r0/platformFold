.class final Lcom/bbkmobile/iqoo/payment/tenpay/a;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/bbkmobile/iqoo/payment/tenpay/TencentPay;


# direct methods
.method constructor <init>(Lcom/bbkmobile/iqoo/payment/tenpay/TencentPay;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/tenpay/a;->a:Lcom/bbkmobile/iqoo/payment/tenpay/TencentPay;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 9

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_7e

    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_8
    return-void

    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "TencentPay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tenpay result="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "statusCode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/bbkmobile/iqoo/payment/alipay/ResultChecker;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/bbkmobile/iqoo/payment/alipay/ResultChecker;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/bbkmobile/iqoo/payment/alipay/ResultChecker;->checkTenPayResult(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x0

    iput v0, p1, Landroid/os/Message;->what:I

    sget-object v0, Lcom/bbkmobile/iqoo/payment/tenpay/TencentPay;->mTencentPayCallBack:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_41

    goto :goto_5

    :catch_41
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :cond_46
    :try_start_46
    sget-object v0, Lcom/bbkmobile/iqoo/payment/tenpay/TencentPay;->mTencentPayCallBack:Landroid/os/Handler;

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bbkmobile/iqoo/payment/tenpay/a;->a:Lcom/bbkmobile/iqoo/payment/tenpay/TencentPay;

    invoke-static {v4}, Lcom/bbkmobile/iqoo/payment/tenpay/TencentPay;->a(Lcom/bbkmobile/iqoo/payment/tenpay/TencentPay;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/bbkmobile/iqoo/payment/tenpay/a;->a:Lcom/bbkmobile/iqoo/payment/tenpay/TencentPay;

    invoke-static {v5}, Lcom/bbkmobile/iqoo/payment/tenpay/TencentPay;->a(Lcom/bbkmobile/iqoo/payment/tenpay/TencentPay;)Landroid/app/Activity;

    move-result-object v5

    const-string v6, "bbk_pay_cancel"

    invoke-static {v5, v6}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->handlerMessage(Landroid/os/Handler;ILjava/lang/String;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_7d} :catch_41

    goto :goto_5

    :pswitch_data_7e
    .packed-switch 0x3
        :pswitch_9
    .end packed-switch
.end method
