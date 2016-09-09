.class Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 10

    const/4 v6, 0x0

    const-string v0, "VivoAIDLManager"

    const-string v1, "---------onServiceConnected() enter--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;
    invoke-static {v0}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->access$1(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getSDKOrientation()I

    move-result v4

    const-string v0, "VivoAIDLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--\u548cservice \u8fde\u63a5\u4e0a\u4e86!!!!!---\u6e38\u620f\u65b9\u5411\u662f\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VivoAIDLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524d\u6e38\u620f\u5305\u540d\uff1a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->access$2(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u6e38\u620f\u65b9\u5411\u662f\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    invoke-static {p2}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->access$3(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->access$0(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->executeService:Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;
    invoke-static {v0}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->access$4(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;

    move-result-object v0

    if-eqz v0, :cond_84

    :try_start_65
    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->executeService:Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;
    invoke-static {v0}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->access$4(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->access$2(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    iget-object v2, v2, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->mCallBack:Lcom/vivo/plugin/aidl/IAccountCallBack$Stub;

    iget-object v3, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    iget-object v3, v3, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->mPayAndRechargeCallBack:Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack;

    iget-object v5, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    iget-object v5, v5, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->mSinglePayCallBack:Lcom/vivo/plugin/aidl/ISinglePayCallBack;

    invoke-interface/range {v0 .. v5}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;->registerCallBack(Ljava/lang/String;Lcom/vivo/plugin/aidl/IAccountCallBack;Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack;ILcom/vivo/plugin/aidl/ISinglePayCallBack;)V
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_84} :catch_13c

    :cond_84
    :goto_84
    const-string v0, "VivoAIDLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "neadShowAssit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->neadShowAssit:Z
    invoke-static {v2}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->access$5(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " assitHasShown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->assitHasShown:Z
    invoke-static {v2}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->access$6(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->assitHasShown:Z
    invoke-static {v0}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->access$6(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Z

    move-result v0

    if-nez v0, :cond_c3

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->neadShowAssit:Z
    invoke-static {v0}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->access$5(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Z

    move-result v0

    if-eqz v0, :cond_c3

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    # invokes: Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->showAssitView()V
    invoke-static {v0}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->access$7(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)V

    :cond_c3
    const-string v0, "VivoAIDLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "neadReportRole: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->neadReportRole:Z
    invoke-static {v2}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->access$8(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " roleid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->roleid:Ljava/lang/String;
    invoke-static {v2}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->access$9(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->neadReportRole:Z
    invoke-static {v0}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->access$8(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Z

    move-result v0

    if-eqz v0, :cond_125

    const-string v0, "roleid"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_125

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->roleid:Ljava/lang/String;
    invoke-static {v1}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->access$9(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->rolelevel:Ljava/lang/String;
    invoke-static {v2}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->access$10(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->serviceArea:Ljava/lang/String;
    invoke-static {v3}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->access$11(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->roleName:Ljava/lang/String;
    invoke-static {v4}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->access$12(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->serviceAreaName:Ljava/lang/String;
    invoke-static {v5}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->access$13(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->vivoAccountreportRoleInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    invoke-static {v0, v6}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->access$14(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;Z)V

    :cond_125
    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->neadStartLogin:Z
    invoke-static {v0}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->access$15(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Z

    move-result v0

    if-eqz v0, :cond_13b

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    iget-object v1, v1, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->startPluginApk(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    invoke-static {v0, v6}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->access$16(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;Z)V

    :cond_13b
    return-void

    :catch_13c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_84
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    const-string v0, "VivoAIDLManager"

    const-string v1, "---------onServiceDisconnected() enter--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$1;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->access$0(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;Z)V

    return-void
.end method
