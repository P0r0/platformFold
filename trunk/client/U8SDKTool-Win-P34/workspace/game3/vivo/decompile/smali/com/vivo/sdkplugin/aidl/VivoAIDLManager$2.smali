.class Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2;
.super Lcom/vivo/plugin/aidl/IAccountCallBack$Stub;


# instance fields
.field final synthetic this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    invoke-direct {p0}, Lcom/vivo/plugin/aidl/IAccountCallBack$Stub;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2;)Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    return-object v0
.end method


# virtual methods
.method public loginCancel()V
    .registers 3

    const-string v0, "VivoAIDLManager"

    const-string v1, "---------\u5ba2\u6237\u7aef     \u63a5\u6536\u5230\u4fe1\u606f\u5566,apk\u53d6\u6d88\u767b\u9646\u4e86--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    iget-object v0, v0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2$3;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2$3;-><init>(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public loginResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "VivoAIDLManager"

    const-string v1, "---------\u5ba2\u6237\u7aef        \u63a5\u6536\u5230\u4fe1\u606f\u5566--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    iget-object v0, v0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2$1;-><init>(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateCancel()V
    .registers 3

    const-string v0, "VivoAIDLManager"

    const-string v1, "---------\u5ba2\u6237\u7aef     \u63a5\u6536\u5230\u4fe1\u606f\u5566,apk\u53d6\u6d88\u5f3a\u5236\u5347\u7ea7--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    iget-object v0, v0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2$2;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2$2;-><init>(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
