.class Lcom/nearme/platform/opensdk/pay/PayTask$3$1;
.super Ljava/lang/Object;
.source "PayTask.java"

# interfaces
.implements Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nearme/platform/opensdk/pay/PayTask$3;->rightBtnClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nearme/platform/opensdk/pay/PayTask$3;

.field private final synthetic val$dhd:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;


# direct methods
.method constructor <init>(Lcom/nearme/platform/opensdk/pay/PayTask$3;Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/PayTask$3$1;->this$1:Lcom/nearme/platform/opensdk/pay/PayTask$3;

    iput-object p2, p0, Lcom/nearme/platform/opensdk/pay/PayTask$3$1;->val$dhd:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public leftBtnClicked()V
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$3$1;->val$dhd:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;

    invoke-virtual {v0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->dimiss()V

    .line 246
    return-void
.end method

.method public rightBtnClicked()V
    .registers 3

    .prologue
    .line 238
    new-instance v0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask$3$1;->this$1:Lcom/nearme/platform/opensdk/pay/PayTask$3;

    # getter for: Lcom/nearme/platform/opensdk/pay/PayTask$3;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;
    invoke-static {v1}, Lcom/nearme/platform/opensdk/pay/PayTask$3;->access$0(Lcom/nearme/platform/opensdk/pay/PayTask$3;)Lcom/nearme/platform/opensdk/pay/PayTask;

    move-result-object v1

    iget-object v1, v1, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->start()V

    .line 239
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$3$1;->this$1:Lcom/nearme/platform/opensdk/pay/PayTask$3;

    # getter for: Lcom/nearme/platform/opensdk/pay/PayTask$3;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;
    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/PayTask$3;->access$0(Lcom/nearme/platform/opensdk/pay/PayTask$3;)Lcom/nearme/platform/opensdk/pay/PayTask;

    move-result-object v0

    const/16 v1, 0x2738

    # invokes: Lcom/nearme/platform/opensdk/pay/PayTask;->notifyAppInstallOrUpdate(I)V
    invoke-static {v0, v1}, Lcom/nearme/platform/opensdk/pay/PayTask;->access$1(Lcom/nearme/platform/opensdk/pay/PayTask;I)V

    .line 240
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$3$1;->val$dhd:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;

    invoke-virtual {v0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->dimiss()V

    .line 241
    return-void
.end method
