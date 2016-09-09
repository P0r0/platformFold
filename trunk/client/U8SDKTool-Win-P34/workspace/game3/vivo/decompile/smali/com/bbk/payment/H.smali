.class final Lcom/bbk/payment/H;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/bbk/payment/PaymentActionActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/PaymentActionActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/H;->a:Lcom/bbk/payment/PaymentActionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/bbk/payment/H;->a:Lcom/bbk/payment/PaymentActionActivity;

    invoke-virtual {v0}, Lcom/bbk/payment/PaymentActionActivity;->finish()V

    return-void
.end method
