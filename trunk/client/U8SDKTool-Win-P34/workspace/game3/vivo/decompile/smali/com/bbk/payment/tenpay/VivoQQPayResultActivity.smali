.class public Lcom/bbk/payment/tenpay/VivoQQPayResultActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/tencent/mobileqq/openpay/api/IOpenApiListener;


# instance fields
.field private a:Lcom/tencent/mobileqq/openpay/api/IOpenApi;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/bbk/payment/tenpay/VivoQQPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_popwin"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/tenpay/VivoQQPayResultActivity;->setContentView(I)V

    sget-object v0, Lcom/bbk/payment/tenpay/TencentPay;->appId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/tencent/mobileqq/openpay/api/OpenApiFactory;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/payment/tenpay/VivoQQPayResultActivity;->a:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    iget-object v0, p0, Lcom/bbk/payment/tenpay/VivoQQPayResultActivity;->a:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/bbk/payment/tenpay/VivoQQPayResultActivity;->a:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    invoke-virtual {p0}, Lcom/bbk/payment/tenpay/VivoQQPayResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/tencent/mobileqq/openpay/api/IOpenApi;->handleIntent(Landroid/content/Intent;Lcom/tencent/mobileqq/openpay/api/IOpenApiListener;)Z

    :cond_25
    invoke-virtual {p0}, Lcom/bbk/payment/tenpay/VivoQQPayResultActivity;->finish()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/bbk/payment/tenpay/VivoQQPayResultActivity;->setIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/bbk/payment/tenpay/VivoQQPayResultActivity;->a:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bbk/payment/tenpay/VivoQQPayResultActivity;->a:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    invoke-interface {v0, p1, p0}, Lcom/tencent/mobileqq/openpay/api/IOpenApi;->handleIntent(Landroid/content/Intent;Lcom/tencent/mobileqq/openpay/api/IOpenApiListener;)Z

    :cond_f
    return-void
.end method

.method public onOpenResponse(Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;)V
    .registers 8

    const-string v0, "VivoQQPayResultActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=======onCreate==call back tenpay response ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_17

    :goto_16
    return-void

    :cond_17
    instance-of v0, p1, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;

    if-eqz v0, :cond_eb

    check-cast p1, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " apiName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->apiName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " serialnumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->serialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isSucess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->isSuccess()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " retCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->retCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " retMsg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->retMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VivoQQPayResultActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "=======onOpenResponse==call back tenpay message11 ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->isSuccess()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_c3

    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    const-string v2, "\u652f\u4ed8\u6210\u529f#9000"

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v2, Lcom/bbk/payment/tenpay/TencentPay;->mTencentPayCallBack:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_99
    const-string v1, "VivoQQPayResultActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "=======onOpenResponse==call back tenpay message22 ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ad
    const-string v1, "VivoQQPayResultActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "=======onCreate==call back tenpay message ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    :cond_c3
    sget-object v1, Lcom/bbk/payment/tenpay/TencentPay;->mTencentPayCallBack:Landroid/os/Handler;

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bbk/payment/tenpay/VivoQQPayResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "bbk_pay_cancel"

    invoke-static {p0, v5}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "#6001"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/bbk/payment/util/UtilTool;->handlerMessage(Landroid/os/Handler;ILjava/lang/String;)V

    goto :goto_99

    :cond_eb
    const-string v0, "response is not PayResponse."

    goto :goto_ad
.end method
