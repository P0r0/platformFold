.class final Lcom/bbk/payment/O;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private synthetic a:Lcom/bbk/payment/PaymentActionActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/PaymentActionActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/O;->a:Lcom/bbk/payment/PaymentActionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x4

    if-ne p2, v0, :cond_13

    iget-object v0, p0, Lcom/bbk/payment/O;->a:Lcom/bbk/payment/PaymentActionActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActionActivity;->c(Lcom/bbk/payment/PaymentActionActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/bbk/payment/O;->a:Lcom/bbk/payment/PaymentActionActivity;

    invoke-virtual {v0}, Lcom/bbk/payment/PaymentActionActivity;->finish()V

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method
