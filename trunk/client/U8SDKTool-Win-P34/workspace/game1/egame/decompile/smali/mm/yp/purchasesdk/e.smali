.class public Lmm/yp/purchasesdk/e;
.super Landroid/os/HandlerThread;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lmm/yp/purchasesdk/e;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public a(Lmm/yp/purchasesdk/b;)V
    .registers 7

    const/4 v4, 0x2

    invoke-static {}, Lmm/yp/purchasesdk/PurchaseCode;->getStatusCode()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_35

    const-string v1, "TaskThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter order result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmm/yp/purchasesdk/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmm/yp/purchasesdk/e;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v4, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lmm/yp/purchasesdk/PurchaseCode;->getStatusCode()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_34
    return-void

    :cond_35
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lmm/yp/purchasesdk/e/c;->d(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lmm/yp/purchasesdk/e;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v4, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lmm/yp/purchasesdk/PurchaseCode;->getStatusCode()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lmm/yp/purchasesdk/d;->a()Lmm/yp/purchasesdk/a/a;

    move-result-object v1

    invoke-static {v1, v0}, Lmm/yp/purchasesdk/a/b;->a(Lmm/yp/purchasesdk/a/a;Landroid/os/Message;)V

    goto :goto_34
.end method

.method public b(Landroid/os/Handler;)V
    .registers 2

    iput-object p1, p0, Lmm/yp/purchasesdk/e;->a:Landroid/os/Handler;

    return-void
.end method

.method public init()V
    .registers 3

    new-instance v0, Lmm/yp/purchasesdk/f;

    invoke-virtual {p0}, Lmm/yp/purchasesdk/e;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmm/yp/purchasesdk/f;-><init>(Lmm/yp/purchasesdk/e;Landroid/os/Looper;)V

    iput-object v0, p0, Lmm/yp/purchasesdk/e;->b:Landroid/os/Handler;

    return-void
.end method
