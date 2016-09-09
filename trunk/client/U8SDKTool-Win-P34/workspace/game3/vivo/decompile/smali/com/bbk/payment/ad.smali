.class final Lcom/bbk/payment/ad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;


# instance fields
.field private synthetic a:Lcom/bbk/payment/PaymentRechargeActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/PaymentRechargeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/ad;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .registers 4

    const-string v0, "PaymentRechargeActivity"

    const-string v1, "PositiveClickListener, onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbk/payment/ad;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v1}, Lcom/bbk/payment/PaymentRechargeActivity;->a(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "visitor"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbk/payment/ad;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-virtual {v1, v0}, Lcom/bbk/payment/PaymentRechargeActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/bbk/payment/ad;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "vivo_action_finish"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bbk/payment/PaymentRechargeActivity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/bbk/payment/ad;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    const-string v1, "6001"

    const-string v2, "6001"

    invoke-static {v2}, Lcom/bbk/payment/util/Constants;->getErrorMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bbk/payment/PaymentRechargeActivity;->failForPay(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/ad;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-virtual {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->finish()V

    return-void
.end method
