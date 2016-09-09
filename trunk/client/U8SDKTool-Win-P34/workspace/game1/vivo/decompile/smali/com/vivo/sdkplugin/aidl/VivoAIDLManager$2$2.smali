.class Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2$2;->this$1:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2$2;->this$1:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;
    invoke-static {v0}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2;->access$0(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2;)Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    move-result-object v0

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->mVivoAccountManager:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;
    invoke-static {v0}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->access$17(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->vivoAccountLoginCancled()V

    return-void
.end method
