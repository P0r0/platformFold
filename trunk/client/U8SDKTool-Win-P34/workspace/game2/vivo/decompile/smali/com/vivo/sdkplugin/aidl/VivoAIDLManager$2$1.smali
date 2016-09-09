.class Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2;

.field private final synthetic val$name:Ljava/lang/String;

.field private final synthetic val$openId:Ljava/lang/String;

.field private final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2$1;->this$1:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2;

    iput-object p2, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2$1;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2$1;->val$openId:Ljava/lang/String;

    iput-object p4, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2$1;->val$token:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2$1;->this$1:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;
    invoke-static {v0}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2;->access$0(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2;)Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    move-result-object v0

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->mVivoAccountManager:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;
    invoke-static {v0}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->access$17(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2$1;->val$name:Ljava/lang/String;

    iget-object v2, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2$1;->val$openId:Ljava/lang/String;

    iget-object v3, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2$1;->val$token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->vivoAccountLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VivoAIDLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2$1;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " openId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2$1;->val$openId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2$1;->val$token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
