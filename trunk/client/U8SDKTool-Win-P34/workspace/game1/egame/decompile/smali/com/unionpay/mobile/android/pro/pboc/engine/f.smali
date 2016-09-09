.class final Lcom/unionpay/mobile/android/pro/pboc/engine/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unionpay/mobile/android/pboctransaction/b;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/pro/pboc/engine/b;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/pboc/engine/f;->a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    const-string v0, "uppay-spay"

    const-string v1, "tsmservice  init success"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unionpay/mobile/android/model/b;->bh:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/pboc/engine/f;->a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/pboc/engine/b;->b(Lcom/unionpay/mobile/android/pro/pboc/engine/b;)Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/pboc/engine/f;->a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/pboc/engine/b;->b(Lcom/unionpay/mobile/android/pro/pboc/engine/b;)Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->e()Z

    move-result v0

    sput-boolean v0, Lcom/unionpay/mobile/android/model/b;->aw:Z

    :cond_1e
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/pboc/engine/f;->a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/pro/pboc/engine/b;->a(Lcom/unionpay/mobile/android/pro/pboc/engine/b;I)V

    return-void
.end method

.method public final b()V
    .registers 4

    const-string v0, "UPCardEngine"

    const-string v1, "mSE init failed"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "uppay-spay"

    const-string v1, "tsmservice  init fail"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/pboc/engine/f;->a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/pboc/engine/b;->a(Lcom/unionpay/mobile/android/pro/pboc/engine/b;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/pboc/engine/f;->a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/pboc/engine/b;->a(Lcom/unionpay/mobile/android/pro/pboc/engine/b;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/pboc/engine/f;->a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-static {v1}, Lcom/unionpay/mobile/android/pro/pboc/engine/b;->a(Lcom/unionpay/mobile/android/pro/pboc/engine/b;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2c
    return-void
.end method
