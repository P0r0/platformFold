.class public abstract Lcom/baidu/paysdk/ui/WelcomeBaseActivity;
.super Lcom/baidu/wallet/core/beans/BeanActivity;


# instance fields
.field protected mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/WelcomeBaseActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/baidu/wallet/core/beans/BeanActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/WelcomeBaseActivity;->setFlagPaySdk()V

    if-nez p1, :cond_2a

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pay_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/WelcomeBaseActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/baidu/paysdk/ui/WelcomeBaseActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_50

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/WelcomeBaseActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/WelcomeBaseActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    :goto_29
    return-void

    :cond_2a
    const-string v0, "mPayRequest"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_3a

    instance-of v1, v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v1, :cond_3a

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/WelcomeBaseActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    :cond_3a
    const-string v0, "mPayResponse"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_16

    instance-of v1, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v1, :cond_16

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v1

    check-cast v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-virtual {v1, v0}, Lcom/baidu/paysdk/storage/PayDataCache;->setPayResponse(Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;)V

    goto :goto_16

    :cond_50
    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->callBackClientCancel()V

    goto :goto_29
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;->onPause()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_14

    invoke-static {}, Lcom/baidu/wallet/core/utils/NFCUtil;->getInstance()Lcom/baidu/wallet/core/utils/NFCUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/WelcomeBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/utils/NFCUtil;->disableForegroundDispatch(Landroid/app/Activity;)V

    :cond_14
    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;->onResume()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_14

    invoke-static {}, Lcom/baidu/wallet/core/utils/NFCUtil;->getInstance()Lcom/baidu/wallet/core/utils/NFCUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/WelcomeBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/utils/NFCUtil;->enableForegroundDispatch(Landroid/app/Activity;)V

    :cond_14
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "mPayRequest"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/WelcomeBaseActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getPayResponse()Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string v1, "mPayResponse"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_16
    invoke-super {p0, p1}, Lcom/baidu/wallet/core/beans/BeanActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected selectPayType()V
    .registers 5

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasMobilePwd()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/storage/PayDataCache;->isUseOneKeyPay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PayController;->getInstance()Lcom/baidu/wallet/base/controllers/PayController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/WelcomeBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/baidu/wallet/base/controllers/PayController;->gotoPwdPay(Lcom/baidu/wallet/core/BaseActivity;Landroid/content/Intent;)V

    :goto_1f
    return-void

    :cond_20
    invoke-static {}, Lcom/baidu/wallet/base/controllers/PayController;->getInstance()Lcom/baidu/wallet/base/controllers/PayController;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p0}, Lcom/baidu/wallet/base/controllers/PayController;->gotoSelectPayWay(ILcom/baidu/wallet/core/BaseActivity;)V

    goto :goto_1f

    :cond_2a
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasBondCards()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PayController;->getInstance()Lcom/baidu/wallet/base/controllers/PayController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/WelcomeBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/WelcomeBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/base/controllers/PayController;->selectCompletCards(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1f

    :cond_44
    invoke-static {}, Lcom/baidu/wallet/base/controllers/PayController;->getInstance()Lcom/baidu/wallet/base/controllers/PayController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/WelcomeBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/WelcomeBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/wallet/base/controllers/PayController;->bindCardPay(Landroid/content/Context;Landroid/content/Intent;Z)V

    goto :goto_1f
.end method
