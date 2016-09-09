.class final Lcom/vivo/sdkplugin/activity/ci;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager$OnCheckUpdateListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/ci;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUpdateDialogDismiss()V
    .registers 3

    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "------onUpdateDialogDismiss()-------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ci;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->b(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    return-void
.end method

.method public final showUpdateDialog(Z)V
    .registers 5

    if-nez p1, :cond_13

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ci;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(Lcom/vivo/sdkplugin/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ci;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->b(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    :cond_13
    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ci;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ci;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(Lcom/vivo/sdkplugin/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(Lcom/vivo/sdkplugin/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ci;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/LoginActivity;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_13
.end method
