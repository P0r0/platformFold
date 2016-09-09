.class final Lcom/vivo/sdkplugin/Utils/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/upgrade/CheckUpdateManager$ExitApp;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/s;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onExit()V
    .registers 2

    const-string v0, "---------\u5f3a\u5236\u9000\u51fa\u6e38\u620f\u4e86-----------------"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/s;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;

    iget-object v0, v0, Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/plugin/aidl/SendGameInfoManager;->startServiceCancelForceUpdate(Landroid/content/Context;)V

    return-void
.end method
