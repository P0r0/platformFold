.class Lcom/vivo/sdkplugin/aidl/VivoPluginManager$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$4;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_42

    const-string v1, "VivoPluginManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "---------onKey,keyCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cancelLoad="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$4;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->cancelLoad:Z
    invoke-static {v3}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->access$8(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$4;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    invoke-static {v1, v0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->access$9(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;Z)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$4;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mLoadingDialog:Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;
    invoke-static {v1}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->access$10(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->dismiss()V

    iget-object v1, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$4;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->access$11(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x411

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_41
    return v0

    :cond_42
    const/4 v0, 0x0

    goto :goto_41
.end method
