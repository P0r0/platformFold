.class final Lcom/unionpay/sdk/ak;
.super Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    invoke-static {}, Lcom/unionpay/sdk/AgentOption;->a()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/unionpay/sdk/r$a;

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/unionpay/sdk/r$a;

    iget-object v1, v0, Lcom/unionpay/sdk/r$a;->a:Ljava/util/HashMap;

    const-string v2, "controller"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/unionpay/sdk/ar;->c()Lcom/unionpay/sdk/ar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unionpay/sdk/v;->a()V

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_3c

    :goto_28
    invoke-static {}, Lcom/unionpay/sdk/ar;->c()Lcom/unionpay/sdk/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/sdk/v;->b()V

    goto :goto_6

    :pswitch_30
    iget-object v0, v0, Lcom/unionpay/sdk/r$a;->a:Ljava/util/HashMap;

    goto :goto_28

    :pswitch_33
    invoke-static {}, Lcom/unionpay/sdk/ai;->a()Lcom/unionpay/sdk/OttoBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/unionpay/sdk/OttoBus;->post(Ljava/lang/Object;)V

    goto :goto_28

    nop

    :pswitch_data_3c
    .packed-switch 0x65
        :pswitch_30
        :pswitch_33
    .end packed-switch
.end method
