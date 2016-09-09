.class public Lmm/yp/purchasesdk/b;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# instance fields
.field private a:Ljava/util/HashMap;

.field private a:Lmm/yp/purchasesdk/OnSMSPurchaseListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lmm/yp/purchasesdk/b;->a:I

    return-void
.end method

.method public constructor <init>(Lmm/yp/purchasesdk/OnSMSPurchaseListener;Landroid/os/Handler;Landroid/os/Handler;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmm/yp/purchasesdk/b;->a:Ljava/util/HashMap;

    iput-object p1, p0, Lmm/yp/purchasesdk/b;->a:Lmm/yp/purchasesdk/OnSMSPurchaseListener;

    return-void
.end method


# virtual methods
.method public onBillingFinish(ILjava/util/HashMap;)V
    .registers 7

    const/4 v3, 0x1

    const-string v0, "onBillingfinish"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lmm/yp/purchasesdk/PurchaseCode;->getReason(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/yp/purchasesdk/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lmm/yp/purchasesdk/e/c;->d(Ljava/lang/Boolean;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lmm/yp/purchasesdk/sms/b;->a(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lmm/yp/purchasesdk/b;->a:Lmm/yp/purchasesdk/OnSMSPurchaseListener;

    invoke-interface {v0, p1, p2}, Lmm/yp/purchasesdk/OnSMSPurchaseListener;->onBillingFinish(ILjava/util/HashMap;)V

    return-void
.end method
