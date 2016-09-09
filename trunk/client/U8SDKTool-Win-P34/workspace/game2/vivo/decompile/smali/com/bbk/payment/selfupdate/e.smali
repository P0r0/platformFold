.class final Lcom/bbk/payment/selfupdate/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:I

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:I

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:Ljava/lang/String;

.field private final synthetic h:I


# direct methods
.method constructor <init>(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 9

    iput-object p1, p0, Lcom/bbk/payment/selfupdate/e;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    iput-object p2, p0, Lcom/bbk/payment/selfupdate/e;->b:Ljava/lang/String;

    iput p3, p0, Lcom/bbk/payment/selfupdate/e;->c:I

    iput-object p4, p0, Lcom/bbk/payment/selfupdate/e;->d:Ljava/lang/String;

    iput p5, p0, Lcom/bbk/payment/selfupdate/e;->e:I

    iput-object p6, p0, Lcom/bbk/payment/selfupdate/e;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/bbk/payment/selfupdate/e;->g:Ljava/lang/String;

    iput p8, p0, Lcom/bbk/payment/selfupdate/e;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 10

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/e;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->f(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/e;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->a(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/selfupdate/e;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v1}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->e(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bbk_waiting_for_download"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/e;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->h(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/e;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6c

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/e;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->j(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/e;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->k(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/e;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/e;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->b(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/e;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->b(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/e;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    iget-object v1, p0, Lcom/bbk/payment/selfupdate/e;->b:Ljava/lang/String;

    iget v2, p0, Lcom/bbk/payment/selfupdate/e;->c:I

    iget-object v3, p0, Lcom/bbk/payment/selfupdate/e;->d:Ljava/lang/String;

    iget v4, p0, Lcom/bbk/payment/selfupdate/e;->e:I

    iget-object v5, p0, Lcom/bbk/payment/selfupdate/e;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/bbk/payment/selfupdate/e;->g:Ljava/lang/String;

    iget v7, p0, Lcom/bbk/payment/selfupdate/e;->h:I

    invoke-static/range {v0 .. v7}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->a(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_6c
    return-void
.end method
