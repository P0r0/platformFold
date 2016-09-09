.class final Lcom/vivo/sdkplugin/Utils/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/upgrade/CheckUpdateManager$CheckFinished;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/w;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckFinished()V
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/w;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;->safeDismissLoadingDialog()V

    invoke-static {}, Lcom/vivo/upgrade/CheckUpdateManager;->getInstance()Lcom/vivo/upgrade/CheckUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/upgrade/CheckUpdateManager;->showDialog()Z

    move-result v0

    const-string v1, "------\u81ea\u5347\u7ea7\u68c0\u67e5\u5b8c\u6210\uff0c\u56de\u8c03-------"

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "------dialog show:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/w;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;

    iget-object v1, v1, Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;->mOnCheckUpdateListener:Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager$OnCheckUpdateListener;

    invoke-interface {v1, v0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager$OnCheckUpdateListener;->showUpdateDialog(Z)V

    return-void
.end method
