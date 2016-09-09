.class Lmm/yp/purchasesdk/g;
.super Landroid/os/Handler;


# instance fields
.field final synthetic b:Lmm/yp/purchasesdk/YPPurchase;


# direct methods
.method constructor <init>(Lmm/yp/purchasesdk/YPPurchase;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lmm/yp/purchasesdk/g;->b:Lmm/yp/purchasesdk/YPPurchase;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmm/yp/purchasesdk/b;

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_28

    :goto_b
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_f
    iget-object v2, p0, Lmm/yp/purchasesdk/g;->b:Lmm/yp/purchasesdk/YPPurchase;

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmm/yp/purchasesdk/YPPurchase;->b(Landroid/content/Context;)V

    iget-object v2, p0, Lmm/yp/purchasesdk/g;->b:Lmm/yp/purchasesdk/YPPurchase;

    invoke-static {v2}, Lmm/yp/purchasesdk/YPPurchase;->a(Lmm/yp/purchasesdk/YPPurchase;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lmm/yp/purchasesdk/g;->b:Lmm/yp/purchasesdk/YPPurchase;

    invoke-static {v3}, Lmm/yp/purchasesdk/YPPurchase;->b(Lmm/yp/purchasesdk/YPPurchase;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lmm/yp/purchasesdk/c;->a(Landroid/os/Handler;Landroid/os/Handler;Lmm/yp/purchasesdk/b;I)V

    goto :goto_b

    :pswitch_data_28
    .packed-switch 0x2
        :pswitch_f
    .end packed-switch
.end method
