.class Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$4;
.super Lcom/vivo/plugin/aidl/ISinglePayCallBack$Stub;


# instance fields
.field final synthetic this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$4;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    invoke-direct {p0}, Lcom/vivo/plugin/aidl/ISinglePayCallBack$Stub;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$4;)Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$4;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    return-object v0
.end method


# virtual methods
.method public payResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    const-string v0, "VivoAIDLManager"

    const-string v1, "--------\u6e38\u620f \u63a5\u6536 \u5230 \u5355\u673a\u652f\u4ed8\u6210\u529f\u4fe1\u606f-----------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VivoAIDLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "transNo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pay_result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result_code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pay_msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$4;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    iget-object v6, v0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$4$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$4$1;-><init>(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$4;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
