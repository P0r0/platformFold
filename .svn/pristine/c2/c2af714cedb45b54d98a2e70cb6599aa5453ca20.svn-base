.class Lcom/nearme/platform/opensdk/pay/PayTask$3;
.super Ljava/lang/Object;
.source "PayTask.java"

# interfaces
.implements Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nearme/platform/opensdk/pay/PayTask;->showInstallDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

.field private final synthetic val$dialog:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;


# direct methods
.method constructor <init>(Lcom/nearme/platform/opensdk/pay/PayTask;Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/PayTask$3;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    iput-object p2, p0, Lcom/nearme/platform/opensdk/pay/PayTask$3;->val$dialog:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/nearme/platform/opensdk/pay/PayTask$3;)Lcom/nearme/platform/opensdk/pay/PayTask;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$3;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    return-object v0
.end method


# virtual methods
.method public leftBtnClicked()V
    .registers 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$3;->val$dialog:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;

    invoke-virtual {v0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->dimiss()V

    .line 261
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$3;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    const/16 v1, 0x273c

    # invokes: Lcom/nearme/platform/opensdk/pay/PayTask;->notifyAppInstallOrUpdate(I)V
    invoke-static {v0, v1}, Lcom/nearme/platform/opensdk/pay/PayTask;->access$1(Lcom/nearme/platform/opensdk/pay/PayTask;I)V

    .line 262
    return-void
.end method

.method public rightBtnClicked()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 223
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$3;->val$dialog:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;

    invoke-virtual {v0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->dimiss()V

    .line 224
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$3;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    iget-object v0, v0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    const-string v1, "com.oppo.market"

    invoke-static {v0, v1}, Lcom/nearme/platform/opensdk/pay/Utils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x1004

    if-le v0, v1, :cond_1e

    .line 225
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$3;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    iget-object v0, v0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    const-string v1, "com.nearme.atlas"

    invoke-static {v0, v1, v2}, Lcom/nearme/platform/opensdk/pay/download/util/MarketDownloadHelper;->jumpMarketItemDetail(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 256
    :goto_1d
    return-void

    .line 228
    :cond_1e
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$3;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    iget-object v0, v0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 229
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$3;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    iget-object v0, v0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/Utils;->isWifi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 230
    new-instance v0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask$3;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    iget-object v1, v1, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;-><init>(Landroid/content/Context;)V

    .line 231
    const-string v1, "\u5f53\u524d\u4e3a\u6570\u636e\u7f51\u7edc\uff0c\u4e0b\u8f7d\u5c06\u6d88\u8017\u624b\u673a\u6d41\u91cf\uff0c\u786e\u5b9a\u4e0b\u8f7d\u5417\uff1f"

    invoke-virtual {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->setHint(Ljava/lang/String;)V

    .line 232
    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->setLeftBtnText(Ljava/lang/String;)V

    .line 233
    const-string v1, "\u7ee7\u7eed\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->setRightBtnText(Ljava/lang/String;)V

    .line 234
    new-instance v1, Lcom/nearme/platform/opensdk/pay/PayTask$3$1;

    invoke-direct {v1, p0, v0}, Lcom/nearme/platform/opensdk/pay/PayTask$3$1;-><init>(Lcom/nearme/platform/opensdk/pay/PayTask$3;Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;)V

    invoke-virtual {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->setBottomBtnClickedListener(Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;)V

    .line 248
    invoke-virtual {v0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->show()V

    goto :goto_1d

    .line 250
    :cond_56
    new-instance v0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask$3;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    iget-object v1, v1, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->start()V

    .line 251
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$3;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    const/16 v1, 0x2738

    # invokes: Lcom/nearme/platform/opensdk/pay/PayTask;->notifyAppInstallOrUpdate(I)V
    invoke-static {v0, v1}, Lcom/nearme/platform/opensdk/pay/PayTask;->access$1(Lcom/nearme/platform/opensdk/pay/PayTask;I)V

    goto :goto_1d

    .line 254
    :cond_6a
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$3;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    iget-object v0, v0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u68c0\u6d4b\u7f51\u7edc"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1d
.end method
