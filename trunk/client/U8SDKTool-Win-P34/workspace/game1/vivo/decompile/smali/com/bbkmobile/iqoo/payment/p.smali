.class final Lcom/bbkmobile/iqoo/payment/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/bbkmobile/iqoo/payment/PaymentActivity;


# direct methods
.method constructor <init>(Lcom/bbkmobile/iqoo/payment/PaymentActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/p;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/p;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->e(Lcom/bbkmobile/iqoo/payment/PaymentActivity;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/p;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivity;

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/p;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->k(Lcom/bbkmobile/iqoo/payment/PaymentActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->a(Lcom/bbkmobile/iqoo/payment/PaymentActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/p;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->g(Lcom/bbkmobile/iqoo/payment/PaymentActivity;)V

    goto :goto_8
.end method
