.class final Lcom/bbk/payment/selfupdate/a;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;


# direct methods
.method constructor <init>(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 9

    const/4 v4, 0x1

    const/high16 v2, -0x1000000

    const/16 v6, 0x8

    const/4 v1, 0x4

    const/4 v5, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1c0

    :goto_c
    return-void

    :pswitch_d
    iget-object v0, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->a(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->b(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->b(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v1}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->c(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->d(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->d(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->d(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v1}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->e(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v2}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->e(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "bbk_download_percent"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v4}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->c(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->f(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->a(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v1}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->e(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v2}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->e(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "bbk_update_progress"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->g(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c

    :pswitch_a8
    iget-object v0, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->h(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/sdcard/.BBKPayment/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    const-string v3, "mode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    const-string v3, "downloadMd5"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "lowMd5"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->i(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Lcom/bbk/payment/selfupdate/SelfUpdateHelper;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/bbk/payment/selfupdate/SelfUpdateHelper;->installApk(Ljava/lang/String;I)V

    goto/16 :goto_c

    :pswitch_e6
    iget-object v0, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->b(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->j(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->f(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->k(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->e(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v1}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->e(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v2}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->e(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "bbk_download_file_error"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_c

    :pswitch_133
    iget-object v0, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->f(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->b(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->i(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Lcom/bbk/payment/selfupdate/SelfUpdateHelper;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/bbk/payment/selfupdate/SelfUpdateHelper;->cancelNotification(I)V

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->a(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v1}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->e(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bbk_retry_download"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->d(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->k(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->g(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->l(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v1}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->e(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bbk_retry_down"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->m(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v1}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->e(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bbk_cancel"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->j(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_c

    :pswitch_1b5
    iget-object v0, p0, Lcom/bbk/payment/selfupdate/a;->a:Lcom/bbk/payment/selfupdate/CheckForUpdateTask;

    invoke-static {v0}, Lcom/bbk/payment/selfupdate/CheckForUpdateTask;->h(Lcom/bbk/payment/selfupdate/CheckForUpdateTask;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_c

    :pswitch_data_1c0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_a8
        :pswitch_e6
        :pswitch_133
        :pswitch_1b5
    .end packed-switch
.end method
