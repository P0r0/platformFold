.class Lcom/vivo/upgrade/CheckAppUpdate$5;
.super Ljava/lang/Object;
.source "CheckAppUpdate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/upgrade/CheckAppUpdate;->showInstallDialog(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/upgrade/CheckAppUpdate;

.field private final synthetic val$level:I


# direct methods
.method constructor <init>(Lcom/vivo/upgrade/CheckAppUpdate;I)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vivo/upgrade/CheckAppUpdate$5;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    iput p2, p0, Lcom/vivo/upgrade/CheckAppUpdate$5;->val$level:I

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v4, 0x0

    .line 577
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate$5;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;
    invoke-static {v1}, Lcom/vivo/upgrade/CheckAppUpdate;->access$1(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/SelfUpdateDialog;

    move-result-object v1

    iget v1, v1, Lcom/vivo/upgrade/SelfUpdateDialog;->mWhichBtn:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6d

    .line 579
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate$5;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mSharePreferenceManager:Lcom/vivo/upgrade/utils/SharePreferenceManager;
    invoke-static {v1}, Lcom/vivo/upgrade/CheckAppUpdate;->access$18(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/utils/SharePreferenceManager;

    move-result-object v1

    .line 580
    const-string v2, "com.vivo.upgrade.ikey.KEY_DOWNLOAD_PATH"

    invoke-virtual {v1, v2, v4}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, "installApkPath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 582
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate$5;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/vivo/upgrade/CheckAppUpdate;->access$2(Lcom/vivo/upgrade/CheckAppUpdate;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/vivo/upgrade/utils/PackageUtils;->installApk(Landroid/content/Context;Ljava/lang/String;)V

    .line 583
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate$5;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    iget v2, p0, Lcom/vivo/upgrade/CheckAppUpdate$5;->val$level:I

    # invokes: Lcom/vivo/upgrade/CheckAppUpdate;->isForceUpdate(I)Z
    invoke-static {v1, v2}, Lcom/vivo/upgrade/CheckAppUpdate;->access$14(Lcom/vivo/upgrade/CheckAppUpdate;I)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 584
    invoke-static {}, Lcom/vivo/upgrade/CheckUpdateManager;->getInstance()Lcom/vivo/upgrade/CheckUpdateManager;

    move-result-object v1

    .line 585
    iget-object v2, p0, Lcom/vivo/upgrade/CheckAppUpdate$5;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/vivo/upgrade/CheckAppUpdate;->access$2(Lcom/vivo/upgrade/CheckAppUpdate;)Landroid/content/Context;

    move-result-object v2

    .line 584
    invoke-virtual {v1, v2}, Lcom/vivo/upgrade/CheckUpdateManager;->exitApp(Landroid/content/Context;)V

    .line 599
    .end local v0    # "installApkPath":Ljava/lang/String;
    :cond_3e
    :goto_3e
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate$5;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mDialogDismissListener:Lcom/vivo/upgrade/CheckUpdateManager$OnUpdateDialogDismissListener;
    invoke-static {v1}, Lcom/vivo/upgrade/CheckAppUpdate;->access$24(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/CheckUpdateManager$OnUpdateDialogDismissListener;

    move-result-object v1

    if-eqz v1, :cond_4f

    .line 600
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate$5;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mDialogDismissListener:Lcom/vivo/upgrade/CheckUpdateManager$OnUpdateDialogDismissListener;
    invoke-static {v1}, Lcom/vivo/upgrade/CheckAppUpdate;->access$24(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/CheckUpdateManager$OnUpdateDialogDismissListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/vivo/upgrade/CheckUpdateManager$OnUpdateDialogDismissListener;->onDialogDismiss()V

    .line 602
    :cond_4f
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate$5;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    invoke-static {v1, v4}, Lcom/vivo/upgrade/CheckAppUpdate;->access$25(Lcom/vivo/upgrade/CheckAppUpdate;Lcom/vivo/upgrade/SelfUpdateDialog;)V

    .line 603
    return-void

    .line 588
    .restart local v0    # "installApkPath":Ljava/lang/String;
    :cond_55
    const-string v1, "Upgrade.CheckAppUpdate"

    const-string v2, "installApkPath is null"

    invoke-static {v1, v2}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate$5;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/vivo/upgrade/CheckAppUpdate;->access$2(Lcom/vivo/upgrade/CheckAppUpdate;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "Unknow error"

    .line 590
    const/4 v3, 0x0

    .line 589
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 590
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_3e

    .line 593
    .end local v0    # "installApkPath":Ljava/lang/String;
    :cond_6d
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate$5;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;
    invoke-static {v1}, Lcom/vivo/upgrade/CheckAppUpdate;->access$1(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/SelfUpdateDialog;

    move-result-object v1

    iget v1, v1, Lcom/vivo/upgrade/SelfUpdateDialog;->mWhichBtn:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3e

    .line 595
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate$5;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    iget v2, p0, Lcom/vivo/upgrade/CheckAppUpdate$5;->val$level:I

    # invokes: Lcom/vivo/upgrade/CheckAppUpdate;->isForceUpdate(I)Z
    invoke-static {v1, v2}, Lcom/vivo/upgrade/CheckAppUpdate;->access$14(Lcom/vivo/upgrade/CheckAppUpdate;I)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 596
    invoke-static {}, Lcom/vivo/upgrade/CheckUpdateManager;->getInstance()Lcom/vivo/upgrade/CheckUpdateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/upgrade/CheckAppUpdate$5;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/vivo/upgrade/CheckAppUpdate;->access$2(Lcom/vivo/upgrade/CheckAppUpdate;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vivo/upgrade/CheckUpdateManager;->exitApp(Landroid/content/Context;)V

    goto :goto_3e
.end method
