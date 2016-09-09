.class final Lcom/bbk/payment/T;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;


# instance fields
.field private synthetic a:Lcom/bbk/payment/PaymentActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/PaymentActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/T;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .registers 4

    const-string v0, "PaymentActivity"

    const-string v1, "PositiveClickListener, onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbk/payment/T;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v1}, Lcom/bbk/payment/PaymentActivity;->b(Lcom/bbk/payment/PaymentActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "visitor"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbk/payment/T;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-virtual {v1, v0}, Lcom/bbk/payment/PaymentActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/bbk/payment/T;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->c(Lcom/bbk/payment/PaymentActivity;)V

    iget-object v0, p0, Lcom/bbk/payment/T;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-virtual {v0}, Lcom/bbk/payment/PaymentActivity;->finish()V

    return-void
.end method
