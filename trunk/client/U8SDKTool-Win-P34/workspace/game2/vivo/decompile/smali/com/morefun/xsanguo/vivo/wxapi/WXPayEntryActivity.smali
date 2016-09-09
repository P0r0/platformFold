.class public Lcom/morefun/xsanguo/vivo/wxapi/WXPayEntryActivity;
.super Lcom/bbk/payment/weixin/VivoWXPayEntryActivity;
.source "WXPayEntryActivity.java"

# interfaces
.implements Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "WXPayEntryActivity"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/bbk/payment/weixin/VivoWXPayEntryActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/bbk/payment/weixin/VivoWXPayEntryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lcom/morefun/xsanguo/vivo/wxapi/WXPayEntryActivity;->finish()V

    .line 19
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/bbk/payment/weixin/VivoWXPayEntryActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 24
    return-void
.end method

.method public onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V
    .registers 5

    .prologue
    .line 29
    const-string v0, "WXPayEntryActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReq, errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-super {p0, p1}, Lcom/bbk/payment/weixin/VivoWXPayEntryActivity;->onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V

    .line 31
    return-void
.end method

.method public onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    .registers 5

    .prologue
    .line 36
    const-string v0, "WXPayEntryActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPayFinish, errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

    .line 37
    invoke-super {p0, p1}, Lcom/bbk/payment/weixin/VivoWXPayEntryActivity;->onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V

    .line 38
    return-void
.end method
