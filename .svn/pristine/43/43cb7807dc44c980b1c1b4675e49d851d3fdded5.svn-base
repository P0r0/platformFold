.class public Lcom/nearme/game/sdk/component/PayResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PayResultReceiver.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/nearme/game/sdk/callback/ApiCallback;

.field private c:Lcom/nearme/game/sdk/callback/ApiCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nearme/game/sdk/callback/ApiCallback;Lcom/nearme/game/sdk/callback/ApiCallback;)V
    .registers 4

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->a:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    .line 24
    iput-object p3, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->c:Lcom/nearme/game/sdk/callback/ApiCallback;

    .line 25
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    .prologue
    const v9, 0xa03bba

    const/16 v8, 0x3e9

    const/16 v7, 0x3f2

    const/16 v6, 0x3ec

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 30
    const-string v1, "PayResultReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "action = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v1, "response"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nearme/platform/opensdk/pay/PayResponse;->parse(Ljava/lang/String;)Lcom/nearme/platform/opensdk/pay/PayResponse;

    move-result-object v1

    .line 32
    if-eqz v1, :cond_f4

    .line 33
    iget-object v2, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->a:Ljava/lang/String;

    iget-object v3, v1, Lcom/nearme/platform/opensdk/pay/PayResponse;->mOder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 34
    const-string v2, "nearme.pay.response"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cf

    .line 35
    iget v0, v1, Lcom/nearme/platform/opensdk/pay/PayResponse;->mErrorCode:I

    if-ne v8, v0, :cond_7a

    .line 36
    iget-object v0, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    if-eqz v0, :cond_4e

    .line 37
    iget-object v0, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    iget-object v2, v1, Lcom/nearme/platform/opensdk/pay/PayResponse;->mMsg:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/nearme/game/sdk/callback/ApiCallback;->onSuccess(Ljava/lang/String;)V

    .line 39
    :cond_4e
    invoke-static {}, Lcom/nearme/game/sdk/GameCenterSDK;->getInstance()Lcom/nearme/game/sdk/GameCenterSDK;

    move-result-object v0

    new-instance v2, Lcom/nearme/game/sdk/common/model/biz/ReportParam;

    const-string v3, "pay_result"

    iget-object v4, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->a:Ljava/lang/String;

    const-string v5, ""

    invoke-direct {v2, v3, v4, v8, v5}, Lcom/nearme/game/sdk/common/model/biz/ReportParam;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/nearme/game/sdk/GameCenterSDK;->doReportData(Lcom/nearme/game/sdk/common/model/biz/ReportParam;)V

    .line 62
    :cond_60
    :goto_60
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 63
    const-string v0, "PayResultReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onReceive payResponse not null order = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/nearme/platform/opensdk/pay/PayResponse;->mOder:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_79
    :goto_79
    return-void

    .line 41
    :cond_7a
    iget v0, v1, Lcom/nearme/platform/opensdk/pay/PayResponse;->mErrorCode:I

    if-ne v6, v0, :cond_9c

    .line 42
    iget-object v0, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    if-eqz v0, :cond_89

    .line 43
    iget-object v0, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    const-string v2, "\u53d6\u6d88\u652f\u4ed8"

    invoke-interface {v0, v2, v6}, Lcom/nearme/game/sdk/callback/ApiCallback;->onFailure(Ljava/lang/String;I)V

    .line 45
    :cond_89
    invoke-static {}, Lcom/nearme/game/sdk/GameCenterSDK;->getInstance()Lcom/nearme/game/sdk/GameCenterSDK;

    move-result-object v0

    new-instance v2, Lcom/nearme/game/sdk/common/model/biz/ReportParam;

    const-string v3, "pay_result"

    iget-object v4, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->a:Ljava/lang/String;

    iget-object v5, v1, Lcom/nearme/platform/opensdk/pay/PayResponse;->mMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/nearme/game/sdk/common/model/biz/ReportParam;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/nearme/game/sdk/GameCenterSDK;->doReportData(Lcom/nearme/game/sdk/common/model/biz/ReportParam;)V

    goto :goto_60

    .line 48
    :cond_9c
    iget-object v0, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    if-eqz v0, :cond_a7

    .line 49
    iget-object v0, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    iget-object v2, v1, Lcom/nearme/platform/opensdk/pay/PayResponse;->mMsg:Ljava/lang/String;

    invoke-interface {v0, v2, v7}, Lcom/nearme/game/sdk/callback/ApiCallback;->onFailure(Ljava/lang/String;I)V

    .line 51
    :cond_a7
    invoke-static {}, Lcom/nearme/game/sdk/GameCenterSDK;->getInstance()Lcom/nearme/game/sdk/GameCenterSDK;

    move-result-object v0

    new-instance v2, Lcom/nearme/game/sdk/common/model/biz/ReportParam;

    const-string v3, "pay_result"

    iget-object v4, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "payPlugin->"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Lcom/nearme/platform/opensdk/pay/PayResponse;->mErrorCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/nearme/platform/opensdk/pay/PayResponse;->mMsg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/nearme/game/sdk/common/model/biz/ReportParam;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/nearme/game/sdk/GameCenterSDK;->doReportData(Lcom/nearme/game/sdk/common/model/biz/ReportParam;)V

    goto :goto_60

    .line 54
    :cond_cf
    const-string v2, "nearme.plugin.aciton.notify.cp_sms_pay"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 55
    const-string v0, "\u56de\u8c03CP\u8fd0\u8425\u5546\u77ed\u4fe1\u652f\u4ed8"

    .line 56
    iget-object v2, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->c:Lcom/nearme/game/sdk/callback/ApiCallback;

    if-eqz v2, :cond_e2

    .line 57
    iget-object v2, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->c:Lcom/nearme/game/sdk/callback/ApiCallback;

    invoke-interface {v2, v0, v9}, Lcom/nearme/game/sdk/callback/ApiCallback;->onFailure(Ljava/lang/String;I)V

    .line 59
    :cond_e2
    invoke-static {}, Lcom/nearme/game/sdk/GameCenterSDK;->getInstance()Lcom/nearme/game/sdk/GameCenterSDK;

    move-result-object v2

    new-instance v3, Lcom/nearme/game/sdk/common/model/biz/ReportParam;

    const-string v4, "pay_result"

    iget-object v5, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->a:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v9, v0}, Lcom/nearme/game/sdk/common/model/biz/ReportParam;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/nearme/game/sdk/GameCenterSDK;->doReportData(Lcom/nearme/game/sdk/common/model/biz/ReportParam;)V

    goto/16 :goto_60

    .line 66
    :cond_f4
    const-string v0, "PayResultReceiver"

    const-string v1, "onReceive payResponse is null."

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "\u652f\u4ed8\u5931\u8d25"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 68
    invoke-static {}, Lcom/nearme/game/sdk/GameCenterSDK;->getInstance()Lcom/nearme/game/sdk/GameCenterSDK;

    move-result-object v0

    new-instance v1, Lcom/nearme/game/sdk/common/model/biz/ReportParam;

    const-string v2, "pay_result"

    iget-object v3, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->a:Ljava/lang/String;

    const-string v4, "payResponse is null."

    invoke-direct {v1, v2, v3, v7, v4}, Lcom/nearme/game/sdk/common/model/biz/ReportParam;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nearme/game/sdk/GameCenterSDK;->doReportData(Lcom/nearme/game/sdk/common/model/biz/ReportParam;)V

    goto/16 :goto_79
.end method
