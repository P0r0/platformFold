.class public Lmm/yp/purchasesdk/YPPurchase;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static a:Lmm/yp/purchasesdk/YPPurchase;


# instance fields
.field private a:Landroid/os/Handler;

.field private a:Landroid/os/HandlerThread;

.field private a:Lmm/yp/purchasesdk/d;

.field private a:Lmm/yp/purchasesdk/sms/SMSReceiver;

.field private b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lmm/yp/purchasesdk/YPPurchase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmm/yp/purchasesdk/YPPurchase;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmm/yp/purchasesdk/YPPurchase;->a:Lmm/yp/purchasesdk/sms/SMSReceiver;

    new-instance v0, Lmm/yp/purchasesdk/d;

    const-string v1, "purchase-task"

    invoke-direct {v0, v1}, Lmm/yp/purchasesdk/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmm/yp/purchasesdk/YPPurchase;->a:Lmm/yp/purchasesdk/d;

    iget-object v0, p0, Lmm/yp/purchasesdk/YPPurchase;->a:Lmm/yp/purchasesdk/sms/SMSReceiver;

    if-nez v0, :cond_1a

    new-instance v0, Lmm/yp/purchasesdk/sms/SMSReceiver;

    invoke-direct {v0}, Lmm/yp/purchasesdk/sms/SMSReceiver;-><init>()V

    iput-object v0, p0, Lmm/yp/purchasesdk/YPPurchase;->a:Lmm/yp/purchasesdk/sms/SMSReceiver;

    :cond_1a
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Response-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmm/yp/purchasesdk/YPPurchase;->a:Landroid/os/HandlerThread;

    iget-object v0, p0, Lmm/yp/purchasesdk/YPPurchase;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lmm/yp/purchasesdk/g;

    iget-object v1, p0, Lmm/yp/purchasesdk/YPPurchase;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmm/yp/purchasesdk/g;-><init>(Lmm/yp/purchasesdk/YPPurchase;Landroid/os/Looper;)V

    iput-object v0, p0, Lmm/yp/purchasesdk/YPPurchase;->a:Landroid/os/Handler;

    iget-object v0, p0, Lmm/yp/purchasesdk/YPPurchase;->a:Lmm/yp/purchasesdk/d;

    iget-object v1, p0, Lmm/yp/purchasesdk/YPPurchase;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lmm/yp/purchasesdk/d;->a(Landroid/os/Handler;)V

    invoke-static {}, Lmm/yp/purchasesdk/e/d;->d()V

    return-void
.end method

