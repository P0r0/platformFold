.class Lcom/vivo/sdkplugin/aidl/VivoPluginManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/SelfUpdateDialog$PositiveOnClickListener;


# instance fields
.field final synthetic this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$2;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 5

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$2;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->installPluginApk()V

    const-string v0, "021"

    const-string v1, "2"

    iget-object v2, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$2;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->access$5(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$2;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mUpdateDialog:Lcom/vivo/sdkplugin/SelfUpdateDialog;
    invoke-static {v0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->access$6(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)Lcom/vivo/sdkplugin/SelfUpdateDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/SelfUpdateDialog;->dismiss()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$2;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;
    invoke-static {v0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->access$7(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setLastNoticeTime(J)V

    return-void
.end method
