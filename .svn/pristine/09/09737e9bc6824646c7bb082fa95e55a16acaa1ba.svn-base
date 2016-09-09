.class Lcom/nearme/platform/opensdk/pay/download/DownloadManager$2;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nearme/platform/opensdk/pay/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;


# direct methods
.method constructor <init>(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$2;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public leftBtnClicked()V
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$2;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    # invokes: Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->cancel()V
    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->access$6(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)V

    .line 191
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$2;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    # getter for: Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mDownloadingInfoDialog:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;
    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->access$3(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->dismiss()V

    .line 192
    return-void
.end method

.method public rightBtnClicked()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 179
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$2;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    # getter for: Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mState:I
    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->access$5(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)I

    move-result v0

    if-ne v2, v0, :cond_12

    .line 180
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$2;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    const-string v1, "\u63d2\u4ef6\u4e0b\u8f7d\u6682\u505c"

    invoke-virtual {v0, v3, v1}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->chageState(ILjava/lang/String;)V

    .line 186
    :cond_11
    :goto_11
    return-void

    .line 181
    :cond_12
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$2;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    # getter for: Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mState:I
    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->access$5(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)I

    move-result v0

    if-ne v3, v0, :cond_22

    .line 182
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$2;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    const-string v1, "\u63d2\u4ef6\u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {v0, v2, v1}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->chageState(ILjava/lang/String;)V

    goto :goto_11

    .line 183
    :cond_22
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$2;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    # getter for: Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mState:I
    invoke-static {v1}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->access$5(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)I

    move-result v1

    if-ne v0, v1, :cond_11

    .line 184
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$2;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    const-string v1, "\u63d2\u4ef6\u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {v0, v2, v1}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->chageState(ILjava/lang/String;)V

    goto :goto_11
.end method