.method static synthetic a(Lmm/yp/purchasesdk/YPPurchase;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lmm/yp/purchasesdk/YPPurchase;->b:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;IZLmm/yp/purchasesdk/OnSMSPurchaseListener;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    sget-object v0, Lmm/yp/purchasesdk/YPPurchase;->TAG:Ljava/lang/String;

    const-string v1, "enter order "

    invoke-static {v0, v1}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_d

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_15

    :cond_d
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Context Object is null or Context Object is not instance of Activity"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    if-nez p5, :cond_1f

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "OnPurchaseListener Object is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    if-eqz p2, :cond_2b

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_33

    :cond_2b
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Paycode is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    if-gtz p3, :cond_3d

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "orderCout must be greater than 0 "

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    if-eqz p7, :cond_6e

    invoke-virtual {p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_6e

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserData Error! UserData\'s length must be greater than 16.You have input "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6e
    if-nez p7, :cond_aa

    const-string v0, ""

    invoke-static {v0}, Lmm/yp/purchasesdk/e/c;->e(Ljava/lang/String;)V

    :goto_75
    invoke-virtual {p0, p1}, Lmm/yp/purchasesdk/YPPurchase;->a(Landroid/content/Context;)V

    if-nez p6, :cond_ae

    const-string v0, ""

    invoke-static {v0}, Lmm/yp/purchasesdk/e/c;->d(Ljava/lang/String;)V

    :goto_7f
    sget-object v0, Lmm/yp/purchasesdk/YPPurchase;->TAG:Ljava/lang/String;

    const-string v1, "enter order 1"

    invoke-static {v0, v1}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lmm/yp/purchasesdk/e/c;->setContext(Landroid/content/Context;)V

    invoke-static {p2}, Lmm/yp/purchasesdk/e/c;->b(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p3}, Lmm/yp/purchasesdk/e/c;->a(I)V

    const/4 v0, 0x2

    sput v0, Lmm/yp/purchasesdk/e/c;->g:I

    new-instance v0, Lmm/yp/purchasesdk/b;

    iget-object v1, p0, Lmm/yp/purchasesdk/YPPurchase;->b:Landroid/os/Handler;

    iget-object v2, p0, Lmm/yp/purchasesdk/YPPurchase;->a:Landroid/os/Handler;

    invoke-direct {v0, p5, v1, v2}, Lmm/yp/purchasesdk/b;-><init>(Lmm/yp/purchasesdk/OnSMSPurchaseListener;Landroid/os/Handler;Landroid/os/Handler;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lmm/yp/purchasesdk/PurchaseCode;->setStatusCode(I)V

    invoke-static {p1}, Lmm/yp/purchasesdk/c;->a(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_b2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmm/yp/purchasesdk/b;->onBillingFinish(ILjava/util/HashMap;)V

    :goto_a9
    return-void

    :cond_aa
    invoke-static {p7}, Lmm/yp/purchasesdk/e/c;->e(Ljava/lang/String;)V

    goto :goto_75

    :cond_ae
    invoke-static {p6}, Lmm/yp/purchasesdk/e/c;->d(Ljava/lang/String;)V

    goto :goto_7f

    :cond_b2
    const/16 v1, 0x3e8

    invoke-static {v1}, Lmm/yp/purchasesdk/PurchaseCode;->setStatusCode(I)V

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->z()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lmm/yp/purchasesdk/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lmm/yp/purchasesdk/YPPurchase;->a:Lmm/yp/purchasesdk/d;

    invoke-virtual {v1, v0}, Lmm/yp/purchasesdk/d;->a(Lmm/yp/purchasesdk/b;)V

    goto :goto_a9
.end method

.method static synthetic b(Lmm/yp/purchasesdk/YPPurchase;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lmm/yp/purchasesdk/YPPurchase;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static getDescription(I)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lmm/yp/purchasesdk/PurchaseCode;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lmm/yp/purchasesdk/YPPurchase;
    .registers 1

    sget-object v0, Lmm/yp/purchasesdk/YPPurchase;->a:Lmm/yp/purchasesdk/YPPurchase;

    if-nez v0, :cond_b

    new-instance v0, Lmm/yp/purchasesdk/YPPurchase;

    invoke-direct {v0}, Lmm/yp/purchasesdk/YPPurchase;-><init>()V

    sput-object v0, Lmm/yp/purchasesdk/YPPurchase;->a:Lmm/yp/purchasesdk/YPPurchase;

    :cond_b
    sget-object v0, Lmm/yp/purchasesdk/YPPurchase;->a:Lmm/yp/purchasesdk/YPPurchase;

    return-object v0
.end method

.method public static getReason(I)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lmm/yp/purchasesdk/PurchaseCode;->getReason(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lmm/yp/purchasesdk/YPPurchase;->a:Lmm/yp/purchasesdk/sms/SMSReceiver;

    if-nez v0, :cond_b

    new-instance v0, Lmm/yp/purchasesdk/sms/SMSReceiver;

    invoke-direct {v0}, Lmm/yp/purchasesdk/sms/SMSReceiver;-><init>()V

    iput-object v0, p0, Lmm/yp/purchasesdk/YPPurchase;->a:Lmm/yp/purchasesdk/sms/SMSReceiver;

    :cond_b
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lmm/yp/purchasesdk/sms/SMSReceiver;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v1, Lmm/yp/purchasesdk/sms/SMSReceiver;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lmm/yp/purchasesdk/YPPurchase;->a:Lmm/yp/purchasesdk/sms/SMSReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lmm/yp/purchasesdk/YPPurchase;->a:Lmm/yp/purchasesdk/sms/SMSReceiver;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmm/yp/purchasesdk/YPPurchase;->a:Lmm/yp/purchasesdk/sms/SMSReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_9
    return-void
.end method

.method public getPayInfo(Landroid/content/Context;Ljava/lang/String;)Lmm/yp/purchasesdk/PayInfo;
    .registers 5

    if-eqz p1, :cond_6

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_e

    :cond_6
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Context Object is null or Context Object is not instance of Activity"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_22

    :cond_1a
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Paycode is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    const/4 v0, 0x0

    invoke-static {v0}, Lmm/yp/purchasesdk/PurchaseCode;->setStatusCode(I)V

    invoke-static {p1}, Lmm/yp/purchasesdk/e/c;->setContext(Landroid/content/Context;)V

    invoke-static {p2}, Lmm/yp/purchasesdk/e/c;->b(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Lmm/yp/purchasesdk/c;->a(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x0

    :goto_33
    return-object v0

    :cond_34
    const/16 v0, 0x3e8

    invoke-static {v0}, Lmm/yp/purchasesdk/PurchaseCode;->setStatusCode(I)V

    iget-object v0, p0, Lmm/yp/purchasesdk/YPPurchase;->a:Lmm/yp/purchasesdk/d;

    invoke-virtual {v0}, Lmm/yp/purchasesdk/d;->a()Lmm/yp/purchasesdk/PayInfo;

    move-result-object v0

    goto :goto_33
.end method

.method public order(Landroid/content/Context;Ljava/lang/String;Lmm/yp/purchasesdk/OnSMSPurchaseListener;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lmm/yp/purchasesdk/YPPurchase;->a(Landroid/content/Context;Ljava/lang/String;IZLmm/yp/purchasesdk/OnSMSPurchaseListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
