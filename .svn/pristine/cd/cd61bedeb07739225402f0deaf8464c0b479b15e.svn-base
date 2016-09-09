.class final Lcom/bbk/payment/alipay/d;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/bbk/payment/alipay/Alipay;


# direct methods
.method constructor <init>(Lcom/bbk/payment/alipay/Alipay;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/alipay/d;->a:Lcom/bbk/payment/alipay/Alipay;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    :try_start_0
    const-string v0, "AliPay"

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/bbk/payment/alipay/d;->a:Lcom/bbk/payment/alipay/Alipay;

    invoke-static {v0}, Lcom/bbk/payment/alipay/Alipay;->a(Lcom/bbk/payment/alipay/Alipay;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    :goto_17
    return-void

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17
.end method
