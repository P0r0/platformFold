.class final Lcom/bbk/payment/selfupdate/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;I)V
    .registers 3

    iput-object p1, p0, Lcom/bbk/payment/selfupdate/c;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    iput p2, p0, Lcom/bbk/payment/selfupdate/c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget v0, p0, Lcom/bbk/payment/selfupdate/c;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/c;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->h(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget v0, p0, Lcom/bbk/payment/selfupdate/c;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/c;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->h(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/c;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->p(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Lcom/bbk/payment/PaymentActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbk/payment/PaymentActivityController;->failByUPdate()V

    goto :goto_e
.end method
