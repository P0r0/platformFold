.class final Lcom/bbk/payment/K;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/bbk/payment/PaymentActionActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/PaymentActionActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/K;->a:Lcom/bbk/payment/PaymentActionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/bbk/payment/K;->a:Lcom/bbk/payment/PaymentActionActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActionActivity;->c(Lcom/bbk/payment/PaymentActionActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/bbk/payment/K;->a:Lcom/bbk/payment/PaymentActionActivity;

    invoke-virtual {v0}, Lcom/bbk/payment/PaymentActionActivity;->finish()V

    return-void
.end method
