.class Lmm/yp/purchasesdk/f;
.super Landroid/os/Handler;


# instance fields
.field final synthetic b:Lmm/yp/purchasesdk/e;


# direct methods
.method constructor <init>(Lmm/yp/purchasesdk/e;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lmm/yp/purchasesdk/f;->b:Lmm/yp/purchasesdk/e;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmm/yp/purchasesdk/b;

    const-string v1, "TaskThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReqHandler Handler id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TaskThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReqHandler Handler name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_54

    :goto_49
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_4d
    iget-object v1, p0, Lmm/yp/purchasesdk/f;->b:Lmm/yp/purchasesdk/e;

    invoke-virtual {v1, v0}, Lmm/yp/purchasesdk/e;->a(Lmm/yp/purchasesdk/b;)V

    goto :goto_49

    nop

    :pswitch_data_54
    .packed-switch 0x2
        :pswitch_4d
    .end packed-switch
.end method
