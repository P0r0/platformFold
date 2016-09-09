.class public Lcom/vivo/sdkplugin/wxapi/WXSPayEntryActivity;
.super Lcom/bbkmobile/iqoo/payment/weixin/VivoWXPayEntryActivity;

# interfaces
.implements Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bbkmobile/iqoo/payment/weixin/VivoWXPayEntryActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/bbkmobile/iqoo/payment/weixin/VivoWXPayEntryActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/wxapi/WXSPayEntryActivity;->finish()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/bbkmobile/iqoo/payment/weixin/VivoWXPayEntryActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V
    .registers 5

    const-string v0, "WXSPayEntryActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReq, errCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/bbkmobile/iqoo/payment/weixin/VivoWXPayEntryActivity;->onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V

    return-void
.end method

.method public onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    .registers 5

    const-string v0, "WXSPayEntryActivity"

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

    invoke-super {p0, p1}, Lcom/bbkmobile/iqoo/payment/weixin/VivoWXPayEntryActivity;->onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V

    return-void
.end method
