.class final Lcom/bbk/payment/payment/b;
.super Landroid/os/Handler;


# instance fields
.field private final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/payment/b;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 9

    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_d8

    :cond_9
    :goto_9
    return-void

    :pswitch_a
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v0, "VivoPaymentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "errorCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    aget-object v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "6002"

    const/4 v1, 0x1

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    const-string v0, "4012"

    const/4 v1, 0x1

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    const-string v0, "8000"

    const/4 v1, 0x1

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    const-string v0, "66200000"

    const/4 v1, 0x1

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_53
    iget-object v0, p0, Lcom/bbk/payment/payment/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bbk/payment/payment/VivoPaymentManager;->getInstance(Landroid/content/Context;)Lcom/bbk/payment/payment/VivoPaymentManager;

    move-result-object v0

    invoke-static {}, Lcom/bbk/payment/payment/VivoPaymentManager;->a()Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getTransNo()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-string v4, "4006"

    invoke-static {v4}, Lcom/bbk/payment/util/Constants;->getErrorMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/bbk/payment/payment/VivoPaymentManager;->a()Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getPackageN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/bbk/payment/payment/VivoPaymentManager;->singlePayResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7a} :catch_7b

    goto :goto_9

    :catch_7b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    :pswitch_80
    :try_start_80
    iget-object v0, p0, Lcom/bbk/payment/payment/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bbk/payment/payment/VivoPaymentManager;->getInstance(Landroid/content/Context;)Lcom/bbk/payment/payment/VivoPaymentManager;

    move-result-object v0

    invoke-static {}, Lcom/bbk/payment/payment/VivoPaymentManager;->a()Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getTransNo()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "9000"

    iget-object v4, p0, Lcom/bbk/payment/payment/b;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/bbk/payment/payment/b;->a:Landroid/content/Context;

    const-string v6, "bbk_pay_succ"

    invoke-static {v5, v6}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/bbk/payment/payment/VivoPaymentManager;->a()Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getPackageN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/bbk/payment/payment/VivoPaymentManager;->singlePayResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_b0
    iget-object v0, p0, Lcom/bbk/payment/payment/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bbk/payment/payment/VivoPaymentManager;->getInstance(Landroid/content/Context;)Lcom/bbk/payment/payment/VivoPaymentManager;

    move-result-object v0

    invoke-static {}, Lcom/bbk/payment/payment/VivoPaymentManager;->a()Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getTransNo()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "6001"

    const-string v4, "6001"

    invoke-static {v4}, Lcom/bbk/payment/util/Constants;->getErrorMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/bbk/payment/payment/VivoPaymentManager;->a()Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getPackageN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/bbk/payment/payment/VivoPaymentManager;->singlePayResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_d6} :catch_7b

    goto/16 :goto_9

    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_80
        :pswitch_a
        :pswitch_b0
    .end packed-switch
.end method
