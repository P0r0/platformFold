.class public Lcom/baidu/wallet/base/widget/DialogFragment;
.super Lcom/baidu/wallet/core/BaseFragment;

# interfaces
.implements Lcom/baidu/wallet/core/beans/IBeanResponseCallback;


# static fields
.field public static final DIALOG_NO_NETWORK:I = 0xf0b

.field public static final DIALOG_PROMPT:I = 0xf03

.field public static final DIALOG_WAIT_S0:I = 0x0

.field public static final DIALOG_WAIT_S1:I = -0x1

.field public static final DIALOG_WAIT_S2:I = -0x2


# instance fields
.field protected mDialogMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/wallet/core/BaseFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/DialogFragment;->mDialogMsg:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/baidu/wallet/base/widget/DialogFragment;)Lcom/baidu/wallet/core/BaseActivity;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/DialogFragment;->mAct:Lcom/baidu/wallet/core/BaseActivity;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/wallet/base/widget/DialogFragment;)V
    .registers 1

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/DialogFragment;->finish()V

    return-void
.end method

.method static synthetic c(Lcom/baidu/wallet/base/widget/DialogFragment;)Lcom/baidu/wallet/core/BaseActivity;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/DialogFragment;->mAct:Lcom/baidu/wallet/core/BaseActivity;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/wallet/base/widget/DialogFragment;)V
    .registers 1

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/DialogFragment;->finish()V

    return-void
.end method

.method static synthetic e(Lcom/baidu/wallet/base/widget/DialogFragment;)Lcom/baidu/wallet/core/BaseActivity;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/DialogFragment;->mAct:Lcom/baidu/wallet/core/BaseActivity;

    return-object v0
.end method

.method static synthetic f(Lcom/baidu/wallet/base/widget/DialogFragment;)Lcom/baidu/wallet/core/BaseActivity;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/DialogFragment;->mAct:Lcom/baidu/wallet/core/BaseActivity;

    return-object v0
.end method

.method static synthetic g(Lcom/baidu/wallet/base/widget/DialogFragment;)Lcom/baidu/wallet/core/BaseActivity;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/DialogFragment;->mAct:Lcom/baidu/wallet/core/BaseActivity;

    return-object v0
.end method

.method static synthetic h(Lcom/baidu/wallet/base/widget/DialogFragment;)Lcom/baidu/wallet/core/BaseActivity;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/DialogFragment;->mAct:Lcom/baidu/wallet/core/BaseActivity;

    return-object v0
.end method


# virtual methods
.method protected cancleRequest()V
    .registers 1

    return-void
.end method

.method public handleFailure(IILjava/lang/String;)V
    .registers 7

    const/16 v0, 0x138b

    if-ne p2, v0, :cond_1b

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/DialogFragment;->mAct:Lcom/baidu/wallet/core/BaseActivity;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/DialogFragment;->mAct:Lcom/baidu/wallet/core/BaseActivity;

    const-string v2, "wallet_base_please_login"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/DialogFragment;->mAct:Lcom/baidu/wallet/core/BaseActivity;

    invoke-static {v0}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/AccountManager;->logout()V

    :goto_1a
    return-void

    :cond_1b
    const/4 v0, -0x2

    if-ne p2, v0, :cond_2c

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/DialogFragment;->mAct:Lcom/baidu/wallet/core/BaseActivity;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/DialogFragment;->mAct:Lcom/baidu/wallet/core/BaseActivity;

    const-string v2, "fp_get_data_fail"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1a

    :cond_2c
    const/4 v0, -0x3

    if-ne p2, v0, :cond_3d

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/DialogFragment;->mAct:Lcom/baidu/wallet/core/BaseActivity;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/DialogFragment;->mAct:Lcom/baidu/wallet/core/BaseActivity;

    const-string v2, "fp_get_data_fail"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1a

    :cond_3d
    const/4 v0, -0x4

    if-ne p2, v0, :cond_4e

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/DialogFragment;->mAct:Lcom/baidu/wallet/core/BaseActivity;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/DialogFragment;->mAct:Lcom/baidu/wallet/core/BaseActivity;

    const-string v2, "fp_get_data_fail"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1a

    :cond_4e
    const/4 v0, -0x8

    if-ne p2, v0, :cond_5b

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/DialogFragment;->mAct:Lcom/baidu/wallet/core/BaseActivity;

    const/16 v1, 0xf0b

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    goto :goto_1a

    :cond_5b
    iput-object p3, p0, Lcom/baidu/wallet/base/widget/DialogFragment;->mDialogMsg:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/DialogFragment;->mDialogMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "fp_get_data_fail"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/DialogFragment;->mDialogMsg:Ljava/lang/String;

    :cond_71
    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/DialogFragment;->mDialogMsg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1a
