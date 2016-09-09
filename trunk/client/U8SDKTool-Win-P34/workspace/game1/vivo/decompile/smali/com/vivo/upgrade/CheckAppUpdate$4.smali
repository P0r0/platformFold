.class Lcom/vivo/upgrade/CheckAppUpdate$4;
.super Ljava/lang/Object;
.source "CheckAppUpdate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/upgrade/CheckAppUpdate;->showUpdateDialog(Lcom/vivo/upgrade/AppUpdateInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/upgrade/CheckAppUpdate;

.field private final synthetic val$isForceUpdate:Z


# direct methods
.method constructor <init>(Lcom/vivo/upgrade/CheckAppUpdate;Z)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vivo/upgrade/CheckAppUpdate$4;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    iput-boolean p2, p0, Lcom/vivo/upgrade/CheckAppUpdate$4;->val$isForceUpdate:Z

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 403
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate$4;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;
    invoke-static {v0}, Lcom/vivo/upgrade/CheckAppUpdate;->access$1(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/SelfUpdateDialog;

    move-result-object v0

    iget v0, v0, Lcom/vivo/upgrade/SelfUpdateDialog;->mWhichBtn:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2f

    .line 404
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate$4;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mSharePreferenceManager:Lcom/vivo/upgrade/utils/SharePreferenceManager;
    invoke-static {v0}, Lcom/vivo/upgrade/CheckAppUpdate;->access$18(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/utils/SharePreferenceManager;

    move-result-object v0

    .line 405
    const-string v1, "com.vivo.upgrade.ikey.KEY_NO_NOTICE_IN_SEVEN"

    .line 406
    iget-object v2, p0, Lcom/vivo/upgrade/CheckAppUpdate$4;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;
    invoke-static {v2}, Lcom/vivo/upgrade/CheckAppUpdate;->access$1(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/SelfUpdateDialog;

    move-result-object v2

    iget-boolean v2, v2, Lcom/vivo/upgrade/SelfUpdateDialog;->mIsChecked:Z

    .line 404
    invoke-virtual {v0, v1, v2}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->putBoolean(Ljava/lang/String;Z)V

    .line 407
    iget-boolean v0, p0, Lcom/vivo/upgrade/CheckAppUpdate$4;->val$isForceUpdate:Z

    if-eqz v0, :cond_2f

    .line 408
    invoke-static {}, Lcom/vivo/upgrade/CheckUpdateManager;->getInstance()Lcom/vivo/upgrade/CheckUpdateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate$4;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/vivo/upgrade/CheckAppUpdate;->access$2(Lcom/vivo/upgrade/CheckAppUpdate;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/upgrade/CheckUpdateManager;->exitApp(Landroid/content/Context;)V

    .line 411
    :cond_2f
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate$4;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mDialogDismissListener:Lcom/vivo/upgrade/CheckUpdateManager$OnUpdateDialogDismissListener;
    invoke-static {v0}, Lcom/vivo/upgrade/CheckAppUpdate;->access$24(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/CheckUpdateManager$OnUpdateDialogDismissListener;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 412
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate$4;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mDialogDismissListener:Lcom/vivo/upgrade/CheckUpdateManager$OnUpdateDialogDismissListener;
    invoke-static {v0}, Lcom/vivo/upgrade/CheckAppUpdate;->access$24(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/CheckUpdateManager$OnUpdateDialogDismissListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vivo/upgrade/CheckUpdateManager$OnUpdateDialogDismissListener;->onDialogDismiss()V

    .line 414
    :cond_40
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate$4;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/upgrade/CheckAppUpdate;->access$25(Lcom/vivo/upgrade/CheckAppUpdate;Lcom/vivo/upgrade/SelfUpdateDialog;)V

    .line 415
    return-void
.end method
