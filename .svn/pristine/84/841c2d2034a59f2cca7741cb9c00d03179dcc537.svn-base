.class final Lcom/bbkmobile/iqoo/payment/cardpay/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/cardpay/a;->a:Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;

    iput-object p2, p0, Lcom/bbkmobile/iqoo/payment/cardpay/a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/cardpay/a;->a:Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->h(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/cardpay/a;->a:Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->h(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/cardpay/a;->a:Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->a(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;Landroid/app/AlertDialog;)V

    :cond_17
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/cardpay/a;->b:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/cardpay/a;->a:Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;

    invoke-static {v1}, Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;->g(Lcom/bbkmobile/iqoo/payment/cardpay/CardPay;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
