.class public Lcom/bbkmobile/iqoo/payment/weixin/VivoWXPayEntryActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;


# instance fields
.field private a:Lcom/tencent/mm/sdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/weixin/VivoWXPayEntryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_popwin_s"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/weixin/VivoWXPayEntryActivity;->setContentView(I)V

    const-string v0, "VivoWXPayEntryActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=======onCreate ================= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/bbkmobile/iqoo/payment/weixin/WinxinPay;->mCpAppid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/bbkmobile/iqoo/payment/weixin/WinxinPay;->mCpAppid:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/weixin/VivoWXPayEntryActivity;->a:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/weixin/VivoWXPayEntryActivity;->a:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/weixin/VivoWXPayEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/bbkmobile/iqoo/payment/weixin/VivoWXPayEntryActivity;->setIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/weixin/VivoWXPayEntryActivity;->a:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0, p1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    return-void
.end method

.method public onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V
    .registers 5

    const-string v0, "VivoWXPayEntryActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReq, errCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    .registers 6

    const/4 v3, 0x2

    const-string v0, "VivoWXPayEntryActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPayFinish, errCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resp.getType() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseResp;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseResp;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_44

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v1, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    packed-switch v1, :pswitch_data_84

    iput v3, v0, Landroid/os/Message;->what:I

    :goto_38
    sget-object v1, Lcom/bbkmobile/iqoo/payment/weixin/WinxinPay;->mWeiXingCallBack:Landroid/os/Handler;

    if-eqz v1, :cond_7b

    sget-object v1, Lcom/bbkmobile/iqoo/payment/weixin/WinxinPay;->mWeiXingCallBack:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_41
    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/weixin/VivoWXPayEntryActivity;->finish()V

    :cond_44
    return-void

    :pswitch_45
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    const-string v1, "\u652f\u4ed8\u6210\u529f#9000"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_38

    :pswitch_4d
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/weixin/VivoWXPayEntryActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "bbk_wx_failed"

    invoke-static {v2, v3}, Lcom/bbkmobile/iqoo/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/bbkmobile/iqoo/payment/weixin/VivoWXPayEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "#6000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_38

    :pswitch_74
    iput v3, v0, Landroid/os/Message;->what:I

    const-string v1, "#6001"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_38

    :cond_7b
    const-string v0, "VivoWXPayEntryActivity"

    const-string v1, "error, WinxinPay.mWeiXingCallBack is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    nop

    :pswitch_data_84
    .packed-switch -0x2
        :pswitch_74
        :pswitch_4d
        :pswitch_45
    .end packed-switch
.end method
