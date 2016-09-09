.class Lcom/bestpay/plugin/CheckApkUpdater$1;
.super Landroid/os/Handler;
.source "CheckApkUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bestpay/plugin/CheckApkUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bestpay/plugin/CheckApkUpdater;


# direct methods
.method constructor <init>(Lcom/bestpay/plugin/CheckApkUpdater;Landroid/os/Looper;)V
    .registers 3
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bestpay/plugin/CheckApkUpdater$1;->this$0:Lcom/bestpay/plugin/CheckApkUpdater;

    .line 226
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 228
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_26

    .line 242
    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 243
    return-void

    .line 230
    :pswitch_9
    iget-object v0, p0, Lcom/bestpay/plugin/CheckApkUpdater$1;->this$0:Lcom/bestpay/plugin/CheckApkUpdater;

    invoke-virtual {v0}, Lcom/bestpay/plugin/CheckApkUpdater;->alertProgressDialog()V

    goto :goto_5

    .line 233
    :pswitch_f
    iget-object v0, p0, Lcom/bestpay/plugin/CheckApkUpdater$1;->this$0:Lcom/bestpay/plugin/CheckApkUpdater;

    iget-object v0, v0, Lcom/bestpay/plugin/CheckApkUpdater;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    goto :goto_5

    .line 236
    :pswitch_17
    iget-object v0, p0, Lcom/bestpay/plugin/CheckApkUpdater$1;->this$0:Lcom/bestpay/plugin/CheckApkUpdater;

    iget-object v0, v0, Lcom/bestpay/plugin/CheckApkUpdater;->context:Landroid/content/Context;

    const-string v1, "\u83b7\u53d6\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_5

    .line 228
    :pswitch_data_26
    .packed-switch 0x2
        :pswitch_9
        :pswitch_f
        :pswitch_17
    .end packed-switch
.end method
