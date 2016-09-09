.class final Lcom/bbk/payment/v;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/bbk/payment/JCardActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/JCardActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/v;->a:Lcom/bbk/payment/JCardActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/bbk/payment/v;->a:Lcom/bbk/payment/JCardActivity;

    const-string v1, "cardpay_result"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bbk/payment/provider/PaymentUsageUtils;->saveUsageData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_86

    :goto_1b
    return-void

    :pswitch_1c
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbk/payment/v;->a:Lcom/bbk/payment/JCardActivity;

    const-class v2, Lcom/bbk/payment/DetectPayResultActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "orderInfo"

    iget-object v2, p0, Lcom/bbk/payment/v;->a:Lcom/bbk/payment/JCardActivity;

    invoke-static {v2}, Lcom/bbk/payment/JCardActivity;->a(Lcom/bbk/payment/JCardActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbk/payment/v;->a:Lcom/bbk/payment/JCardActivity;

    invoke-virtual {v1, v0}, Lcom/bbk/payment/JCardActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/bbk/payment/v;->a:Lcom/bbk/payment/JCardActivity;

    invoke-virtual {v0}, Lcom/bbk/payment/JCardActivity;->finish()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    goto :goto_1b

    :catch_3b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b

    :pswitch_40
    :try_start_40
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/v;->a:Lcom/bbk/payment/JCardActivity;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1b

    :pswitch_58
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pay_result"

    const-string v3, "fail"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "orderInfo"

    iget-object v3, p0, Lcom/bbk/payment/v;->a:Lcom/bbk/payment/JCardActivity;

    invoke-static {v3}, Lcom/bbk/payment/JCardActivity;->a(Lcom/bbk/payment/JCardActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "pay_result"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbk/payment/v;->a:Lcom/bbk/payment/JCardActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/bbk/payment/JCardActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/bbk/payment/v;->a:Lcom/bbk/payment/JCardActivity;

    invoke-virtual {v0}, Lcom/bbk/payment/JCardActivity;->finish()V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_84} :catch_3b

    goto :goto_1b

    nop

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_58
        :pswitch_40
    .end packed-switch
.end method
