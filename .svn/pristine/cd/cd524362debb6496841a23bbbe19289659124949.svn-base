.class public Lcom/baidu/paysdk/ui/H5PayWebViewActivity;
.super Lcom/baidu/paysdk/ui/BaseWebViewActivity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BaseWebViewActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected notifyResultMsg()V
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/paysdk/ui/H5PayWebViewActivity;->mIsSuccessFlag:Z

    if-eqz v0, :cond_10

    const-string v0, ""

    invoke-static {v0}, Lcom/baidu/paysdk/PayCallBackManager;->callBackClientSuccess(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/H5PayWebViewActivity;->mIsSuccessFlag:Z

    :goto_c
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/H5PayWebViewActivity;->finish()V

    return-void

    :cond_10
    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->callBackClientCancel()V

    goto :goto_c
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/baidu/paysdk/ui/BaseWebViewActivity;->onPause()V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/H5PayWebViewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "H5PayWebViewActivity"

    invoke-static {v0, v1}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onPageEnd(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/baidu/paysdk/ui/BaseWebViewActivity;->onResume()V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/H5PayWebViewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "H5PayWebViewActivity"

    invoke-static {v0, v1}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onPageStart(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