.end method

.method public handleResponse(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method protected initActionBar(Landroid/view/View;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/DialogFragment;->mAct:Lcom/baidu/wallet/core/BaseActivity;

    const-string v1, "bdactionbar"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/BdActionBar;

    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/DialogFragment;->mAct:Lcom/baidu/wallet/core/BaseActivity;

    invoke-static {v1, p2}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/BdActionBar;->setTitle(I)V

    new-instance v1, Lcom/baidu/wallet/base/widget/l;

    invoke-direct {v1, p0}, Lcom/baidu/wallet/base/widget/l;-><init>(Lcom/baidu/wallet/base/widget/DialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/BdActionBar;->setLeftZoneOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_21
    return-void
.end method

.method protected initHomeActionBar(Landroid/view/View;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/DialogFragment;->mAct:Lcom/baidu/wallet/core/BaseActivity;

    const-string v1, "bdactionbar"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/BdActionBar;

    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/DialogFragment;->mAct:Lcom/baidu/wallet/core/BaseActivity;

    invoke-static {v1, p2}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/BdActionBar;->setTitle(I)V

    new-instance v1, Lcom/baidu/wallet/base/widget/m;

    invoke-direct {v1, p0}, Lcom/baidu/wallet/base/widget/m;-><init>(Lcom/baidu/wallet/base/widget/DialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/BdActionBar;->setLeftZoneOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_21
    return-void
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

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/DialogFragment;->mAct:Lcom/baidu/wallet/core/BaseActivity;

    if-nez v0, :cond_31

    :goto_30
    return-void

    :cond_31
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/DialogFragment;->mAct:Lcom/baidu/wallet/core/BaseActivity;

    new-instance v1, Lcom/baidu/wallet/base/widget/s;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/baidu/wallet/base/widget/s;-><init>(Lcom/baidu/wallet/base/widget/DialogFragment;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_30
.end method

.method protected onBeanExecFailureWithErrContent(IILjava/lang/String;Ljava/lang/Object;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/wallet/base/widget/DialogFragment;->handleFailure(IILjava/lang/String;)V

    return-void
.end method

.method public onBeanExecSuccess(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/DialogFragment;->mAct:Lcom/baidu/wallet/core/BaseActivity;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/DialogFragment;->mAct:Lcom/baidu/wallet/core/BaseActivity;

    new-instance v1, Lcom/baidu/wallet/base/widget/r;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/baidu/wallet/base/widget/r;-><init>(Lcom/baidu/wallet/base/widget/DialogFragment;ILjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 5

    const-string v0, "DialogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDalog. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_2c

    new-instance v0, Lcom/baidu/wallet/base/widget/PromptDialog;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/DialogFragment;->mAct:Lcom/baidu/wallet/core/BaseActivity;

    invoke-direct {v0, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;-><init>(Landroid/content/Context;)V

    :goto_22
    return-object v0

    :pswitch_23
    new-instance v0, Lcom/baidu/wallet/base/widget/LoadingDialog;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/DialogFragment;->mAct:Lcom/baidu/wallet/core/BaseActivity;

    invoke-direct {v0, v1}, Lcom/baidu/wallet/base/widget/LoadingDialog;-><init>(Landroid/content/Context;)V

    goto :goto_22

    nop

    :pswitch_data_2c
    .packed-switch -0x2
        :pswitch_23
        :pswitch_23
        :pswitch_23
    .end packed-switch
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

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/baidu/wallet/base/widget/DialogFragment;->onBeanExecFailureWithErrContent(IILjava/lang/String;Ljava/lang/Object;)V

    :cond_25
    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/baidu/wallet/core/BaseFragment;->onPause()V

    invoke-static {}, Lcom/baidu/wallet/core/eventbus/EventBus;->getInstance()Lcom/baidu/wallet/core/eventbus/EventBus;

    move-result-object v0

    const-string v1, "ev_bean_execut_err_content"

    invoke-virtual {v0, p0, v1}, Lcom/baidu/wallet/core/eventbus/EventBus;->unregister(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "DialogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepareDialog. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch p1, :sswitch_data_76

    :goto_1d
    return-void

    :sswitch_1e
    check-cast p2, Lcom/baidu/wallet/base/widget/LoadingDialog;

    invoke-virtual {p2, v3}, Lcom/baidu/wallet/base/widget/LoadingDialog;->setCancelable(Z)V

    goto :goto_1d

    :sswitch_24
    check-cast p2, Lcom/baidu/wallet/base/widget/LoadingDialog;

    invoke-virtual {p2, v4}, Lcom/baidu/wallet/base/widget/LoadingDialog;->setCancelable(Z)V

    new-instance v0, Lcom/baidu/wallet/base/widget/n;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/base/widget/n;-><init>(Lcom/baidu/wallet/base/widget/DialogFragment;)V

    invoke-virtual {p2, v0}, Lcom/baidu/wallet/base/widget/LoadingDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_1d

    :sswitch_32
    check-cast p2, Lcom/baidu/wallet/base/widget/LoadingDialog;

    invoke-virtual {p2, v4}, Lcom/baidu/wallet/base/widget/LoadingDialog;->setCancelable(Z)V

    new-instance v0, Lcom/baidu/wallet/base/widget/o;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/base/widget/o;-><init>(Lcom/baidu/wallet/base/widget/DialogFragment;)V

    invoke-virtual {p2, v0}, Lcom/baidu/wallet/base/widget/LoadingDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_1d

    :sswitch_40
    check-cast p2, Lcom/baidu/wallet/base/widget/PromptDialog;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/DialogFragment;->mAct:Lcom/baidu/wallet/core/BaseActivity;

    const-string v1, "ebpay_no_network"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/DialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/baidu/wallet/base/widget/PromptDialog;->setMessage(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lcom/baidu/wallet/base/widget/PromptDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/DialogFragment;->mAct:Lcom/baidu/wallet/core/BaseActivity;

    const-string v1, "ebpay_cancel"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/baidu/wallet/base/widget/p;

    invoke-direct {v1, p0}, Lcom/baidu/wallet/base/widget/p;-><init>(Lcom/baidu/wallet/base/widget/DialogFragment;)V

    invoke-virtual {p2, v0, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setNegativeBtn(ILandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/DialogFragment;->mAct:Lcom/baidu/wallet/core/BaseActivity;

    const-string v1, "ebpay_setting"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/baidu/wallet/base/widget/q;

    invoke-direct {v1, p0}, Lcom/baidu/wallet/base/widget/q;-><init>(Lcom/baidu/wallet/base/widget/DialogFragment;)V

    invoke-virtual {p2, v0, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setPositiveBtn(ILandroid/view/View$OnClickListener;)V

    goto :goto_1d

    nop

    :sswitch_data_76
    .sparse-switch
        -0x2 -> :sswitch_32
        -0x1 -> :sswitch_24
        0x0 -> :sswitch_1e
        0xf0b -> :sswitch_40
    .end sparse-switch
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Lcom/baidu/wallet/core/BaseFragment;->onResume()V

    invoke-static {}, Lcom/baidu/wallet/core/eventbus/EventBus;->getInstance()Lcom/baidu/wallet/core/eventbus/EventBus;

    move-result-object v0

    const-string v1, "ev_bean_execut_err_content"

    const/4 v2, 0x0

    sget-object v3, Lcom/baidu/wallet/core/eventbus/EventBus$ThreadMode;->MainThread:Lcom/baidu/wallet/core/eventbus/EventBus$ThreadMode;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/baidu/wallet/core/eventbus/EventBus;->register(Ljava/lang/Object;Ljava/lang/String;ILcom/baidu/wallet/core/eventbus/EventBus$ThreadMode;)V

    return-void
.end method

.method public postEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    invoke-static {}, Lcom/baidu/wallet/core/eventbus/EventBus;->getInstance()Lcom/baidu/wallet/core/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/baidu/wallet/core/eventbus/EventBus$Event;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0, p1, p2}, Lcom/baidu/wallet/core/eventbus/EventBus$Event;-><init>(Lcom/baidu/wallet/core/eventbus/EventBus;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/eventbus/EventBus;->post(Lcom/baidu/wallet/core/eventbus/EventBus$Event;)V

    return-void
.end method
