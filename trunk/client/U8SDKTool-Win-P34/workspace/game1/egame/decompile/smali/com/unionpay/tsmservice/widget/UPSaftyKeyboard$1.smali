.class final Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unionpay/tsmservice/UPTsmAddon$UPTsmConnectionListener;


# instance fields
.field final synthetic a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;


# direct methods
.method constructor <init>(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$1;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTsmConnected()V
    .registers 4

    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$1;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->a(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Lcom/unionpay/tsmservice/UPTsmAddon;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2, v0}, Lcom/unionpay/tsmservice/UPTsmAddon;->getPubKey(I[Ljava/lang/String;)I

    iget-object v1, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$1;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->a(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_16} :catch_17

    :goto_16
    return-void

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_16
.end method

.method public final onTsmDisconnected()V
    .registers 1

    return-void
.end method
