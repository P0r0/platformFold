.class final Lcom/unionpay/mobile/android/pboctransaction/samsung/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/pboctransaction/samsung/b;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/pboctransaction/samsung/b;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/d;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    const-string v0, "plugin-clientV3"

    const-string v1, "startSamsungService onServiceConnected"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/d;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/b;

    invoke-static {p2}, Lcom/unionpay/client3/tsm/ITsmConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/client3/tsm/ITsmConnection;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;->a(Lcom/unionpay/mobile/android/pboctransaction/samsung/b;Lcom/unionpay/client3/tsm/ITsmConnection;)Lcom/unionpay/client3/tsm/ITsmConnection;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/d;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/b;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;->a(Lcom/unionpay/mobile/android/pboctransaction/samsung/b;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/d;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;->a(Lcom/unionpay/mobile/android/pboctransaction/samsung/b;Z)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_20} :catch_21

    :goto_20
    return-void

    :catch_21
    move-exception v0

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/d;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;->a(Lcom/unionpay/mobile/android/pboctransaction/samsung/b;Z)V

    goto :goto_20
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    const-string v0, "plugin-clientV3"

    const-string v1, "startSamsungService onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/d;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;->a(Lcom/unionpay/mobile/android/pboctransaction/samsung/b;Lcom/unionpay/client3/tsm/ITsmConnection;)Lcom/unionpay/client3/tsm/ITsmConnection;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/d;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/b;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;->a(Lcom/unionpay/mobile/android/pboctransaction/samsung/b;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/d;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;->a(Lcom/unionpay/mobile/android/pboctransaction/samsung/b;Z)V

    return-void
.end method
