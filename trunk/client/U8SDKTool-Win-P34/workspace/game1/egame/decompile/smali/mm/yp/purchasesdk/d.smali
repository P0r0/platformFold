.class public Lmm/yp/purchasesdk/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lmm/yp/purchasesdk/a/a;

.field private static b:Z


# instance fields
.field a:Landroid/os/Handler;

.field private a:Lmm/yp/purchasesdk/e;

.field b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lmm/yp/purchasesdk/a/a;
    .registers 1

    sget-object v0, Lmm/yp/purchasesdk/d;->a:Lmm/yp/purchasesdk/a/a;

    return-object v0
.end method

.method public static a()Z
    .registers 1

    sget-boolean v0, Lmm/yp/purchasesdk/d;->b:Z

    return v0
.end method


# virtual methods
.method public a()Lmm/yp/purchasesdk/PayInfo;
    .registers 5

    const-string v0, "TaskThread"

    const-string v1, " enter auth  "

    invoke-static {v0, v1}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lmm/yp/purchasesdk/d;->a:Lmm/yp/purchasesdk/a/a;

    if-nez v0, :cond_12

    new-instance v0, Lmm/yp/purchasesdk/a/a;

    invoke-direct {v0}, Lmm/yp/purchasesdk/a/a;-><init>()V

    sput-object v0, Lmm/yp/purchasesdk/d;->a:Lmm/yp/purchasesdk/a/a;

    :cond_12
    new-instance v0, Lmm/yp/purchasesdk/PayInfo;

    invoke-direct {v0}, Lmm/yp/purchasesdk/PayInfo;-><init>()V

    sget-object v1, Lmm/yp/purchasesdk/d;->a:Lmm/yp/purchasesdk/a/a;

    invoke-virtual {v1, v0}, Lmm/yp/purchasesdk/a/a;->a(Lmm/yp/purchasesdk/PayInfo;)V

    sget-object v0, Lmm/yp/purchasesdk/d;->a:Lmm/yp/purchasesdk/a/a;

    invoke-static {v0}, Lmm/yp/purchasesdk/b/a;->a(Lmm/yp/purchasesdk/a/a;)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "TaskThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " enter auth ret =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/yp/purchasesdk/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmm/yp/purchasesdk/e/c;->j(Ljava/lang/String;)V

    :cond_47
    const-string v0, "TaskThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AuthManager checkAuth ret = null.code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lmm/yp/purchasesdk/PurchaseCode;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/yp/purchasesdk/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lmm/yp/purchasesdk/d;->a:Lmm/yp/purchasesdk/a/a;

    invoke-virtual {v0}, Lmm/yp/purchasesdk/a/a;->a()Lmm/yp/purchasesdk/PayInfo;

    move-result-object v0

    invoke-static {}, Lmm/yp/purchasesdk/PurchaseCode;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lmm/yp/purchasesdk/PayInfo;->setStatusCode(I)V

    return-object v0
.end method

.method public a(Landroid/os/Handler;)V
    .registers 2

    iput-object p1, p0, Lmm/yp/purchasesdk/d;->a:Landroid/os/Handler;

    return-void
.end method

.method public a(Lmm/yp/purchasesdk/b;)V
    .registers 4

    new-instance v0, Lmm/yp/purchasesdk/e;

    const-string v1, "purchase-task"

    invoke-direct {v0, v1}, Lmm/yp/purchasesdk/e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmm/yp/purchasesdk/d;->a:Lmm/yp/purchasesdk/e;

    iget-object v0, p0, Lmm/yp/purchasesdk/d;->a:Lmm/yp/purchasesdk/e;

    invoke-virtual {v0}, Lmm/yp/purchasesdk/e;->start()V

    iget-object v0, p0, Lmm/yp/purchasesdk/d;->a:Lmm/yp/purchasesdk/e;

    invoke-virtual {v0}, Lmm/yp/purchasesdk/e;->init()V

    iget-object v0, p0, Lmm/yp/purchasesdk/d;->a:Lmm/yp/purchasesdk/e;

    iget-object v1, p0, Lmm/yp/purchasesdk/d;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lmm/yp/purchasesdk/e;->b(Landroid/os/Handler;)V

    iget-object v0, p0, Lmm/yp/purchasesdk/d;->a:Lmm/yp/purchasesdk/e;

    invoke-virtual {v0}, Lmm/yp/purchasesdk/e;->a()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lmm/yp/purchasesdk/d;->b:Landroid/os/Handler;

    const-string v0, "TaskThread"

    const-string v1, " enter order  "

    invoke-static {v0, v1}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lmm/yp/purchasesdk/c/a;->a()V

    const/4 v0, 0x3

    sput v0, Lmm/yp/purchasesdk/c/a;->e:I

    iget-object v0, p0, Lmm/yp/purchasesdk/d;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
