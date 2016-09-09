.class public Lcom/vivo/plugin/aidl/SendGameInfoManager;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startServiceCancelForceUpdate(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vivo/plugin/aidl/LoginAccInfoService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "send.cancel_update.msg.to.game.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static startServiceCancelLogin(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vivo/plugin/aidl/LoginAccInfoService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "send.cancel_login.msg.to.game.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static startServiceSendGameInfo(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vivo/plugin/aidl/LoginAccInfoService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "send.msg.to.game.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static startServiceSendPayInfo(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vivo/plugin/aidl/LoginAccInfoService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "send.pay.msg.to.game.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static startServiceSendRechargeInfo(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vivo/plugin/aidl/LoginAccInfoService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "send.recharge.msg.to.game.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static startServiceSendSinglePayInfo(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vivo/plugin/aidl/LoginAccInfoService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "send.singlepay.msg.to.game.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
