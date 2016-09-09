.class final Lcom/bbk/payment/selfupdate/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;I)V
    .registers 3

    iput-object p1, p0, Lcom/bbk/payment/selfupdate/g;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    iput p2, p0, Lcom/bbk/payment/selfupdate/g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/g;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0, v2}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->a(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;Z)V

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/g;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->i(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Lcom/bbk/payment/selfupdate/SelfUpdateHelper;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/bbk/payment/selfupdate/SelfUpdateHelper;->cancelNotification(I)V

    iget v0, p0, Lcom/bbk/payment/selfupdate/g;->b:I

    if-ne v0, v2, :cond_1f

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/g;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->h(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    iget v0, p0, Lcom/bbk/payment/selfupdate/g;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/g;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->h(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/g;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->p(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Lcom/bbk/payment/PaymentActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbk/payment/PaymentActivityController;->failByUPdate()V

    goto :goto_1e
.end method
