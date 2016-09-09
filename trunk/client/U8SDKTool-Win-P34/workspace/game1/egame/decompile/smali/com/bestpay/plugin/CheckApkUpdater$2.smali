.class Lcom/bestpay/plugin/CheckApkUpdater$2;
.super Ljava/util/TimerTask;
.source "CheckApkUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bestpay/plugin/CheckApkUpdater;->alertProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bestpay/plugin/CheckApkUpdater;

.field private final synthetic val$timer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/bestpay/plugin/CheckApkUpdater;Ljava/util/Timer;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bestpay/plugin/CheckApkUpdater$2;->this$0:Lcom/bestpay/plugin/CheckApkUpdater;

    iput-object p2, p0, Lcom/bestpay/plugin/CheckApkUpdater$2;->val$timer:Ljava/util/Timer;

    .line 99
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/bestpay/plugin/CheckApkUpdater$2;->this$0:Lcom/bestpay/plugin/CheckApkUpdater;

    iget-object v0, v0, Lcom/bestpay/plugin/CheckApkUpdater;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/bestpay/plugin/CheckApkUpdater$2;->this$0:Lcom/bestpay/plugin/CheckApkUpdater;

    iget v1, v1, Lcom/bestpay/plugin/CheckApkUpdater;->downedSize:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 103
    iget-object v0, p0, Lcom/bestpay/plugin/CheckApkUpdater$2;->this$0:Lcom/bestpay/plugin/CheckApkUpdater;

    iget-object v0, v0, Lcom/bestpay/plugin/CheckApkUpdater;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getMax()I

    move-result v0

    iget-object v1, p0, Lcom/bestpay/plugin/CheckApkUpdater$2;->this$0:Lcom/bestpay/plugin/CheckApkUpdater;

    iget-object v1, v1, Lcom/bestpay/plugin/CheckApkUpdater;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v1

    if-ne v0, v1, :cond_2a

    .line 104
    iget-object v0, p0, Lcom/bestpay/plugin/CheckApkUpdater$2;->this$0:Lcom/bestpay/plugin/CheckApkUpdater;

    iget-object v0, v0, Lcom/bestpay/plugin/CheckApkUpdater;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 105
    iget-object v0, p0, Lcom/bestpay/plugin/CheckApkUpdater$2;->val$timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 107
    :cond_2a
    return-void
.end method
