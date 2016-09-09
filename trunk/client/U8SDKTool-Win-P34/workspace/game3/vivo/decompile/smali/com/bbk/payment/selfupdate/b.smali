.class final Lcom/bbk/payment/selfupdate/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;I)V
    .registers 3

    iput-object p1, p0, Lcom/bbk/payment/selfupdate/b;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    iput p2, p0, Lcom/bbk/payment/selfupdate/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/b;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->n(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/b;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->i(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Lcom/bbk/payment/selfupdate/SelfUpdateHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/selfupdate/b;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v1}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->n(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/bbk/payment/selfupdate/b;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/bbk/payment/selfupdate/SelfUpdateHelper;->installApk(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/b;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->o(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_23
    return-void
.end method
