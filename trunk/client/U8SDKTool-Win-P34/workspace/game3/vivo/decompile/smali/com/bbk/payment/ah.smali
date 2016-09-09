.class final Lcom/bbk/payment/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/bbk/payment/PaymentRechargeActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/PaymentRechargeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/ah;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/bbk/payment/ah;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    const-string v1, "6001"

    const-string v2, "6001"

    invoke-static {v2}, Lcom/bbk/payment/util/Constants;->getErrorMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bbk/payment/PaymentRechargeActivity;->failForPay(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/ah;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-virtual {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->finish()V

    return-void
.end method
