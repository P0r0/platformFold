.class final Lcom/vivo/sdkplugin/Utils/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/upgrade/CheckUpdateManager$OnUpdateDialogDismissListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/v;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDialogDismiss()V
    .registers 2

    const-string v0, "--------onDialogDismiss() \u56de\u8c03----------"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/v;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;

    iget-object v0, v0, Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;->mOnCheckUpdateListener:Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager$OnCheckUpdateListener;

    invoke-interface {v0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager$OnCheckUpdateListener;->onUpdateDialogDismiss()V

    return-void
.end method
