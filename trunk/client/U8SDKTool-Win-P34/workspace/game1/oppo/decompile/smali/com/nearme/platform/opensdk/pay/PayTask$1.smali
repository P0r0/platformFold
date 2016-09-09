.class Lcom/nearme/platform/opensdk/pay/PayTask$1;
.super Ljava/lang/Object;
.source "PayTask.java"

# interfaces
.implements Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nearme/platform/opensdk/pay/PayTask;->showUpdateDialog()V
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
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/PayTask$1;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    iput-object p2, p0, Lcom/nearme/platform/opensdk/pay/PayTask$1;->val$dialog:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public leftBtnClicked()V
    .registers 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$1;->val$dialog:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;

    invoke-virtual {v0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->dimiss()V

    .line 170
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$1;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    const/16 v1, 0x273b

    # invokes: Lcom/nearme/platform/opensdk/pay/PayTask;->notifyAppInstallOrUpdate(I)V
    invoke-static {v0, v1}, Lcom/nearme/platform/opensdk/pay/PayTask;->access$1(Lcom/nearme/platform/opensdk/pay/PayTask;I)V

    .line 171
    return-void
.end method

.method public rightBtnClicked()V
    .registers 4

    .prologue
    .line 151
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$1;->val$dialog:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;

    invoke-virtual {v0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->dimiss()V

    .line 153
    :try_start_5
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 154
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$1;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    # invokes: Lcom/nearme/platform/opensdk/pay/PayTask;->copyPackage()Ljava/lang/String;
    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/PayTask;->access$0(Lcom/nearme/platform/opensdk/pay/PayTask;)Ljava/lang/String;

    move-result-object v0

    .line 157
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 159
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$1;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    iget-object v0, v0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_38} :catch_40

    .line 164
    :goto_38
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$1;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    const/16 v1, 0x2738

    # invokes: Lcom/nearme/platform/opensdk/pay/PayTask;->notifyAppInstallOrUpdate(I)V
    invoke-static {v0, v1}, Lcom/nearme/platform/opensdk/pay/PayTask;->access$1(Lcom/nearme/platform/opensdk/pay/PayTask;I)V

    .line 165
    return-void

    .line 162
    :catch_40
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_38
.end method
