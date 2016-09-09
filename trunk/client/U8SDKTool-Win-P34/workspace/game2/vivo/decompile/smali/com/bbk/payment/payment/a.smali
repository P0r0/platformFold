.class final Lcom/bbk/payment/payment/a;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/bbk/payment/payment/PaymentHelper;


# direct methods
.method constructor <init>(Lcom/bbk/payment/payment/PaymentHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/payment/a;->a:Lcom/bbk/payment/payment/PaymentHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bbk/payment/payment/a;->a:Lcom/bbk/payment/payment/PaymentHelper;

    iget-object v1, v1, Lcom/bbk/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/bbk/payment/util/InstallHelper;->showInstallAppDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    nop

    :pswitch_data_16
    .packed-switch 0x2
        :pswitch_9
    .end packed-switch
.end method
