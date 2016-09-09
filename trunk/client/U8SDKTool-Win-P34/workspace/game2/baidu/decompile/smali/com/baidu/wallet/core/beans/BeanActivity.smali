.class public abstract Lcom/baidu/wallet/core/beans/BeanActivity;
.super Lcom/baidu/wallet/core/BaseActivity;

# interfaces
.implements Lcom/baidu/wallet/core/beans/IBeanResponseCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/wallet/core/beans/BeanActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/wallet/core/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/wallet/core/beans/BeanActivity;->a:Landroid/os/Handler;

    return-void
.end method

.method private a()Landroid/os/Handler;
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BeanActivity;->a:Landroid/os/Handler;

    if-nez v0, :cond_f

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/wallet/core/beans/BeanActivity;->a:Landroid/os/Handler;

    :cond_f
    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BeanActivity;->a:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public handleFailure(IILjava/lang/String;)V
    .registers 7

    const/16 v0, 0x138b

    if-ne p2, v0, :cond_21

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "wallet_base_please_login"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/AccountManager;->logout()V

    :goto_20
    return-void

    :cond_21
    const/4 v0, -0x2

    if-ne p2, v0, :cond_36

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "fp_get_data_fail"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_20

    :cond_36
    const/4 v0, -0x3

    if-ne p2, v0, :cond_4b

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "fp_get_data_fail"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_20

    :cond_4b
    const/4 v0, -0x4

    if-ne p2, v0, :cond_60

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "fp_get_data_fail"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_20

    :cond_60
    const/4 v0, -0x8

    if-ne p2, v0, :cond_6b

    const/16 v0, 0xb

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    goto :goto_20

    :cond_6b
    iput-object p3, p0, Lcom/baidu/wallet/core/beans/BeanActivity;->mDialogMsg:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BeanActivity;->mDialogMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fp_get_data_fail"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/core/beans/BeanActivity;->mDialogMsg:Ljava/lang/String;

    :cond_81
    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/beans/BeanActivity;->mDialogMsg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_20
.end method

.method public abstract handleResponse(ILjava/lang/Object;Ljava/lang/String;)V
.end method

