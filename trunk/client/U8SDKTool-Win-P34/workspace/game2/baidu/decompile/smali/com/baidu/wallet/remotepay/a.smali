.class Lcom/baidu/wallet/remotepay/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/android/pay/PayCallBack;


# instance fields
.field final synthetic a:Lcom/baidu/wallet/remotepay/BDWalletAppPayService$1;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/remotepay/BDWalletAppPayService$1;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/remotepay/a;->a:Lcom/baidu/wallet/remotepay/BDWalletAppPayService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isHideLoadingDialog()Z
    .registers 2

    const-string v0, "remote isHideLoadingDialog"

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/wallet/remotepay/BDWalletAppPayService;->a()Lcom/baidu/wallet/remotepay/IRemoteServiceCallback;

    move-result-object v0

    if-eqz v0, :cond_18

    :try_start_b
    invoke-static {}, Lcom/baidu/wallet/remotepay/BDWalletAppPayService;->a()Lcom/baidu/wallet/remotepay/IRemoteServiceCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/wallet/remotepay/IRemoteServiceCallback;->isHideLoadingDialog()Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_14

    move-result v0

    :goto_13
    return v0

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_18
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public onPayResult(ILjava/lang/String;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/baidu/wallet/remotepay/BDWalletAppPayService;->payEnd(ILjava/lang/String;)V

    return-void
.end method
