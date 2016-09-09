.class final Lcom/vivo/sdkplugin/Utils/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager$OnCheckUpdateListener;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager$OnCheckUpdateListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager$OnCheckUpdateListener;)V
    .registers 3

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/z;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/vivo/sdkplugin/Utils/z;->b:Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager$OnCheckUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUpdateDialogDismiss()V
    .registers 3

    const-string v0, "VivoMakeDiffUtil"

    const-string v1, "--------onDialogDismiss() \u56de\u8c03----------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/z;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "VivoMakeDiffUtil"

    const-string v1, "-------activity is finishing-----------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_18} :catch_19

    :goto_18
    return-void

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    :cond_1e
    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/z;->b:Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager$OnCheckUpdateListener;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/z;->b:Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager$OnCheckUpdateListener;

    invoke-interface {v0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager$OnCheckUpdateListener;->onUpdateDialogDismiss()V

    goto :goto_18

    :cond_28
    const-string v0, "VivoMakeDiffUtil"

    const-string v1, "--------checkUpdateListener is null---------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18
.end method

.method public final showUpdateDialog(Z)V
    .registers 5

    const-string v0, "VivoMakeDiffUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--------showUpdateDialog \u56de\u8c03-------isShow\uff1a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_14
    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/z;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "VivoMakeDiffUtil"

    const-string v1, "-------activity is finishing-----------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_25} :catch_26

    :goto_25
    return-void

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25

    :cond_2b
    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/z;->b:Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager$OnCheckUpdateListener;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/z;->b:Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager$OnCheckUpdateListener;

    invoke-interface {v0, p1}, Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager$OnCheckUpdateListener;->showUpdateDialog(Z)V

    goto :goto_25

    :cond_35
    const-string v0, "VivoMakeDiffUtil"

    const-string v1, "--------checkUpdateListener is null---------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25
.end method