.method public initActionBar(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "bdactionbar"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/beans/BeanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/BdActionBar;

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/BdActionBar;->setTitle(I)V

    new-instance v1, Lcom/baidu/wallet/core/beans/a;

    invoke-direct {v1, p0}, Lcom/baidu/wallet/core/beans/a;-><init>(Lcom/baidu/wallet/core/beans/BeanActivity;)V

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/BdActionBar;->setLeftZoneOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_25
    return-void
.end method

.method protected initActionBarExt(Ljava/lang/String;)V
    .registers 6

    const-string v0, "simplify"

    sget-object v1, Lcom/baidu/wallet/core/beans/BeanConstants;->CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "bdactionbar"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/beans/BeanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/BdActionBar;

    new-instance v1, Lcom/baidu/wallet/core/beans/BeanActivity$a;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/BdActionBar;->getRightZoneView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/baidu/wallet/core/beans/BeanActivity$a;-><init>(Lcom/baidu/wallet/core/beans/BeanActivity;Landroid/view/View;)V

    new-instance v2, Lcom/baidu/wallet/core/beans/b;

    invoke-direct {v2, p0}, Lcom/baidu/wallet/core/beans/b;-><init>(Lcom/baidu/wallet/core/beans/BeanActivity;)V

    invoke-virtual {v1, v2}, Lcom/baidu/wallet/core/beans/BeanActivity$a;->setMenuItemClickListener(Lcom/baidu/wallet/base/widget/BdMenuItem$OnItemClickListener;)V

    if-eqz v0, :cond_59

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baidu/wallet/base/widget/BdActionBar;->setTitle(I)V

    new-instance v2, Lcom/baidu/wallet/core/beans/c;

    invoke-direct {v2, p0}, Lcom/baidu/wallet/core/beans/c;-><init>(Lcom/baidu/wallet/core/beans/BeanActivity;)V

    invoke-virtual {v0, v2}, Lcom/baidu/wallet/base/widget/BdActionBar;->setLeftZoneOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/baidu/wallet/base/widget/BdActionBar;->setRightImgZone2Enable(Z)V

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "wallet_base_overflow"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baidu/wallet/base/widget/BdActionBar;->setRightImgZone2Src(I)V

    new-instance v2, Lcom/baidu/wallet/core/beans/d;

    invoke-direct {v2, p0, v1}, Lcom/baidu/wallet/core/beans/d;-><init>(Lcom/baidu/wallet/core/beans/BeanActivity;Lcom/baidu/wallet/core/beans/BeanActivity$a;)V

    invoke-virtual {v0, v2}, Lcom/baidu/wallet/base/widget/BdActionBar;->setRightImgZone2OnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_59
    :goto_59
    return-void

    :cond_5a
    invoke-virtual {p0, p1}, Lcom/baidu/wallet/core/beans/BeanActivity;->initActionBar(Ljava/lang/String;)V

    goto :goto_59
.end method

.method public onBeanExecFailure(IILjava/lang/String;)V
    .registers 7

    const-string v0, "BeanActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBeanExecFailure. bean id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", err code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", err msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/baidu/wallet/core/beans/f;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/baidu/wallet/core/beans/f;-><init>(Lcom/baidu/wallet/core/beans/BeanActivity;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onBeanExecFailureWithErrContent(IILjava/lang/String;Ljava/lang/Object;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/wallet/core/beans/BeanActivity;->handleFailure(IILjava/lang/String;)V

    return-void
.end method

.method public onBeanExecSuccess(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/baidu/wallet/core/beans/e;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/baidu/wallet/core/beans/e;-><init>(Lcom/baidu/wallet/core/beans/BeanActivity;ILjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/baidu/wallet/core/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onModuleEvent(Lcom/baidu/wallet/core/eventbus/EventBus$Event;)V
    .registers 6

    if-eqz p1, :cond_25

    iget-object v0, p1, Lcom/baidu/wallet/core/eventbus/EventBus$Event;->mEventKey:Ljava/lang/String;

    const-string v1, "ev_bean_execut_err_content"

    if-ne v0, v1, :cond_25

    iget-object v0, p1, Lcom/baidu/wallet/core/eventbus/EventBus$Event;->mEventObj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/baidu/wallet/core/beans/g;

    if-eqz v0, :cond_25

    iget-object v0, p1, Lcom/baidu/wallet/core/eventbus/EventBus$Event;->mEventObj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/wallet/core/beans/g;

    invoke-virtual {v0}, Lcom/baidu/wallet/core/beans/g;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/baidu/wallet/core/beans/g;->b()I

    move-result v2

    invoke-virtual {v0}, Lcom/baidu/wallet/core/beans/g;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/baidu/wallet/core/beans/g;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/baidu/wallet/core/beans/BeanActivity;->onBeanExecFailureWithErrContent(IILjava/lang/String;Ljava/lang/Object;)V

    :cond_25
    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/baidu/wallet/core/BaseActivity;->onPause()V

    invoke-static {}, Lcom/baidu/wallet/core/eventbus/EventBus;->getInstance()Lcom/baidu/wallet/core/eventbus/EventBus;

    move-result-object v0

    const-string v1, "ev_bean_execut_err_content"

    invoke-virtual {v0, p0, v1}, Lcom/baidu/wallet/core/eventbus/EventBus;->unregister(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Lcom/baidu/wallet/core/BaseActivity;->onResume()V

    invoke-static {}, Lcom/baidu/wallet/core/eventbus/EventBus;->getInstance()Lcom/baidu/wallet/core/eventbus/EventBus;

    move-result-object v0

    const-string v1, "ev_bean_execut_err_content"

    const/4 v2, 0x0

    sget-object v3, Lcom/baidu/wallet/core/eventbus/EventBus$ThreadMode;->MainThread:Lcom/baidu/wallet/core/eventbus/EventBus$ThreadMode;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/baidu/wallet/core/eventbus/EventBus;->register(Ljava/lang/Object;Ljava/lang/String;ILcom/baidu/wallet/core/eventbus/EventBus$ThreadMode;)V

    return-void
.end method
