.class final Lcom/bbkmobile/iqoo/payment/a;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/bbkmobile/iqoo/payment/CardActivity;


# direct methods
.method constructor <init>(Lcom/bbkmobile/iqoo/payment/CardActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/a;->a:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_54

    :goto_5
    return-void

    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "pay_result"

    const-string v2, "success"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/a;->a:Lcom/bbkmobile/iqoo/payment/CardActivity;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/a;->a:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-virtual {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->finish()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_5

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :pswitch_23
    :try_start_23
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "pay_result"

    const-string v2, "cancel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/a;->a:Lcom/bbkmobile/iqoo/payment/CardActivity;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/a;->a:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-virtual {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->finish()V

    goto :goto_5

    :pswitch_3b
    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/a;->a:Lcom/bbkmobile/iqoo/payment/CardActivity;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/a;->a:Lcom/bbkmobile/iqoo/payment/CardActivity;

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/a;->a:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-virtual {v2}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "bbk_msg_server_failed"

    invoke-static {v2, v3}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbkmobile/iqoo/payment/CardActivity;->showFailInitailDialog(Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_52} :catch_1e

    goto :goto_5

    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_6
        :pswitch_23
        :pswitch_3b
    .end packed-switch
.end method
