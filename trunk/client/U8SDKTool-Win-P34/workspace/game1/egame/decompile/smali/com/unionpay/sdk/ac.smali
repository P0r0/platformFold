.class final Lcom/unionpay/sdk/ac;
.super Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_15

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/unionpay/sdk/ap;

    if-eqz v0, :cond_15

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/unionpay/sdk/ap;

    invoke-static {}, Lcom/unionpay/sdk/ai;->a()Lcom/unionpay/sdk/OttoBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/unionpay/sdk/OttoBus;->post(Ljava/lang/Object;)V

    :cond_15
    return-void
.end method
