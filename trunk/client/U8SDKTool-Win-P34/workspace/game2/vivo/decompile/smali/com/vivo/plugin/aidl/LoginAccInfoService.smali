.class public Lcom/vivo/plugin/aidl/LoginAccInfoService;
.super Landroid/app/Service;


# static fields
.field public static final SEND_CANCEL_LOGIN_MSG_TO_GAME_ACTION:Ljava/lang/String; = "send.cancel_login.msg.to.game.action"

.field public static final SEND_CANCEL_UPDATE_MSG_TO_GAME_ACTION:Ljava/lang/String; = "send.cancel_update.msg.to.game.action"

.field public static final SEND_MSG_TO_GAME_ACTION:Ljava/lang/String; = "send.msg.to.game.action"

.field public static final SEND_PAY_MSG_TO_GAME_ACTION:Ljava/lang/String; = "send.pay.msg.to.game.action"

.field public static final SEND_RECHARGE_MSG_TO_GAME_ACTION:Ljava/lang/String; = "send.recharge.msg.to.game.action"

.field public static final SEND_SINGLE_PAY_MSG_TO_GAME_ACTION:Ljava/lang/String; = "send.singlepay.msg.to.game.action"


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Ljava/util/ArrayList;

.field private c:Lcom/vivo/plugin/aidl/IAccountCallBack;

.field private d:Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack;

.field private e:Lcom/vivo/plugin/aidl/ISinglePayCallBack;

.field private f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

.field private g:Landroid/content/Context;

.field private h:Lcom/vivo/plugin/aidl/ExecuteServiceAIDL$Stub;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->b:Ljava/util/ArrayList;

    new-instance v0, Lcom/vivo/plugin/aidl/a;

    invoke-direct {v0, p0}, Lcom/vivo/plugin/aidl/a;-><init>(Lcom/vivo/plugin/aidl/LoginAccInfoService;)V

    iput-object v0, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->h:Lcom/vivo/plugin/aidl/ExecuteServiceAIDL$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    const-string v0, "LoginAccInfoService"

    const-string v1, "------onBind() enter-------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->h:Lcom/vivo/plugin/aidl/ExecuteServiceAIDL$Stub;

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "LoginAccInfoService"

    const-string v1, "------onCreate() enter-------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->g:Landroid/content/Context;

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    return-void
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "LoginAccInfoService"

    const-string v1, "------onDestroy() enter-------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 6

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    const-string v0, "LoginAccInfoService"

    const-string v1, "------onStart() enter-------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_71

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_71

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "---------action: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    const-string v1, "send.msg.to.game.action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    iget-object v0, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGamePackageNameList()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGamePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6e

    iget-object v0, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGamePackageNameList()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGamePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGamePackageNameList(Ljava/lang/String;)V

    :cond_6e
    invoke-virtual {p0}, Lcom/vivo/plugin/aidl/LoginAccInfoService;->sendLoginResult()V

    :cond_71
    :goto_71
    return-void

    :cond_72
    const-string v1, "send.cancel_update.msg.to.game.action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-virtual {p0}, Lcom/vivo/plugin/aidl/LoginAccInfoService;->sendCancelUpdate()V

    goto :goto_71

    :cond_7e
    const-string v1, "send.pay.msg.to.game.action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    invoke-virtual {p0}, Lcom/vivo/plugin/aidl/LoginAccInfoService;->sendPayInfoToGame()V

    goto :goto_71

    :cond_8a
    const-string v1, "send.singlepay.msg.to.game.action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    invoke-virtual {p0}, Lcom/vivo/plugin/aidl/LoginAccInfoService;->sendSinglePayInfoToGame()V

    goto :goto_71

    :cond_96
    const-string v1, "send.recharge.msg.to.game.action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a2

    invoke-virtual {p0}, Lcom/vivo/plugin/aidl/LoginAccInfoService;->sendRechageInfoToGame()V

    goto :goto_71

    :cond_a2
    const-string v1, "send.cancel_login.msg.to.game.action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-virtual {p0}, Lcom/vivo/plugin/aidl/LoginAccInfoService;->sendCancelLogin()V

    goto :goto_71
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 4

    const-string v0, "LoginAccInfoService"

    const-string v1, "------onUnbind() enter-------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->c:Lcom/vivo/plugin/aidl/IAccountCallBack;

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public sendCancelLogin()V
    .registers 3

    const-string v0, "LoginAccInfoService"

    const-string v1, "-------\u56de\u8c03\u5931\u8d25\u5566-----mLoginCallBack is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendCancelUpdate()V
    .registers 3

    const-string v0, "LoginAccInfoService"

    const-string v1, "-------\u56de\u8c03\u5931\u8d25\u5566-----mLoginCallBack is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendLoginResult()V
    .registers 3

    const-string v0, "LoginAccInfoService"

    const-string v1, "-------\u56de\u8c03\u5931\u8d25\u5566-----mLoginCallBack is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendPayInfoToGame()V
    .registers 9

    const-string v0, "LoginAccInfoService"

    const-string v1, "-------service\u53d1\u51fa\u652f\u4ed8\u6210\u529f\u4fe1\u606f--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    iget-object v0, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getTransNo()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getResult_code()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getPay_msg()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getPay_gamePackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getPay_result()Z

    move-result v2

    const-string v0, "LoginAccInfoService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "transNo: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " result_code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pay_msg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pay_result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pay_gamePackageName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_67
    :goto_67
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_73

    iget-object v0, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->d:Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack;

    invoke-interface/range {v0 .. v5}, Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack;->payResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_72
    return-void

    :cond_73
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_67

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack;

    iput-object v0, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->d:Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_87} :catch_88

    goto :goto_67

    :catch_88
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_72
.end method

.method public sendRechageInfoToGame()V
    .registers 9

    const-string v0, "LoginAccInfoService"

    const-string v1, "-------service\u53d1\u51fa\u5145\u503c\u6210\u529f\u4fe1\u606f--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    iget-object v0, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getUid()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getResult_code()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getPay_msg()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getRecharge_gamePackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getPay_result()Z

    move-result v2

    const-string v0, "LoginAccInfoService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "uid: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " result_code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pay_msg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pay_result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " recharge_gamePackageName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_67
    :goto_67
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_73

    iget-object v0, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->d:Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack;

    invoke-interface/range {v0 .. v5}, Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack;->rechargeResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_72
    return-void

    :cond_73
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_67

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack;

    iput-object v0, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->d:Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_87} :catch_88

    goto :goto_67

    :catch_88
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_72
.end method

.method public sendSinglePayInfoToGame()V
    .registers 9

    const-string v0, "LoginAccInfoService"

    const-string v1, "-------service\u53d1\u51fa\u5355\u673a\u652f\u4ed8\u6210\u529f\u4fe1\u606f--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    iget-object v0, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getTransNo()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getResult_code()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getPay_msg()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getPay_gamePackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getPay_result()Z

    move-result v2

    const-string v0, "LoginAccInfoService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "transNo: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " result_code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pay_msg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pay_result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pay_gamePackageName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_67
    :goto_67
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_73

    iget-object v0, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->e:Lcom/vivo/plugin/aidl/ISinglePayCallBack;

    invoke-interface/range {v0 .. v5}, Lcom/vivo/plugin/aidl/ISinglePayCallBack;->payResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_72
    return-void

    :cond_73
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_67

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/plugin/aidl/ISinglePayCallBack;

    iput-object v0, p0, Lcom/vivo/plugin/aidl/LoginAccInfoService;->e:Lcom/vivo/plugin/aidl/ISinglePayCallBack;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_87} :catch_88

    goto :goto_67

    :catch_88
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_72
.end method
