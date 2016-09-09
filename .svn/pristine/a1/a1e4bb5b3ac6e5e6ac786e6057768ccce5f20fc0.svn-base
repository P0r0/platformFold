.class Lcom/vivo/sdkplugin/aidl/VivoPluginManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/SelfUpdateDialog$NegativeOnClickListener;


# instance fields
.field final synthetic this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

.field private final synthetic val$level:I


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;I)V
    .registers 3

    iput-object p1, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$3;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    iput p2, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$3;->val$level:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 5

    iget v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$3;->val$level:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_34

    const-string v0, "021"

    const-string v1, "0"

    iget-object v2, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$3;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->access$5(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$3;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->access$5(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->getInstance(Landroid/content/Context;)Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->vivoAccountLoginCancled()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$3;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;
    invoke-static {v0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->access$7(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setLastNoticeTime(J)V

    :goto_2a
    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$3;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mUpdateDialog:Lcom/vivo/sdkplugin/SelfUpdateDialog;
    invoke-static {v0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->access$6(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)Lcom/vivo/sdkplugin/SelfUpdateDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/SelfUpdateDialog;->dismiss()V

    return-void

    :cond_34
    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$3;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    # invokes: Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->startSDK()V
    invoke-static {v0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->access$3(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)V

    const-string v0, "021"

    const-string v1, "1"

    iget-object v2, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$3;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->access$5(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$3;->this$0:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;
    invoke-static {v0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->access$7(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setLastNoticeTime(J)V

    goto :goto_2a
.end method
