.class final Lcom/bbk/payment/ar;
.super Landroid/os/Handler;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/bbk/payment/RechargeChoiceActivity;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbk/payment/ar;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/bbk/payment/ar;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbk/payment/RechargeChoiceActivity;

    if-eqz v0, :cond_37

    :try_start_d
    invoke-static {v0}, Lcom/bbk/payment/RechargeChoiceActivity;->b(Lcom/bbk/payment/RechargeChoiceActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "amount_result"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/bbk/payment/provider/PaymentUsageUtils;->saveUsageData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_108

    :cond_37
    :goto_37
    return-void

    :pswitch_38
    const-string v2, "6000"

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    const-string v2, "6002"

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    const-string v2, "9999"

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    :cond_59
    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_64} :catch_65

    goto :goto_37

    :catch_65
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_37

    :cond_6a
    :try_start_6a
    const-string v2, "6001"

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    const-string v2, "66200003"

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    const-string v2, "4000"

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    const-string v2, "4012"

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_be

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "pay_result"

    const-string v4, "fail"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "orderInfo"

    invoke-static {v0}, Lcom/bbk/payment/RechargeChoiceActivity;->e(Lcom/bbk/payment/RechargeChoiceActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "pay_result"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/bbk/payment/RechargeChoiceActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/bbk/payment/RechargeChoiceActivity;->finish()V

    goto/16 :goto_37

    :cond_be
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/bbk/payment/DetectPayResultActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "orderInfo"

    invoke-static {v0}, Lcom/bbk/payment/RechargeChoiceActivity;->e(Lcom/bbk/payment/RechargeChoiceActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/bbk/payment/RechargeChoiceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {v0}, Lcom/bbk/payment/RechargeChoiceActivity;->finish()V

    goto/16 :goto_37

    :pswitch_d7
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/bbk/payment/DetectPayResultActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "orderInfo"

    invoke-static {v0}, Lcom/bbk/payment/RechargeChoiceActivity;->e(Lcom/bbk/payment/RechargeChoiceActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/bbk/payment/RechargeChoiceActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/bbk/payment/RechargeChoiceActivity;->finish()V

    goto/16 :goto_37

    :pswitch_ef
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_105} :catch_65

    goto/16 :goto_37

    nop

    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_d7
        :pswitch_38
        :pswitch_ef
    .end packed-switch
.end method
